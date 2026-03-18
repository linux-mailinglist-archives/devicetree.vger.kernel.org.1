Return-Path: <devicetree+bounces-277032-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EBvFHhZmumklWAIAu9opvQ
	(envelope-from <devicetree+bounces-277032-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 09:45:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1825C2B8526
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 09:45:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 01BD7303CEBA
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 08:39:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C844C375F9A;
	Wed, 18 Mar 2026 08:39:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GTOF1cKV";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Xzg0Upy1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84226367F28
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 08:39:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773823184; cv=none; b=fWKkf+ECzI7RuNZA5GmXwrnw/1IViM0RGSFcp/livwUXCregVRroqsBcBEfdcHSRXdn3PwjyDHnaRWeFVB6Ip9Ewa5k1Tbj6e/zIuzmQ7Rr/UhcV6ZcvZ4fHmjqKWRKHucj86gCVSHnWFIQfgLWLh+EpWsAZYYW7VMYmPBjL1oE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773823184; c=relaxed/simple;
	bh=Q6dinWWF1w1vXHjCPgMoOhnhY1C9wtZ0Z9BCqiO9EZM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eIjMBa3eoLQOcb58QE0bUvzvK2+ILMHU4xBOBzalBskhpqEqXK5o2MTAR+9qR/J6vhKb1ZrHOl2rggi1rBlRAAtJnEu3cPa15OdnUf6xESAG4Wc+4EfjSEpxOoIUMg45o7i+G0tpUJhKgXlQgkI4wuqEmrgnD1Nxfh07yuVQUAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GTOF1cKV; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Xzg0Upy1; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62I3kWM03281171
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 08:39:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qe33oWcWeyshjFgHu8GsqYMxvfqzknKWQKj2Jyk6DoE=; b=GTOF1cKV3cpQaGSR
	p25klXwrRMmZupiCdo9jHTvw9lJnuDqdYcTlrKw3G4uvqeEMgwAT+8Q8ZOzz7ZjR
	GeOJzDLWGW17ia1yU3q9ofWsnhOoHb1o3qRA8eRoAMFYCQ8ym8yiFcPqFLBI7Wi9
	as2bJCy9W1e2cAwm2iY1DEpmxFCA9vbopY9PsFTuu+3dUZFAVgCYz8h8avIcRtJY
	VEw3He2fGkq2Hurkn3W0Sv5jjQ+vER5MNokQrEExem8mk090N1SIV0/YKFDu7oOG
	X6XQ447ZSjS+9dVKfoHgMaUl3xe6HYVf/fxuLePHiZvwE56uVlYm/4FjxcRtR1rN
	oUKIdA==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cya62uhr4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 08:39:42 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-35b94e2caf9so16407774a91.0
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 01:39:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773823181; x=1774427981; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qe33oWcWeyshjFgHu8GsqYMxvfqzknKWQKj2Jyk6DoE=;
        b=Xzg0Upy1e0ossBpspprCGSZ30VtchKCmWPsoNdjKQkzneyD5pG70Ww60sAwYjCpBNY
         RcZJig30lpH0GBbQVEqZSRLrZuRudDxdMU2qaE+kxQKazvEwPNXy833MqUnGjYhfITBP
         o562BxzGjpzW4M6MVvJfcTflRVW5X2Tpqs/PYP50Cb1QwztTDO0EQs7d7LRUUmGWLHNl
         TrPW/ueEPLYQ2v+HnktX4ejbuD4voGky9RqNIluK/cz7YFY5n1EwUuPwk3IOdgHQstEV
         Xp0vq8uq8/95wIkrvXmhqgbPh4TcxtsLu/Eak+XY3kVDBoPoqHbK1L8+jHek0DMUb2/B
         CqQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773823181; x=1774427981;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qe33oWcWeyshjFgHu8GsqYMxvfqzknKWQKj2Jyk6DoE=;
        b=XpddnN7wsPl2SNWb63qFEjMZr2PODCHj0r4e/h/76xSTf/OBj8Byt9SSrLwViUZO4Y
         JRKGSIK21nAKTs2XM9bgJSIwlRsJZfpW3YSl7aLnS3trgRGV7DpXHb6cQ2Ema0VktYVK
         dpR8sdMbaK0Se2xcoZST/KaAJukTme4YkNp5HOTavr106N4EZ7HfMR6mDNn6Upidx1A4
         AXtfYLjHUN8f/rymJuN/i8GnDpKY2mUicGSZJh2pRICW0UHsztgqzddSnJ+ARMNQmNrh
         /cRfWE2zEG0vTaOIQm1x44Ek7iLcTwXjNcDsGWQSos4ki++cMNuKfMTP8KBlnfjMeVEx
         Rtng==
X-Forwarded-Encrypted: i=1; AJvYcCWkg2OQ3zidn3Ovb+ChlLOkJnPqFIb6CimKWxNubIrcn7ekj6krisnB9DUmo8IAz3CJXG8tqIhtLdHH@vger.kernel.org
X-Gm-Message-State: AOJu0YzH6JbwYM7YvvTSaD8BS+fDzTQMX5IFa1DX62Of4junUo8Lh4x7
	uU0EQiNiI2HQ2x7trHbE36KgyzQuY6VO2H5aD3/67QExPZpgOSLdNx7tVVGB7+zmyI98pS6sOId
	7IvMJxGj8wqHWQL+8gDT3eQAp0/5HJtgKmO64lPOMNHBjbDqt8w5mu5JEGtYt18nT
X-Gm-Gg: ATEYQzy94IiQGtdMiH3W8buyktp73dE5VV6A7nRvNN7MFmFpWEIRyEVVidKVDSUiM10
	h1zayxnqk+UfF56pWzafFugFt4H4sTyVxapvBIWskpX+6CTB3kzLZNsv/VYnHovJeYuG86fB8/V
	/KUZuZCNXX5aj5f5rVLapdKp35MhT+ku4K29fZ9U2sHvyQWskK2XrStnEg4VSsMgckGJbleUst0
	gjYPxHHG+ibjFyiK2Jsrq+kn8aMWX47aQYrMk+FMdM3mnalRyk6s6MtUY3bD1nCEghO9NmBZ/bd
	dSWNSQ/a9DG6+wL2jZ5Gbv2y0oNjP4tXEqGFqH4xrMj8b3XLRbwLRUxkWwJnHCZQhncP7tSSHy7
	mFwQnBQDNT+YwTR9dL09dBP0tCFtek/+wWrn13ZPCM66kqLfa89EsU3bsjZf9l+GiLQ==
X-Received: by 2002:a17:90b:4d85:b0:359:409:49bf with SMTP id 98e67ed59e1d1-35bb9ef1cb3mr2329137a91.21.1773823181379;
        Wed, 18 Mar 2026 01:39:41 -0700 (PDT)
X-Received: by 2002:a17:90b:4d85:b0:359:409:49bf with SMTP id 98e67ed59e1d1-35bb9ef1cb3mr2329109a91.21.1773823180896;
        Wed, 18 Mar 2026 01:39:40 -0700 (PDT)
Received: from [10.151.37.217] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35bbae5e0ccsm545464a91.9.2026.03.18.01.39.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2026 01:39:40 -0700 (PDT)
Message-ID: <b65eff81-dad5-417c-a120-296f8b2b39c6@oss.qualcomm.com>
Date: Wed, 18 Mar 2026 14:09:35 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/2] Introduce TLMM driver for Qualcomm IPQ5210 SoC
To: Bjorn Andersson <andersson@kernel.org>, Linus Walleij
 <linusw@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260318-ipq5210_tlmm-v2-0-182d47b3d540@oss.qualcomm.com>
Content-Language: en-US
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <20260318-ipq5210_tlmm-v2-0-182d47b3d540@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Ns3cssdJ c=1 sm=1 tr=0 ts=69ba64ce cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=mLTo9kw54JWWtLzQ-8YA:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-ORIG-GUID: kO1KofW8CweWT5TLpw2p-AJY4FDkGS1x
X-Proofpoint-GUID: kO1KofW8CweWT5TLpw2p-AJY4FDkGS1x
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDA3MSBTYWx0ZWRfX41sFMeMsN8ct
 LNUq1sklWDOS0DxZaFyya7/LXaT6lVOJt+Cc3BCW8CbRYGIbeG3/JX3lJU4YR01wzhxwMSD2oGb
 LtPsaZJM8OMfenT4uTISnNcXpNntQ8sy8pOpSne4yeRM6NCLL22p8F1fQXE3C71grDTQLREZwZW
 BbeEnuIBnZWfj39tiBr15kI7+bm3RxyOTIxAgamMKAQ9KPbpeGvH7PxXdxEF46sOY8VnlMBrR6O
 de6a4j+mTyyyvDY86TrRHu70bFfCTgj2cjFtxngF21L3J8U+DC08Ll/W4FTLS2RUGyWsACz4zi+
 uV/OSn0//8DfEmxhfZYcmCfOdNijlqDnU3pSup0VGMVrsLVT07Rj2WysJDOHIJ74hM5qjh31P29
 +MTev3s4AvFMaP6iI3kXhNivdlqtdEgsrSc8ijSrEAr5IJYo88Iyw9xBykagHZsmwKQGaJmoVvf
 NxCRRo1393WjhmsQ3Kw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_05,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 lowpriorityscore=0 clxscore=1015 impostorscore=0
 priorityscore=1501 malwarescore=0 adultscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603180071
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277032-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[kathiravan.thirumoorthy@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 1825C2B8526
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 3/18/2026 12:44 PM, Kathiravan Thirumoorthy wrote:
> The IPQ5210 is Qualcomm's SoC for Routers, Gateways and Access Points.
> Add the pinctrl support for the same.
>
> Changes in V2:
> - Split the TLMM changes into separate series
> - Picked up the R-b tags
> - Grouped the led and pwm pins for better readability and usability
> - Link to v1:
>    https://lore.kernel.org/linux-arm-msm/20260311-ipq5210_boot_to_shell-v1-0-fe857d68d698@oss.qualcomm.com/

I misplaced the change history at wrong place mistakenly. Will take care 
of this in the next spin or future series.

>
> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
> ---
> Kathiravan Thirumoorthy (2):
>        dt-bindings: pinctrl: qcom: add IPQ5210 pinctrl
>        pinctrl: qcom: Introduce IPQ5210 TLMM driver
>
>   .../bindings/pinctrl/qcom,ipq5210-tlmm.yaml        |  137 +++
>   drivers/pinctrl/qcom/Kconfig.msm                   |    8 +
>   drivers/pinctrl/qcom/Makefile                      |    1 +
>   drivers/pinctrl/qcom/pinctrl-ipq5210.c             | 1049 ++++++++++++++++++++
>   4 files changed, 1195 insertions(+)
> ---
> base-commit: 8e5a478b6d6a5bb0a3d52147862b15e4d826af19
> change-id: 20260317-ipq5210_tlmm-df221be105b5
>
> Best regards,

