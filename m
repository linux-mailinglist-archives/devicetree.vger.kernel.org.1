Return-Path: <devicetree+bounces-182034-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 54BB9AC9E04
	for <lists+devicetree@lfdr.de>; Sun,  1 Jun 2025 09:40:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 457E41894DEF
	for <lists+devicetree@lfdr.de>; Sun,  1 Jun 2025 07:41:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F06F319DF98;
	Sun,  1 Jun 2025 07:40:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="STgqg+Ir"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88D9218E02A
	for <devicetree@vger.kernel.org>; Sun,  1 Jun 2025 07:40:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748763642; cv=none; b=qXdsiZxhzBEryhv9OV+U2+/Rc9/tfIL1ZD0oBkDneVwa1piIJrUGD3JKPJFwA5gTLsQOthk1YoEFX8O0FKgat0iE6wFqk++G7LaeSHjf/HNuz0kj4EbRk0u4yMWwigplHm5GDsgFp18BrocGou6weT1BkcsXory1bFE0wYB6yBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748763642; c=relaxed/simple;
	bh=c2Kd/vHDZi6zUJp8VpV+4TfsPz8Ez6EjXDsGFv3p3AI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uxVjGUxdkuT4hl5cur1YA9g66DIJaGYoFGc69qSKcK7OkqScWa9EOIbaRRhFLiVwEvst+X8lYC48ySoSbH9SzoXUfIXeW5uYuxeUYrSozmsaPQLHUyKINWJAbQh5CuqqpXxXnK/py0V4BsWq04oGLrpUBjijXrYQwVp3SjhcfWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=STgqg+Ir; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5515j2u8014050
	for <devicetree@vger.kernel.org>; Sun, 1 Jun 2025 07:40:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=2TPRUsm8psQRqZTnF9CJckvC
	EpIYayXZFgazKyBaVgk=; b=STgqg+IrBbkWSSAdkjpXAjHjChm677m62XsDH12/
	0mHjQLKludmBDPmJl8Dg7n9Nf2QbFaxNFh3zVf429pM9Il3/JJffDp3L6FPIrDQc
	2Pglnrdf8aQCciRIijL9SoDoBlWEH8lBBe1ha4ZvV/dkFwVHcALD4+SJiTRcXzwu
	QyY2qF6u1EcRpCdOMGxy7iyDbIIgdyjTIZDtu5gsnSxZ5EUHamZmeRnqsDPnpOQs
	fD3iS78F9ddX1BI0r7FWB9IffDqblZdHm8Pl1c14Xidf2FXyoC9TV7nwSM/F/CiE
	B09hJvEqamsap6PlyP7IZoCuALkOo64cGooyt9LmizVUnw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46yu2a20vh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 01 Jun 2025 07:40:40 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c790dc38b4so596172385a.0
        for <devicetree@vger.kernel.org>; Sun, 01 Jun 2025 00:40:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748763639; x=1749368439;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2TPRUsm8psQRqZTnF9CJckvCEpIYayXZFgazKyBaVgk=;
        b=iXlyUFxSgAeNlFWJDgo+Dm3iT4XS0cn6jztBi+KpETxvBni0iDfTXwY592WHIipJRQ
         h80sKtgbzEzqAXsr+SDG/xU5XZMsSR60nUMe2TP8Ye8J11Rhj1sxWglgOZbLB8gs/bai
         dK4TmMC2chsqHSFjcpcR6F56LOjRMITtOvw+/C6qDIWfsewUA4ersLvk/KtwiQWATKTH
         DhcMFsZ4k49luw4nQqpB7zt5fob94gyrBuXWKQwGwgzR8chH94H+Yq0aeFQPavwAArCK
         k9g6th4MCRLmvt/jk6tWl6X02RAoDckkaCmDIEGrsBgKXnNwJQ6j/Jn7ULIAjeprG6z8
         QZoA==
X-Forwarded-Encrypted: i=1; AJvYcCVU0z3aDXybQVWp5b/okVv3p+ta+x55XlbUuOujxqCizHJFgOKtmOznFKdmdb8SUNb5/86jPsV71ifq@vger.kernel.org
X-Gm-Message-State: AOJu0YyRuvrQMBiwaWlQVnTrczCCN9YGALvW/HjgNmtcByNLHC5mYiqr
	cGQq6e2tKIx/3YGkdaRSp0N/8DAy9YvIQudBzi9vN18zWDCg7V6eftRINH0rMUZZwxv9fCVoO+t
	uWM58HFySDDCmW25os3I1MZv4lLvvNggLn8CbOucpYwXbn1Is67lUq47jMfIeuyi1
X-Gm-Gg: ASbGncviOtOu1/tIhQnXuzoSW9y9FXlHe4Kvd7P00D2Dxx5lupv+svUjF/WVD4yDlaU
	rOipt84f8p691g7MXFzEBIVo6ustQxa+KamKqXSNU17wQ5AJrfMZ453KDXq+QMebV5A4BxphYEW
	BTTw/AuTlQToxjIjCXrPAvOKXRYC7iEXC3w8ThB+xJddk0ImUq/k+fFbCMp2Chv1UG8aOBci3u5
	p/+saDxCDvSHMjFAJaDFH67MsiWFiEbl6rRrsoUAhB0nizEaxcL94ga7mwW55m9+SZMYowawVi5
	dOR9W7BWHhuHmKqHeHeEpBsiYxtFvBTjuV36tFqP85AiQmUUoKI36EGKgAuzGdLKpuaarKYtNx8
	=
X-Received: by 2002:a05:620a:2483:b0:7ce:ed0e:423c with SMTP id af79cd13be357-7d098777f3emr2039778185a.9.1748763639294;
        Sun, 01 Jun 2025 00:40:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHGRrw/U4sl8C3LM2p+TsZ0Htgb/XfNRzYHoD1LwhDIj62ogYv83HavYT1ZJeTy3y4R2wbWzQ==
X-Received: by 2002:a05:620a:2483:b0:7ce:ed0e:423c with SMTP id af79cd13be357-7d098777f3emr2039777485a.9.1748763638981;
        Sun, 01 Jun 2025 00:40:38 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32a85bd29d7sm10801441fa.99.2025.06.01.00.40.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Jun 2025 00:40:38 -0700 (PDT)
Date: Sun, 1 Jun 2025 10:40:36 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 4/5] arm64: dts: qcom: sdm630: Add Venus OPP table
Message-ID: <5kn47uzlfihae4pxoglivuyyv2lchunoq72wyps3mqguthwhks@k7obux24cv6d>
References: <20250531-topic-venus_opp_arm64-v1-0-54c6c417839f@oss.qualcomm.com>
 <20250531-topic-venus_opp_arm64-v1-4-54c6c417839f@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250531-topic-venus_opp_arm64-v1-4-54c6c417839f@oss.qualcomm.com>
X-Proofpoint-GUID: yJrZH7nzwo7e9K6Sd8bGGm0Nco_2jnT9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjAxMDA2MSBTYWx0ZWRfX9X5lkEGfQCCp
 MuYK1Pw4g90F0y/IEbu2WsYUICFadOstCd26lmrNZvuHNlYywV8A67/doM3pwho/hoHKikfBX54
 ikSpEVrKMMsyaO7fgWh/vSgSUd/j4LBEuWYi8kd2J6BB5p08ZyjtB8Yh7USGdBeDw1Ow/XpDYfi
 i+0StbPcxvPXCsmMiuGV3ouXz50/BodiHNEUIEvThs+axF2ETVfCG7nSxx0Wasx65MwhiUpgg7X
 9NcktHFx/iVj0DExrUzpDjAvK1GB+P1zoW/ePfuJkcSmUYbwum6cwf4gOnQGM8/gm5vfAqa719T
 5k+baJ9pdyjl+wKFN++yv9K1EBfaQYCkUHiwXwmp07UU6cCMzmqpO9eEBs3lYW11b23PjjjDRjE
 oejc1IJbpRGsjmXZaZl/JciKoAny0Qrsv0W/PAHzXB8oFg6Weyd2WNWRrO2n6SGJ2UCVydcR
X-Proofpoint-ORIG-GUID: yJrZH7nzwo7e9K6Sd8bGGm0Nco_2jnT9
X-Authority-Analysis: v=2.4 cv=WYIMa1hX c=1 sm=1 tr=0 ts=683c03f8 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=bnwqEipTlhqVJVXZ2T8A:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-01_03,2025-05-30_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 suspectscore=0 phishscore=0 malwarescore=0
 spamscore=0 mlxscore=0 priorityscore=1501 mlxlogscore=784 bulkscore=0
 lowpriorityscore=0 adultscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2506010061

On Sat, May 31, 2025 at 02:27:22PM +0200, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Describe the DVFS levels explicitly.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sdm630.dtsi | 35 +++++++++++++++++++++++++++++++++++
>  1 file changed, 35 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

