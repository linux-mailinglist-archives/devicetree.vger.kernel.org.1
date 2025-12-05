Return-Path: <devicetree+bounces-244842-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 24817CA94F3
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 21:55:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1AECE300D313
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 20:55:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BFFD29ACE5;
	Fri,  5 Dec 2025 20:55:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ow8DLTOW";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="XrCzH15v"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBCBB280A29
	for <devicetree@vger.kernel.org>; Fri,  5 Dec 2025 20:55:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764968143; cv=none; b=WtraD/o21ioOwb5IC6kc9H7O9U+v2LzRzve4+Szs/fVWS5/nTmucj62EQUwQKmE5w3k+rseSuq2OaaYqJxGK0gFE0dYcIzrzsepS3DwGs6+/tngBRgU+TqNfDlpP7iT7n0VpE7i9TY/kJI4v3wfPJEmK147rxa4t2AG12geA0No=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764968143; c=relaxed/simple;
	bh=wM4lbwcfB79jCj7bOmo5B1B5jBZhAiQgdJDkEICE1UY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LcxvEx93uXDD+xMiHIbWo7wrnY+kbcGn2YlApozw1B9+9GJC+0XGe6jpGhkurNu7gSkr+qpwAHD0NPTWgf9XFAadL1ytXF1I+OjRz13AYZyLBViQ2O3jfaTJD3/nqc2YKw7KZNLDqIU9bbIK1iR0701tzHyKeN7hBOFsaXBVXNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ow8DLTOW; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=XrCzH15v; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B5FBLIx673069
	for <devicetree@vger.kernel.org>; Fri, 5 Dec 2025 20:55:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=yd8Fe4jZgBDKW3DiZ2oAWRaJ
	+4bjhE/PoC9gNQIeyJc=; b=ow8DLTOWKKeO64T1I13cSXKzliRRrcRNzlayDCUb
	T/zWDdKyx3srzuFp9Ys/2RuNuRjX8/fbUpnQ1V5eoBX0ePEiueODTUzPgHB/bN3n
	Nd5GODPNp5phDBQWU5p6mZZrhFD5EpmzeD9/vmYRyMLH/xfLzqBYSwsF5uFc8fmE
	YTDK1QjINqQDkaEVIF0h3rb/UIBmHSueqeY3zuXPe4GIhNbZWZZf/qTwlLDnQ8wa
	P1qyISAiDFpnNbRWjpr/h25p9w0DRNFs4S+0GqYG20Mldmw8jUixlnfCDQd8f3sP
	nRLMuU8xWLis6AcokGWJZnTz1KDMXvNQQc9ziKliR+D5GQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4auwm4hnt3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 20:55:40 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b6963d1624so140405785a.0
        for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 12:55:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764968140; x=1765572940; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=yd8Fe4jZgBDKW3DiZ2oAWRaJ+4bjhE/PoC9gNQIeyJc=;
        b=XrCzH15vfNDTpMwkbZO+lx8CpVevviJR2kUyQ/xNIrUM0h3yPc0pVW6YydnBMMVhE0
         pBYvUK17ZEWDyIY3mUjSBmAixrS1ZUYPxS/hQhmKLKgpSdyIzX4OhgIlYAqUrdwxwE/w
         1OQfizVw7AoUm0AQrSK4ay34CQI8+P7jfEPvpQTwRc/+4nFGEVKEmhvnKLkz1E4hIF0b
         /KT3io63BG7KyIf3+0Sepgwim81Au1WxqKzafSX3WCU7M3VTNoGgUlMShKTKEKSgWETo
         baMUqCV4jB/uDBATN5vxoZP5Oc4t9ns9WXqLAJbL/dMeWBEp8VDxre7FPs/71yNDochl
         5lrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764968140; x=1765572940;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yd8Fe4jZgBDKW3DiZ2oAWRaJ+4bjhE/PoC9gNQIeyJc=;
        b=ecLL8fVZOB1lSEdSVcdTCR6hbAQ2+IT9efaawvJF3zJvopjagnQKnLRppDGwbwKWrO
         CI1vr4v30duhR0/A05xaruH27IhPNZ7E+VotdjcHQnUePXcPFBFwZ3+OP1KbnppCVbak
         782VuLZO//1o4ZqM2bVWGrOnPV4x2KYZwpM8EJ2DCl6Uqp8/ptdMZAo3mkoodX4JM6C6
         MuhrRayqlCJZoeTyjpZanbqNBYEIl+qNb45Hpsa7yxqwgvzvBAxitcg/kxxYJwlwSupv
         ND1LZqJk5fPQLbYWGZk2yLIu6qNFyC07fqcyOp+ZqWboc3lvhzoeJiwn6lmb3OUDH2NQ
         QBFQ==
X-Forwarded-Encrypted: i=1; AJvYcCV39yPW1nLwL/35eEEppH00WmnKHeo9B8O6sApl/lBuRgVzx9VMQPvn35O5eclLYX/cAObLJs8DY/0W@vger.kernel.org
X-Gm-Message-State: AOJu0YwcEwc4LDEwzEnj0VNdeF4/WiEyXT6OAH4Ct15IN/cXqxKHcBoX
	Q8i5wYgZVJ+eNWhxjpv8EbDbXLiJCFiyvULWOiBYBpXp0f4fotdD8azidl03yZn4dwxUnQiu+Gr
	JKzICrYCFOOjHgpeXnQHWRXWmq2HkhAHnsumDBQnzzhAemCrwe20TxuywpUalx+yV
X-Gm-Gg: ASbGnctNY8jYBCgdULjHdUdUbqnYtgn8z7Ml1P3GjR2qERBKWZ7e2F6FBCcZV0L66A6
	IZ5pUPteQoLs5th+PpeeGpHcLOtihrLx1NDB03tDmVA6j+fetSFm20hfDg9EqzlWkOzZP642yu6
	fqwpSpBO8R53SHFJQZlkWWw9D3QbA90ZJ2EbuoR5FojbFy2O1pcvSzHVAdQ6BBleGupSqOo5/7s
	M8uK7ApvbAnjSXO/Pr3xTwWE/DnskmLBrBb/bDc+d4dX9nnHng23EzxRV4bR3fq7a+7+fXTO4rl
	ipgXPbDdZ1s5aQV4isWQWETWwSF3RGg4gVFwBGXVgmpg4/M2zvXnnXxCNqpVj7l6Z5lxPmxLL++
	yBvURN3oH/CzowmnhPhsKXzVuwxDJLWIQf9Zaf1pLhvcyjAz3AAtZjp+nrVmx/koLJN0fEgGmjX
	r0p33p8jgAkdx3hnHajq4JRn0=
X-Received: by 2002:a05:620a:31a4:b0:89e:d562:7b93 with SMTP id af79cd13be357-8b6a24f62d6mr72630585a.83.1764968140033;
        Fri, 05 Dec 2025 12:55:40 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF1UKoGW+OU3HoBP+57I8OZyoowEZ6rmtvKcXoHR/rznEQPXCdbsUBrzEYztZBhcWzbpRyq+A==
X-Received: by 2002:a05:620a:31a4:b0:89e:d562:7b93 with SMTP id af79cd13be357-8b6a24f62d6mr72627085a.83.1764968139576;
        Fri, 05 Dec 2025 12:55:39 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37e7062413bsm17163141fa.42.2025.12.05.12.55.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Dec 2025 12:55:38 -0800 (PST)
Date: Fri, 5 Dec 2025 22:55:36 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Pengyu Luo <mitltlatltl@gmail.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: qcom,snps-eusb2-repeater: Add
 squelch param update
Message-ID: <fxf66ulont7wnmozqww2cklpp3djkzsgvc3znew4m7t47qlye7@32hxp3yze7h5>
References: <20251204044644.3072086-1-krishna.kurapati@oss.qualcomm.com>
 <20251204044644.3072086-2-krishna.kurapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251204044644.3072086-2-krishna.kurapati@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=T92BjvKQ c=1 sm=1 tr=0 ts=693346cd cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=0amjCnnjamoAI58UCHkA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: 8POMmPHDwr9-MO4vTKzajGK64N8oifXP
X-Proofpoint-ORIG-GUID: 8POMmPHDwr9-MO4vTKzajGK64N8oifXP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA1MDE1NiBTYWx0ZWRfX99Q08BzGycuI
 LIicfWeSA2YaaXyJXv+37SFQQ51Kz0PJkn91+QOLv4SmJWqLoFxgeYXLR/dMvbUQpPPzqK0OJJ0
 blFfW9YPhQ2pPkoneOFbhFdv9QOTWIjVZ0/xJrnCX4hy7xZ52jrZGRar19pQN5IrCd7m0AiPFPC
 VFGQknqSCRQQVourDlaoRcODWpGGWPelKL5qQ0mM4z0x5Z3taKi94hWgAzJbeo9vSPj7sZUsRfs
 8oKvH6rScButSaEMEidTEfJwPlHsh5lGLIDT4UUcUzV1irjMNdSP/szVo9XgvgoVOOVgkC1pfgu
 6Z+M+p6p/Wym7kEeSxuPX1G6YtyqQnl4MREj74gUg4OXfDW2JMwLsAT1rMAAqNWFY/kqYbyL3Lf
 IaCOS0JmHp7mJFh+70R9itxWh64shA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-05_07,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 priorityscore=1501 spamscore=0 bulkscore=0
 impostorscore=0 suspectscore=0 malwarescore=0 phishscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512050156

On Thu, Dec 04, 2025 at 10:16:42AM +0530, Krishna Kurapati wrote:
> Add squelch detect parameter update for synopsys eusb2 repeater.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---
>  .../devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
> index 5bf0d6c9c025..f2afcf0e986a 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
> @@ -59,6 +59,14 @@ properties:
>      minimum: 0
>      maximum: 7
>  
> +  qcom,squelch-detector-bp:

-uV? -mV?

> +    description:
> +      This adjusts the voltage level for the threshold used to detect valid
> +      high-speed data.
> +    minimum: -6000
> +    maximum: 1000
> +    multipleOf: 1000
> +
>  required:
>    - compatible
>    - reg
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

