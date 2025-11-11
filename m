Return-Path: <devicetree+bounces-237185-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 79675C4DBCF
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 13:33:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C34F04F8A22
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 12:27:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1ADD3590B5;
	Tue, 11 Nov 2025 12:27:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ld0DXzZa";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cFNhgKKN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0CAC358D15
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 12:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762864048; cv=none; b=Ia4g6cpf3n+bHjGTiHAXP3STIR1Ef/0qyStkcW4rk/0lebtOgzkgMdLEWXCdZmDXeajdEsyBIkD8iavwPMiU2/wL6J0WdGhSJx7iKY4QdvHohFtVII0aAMcsRuDHkEMknrlRwGIcU+coFkmzrT0blVFbjV/e4yPsBFQStGDNRJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762864048; c=relaxed/simple;
	bh=9VPdrRXuIiNKZGp5Pxv40MBiLERQtMECtEUEhoRYdWk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QsbOAqaiPSiiUQ6DyWDYApza2gCBpmJg0QI+4+LyiV+SMH33C1aC9WrqoAWHKrKExr1tXSJ4jJmUaIokD0fUfNu2BnWxBBqZV5q8N9zes6jqHo7vBK4aYIkhUrg1vxMWra11aRHwkP0HVvxKZFdclRmPHzVaQfqc6XFrvKvVnos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ld0DXzZa; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cFNhgKKN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ABBGYa52027918
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 12:27:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=pbbrsg49P2hYmXm7dQ5eWDSM
	EBm36DXZS4l1a3OLYOE=; b=Ld0DXzZarx87x9JI2y8/ul/5gkJi8yJh/Z55cq6p
	4xtqa0zi81A3mxRcAzsccv269OjllNaHt5kBQQEJvDOIqgqjTauVG35qaoJIgf3g
	psL0WT1EPGDJafvFMGpXcQTwLp96ePUl0IN90LNGP8se7xfwXL48YxY8x0AtqS8a
	9Istrm52AUczg19MDs2vOL07nSpcPZfLuswESwKTqJCCNe0uKnhgVJFAo+QPkdu9
	NCoyEFxVK00YOB/2ML5qw0x8XtrrQQf+U+RH8t+ZnfcbSm0Gl8TN1SOgzO7T0U5g
	TJOa5APySl5w8hG+eGXRVG0+5+ji0qfvfLNYSEmHnFmsVw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4abxqw1734-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 12:27:22 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4edb205b610so23384281cf.0
        for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 04:27:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762864041; x=1763468841; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=pbbrsg49P2hYmXm7dQ5eWDSMEBm36DXZS4l1a3OLYOE=;
        b=cFNhgKKNhtLvsA30GrXls655vYepZ4TdijQb2zb85x1XFLhnUiqdvj52HnRk3l5kG/
         NJqnEsBgbX3wNZSqXuY1ZxncHbXoZqbe74UMQm/t106h7f4xibGaklPZ9Ax/Nj7mLNgB
         z8QsR2tqLVSEtoZ/oWIUywG/XCeO570l798sFwTazoXEagBk2xuPfhPdmPuRHpI0Jc9h
         6DW0Fz/Nl8LIscE4A+hu+cR8hw6pa9PadTpXcuIQG6z7wArf90WOEM261st+qZvBngG7
         hMZZJvQksUCKokX9cGBCjlPkwT5jH/9mR29vWspiwBv+bMeFi29kLMTmt/28tc0+EeDK
         yebQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762864041; x=1763468841;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pbbrsg49P2hYmXm7dQ5eWDSMEBm36DXZS4l1a3OLYOE=;
        b=gFofQiDmdONfordNTZyC7a+kcmTWfHnPYkD8jZPY+T/Y9f906uNjFuPPAE+C0yEtNc
         PbantSAa72xqfQKymyaaGj5rjHy4Kaz49pWO/FFl+JJYuyWceuEgzQY96DMgChSragnX
         j0SMOUjusHAVHBvCueAailDR9p1a3WwTHU1rMgNIRqMsaUCjpgf/AWH4TCTeUx/MHDHP
         wg1cyXSrIK7ip4zqvMCIIXJpAtg9r02Ui0zR7KNLqjtmImo+RkbjV/vbtGAm9czZiU1+
         YBiwWxYoZ6AKzxyHSxutJ5D1xp273lY3KkaWG8v7SL4MYBj7QcJt7igGGYOWB+XcszBr
         HPkQ==
X-Forwarded-Encrypted: i=1; AJvYcCWLmCtH6n3HLX4Du0DPdHgVL/Wte3Oes6uBB+VJHMurQROmx+wQ/PCmEDAFdwglTfZJEVTvJE2lBp9w@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4biRskDbgC41EOS6FosUPWWRe/Q7hRbi7fcdJlouH6Hi+iASJ
	uvgnJOwtE9YUIzxoeAi4RhpRdBRpX3V8BmSrLZNiY/36QXH8zD1NgS8RO9duHs/VUAqjj0QXw4b
	gCj+I9sPD9A47lNtdQsRWiK8z0evLHHBWk2nLrI5FHGg8cZYxzUCGUkltDXhd/gWv
X-Gm-Gg: ASbGncteXfNJb9+V5z8lDieonRSl0ey7R3xCfiuFhjlDmt4s9fFWsR/fuZHz+MmgxBN
	d/KWqhPPhMxWTbrjAmpYw1Jn4FyD1K4HVoUMbAoKEPFnwibg69YXu9NbprGQNJWUzO8g4qsXAkX
	mtJ42UDSBkTs7VKRJPJy+ssTm0I6jj3NGv0lOW1QXGuiGvOagezMz6XeNoMPqftOUgY/Pg9idw4
	G7/C4XvGpnO70pH63uefgKx+m6OK6kXKYfKNiEDM3xPIehF/diToseCKF66M4i2VQb0oGZ2CYyk
	E+bhLOoxkF1OslwdJ6Xi+qoRwhOT/Wk3aqkq0rpyOVSxwtB/mwqfff3G0OHhzRceHVe+0qqRPBU
	ZhdGFdpB4yfz5IgDnZ+TXTVom1UW2rdeewNqIWQmJgSAS9jefenhU+vlQuejnKx4DMf8ErMxz6v
	i64hVHcMLll3yP
X-Received: by 2002:ac8:5751:0:b0:4ec:eea3:41fa with SMTP id d75a77b69052e-4eda4fe0032mr122499281cf.77.1762864041437;
        Tue, 11 Nov 2025 04:27:21 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG0G04Stzhf8pvrcPOEA7hZPvaHFQrTVkryE5kOpt4Q5+i+ssVi1BunvdZnSlbfnyCsgzQ5bw==
X-Received: by 2002:ac8:5751:0:b0:4ec:eea3:41fa with SMTP id d75a77b69052e-4eda4fe0032mr122498701cf.77.1762864040830;
        Tue, 11 Nov 2025 04:27:20 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5944a5a2042sm4884994e87.112.2025.11.11.04.27.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Nov 2025 04:27:20 -0800 (PST)
Date: Tue, 11 Nov 2025 14:27:18 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Riccardo Mereu <r.mereu.kernel@arduino.cc>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, broonie@kernel.org,
        linux@roeck-us.net, Jonathan.Cameron@huawei.com, wenswang@yeah.net,
        naresh.solanki@9elements.com, michal.simek@amd.com, nuno.sa@analog.com,
        chou.cosmo@gmail.com, grantpeltier93@gmail.com, eajames@linux.ibm.com,
        farouk.bouabid@cherry.de, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-spi@vger.kernel.org, mm.facchin@arduino.cc,
        Riccardo Mereu <r.mereu@arduino.cc>
Subject: Re: [PATCH 4/5] arm64: dts: qcom: qcm2290: add uart2 node
Message-ID: <6mr3k3vxgcxpddh4zmheeon77mru6r7hd7udtup2cqmvvziywx@xapbmrtblpti>
References: <20251106153119.266840-1-r.mereu@arduino.cc>
 <20251106153119.266840-5-r.mereu@arduino.cc>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251106153119.266840-5-r.mereu@arduino.cc>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTExMDA5OSBTYWx0ZWRfX7NeFhm39YLdQ
 H4efPyThMBDUR1jhtyng57+hpowHuX0oT4a3+oL23TPhrIPoIVkidSB49R9XGdNWy3Tfc+8Og5L
 sHNrgx16zUhrlOdtjl02qWSsfHwu5wdiUswrjf/SV3bBxGzRonpoAkAERDp6INVmORKsZUi/7dc
 H/Fo2QnvmLm0uWVKBP58efXlvD3uj01ScZlyZMNom8tKwHwNeARcYMLv0eygTivMfEocH1lBQEW
 qFg9qKCBlDPaXFdwNLdyNGZxhm2LstcQ/0+hgAmI9vKgBrUKFnHviIkHTzD35JEZnDc9pvgpteV
 e48CBWiC8dBNg3EvDyMXUA62M1bZkLHRtVuZXCDpIhPjYMpyYh8p3mCmsqVv/nSXyUJ4XZatn8o
 4H86hpmNz9q+tlfMxqijrr+KNY7LJg==
X-Proofpoint-GUID: isNmSstIY-m7X7GoYMvhiiqGMg-Vlb7d
X-Proofpoint-ORIG-GUID: isNmSstIY-m7X7GoYMvhiiqGMg-Vlb7d
X-Authority-Analysis: v=2.4 cv=CeIFJbrl c=1 sm=1 tr=0 ts=69132baa cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=D7qGd7DG7pF3fn8uCYwA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-11_02,2025-11-11_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 lowpriorityscore=0 bulkscore=0
 impostorscore=0 clxscore=1015 phishscore=0 malwarescore=0 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511110099

On Thu, Nov 06, 2025 at 04:31:18PM +0100, Riccardo Mereu wrote:
> uart2 is used in Arduino UnoQ as an interface between microprocessor and
> microcontroller.
> 
> Signed-off-by: Riccardo Mereu <r.mereu@arduino.cc>
> ---
>  arch/arm64/boot/dts/qcom/agatti.dtsi | 24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

