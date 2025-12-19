Return-Path: <devicetree+bounces-248226-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B924CD0020
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 14:16:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 54CC030393CA
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 13:12:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F7052EB5CD;
	Fri, 19 Dec 2025 13:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oFED5coV";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="j893d/Uk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2861621ABDC
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 13:12:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766149973; cv=none; b=S6XBcFG8subyQ4fKJvCjVl6veRYUbOYnVUTL6qaQbY6Ov8gc5atxr1ziYIoyYGm923+vlEIcK8cDBonVQlFl2VFfAARXdFGNBUMhktudZW+8/jRrLYNBcKaMbUpjUJeLCQ8BT34y2tq62BRapbBpN9jNTp8SUQcJFVe0a5Zl210=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766149973; c=relaxed/simple;
	bh=GWy94Vf+wzIukMEl87VxJY8ixIuVBKH8iYhMGLG5GQU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UreO3wXvRvLacA31lIcvG9y0WLpvkzo3BKxGkfuH28Q56uscs9yVoDeSg7Ahv2AA/V4AmL0kmBA4yUowILE8Or1FbRCRMBdRG//wAXo18GYtI1JH0aDlxJyUGndbx6Gm5dEiJ9cDUJfcvk8r9UnJn7/6odf/zxbnW0/rVfotWpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oFED5coV; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=j893d/Uk; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BJBgTXj3991646
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 13:12:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=K36NBtDXtxR21RNLQDO+6cgR
	yGPnsAcmZtcmCarY0nQ=; b=oFED5coV8gDXLiaiMsXVcQOpkJQHcR4BXnIxAYdd
	iXbZFbIjLYP0trBL/pTfsniAqpU8BY5LzMxyPEOsFy+rfjbrLhewOqUUbi1UpbqG
	a9t4+lg3G505ynNVWUZdmcBDPjAhO9wPBCi/2U7wmqGAWJVbE1Q+BpR5Krwn1eRN
	TZHzMTnQRDo/3T+k0RQ7/iQqSwAlKAvcc9+nltPBds8kyTKKRybQMa0PRO6KDLSK
	l7oZsLY22Vwxww5cAWPqzO9SOZHkXVg4WgQ7J1TKP7DulkPSjkdK30ndU9CmYzHk
	qGZPRKH87pctsblrSPLVFRhBIhi9b9TV3wO15Nc2N4rZdQ==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b4r2dap62-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 13:12:51 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7edad8ccbafso572695b3a.3
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 05:12:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766149970; x=1766754770; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=K36NBtDXtxR21RNLQDO+6cgRyGPnsAcmZtcmCarY0nQ=;
        b=j893d/UkOwmspquEGaiLpssy49Ca5rw/LffuCA7FBLg3XPPQ8Jvdt5724EPEvy+42Y
         Q1n8zw0hYYm5mBsC/FWoH/S01hNqemkTyq9x3444ZNSny2h5ofLcJ4FgfhoQvI63CPV0
         gVZyHIRUY7yUYTLz6hA9YSjw/xeAGxRetqtMw6Vp9KGiocbZuLeke09CX/IGfZ6PYDwp
         MPk9J3TXt7/K5CaHp78c0zB7+kT4XxN1158i24Io9ojsdKw6dvqsqvX8ceL1v+Qks8/1
         WSHaGeeTFwxjDtHddcYEX6wiV2i/75PbvSK791sudFJArticjZFDjpyTuo3IsYLnw7X+
         DOTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766149970; x=1766754770;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=K36NBtDXtxR21RNLQDO+6cgRyGPnsAcmZtcmCarY0nQ=;
        b=Q1S5Z4hKJ5QLanxNmjsv+/rDYfNB6qUyWXFzF1V9e0CzlkKDRuTL4U8cbZdmFt8knZ
         jCN1cxL/gEN0cX32UtlE0EofvoX/npnGdzodpRPfkJLROT0WZERF4Ni1+62obvRc65OP
         wmkR5IAjYsQ6y+K0ZfYN+2nWL+wE4np8MEJiI72H5S+eETGF/tutJZD1qSXmHRLaMTCU
         X+zEAHufNArwd7flzHtZmQfRVwQW2rNhojLkbY4xZNaj7y+nGbTzGhpZHQhO9Mxf3zn+
         IYu1jYnICYc2w/fMqvwCqCaZFYKNSrtrn/P7AclM8Drr7tUhBKdgXrzJIiXUXc591ylQ
         UExQ==
X-Forwarded-Encrypted: i=1; AJvYcCUAzunvFyNc7BEm5FyULRJT8gkUPD+yByksTsQDOxjRpN6fnFZ3+2lSqsRhfWlhBsKos0ZB85DbJhwX@vger.kernel.org
X-Gm-Message-State: AOJu0YxPA/TJyorAPInb4CMcG7nEp1adTJn0o2hPBoUHrBEeMXO/lGT4
	NPSU3pd5NVdyL5HgrmbktuglHxutiqdTYCDTzfU1odjlTVaN1N2B86tZvnwupBVhuEDI2v9TlJ1
	G4isIhLCH8aqi2mI9m6RqbiABCzGevERPlCf4C/S+MLd7xa4OVvXhkuSxj0PDgv8s
X-Gm-Gg: AY/fxX44Io+ACJE7jR7HCI26USW591ZJJ/3nQEghf7cVxydL9REWvVqpXiGhoNj+HMu
	a781ReNjDwK3r7Ddtldwa8ztWjiIeCRUE0wNNGSoZpo+LcoRf3/UaHdHmCR8WUFJKuTCx4Xn62Z
	eaEq5RUacyDpBvPAZ9W9ph0We+lHRaITJ66QmMDS3vgLEqCyqtxwcbtZjhepBkHmlTfw9VI0o+I
	AoJaYjzF2KwKh8GwS4k0JRoly0rSeJupMs2LMgJRsjHWR2f/HLf4VwexycL9tIZ9/cQ/oMD9NXJ
	M6bzC8lEFwaTw2/K0BciwsRLrLt4Yk/UObEdwpgWe75Wfx9fqnzX+tOVZawHvqpWfQNRd9Qsw3H
	5mDn6YueqhQu6vxsDDLUmPMZ01ssPPOQVJlv7fLVaHORXK+P+0WioE32MDwoDbA3FzeKVr845xW
	r+s74NpTp7NUXB2AHnWZGl5cwEbxEmVQ==
X-Received: by 2002:a05:6a00:4b4e:b0:7a2:864b:9c8e with SMTP id d2e1a72fcca58-7ff66484275mr2119840b3a.3.1766149970126;
        Fri, 19 Dec 2025 05:12:50 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH+1piXvSsDrzO4it1QCN+OIrZs0rknwUkCTR+8uEjKh6uPPQZfesIuir1im7uRYWrjw8MqQQ==
X-Received: by 2002:a05:6a00:4b4e:b0:7a2:864b:9c8e with SMTP id d2e1a72fcca58-7ff66484275mr2119813b3a.3.1766149969626;
        Fri, 19 Dec 2025 05:12:49 -0800 (PST)
Received: from hu-vishsain-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7dfac29bsm2427868b3a.39.2025.12.19.05.12.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 05:12:48 -0800 (PST)
Date: Fri, 19 Dec 2025 18:42:43 +0530
From: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        prahlad.valluru@oss.qualcomm.com,
        Prahlad Valluru <vvalluru@qti.qualcomm.com>
Subject: Re: [PATCH v2 1/2] arm64: dts: qcom: monaco: add lt8713sx bridge
 with displayport
Message-ID: <aUVPSyoDE35eL4iQ@hu-vishsain-blr.qualcomm.com>
References: <20251219-lt8713sx-bridge-linux-for-next-v2-0-2e53f5490eb9@oss.qualcomm.com>
 <20251219-lt8713sx-bridge-linux-for-next-v2-1-2e53f5490eb9@oss.qualcomm.com>
 <a9b29be9-e0d2-4643-a84a-55f565bf08bc@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a9b29be9-e0d2-4643-a84a-55f565bf08bc@kernel.org>
X-Authority-Analysis: v=2.4 cv=AcG83nXG c=1 sm=1 tr=0 ts=69454f53 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=kj9zAlcOel0A:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=X3cKLD2pE83tf_RQVeAA:9 a=CjuIK1q_8ugA:10
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE5MDExMCBTYWx0ZWRfX6MdsL2tudiWx
 9v6vQqGK+eWrPjG3AVtPKdGJU0Bp9osDfen63qBCGRNXnqax9qyFuhApk3TGrJk8daJF1i8IWZK
 wJPohuHkx4K0OaCay+XprbJYZsqe6kezZZ+GC0qQtcXXG+r8OXmk96ObDn5A6QgsRuVbH3WrxBZ
 VfqECLVQgVRIULPu6C51BWuhwQfWBqQjI8O31/e7j9xL69JO4WumoWDTHJZkf8Jgn2CWc0/D3I+
 nT3vvJ8c4WNZ5jeApkeZvVEx/tQIAotRFuC8nQYZLCdtlc+oatMCc9v4a3yKtYO04XG7oWrt1aX
 +YvicjyDqUi3xBvRXRMCvGZ+dtr2ZyvNG8z+jz8UokeW9EhqYILbpKA3YqdMafrSsEPHecKNEIB
 vsmmS8jhz2L28/CoUQiCBKYC3a566hs2XYKXVg7W/K5RcDcxoIh2E9W9TtdSx8nkXZvf8MrVxWA
 hPedfJ/jVD4+pq9TVdg==
X-Proofpoint-GUID: xCNFxJb1uXIizhCo5AHh9GYJqQHUjg-G
X-Proofpoint-ORIG-GUID: xCNFxJb1uXIizhCo5AHh9GYJqQHUjg-G
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-19_04,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 impostorscore=0 lowpriorityscore=0 clxscore=1015
 priorityscore=1501 adultscore=0 phishscore=0 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512190110

On Fri, Dec 19, 2025 at 01:16:41PM +0100, Krzysztof Kozlowski wrote:
> On 19/12/2025 12:32, Vishnu Saini wrote:
> > Monaco-evk has LT8713sx which act as DP to 3 DP output
> > converter. Edp PHY from monaco soc is connected to lt8713sx
> > as input and output of lt8713sx is connected to 3 mini DP ports.
> > 
> > Two ports are available in mainboard and one port
> > is available on Mezz board.
> > 
> > lt8713sx is connected to soc over i2c0 and with reset gpio
> > connected to pin6 of ioexpander5.
> > 
> > Enable the edp nodes from monaco and enable lontium lt8713sx
> > bridge node.
> 
> 
> And how much time did you give to maintainers to respond to your
> comments before sending v2?
> 
> You gave yourself 1 month. To the community you give 7 minutes.
> 
> That's just unacceptable.
Apologies again maintainers, i will be more careful next time.

 
> NAK.
> 
> Best regards,
> Krzysztof

