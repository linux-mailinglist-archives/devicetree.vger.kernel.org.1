Return-Path: <devicetree+bounces-264291-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2JbIGHf6imlBPAAAu9opvQ
	(envelope-from <devicetree+bounces-264291-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 10:29:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BD9D118E2F
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 10:29:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 05A2230060AB
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 09:29:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0903340DA5;
	Tue, 10 Feb 2026 09:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HiltLSRT";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="T49nrh2u"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C47733DEDD
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 09:29:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770715762; cv=none; b=H0gLhg6KmwH0OYP44jB6qaXLxJCc9vRfYC9FF5AsmBwMeWrNKV1OZ9n4RavEhOgkzkM3s90lBAeobnh5AkTT0tr47OBWhUOjEKak3mm/QKWeEfB38gSLR2hlmLMeVj93ou8XiylE9V8ly8sewuONWiXKTsLttwqi3kwC+OBrW+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770715762; c=relaxed/simple;
	bh=QvntMn497LfFsUrqq65yPqcryCLs23OW53tvsa+NmpY=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=EydYts896hzLD0BCyUT5naHO5t42xdRFiSMG/auRMABDOuUlP42pXvFwM3gabP3rTiHbx2VWeu2pC802QK1DyncbyPIekh9qElx33jzjHApCAAXVB8Gla/+vqSM783EXSkiRYyToeEGsH88MBpt1tjbNpSnMIFjaKjpTdatBdwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HiltLSRT; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=T49nrh2u; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61A76xBK1151729
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 09:29:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BBY82H8wZEfYTqntgYYfhM5uKxNwefjfp1Be4nGEVuI=; b=HiltLSRTAaJiOOLH
	E534QgnoPUn22qck3zHk5v4nZ1TqyKd2y/I0ElMat5Nx1/ZvHgn88V6xxusKZiw8
	C7APBJKlOHXuRyybkc7XIpCWctNCq5yLzsd5LEnPEbvRuGCpawxfdTqrBHLgUKfc
	5zzQwq/Tw47vfcmLE5OHO5gwcwnePUzrstOlhvyK5cfx/5cY5kYCLfelm6MVAH/5
	sdY18BQA6xKKGs/mHCfK52NRm/lzjJRyNBaDLxa49Ri3Ek3B8x8D2MLu+XF2se55
	VeLRboWAL19YSbLQu6evQp5hNqlTE5GWsIslpaTjh+M4yjOztyFkWxyRvFgAz4s5
	MEcmRg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c800j8h17-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 09:29:20 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cb054b2f9eso191179585a.3
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 01:29:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770715760; x=1771320560; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=BBY82H8wZEfYTqntgYYfhM5uKxNwefjfp1Be4nGEVuI=;
        b=T49nrh2uUF5XkpJ951f3AHafCk7US4tvpUgzz+PrH+In81eiMJZqP87ZmiLWd8y1NP
         E3M1jDxZnGG2y2nYq+KZIj2Iefoti+usnGlw1mHUYqRdCR4SsSyOU+2KpmCm0d1kU1wa
         Kkjm2zXJWwa8DK7x6b/N9SoDB12Ijh17BKEeIadZTicR4tPEmzjWXG0/7RIpU7FEMR3x
         iCf8dSWIiXAObG9CIvMgmQn5XEZ8jkR76gdWXNopPtNy4aCCum00Y0I7cxbr33YrOBBX
         ovelrMMes9rUYLJTUqgLDxA/3va88s7EHGIA/C/CJEO/BE9JZPpdd4mG1d0cHTHjPFj0
         gpGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770715760; x=1771320560;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BBY82H8wZEfYTqntgYYfhM5uKxNwefjfp1Be4nGEVuI=;
        b=bSmLL/bdXo5CqrB/LUFOxkZbEqJDqFmMgUhKzeZjhEnpI4/8EXKWB/MVVUxlcQiP98
         pQ6PlJjB+LH+vykti0bxkoWAdZxR+qDZpW4ekDYR/BhO69au3p2AtbwrvWS/eO0lEd80
         mCrHLp0oTlzmXsOpnSWZwTn+dl9EwLGdLwXe/gpa5IIOsq6RkwmACRKuwjJ8HQxkg6t6
         aNJF+4ciGb/j0v9d0ypOs4BWPky+FK5V1c+XLmJSTz95MCqAC0BcZOWVbIWjd6mh6Yop
         M9Z7dtZ/kux+dV32DNujiMzLpcAllsKfYV3Pd8LS5Lk1Esi49nr2gDTyVgs12Tm/G2BY
         Q9+A==
X-Forwarded-Encrypted: i=1; AJvYcCWDw1Auj7B1nBu4lmO+VFBXn2IBJMDR4sk6cZoKP2+iH8hgp+IW3WRZbtltJJ4JjZkEwcnjwpzRxRpo@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/t6YZFTuUKOylfZRv6EEIHeZtAn6DoKlGKtObFLYtIgwPyScO
	rOXtha30dEYC5r/zAYS9hukMAzP5kB9YPagD6Snj3QOTVy+0GCb71jAFYQGmgxwUqWT0ZZGJqe4
	gWL63RtshZWs9GwdsH5fbLYyc1UE4dPyub0qE3InNS3JY8esQaroJ8q6XRSr20pDH
X-Gm-Gg: AZuq6aI8SiD6HCbyvqIER4VHS2/3L3GiESHVTtdpHlZOnTzOrCTPPwE/qZE9+oNQEmd
	TaRcpnVnhQg2xQ/EFi535kHPzqvX2dFM6w7mQbxjyLuO3ITghbT5VEWYgHci0S/YJD8r6qrdpQb
	iWf9IO3iDKCVkf5GO2RlwEL6BQ2HLqtw9zse8F/uzb/V6NmF93XX96yCAO65rLp2xVfphgC3eK+
	IbEkhVpi1z+O3CcRWMwXaVBv+K8FOHJUNiMvFQs2uVsz2/CnJgx744uemji3SweLWxxQRGBxVwz
	VhfSRDH6EojBBRFmZd7TDeskMxgn/qjeQe+1JAg+bVHd15hc0OJ1eKmrwEBb7fX9rSYEnnJEiuG
	uE3++aNYXcwv4zsWd4jVF1utg9r+wfeTuvKORaCqeTBLHQJRrRkQgwiGCFrwXb1z5eRPKi5SLIt
	kHy2o=
X-Received: by 2002:a05:620a:470e:b0:8cb:1c3a:90f7 with SMTP id af79cd13be357-8cb1ffab4demr96741485a.11.1770715760021;
        Tue, 10 Feb 2026 01:29:20 -0800 (PST)
X-Received: by 2002:a05:620a:470e:b0:8cb:1c3a:90f7 with SMTP id af79cd13be357-8cb1ffab4demr96739385a.11.1770715759567;
        Tue, 10 Feb 2026 01:29:19 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65983eb68cfsm3710658a12.12.2026.02.10.01.29.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Feb 2026 01:29:18 -0800 (PST)
Message-ID: <e35d7795-cca2-402d-8179-8214d81ff9d2@oss.qualcomm.com>
Date: Tue, 10 Feb 2026 10:29:16 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] soc: qcom: llcc: Add configuration data for SDM670
To: Richard Acayan <mailingradian@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Conor Dooley <conor@kernel.org>,
        Jonathan Cameron <jonathan.cameron@huawei.com>,
        Rob Herring
 <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20260210021957.13357-1-mailingradian@gmail.com>
 <20260210021957.13357-3-mailingradian@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260210021957.13357-3-mailingradian@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEwMDA3OSBTYWx0ZWRfX/ilPaUiT7yF9
 LuFvWy/yoJDWYwEMt9IBjhqjr6RIsWGSH9WWkaU40cdW1ItNPfuY7C4vNQ2ZiRYZxXtQdEbuD6D
 9Nm1C8geuTwJXW/Ghc9pMvduV+LdNaknqd49K2aWTc+Och2oiBIOLmyAMI4IpMWgnmrmzXt/QhX
 Kpy6r0U5bqCo7/4lfyqgGResJpdpxG1DY8YE9e5HJOlDk2qtSly2c2qthto8OuB3oqQaFx0Ad4n
 e1ehygfyQn8hY2FVffDIqKDjqSlGlR+bNRtCvMyhBlyhUPosszadirWtyAEumrrop31E+QxHYG5
 DVstChDpa0wn+7Pc9tI5bNvV5TMag+QRaZ0G5r3xHeQwzpF7mOwVGg/g9V9TNOh5PuRLGI9dCkJ
 rSoW0A5vum2DXZIJKPwuxv7s8uJPv/R7JWxxoO92+K5dRrQR81qPYXTrTkcct9SnqgRQDjV9sDJ
 QqxjbxXJ1Sm6iWZRcYw==
X-Proofpoint-GUID: eaM5zZKAnnv90bwRyJ93Rj1y1fOHJ1hq
X-Proofpoint-ORIG-GUID: eaM5zZKAnnv90bwRyJ93Rj1y1fOHJ1hq
X-Authority-Analysis: v=2.4 cv=b9u/I9Gx c=1 sm=1 tr=0 ts=698afa70 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=pGLkceISAAAA:8 a=z8cJk1-d-abATlfEAfoA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-09_01,2026-02-09_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 lowpriorityscore=0 priorityscore=1501
 clxscore=1015 adultscore=0 spamscore=0 suspectscore=0 malwarescore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602100079
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,huawei.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-264291-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 8BD9D118E2F
X-Rspamd-Action: no action

On 2/10/26 3:19 AM, Richard Acayan wrote:
> Add system cache table and configs for the SDM670 SoC.
> 
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> ---

[...]

> +static const struct qcom_llcc_config sdm670_cfg[] = {
> +	{
> +		.sct_data	= sdm670_data,
> +		.size		= ARRAY_SIZE(sdm670_data),
> +		.skip_llcc_cfg	= true,
> +		.reg_offset	= llcc_v1_reg_offset,
> +		.edac_reg_offset = &llcc_v1_edac_reg_offset,
> +		.no_edac	= true,

Does the EDAC driver crash the device?

Konrad

