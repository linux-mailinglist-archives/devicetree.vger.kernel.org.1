Return-Path: <devicetree+bounces-210104-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D079B3A3FB
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 17:18:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1040317B866
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 15:16:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8FA421FF3F;
	Thu, 28 Aug 2025 15:16:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="E+xFESxd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4263A21C9EA
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 15:16:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756394163; cv=none; b=bz4TR8BQJW8ZMZ8fwTZWnCerkUVlP9JmZrPUJ6eEOfCknlgmaPE4nUJfDPnEBGkAJ8Zl/xsgS8f6ReDhd4xisPKLD7D2p612xKAlfzSLLKofMfq482OarR9ycu02LZw3mertYEg4T6HIIt5gtc9kLmSjA+y7H1o6HbH/mwncsvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756394163; c=relaxed/simple;
	bh=URRU48cWWZKXWYFt8cB99iHFjpEreIFbVOTSGj9tHNo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=U8mP2wKfrXz3ghGMMTavXuuDPSM+CoiGU74X9sXNdzfYggk/bXqAyfBFTfasbslmYN6lTJ1HhOJNL+5bhT59EReEk0szaKAZaE8lgJX3KfxcSmbbal77yu8+F/uQ7GfeKI+HRkR/F1pYYuSozX4CMFbPLRjd3wSsLWDaKMeNwHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=E+xFESxd; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57S9Sb0A005837
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 15:16:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=baDCJN4Ix+gOwGahkROrbNwU
	3+styHRf+7rMYdXAkDA=; b=E+xFESxdnnEimTHToxuR/9tA8PbNJaiQUx+qdK9V
	je7HYh6Yz2wxNfi+ENxmD85DkfWW1Ujm0SWws9G8YvBSeSJuGFXBK+7gcVHkFDx/
	D6Zi6tKtmOKkjlOQ8WC78/Ex7LnxC8PYY/nrUudmnU1QVOu3l865mND3Q+To30y4
	GKwPTD16++l0TPHutiTTdigM4zjsl9L6/7mq99w0jvqEVEWs2Ib1RKtKs5Ia0wUI
	MiT+ZELzLYOmhkPeAFXg8BhuGX7VOKTcUHP2QyZ4XcMts5J9+Kx5r0CZkv3MneNg
	IhZrzoxpuCyEh4RQgC/cXcaxqZ+jI2rgv2wceCSx9P4tEA==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48tbpgjcdd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 15:16:00 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-771b23c098dso892386b3a.2
        for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 08:16:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756394160; x=1756998960;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=baDCJN4Ix+gOwGahkROrbNwU3+styHRf+7rMYdXAkDA=;
        b=LLIUwnb/dyTqP3cMq+walimicMYBC8YLHPpJhAWivhorIgQ0KkpHvn9KbpVGKb/BBZ
         k8pi3ma4wn8wjxV7AZ3zTrzRntF3h4tjE8IdFUUknvioU6sj2OxBJDH9eU8IaYuKksMQ
         hkjtxU/WRZqGRQ7HRQeAdWHaLxkSt2pzo9E8Ybm43IwPvFygK4dSDf/vW3lncvl2Av9p
         w9pUtvqnQFWSgmZDCjYc1rh6EFpIfjFS7NFVWlF58hocLC4WjLZXm1sj2z2+r6sf/AK1
         dzojpmBnYvUlR/edM4JWDgvFdmm4yEWl70EXDS7+aFMqwD+dvdwswwNGlttP9VV3Gs5N
         nHKA==
X-Forwarded-Encrypted: i=1; AJvYcCUOgz5nGeZFJdbkupdHBQN+H55xZwhMxaEGKdEGwQVIFghLjAk93ZXm1Uuiuix3tnciHdh7JjAFm+Fq@vger.kernel.org
X-Gm-Message-State: AOJu0YzOh32KxddVoJlCp5ZpJCQsRFapSK5TwmRL/EeMleJ8g6ZCh54V
	r4jRjRs8IBCZbookCK1d1pxcVYyQNWF1v1LspNNoY96RBnPq4CGqUnI3ZleGPds6ucEl4qw3eRV
	lELBup+42Pxmog/aOivD0Yx7yRlGK8YBeitX/auKm8XXz9W++xx44RXl2tYGNcDhI
X-Gm-Gg: ASbGnctF73ti3nnXDlSyirEHHV7/Ojah2IhL4f4JlCR8IUFxbdtkctzkD5zOdR+mb8m
	EnjrMfb4FhXDBhBcdE8qPMksPMhM0KaRWMM9fvR2ogte05rCyFW6MTGxWznv7E6EwPviMJXRkdD
	KCo7/MuxSvUp7GBLU2AAaO7zOv4+XnyaZCO1coIJ0YzGxRdikmFg+Id4ouRo96GY2iQNt9JzK5P
	pAQjfFdO0EjvfTET6c5Xl/1SB1sq6mD9Uad5MFjsNy8VTA7dpn8V5DPVw+n96Ujeha+VQ8gtv1l
	Dh5HGE9jpiR95oXDUcppyYLrsb0dVynafvtnI9mscSJrhByhPB9C+sS1N8OEj1xFsS8z
X-Received: by 2002:a05:6a00:2d85:b0:772:a5c:6eea with SMTP id d2e1a72fcca58-7720a5c7183mr8959031b3a.17.1756394159435;
        Thu, 28 Aug 2025 08:15:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEr+f+TmPKCG2a3iQClc3TLskdjaiUttLjb5wUJrFV04qdT1/xLcvX7ROCMwXEmiI50+eK2WA==
X-Received: by 2002:a05:6a00:2d85:b0:772:a5c:6eea with SMTP id d2e1a72fcca58-7720a5c7183mr8958959b3a.17.1756394158822;
        Thu, 28 Aug 2025 08:15:58 -0700 (PDT)
Received: from hu-wasimn-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-770eb8b94efsm12551158b3a.40.2025.08.28.08.15.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Aug 2025 08:15:58 -0700 (PDT)
Date: Thu, 28 Aug 2025 20:45:49 +0530
From: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>, kernel@oss.qualcomm.com,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        netdev@vger.kernel.org,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
        Sushrut Shree Trivedi <quic_sushruts@quicinc.com>,
        Nirmesh Kumar Singh <quic_nkumarsi@quicinc.com>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Mohd Ayaan Anwar <quic_mohdayaa@quicinc.com>,
        Dikshita Agarwal <quic_dikshita@quicinc.com>,
        Monish Chunara <quic_mchunara@quicinc.com>,
        Vishal Kumar Pal <quic_vispal@quicinc.com>
Subject: Re: [PATCH 3/5] arm64: dts: qcom: lemans-evk: Extend peripheral and
 subsystem support
Message-ID: <aLBypYX9y4KPPSji@hu-wasimn-hyd.qualcomm.com>
References: <20250826-lemans-evk-bu-v1-0-08016e0d3ce5@oss.qualcomm.com>
 <20250826-lemans-evk-bu-v1-3-08016e0d3ce5@oss.qualcomm.com>
 <bab2e05a-140f-460c-8c28-358e37727c6b@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <bab2e05a-140f-460c-8c28-358e37727c6b@kernel.org>
X-Proofpoint-GUID: CTJnVukQHe8RmiI9scK-QB_kvxY2eXGn
X-Proofpoint-ORIG-GUID: CTJnVukQHe8RmiI9scK-QB_kvxY2eXGn
X-Authority-Analysis: v=2.4 cv=G7gcE8k5 c=1 sm=1 tr=0 ts=68b072b1 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=kj9zAlcOel0A:10 a=2OwXVqhp2XgA:10 a=UXIAUNObAAAA:8 a=ogXbWB_6-ELqwvBGSFsA:9
 a=CjuIK1q_8ugA:10 a=bFq2RbqkfqsA:10 a=2VI0MkxyNR6bbpdq8BZq:22
 a=a1s67YnXd6TbAZZNj1wK:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODI3MDE5OSBTYWx0ZWRfX6hm7ho5Sev12
 M6wukhBBUgLG4/PprwEG4Qea8rAr9EE62bSGTAM6hxGVYwKwbaAs32qXIJ+KX18DzoSesYomxii
 qKm+9ua696g2guy0kpknmmLGTyLrq7aJZvjj/Cxa6TAXqea8+PCEr6GB4CI0jEr/zLA7JRZ0XSE
 e4HJfXp7uw9cibvyl2EmjjxRbtg4Z0pnHVVEeTHKYlx8CQmbCPNUHcG/sGBvd9HqDuflEOkcfVA
 194Ru0dtl4e8CwxN9JqF7c8B4ArgIezoY3U0z2Uj+LDThjLLCb0syagNI8Chb8kiQlyd/QlnHMq
 cUvyfGq67DVfJ8pnKnrIgze4DODR0Xc4h8LtfF2TNm3BH3NRFhkxY67Fyy/qKFpBv4A4vAoXWjJ
 5VHGp0WQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-28_04,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 priorityscore=1501 adultscore=0 impostorscore=0
 bulkscore=0 suspectscore=0 clxscore=1015 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508270199

On Thu, Aug 28, 2025 at 08:56:07AM +0200, Krzysztof Kozlowski wrote:
> On 26/08/2025 20:21, Wasim Nazir wrote:
> > +
> > +&gpi_dma0 {
> > +	status = "okay";
> > +};
> > +
> > +&gpi_dma1 {
> > +	status = "okay";
> > +};
> > +
> > +&gpi_dma2 {
> > +	status = "okay";
> > +};
> > +
> > +&i2c18 {
> > +	status = "okay";
> > +
> > +	expander0: pca953x@38 {
> 
> Node names should be generic. See also an explanation and list of
> examples (not exhaustive) in DT specification:
> https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation
> 

Ack.

> 
> > +		compatible = "ti,tca9538";
> > +		#gpio-cells = <2>;
> > +		gpio-controller;
> > +		reg = <0x38>;
> > +	};
> > +
> 
> 
> 
> Best regards,
> Krzysztof

-- 
Regards,
Wasim

