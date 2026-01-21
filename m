Return-Path: <devicetree+bounces-257921-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wCH2LGXJcGkNZwAAu9opvQ
	(envelope-from <devicetree+bounces-257921-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 13:41:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 600D556EED
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 13:41:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id D92DE52A319
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 12:36:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33626481FA9;
	Wed, 21 Jan 2026 12:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IYYiK6ka";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="RKerUNaU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFE0E481AA0
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 12:35:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768998933; cv=none; b=Y9wODDnBSVyCxInYwYGVdLEk/nrpkAbxrse4cF3o0o5TgCp4qYinbiWtS03jtE1spK5huf6nQh7N2BanK4HZrI5MREI0EfrDS0IduMpV6//zKEfabKb/PkomuX7rjoi0J2hn6AtAeXKnW3cBR1I8ePqZ3qCVMwr2g+BtDvuoZO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768998933; c=relaxed/simple;
	bh=h34ySUt7IUAXhK4MOCBmmFEFiud5ljRdIBQwuM1QZW8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=J1VC82DHjclNg8uRTTwzk+lK+qYCV2eBdbK7f9KU21IrfPySFKAHicl3OW/a+DPcxZFIN/JRNjcBqNIhGyNZB+6muDNdqvpeSINatQsz+DV7gmTb9TyyhgptZHAcwWQ1db+/ufbHIe/PIDg8w5WxGsKobX7Jyk6QR+S7VnTKPO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IYYiK6ka; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=RKerUNaU; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60L9pZs02452352
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 12:35:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IENr8EZgkddRqNwXjLecpZCkK+Z5t+JF9r6TEeUXnzo=; b=IYYiK6kakciS1dV0
	Nsnf/jJukFoiJsVrzQogAoLYFuTHtWGCJbeuVeJaK2XLXbSVDB+RM5X5U15gNk0o
	KVfK6QTuNjAVSgpy/0HSnDwi8gJ1qCSWjhs01ZD64TWOY+vjKtLXT00f7hZSdOET
	ZOudXm+fvSJNCluUDMl0dZBQjNbkIAd/D6H3wwSHTAfkPQGqb7fizP3RShj7zwi3
	8t3KzWo+7Alzd8tHKA5pvshSmJ0zyY064QjYwEFekqOjv6B+Jps/hMMbR/D2cXi5
	7CB28gbfJER/cyuyo9jHNPXDbpzVZyFSEhpWbA3iLiI6BgG81mIVuFsupd6MTsbU
	TJ+dtw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4btvhqggnh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 12:35:29 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c53892a195so160239585a.3
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 04:35:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768998929; x=1769603729; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IENr8EZgkddRqNwXjLecpZCkK+Z5t+JF9r6TEeUXnzo=;
        b=RKerUNaUdycuwxWLBePENgtgbwXjwuZYirxUtFNVj8zB3iLSwtYo7+qqiY4hwlnkID
         aXzvCqwW4aagvN5zMNi6/BFUS/xcyoiDD6l8BgPTLbg8Nq1dyYVfaYyZ0S7T1QPf+ivf
         NW/ooRN3cFHFcCzkvLW44xiN/lM1W5HgKnlWeOJqkh6VmW/uCq7WOGWoxbgI9bjgIxxE
         Va//+w/Zzkuy/GoYL9lBQ2vMAQuOXMrQKLjUrm8DURzSO8sb+ix6Bpad1V5MPITm3kpJ
         0i+NS9DQSSPb3X+bv3oRhEEq+PYiuZeyMyc5DrXNkXFMfOWbraEo7sn76WKIyh3fCK3m
         /azg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768998929; x=1769603729;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IENr8EZgkddRqNwXjLecpZCkK+Z5t+JF9r6TEeUXnzo=;
        b=khA3MT3/kyQQJT3TAeOHnwt9dLob3APE2wXHKxzg4pRsohcwE5GyJ4prOGlhJR0dL7
         uV3tXjJvRD+EhILo1zi11NlGeDkpmCWLBVZMqadPlWYB7Z3CacvY2/TUjqkncbI2RFZE
         ozj32uYQUGsmwYnYyZJTkJpmM2ZrvWeN1zoZPFdkiOPERcUbEqzMWn+dxiteOADjAMaG
         bJu7Q5InPUyfQwyHYPKIwT1q/XbHsLCNrGll0WWL3MRU5w0TqDZ22/s4qDE/wkKofTrx
         Armec1szOlV7HLxkY1mUUg3G4BekcRHeSuz+50ssVda9Pcqa+IVQnFArueyEMY5bkBbs
         /9Yw==
X-Forwarded-Encrypted: i=1; AJvYcCXMsXGVTqcz0ijKeblRLg1oy0nwUXoo4Ye66BUk+JB7qwSMRb4ROgYfs5u7x1q1R0ZvgzLDTa/TtoT8@vger.kernel.org
X-Gm-Message-State: AOJu0YwpJJiwsM5VZsCRmxx6PnUxCwtZ7xl9btEcF+XwEuybHrX4ODUB
	LZozxHXNYAUCa+QsOQY5x8lbT3m615mDNNdJxSdDjyZ7yVWUh2r9dNDd8mfMWS4uxjIDIFKrmn/
	QFKhOExWDETxU53UcmnKd47oPbcFPLX6Tw/jfQsvmyGYci3HBAnmykDC2q5z40aLK
X-Gm-Gg: AZuq6aIHMHyoxqQmCAwulic3BzwUKK+kzHa4oMWCRMFwwEOAECJCXxkvLyuwW0C99hB
	ZlTklSQefjkpPqzjhWYxR20+86/5luzcgo4NOiAGzlbHtZdxBCtKD30Wwt4IcZMdpxo7DjX5gX3
	6JT20Bg3NamF6uvZIZuwzaXmZBZcqLFAEpJn+iuBMSPT+t/zELDp4qEHBHHHIdEQsaE/kX2D2FJ
	vR/fh3CbQzWeC8IWRWBI7j4MuRMnZx+4fCIF2+q8gyL1CXY5bL44GNLASyHi8X3gYPSt3CYWvyz
	uHY/mVZhLITOxSdmGiwf7wvynYU7EHrjZSRlaWgTH+PIvk1m/WJIXblro3xXvMSbG1inlbTB68T
	w5R5vEg7e/43aUYLE7E5Vg9JaNM6hexSOVIQS7163XY1ypZgkXzSdXURqU4hmmtJUJlo=
X-Received: by 2002:a05:620a:711c:b0:8b2:e346:de7b with SMTP id af79cd13be357-8c6ca3a8fcdmr670597485a.1.1768998928912;
        Wed, 21 Jan 2026 04:35:28 -0800 (PST)
X-Received: by 2002:a05:620a:711c:b0:8b2:e346:de7b with SMTP id af79cd13be357-8c6ca3a8fcdmr670593385a.1.1768998928472;
        Wed, 21 Jan 2026 04:35:28 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b87959fbb38sm1526713466b.52.2026.01.21.04.35.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Jan 2026 04:35:28 -0800 (PST)
Message-ID: <a0a227f8-8a5a-42a9-acdf-19c055cbf9db@oss.qualcomm.com>
Date: Wed, 21 Jan 2026 13:35:26 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/7] arm64: dts: qcom: sdm660: add common Xiaomi
 SDM636/SDM660 include file
To: Gianluca Boiano <morf3089@gmail.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
Cc: andersson@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        robh@kernel.org, david@ixit.cz
References: <20260120180052.1031231-1-morf3089@gmail.com>
 <20260120180052.1031231-3-morf3089@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260120180052.1031231-3-morf3089@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIxMDEwNiBTYWx0ZWRfX/FuiXPRUT3ME
 NpL5J3khM1ro/2Oux0TWgLurThSCnD3gQOvkkPr3fXdIZQjmtzQyPmUOI9eN+7WA8HFyDIDfyJy
 qaqGAlGw6vVGCyYH4lDfR+5QnXcwruwgenL3KF+rmgB6lVyyl/U+4jgqfdA2R9Eg3FVM4Qql4bJ
 udjEBZlEzYDheL4MdccEa2Je0Qwl9QYaSEpO/hOQDIWxZN4ig3mvu3mDAwNaXjiZ2dy3jopEpOK
 hzr6jIyBgBU8nIhadEqFEZ/dCTFYf31rRWkIhxAZqft+NZ+XkwonQ3JwNyvkagfufWdmKlq3F9Z
 cu8fxsQNnVqItudW0H2VsGfX3pUr35yKhnuZQj138uVddHlVo4Y1ppDjzOrUR1zNrTGgalJRrWG
 NBaxiOqJwWfU/cMa6ZIC2xZvROQrDYb1u3EgQJ8Za7r66LvCrUb3uk9hevbIEeKsHkszY8xOqvq
 +Q33HikvCd/mTEgZrjw==
X-Authority-Analysis: v=2.4 cv=S5bUAYsP c=1 sm=1 tr=0 ts=6970c811 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=pGLkceISAAAA:8 a=DyjDVKHP6fFwDWIGmFEA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: 74iPypt29clUvpH8yLoRn8rGA8C9VnFj
X-Proofpoint-GUID: 74iPypt29clUvpH8yLoRn8rGA8C9VnFj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-21_01,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 lowpriorityscore=0 impostorscore=0 suspectscore=0
 malwarescore=0 bulkscore=0 priorityscore=1501 adultscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601210106
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-257921-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,qualcomm.com:dkim];
	FREEMAIL_TO(0.00)[gmail.com,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 600D556EED
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 1/20/26 7:00 PM, Gianluca Boiano wrote:
> Create a shared device tree include file for Xiaomi smartphones and tablets
> based on Qualcomm SDM636/SDM660 SoCs. This reduces code duplication when
> adding new Xiaomi devices and ensures consistent configuration across the
> family.
> 
> The common dtsi includes:
> - PM660/PM660L PMIC configuration with volume/power buttons
> - Serial console (blsp1_uart2, blsp2_uart1)
> - Hall effect sensor (disabled by default)
> - USB (qusb2phy0, usb3) in peripheral mode
> - SD card (sdhc_2) pinctrl and supplies
> - eMMC (sdhc_1) with HS400 support
> - Backlight (pm660l_wled)
> - Framebuffer memory reservation
> - WiFi (wcn3990)
> - Bluetooth (wcn3990)
> 
> Also refactor sdm660-xiaomi-lavender.dts to use the new common include,
> removing duplicated code.
> 
> Signed-off-by: Gianluca Boiano <morf3089@gmail.com>
> ---
>  .../boot/dts/qcom/sdm660-xiaomi-common.dtsi   | 214 ++++++++++++++++++
>  .../boot/dts/qcom/sdm660-xiaomi-lavender.dts  | 144 +-----------

Try adding this to your gitconfig:

[diff]
	renameLimit = 999999
	algorithm = histogram
	renames = copies


>  2 files changed, 219 insertions(+), 139 deletions(-)
>  create mode 100644 arch/arm64/boot/dts/qcom/sdm660-xiaomi-common.dtsi
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm660-xiaomi-common.dtsi b/arch/arm64/boot/dts/qcom/sdm660-xiaomi-common.dtsi
> new file mode 100644
> index 000000000000..37ce675089fb
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/sdm660-xiaomi-common.dtsi
> @@ -0,0 +1,214 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Common devicetree for Xiaomi SDM636/SDM660 devices
> + *
> + * Copyright (c) 2020, Alexey Minnekhanov <alexey.min@gmail.com>
> + * Copyright (c) 2022, Gianluca Boiano <morf3089@gmail.com>

At this point in the series, I'm not sure your copyright is valid
since you're just shuffling code around. The year is odd too.

I noticed that Dang's copyright from the lavender dtsi is missing too

Konrad

