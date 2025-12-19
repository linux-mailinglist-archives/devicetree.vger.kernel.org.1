Return-Path: <devicetree+bounces-248168-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F7F4CCF8AD
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 12:12:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E5709302D287
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 11:10:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACE74307AD8;
	Fri, 19 Dec 2025 11:10:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FUIjvHtz";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="aVLk2xOw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3285C2459D4
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 11:10:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766142638; cv=none; b=AlDfa6XqY5BJ1IXzFdv0ThUoSV9/NQBpchyaWks5bftAYaI3vTNATbrKIgTKZ8SXeEZrXNwtQ0YPdpqCvZYxExJjfVLwVsV8FnenQ8SulqM8UKJLSzEhz3UHDEWOP2BnN38JCHpdUrN/soBAt2lq9UItrlZkSeujeg39aZDSExk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766142638; c=relaxed/simple;
	bh=TnKOGOZfXIWRx+mTUvvfBevE4/2Q/9nz+F4AjvC94JA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=W22wfHLv+lM4Rl9Up+Yz/mblsUjW9amyYTCzPtdGnM/AHQabp1t3SaUuruhggDsx2E5WKhAh7XNQ/SSfGdJDk03RjzPtBPKh26UGaHkcKfTFzg8AnJCwaWill2sK8BBjC4JOS4XkUlcmOR5FKPDDG6+9y6nmqpSZMK48KE2iWaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FUIjvHtz; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=aVLk2xOw; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BJ4cMZY4154718
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 11:10:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=eI9A3TA+U/EfAjMak9gg0mIh
	WPIak/p0ia7OlFtoThY=; b=FUIjvHtzpnmg0QjQRqO48i9d1UBGcw66nnlAbMCD
	X2iB6zD7NbV+eNRBgbEhCtnyUq8B3Rv4Dh52MUud+v03AH+/dojVRpBt1htFlNzV
	QuGaxJk6a5D47gKpyQfDD2tjWqpHCrjZBdbGoIktiTHJYsknyfqAWed4+mXKV1F4
	94DNxQO2YQeJtYPfKtkal/lSLZ2tr1lGAFy+5tgSjzXKicyOpYCC5wMeiU69U0X3
	yM8S71jhbVQkdP5dxWXAYXHyV7HNvyU8QGBi5UKAR0dq+C6bE6fBJOQ6Sh38kE3R
	vgCNRt3mRb3uSs5OXPWy+HxmYdUQ5Xu60kZ6OcH0j3Kr9Q==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b4r2ctfb5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 11:10:36 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-29ebcf93aa7so7131435ad.1
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 03:10:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766142636; x=1766747436; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=eI9A3TA+U/EfAjMak9gg0mIhWPIak/p0ia7OlFtoThY=;
        b=aVLk2xOwDPyxoE0TfqcSdbcejAW0ExtDZ1lUVvukUhkvOf27JyjKr4llAC3EuSa+6T
         cqScUz7+6uQsY2YIOdSSH0y0C1naf9YR5l5Cbxhf3DwnVyNH0EW9khNlYcRVJbZyq2tQ
         onhHn5Amr3y+yhacWqEoGHLa/1CjIkrKF2lxF00vDgrqKq9tigqN88UM3XFWoqeEqnM0
         Bur09XGPqDs2aTSWWQKdFN5/Iegeysp8LsMjM0gnw7Tzovc64UXYVdT9JVZw41mkMr8V
         mOsVJTkH5HNzNi3msSEOqFuM/POF+RaFRV1MTuC9Lq66F0aV6A8sa+HqKnSOqFmjsptz
         rUQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766142636; x=1766747436;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eI9A3TA+U/EfAjMak9gg0mIhWPIak/p0ia7OlFtoThY=;
        b=D/x3XmOXn+MfqWuuIP7vBg4HK/tQVut7GIYxbBUNd75eQ07FiTwosX+e5X9CVdxrTx
         pbMPTpoGeGjgSmBSqkUMaPT43jfQGMeh+ym/xJoItLE25MRAAAdcC0+v1yaEK/GSlEL5
         ODGecupeh8pcC4jMdyWt3uzMl3AhOqyEJqjONzvuVYQilcAHwMKru8B+CWTVRIA+rURk
         /Ec7WM/Bu+5kYUtVz74SFhLhz7evZo4vbr7GIF8MomAcDECTb/1SdIZP7SW+KNMeP4lU
         3l+16BhoVS7vUEyiy9HYeF8jKlC+w/pX2tQCGzb1Kk7bCrNpsCU+3gUqG8fOrYQhELCy
         k9UQ==
X-Forwarded-Encrypted: i=1; AJvYcCWIAWPPsjKTnrJNXIK8t8EjDhDNPatxoJRLFmCvWmswLgliTbYD8sQIStEsT+8ox/fP3jU5/ubwe4ln@vger.kernel.org
X-Gm-Message-State: AOJu0YycfAZ0+me/VyIOGBJ6FsHMQPgU6V+fMuR5OnEur5mLPTwB5JpF
	lrumXqtxiXOCzuMWAoq6aw1Icqf3qs1C8ttD+Yx4VGiLZarg9Vf51BLA2Tox9ljoRXfVSCKo+q7
	BeyfPvqpHSNY449m4RpCMmA+S/gQxwTnAOcPtIlhoWuNmFYNsnRrF9r8Kcp0X29HT
X-Gm-Gg: AY/fxX6IDsDKmatDF4WGl8QQyyLFgffCG8MUiWGmbMzkdORoMtCIcAL6hLKhZw8VMmm
	BCVpteZUqjs9mnrEsr8GHlj1LYFaiBqAHGTnzM+9T2xeu+qmlQlXMoX0FlrOVW/CGeeHKuYepp7
	D3JST7eNzNS5XNj/uvoNOWdtvT9o6B9eeDLhGqreHSjoQlsEdaXi+SOwBU+LqF+899r0oO+HhyV
	birpRI0YUoPELqrk9SdxYy8nE3FttQP6AYBF1mVspwjf0rYuwlHKudXvfesrMUXDLDKOGMtEVDw
	/ceVvvktCVVlQn6EdvacQiYGDdQRZGD/ZM79ZY/q4Ugqe+CnVt0PiSMvNn8E1zjCPSbggyEegL9
	Lw7uug1b7+k5MKELZ8nKQbBR7QjpqCx27/PATH2K7H4R9p/LWyGiTkds3fGnOc5mQc7UIdtOBTl
	5zMbUvM1AcGufqd3xbfxBgQ87MFA+1ow==
X-Received: by 2002:a05:6a00:2d1d:b0:7ab:9850:25fb with SMTP id d2e1a72fcca58-7ff648e4c38mr1819244b3a.2.1766142635642;
        Fri, 19 Dec 2025 03:10:35 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGF3+wceGI/hOCjSfbm/KufH/fSAQEEUjvFRRq59gSUlub9h9aYLp9EF66blY9sOF+UlrzJyw==
X-Received: by 2002:a05:6a00:2d1d:b0:7ab:9850:25fb with SMTP id d2e1a72fcca58-7ff648e4c38mr1819226b3a.2.1766142635185;
        Fri, 19 Dec 2025 03:10:35 -0800 (PST)
Received: from hu-vishsain-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7a844d5asm2128130b3a.3.2025.12.19.03.10.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 03:10:34 -0800 (PST)
Date: Fri, 19 Dec 2025 16:40:29 +0530
From: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Vishnu Saini <vishsain@qti.qualcomm.com>,
        prahlad.valluru@oss.qualcomm.com,
        Prahlad Valluru <vvalluru@qti.qualcomm.com>
Subject: Re: [PATCH 2/2] arm64: defconfig: Enable Lontium LT8713sx driver
Message-ID: <aUUypVRInkKdItCZ@hu-vishsain-blr.qualcomm.com>
References: <20251120-lt8713sx-bridge-linux-for-next-v1-0-2246fc5fb490@qti.qualcomm.com>
 <20251120-lt8713sx-bridge-linux-for-next-v1-2-2246fc5fb490@qti.qualcomm.com>
 <74d931db-8ecf-4b71-b644-d9a82ba54c8a@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <74d931db-8ecf-4b71-b644-d9a82ba54c8a@kernel.org>
X-Proofpoint-GUID: t7o_z26SFYKLH2U2l3f-sMv7GQdnk1_6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE5MDA5MiBTYWx0ZWRfX4sLKecLfdS3k
 63Icqr/Nn2YJZh9SSUbGkGEdQS/o9q4TQejLVYCrHDgVHdfCaW3gBNpc2kCDFZVYJlad2x3qt35
 hE+IsAkMt7Cn6DZKOCAAA5aTh1bdLWMD09eCAh1mxTCLoyxuak+rjPDZuP706GEPTiqg/+YcJ45
 MoQ76PFBMAMvikTxa8H183CdGKLRV/dMiHHvNEg2cPAFjr9FTZpsoJ05zIy5cSm1XdR4PL1wSML
 SU6o1PS6soWM5VgWUlcKwQsF9KZr0UXYKyQG9MYU7YUQpk5yUc3uZLARcHdXFcuTFFCSC+pzkpq
 T9e3hRkCVkcfRgRgnk2lAZbWTxldG8vy3ST37fpgJTEBF9wS7OtM1XUnGV06okn95OElJb6ideJ
 IxTExsdehfw1rR3pkxfMdDWf6EWx0xxNKXJxoSxpT5a+qX6QRmTkWLwqEOgU9BPTcJINOXji+AJ
 Q8/J3vQxCOQfmP3tZQw==
X-Proofpoint-ORIG-GUID: t7o_z26SFYKLH2U2l3f-sMv7GQdnk1_6
X-Authority-Analysis: v=2.4 cv=Lp2fC3dc c=1 sm=1 tr=0 ts=694532ac cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=kj9zAlcOel0A:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=SEeCSZyuSB0OPg8yeGEA:9 a=CjuIK1q_8ugA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-19_03,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 suspectscore=0 clxscore=1015 priorityscore=1501
 impostorscore=0 adultscore=0 phishscore=0 lowpriorityscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512190092

On Thu, Nov 20, 2025 at 02:47:45PM +0100, Krzysztof Kozlowski wrote:
> On 20/11/2025 11:58, Vishnu Saini wrote:
> > Lontium LT8713sx DP bridge hub can be found in monaco-evk
> 
> Qualcomm Monaco EVK Full Name of board goes here not some keywords.
> 
> You are adding this to common defconfig, that's not your own private one.
> 
> > 
Yes, updated the commit text in V2. 
> 
> Best regards,
> Krzysztof

