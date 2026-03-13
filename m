Return-Path: <devicetree+bounces-275188-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8Da+OCIBtGnCfAAAu9opvQ
	(envelope-from <devicetree+bounces-275188-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:20:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 88718282DBE
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:20:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B2DED321346D
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 12:18:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 119BB391E77;
	Fri, 13 Mar 2026 12:18:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GMR8E5Hy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47433391827
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 12:18:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773404327; cv=none; b=ohDBs+6xw6Le4KVcdIkorlPnsrcwKapOFCdEOyw8A0X/+AAWjWf/JyP8d6YW6J3FIlraJpV1mm2/1GOTjRLgAUrPNT34p5CZ/LTb9G1AkF/YiGEJM7IOPcKiFK2iRWuGb16nTeTeff/4IGb4aOUlBxpHKWzu7JqSCawdGyBEKbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773404327; c=relaxed/simple;
	bh=V+lC6EjJY4lOyB1rR22LNtAT1Vlotp4LU45DmHO/UY8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sOq19vr1/FYYYqSmhGEgui8K7ZfkmHhHpP1efppNa2lpMi1lsJSUudcsod2sSRMzj7HU3gBF4bF6g0r2r+GjxI8gx1tMOsFH9EmTv1AeC45/jW7yHc0J+WFzt0Rziv36gBz58gJIchqxNH43e1Ygwqa2rR6Kmcsq4fsCJqLrnC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GMR8E5Hy; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-439f59dfda2so1722648f8f.2
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 05:18:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773404324; x=1774009124; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4vDJxFgdwUwROzjUq7xJrFddmidfBuen5YK8xbhB4mk=;
        b=GMR8E5HyNWdXKxTRba2IiHoZhNE+5btYwPZDw0/cTqNmOTfNzBOpLA2F8LesAOXF+5
         vRUgrKWQXowArBxEWDPyzs6P6Ivyqv1X7sPh31HDl7TIZuBJW1uOiesfnrEKPmm2lrl5
         l+QR4YDjF/fSjqlzI2XCeEXkerfiEp9FQ5jJqj0DONkYgAxdRNE7Gc9RtBXH8hNnprKz
         l3ZJYfSBAU1iscXZ0tYZmKF5Sw/Z7E3+U5fD7qTecGk7hO86iXmp7ve90H7Epq4t4wkw
         ntiR55WsLNGl5LPMJA13FyCl1SpzhEkV7yNQBA0MFtPEVirejGA0DdnYPy7iccTYX2p5
         OJJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773404324; x=1774009124;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4vDJxFgdwUwROzjUq7xJrFddmidfBuen5YK8xbhB4mk=;
        b=S7kzMkchn5d90R586QCsdEjirhwz58zmbesMbD55DzET/MtYTtzGamOQz7TiQiE/VZ
         zh6MjvmxoHrkjYaObBTwLUvngCN9HD6LJr68dNxNtnlpTAnEqEothS4DvOGvwVOKOR6M
         QG5f0H6QfKtvh6TDkXtxKAjKD84fSRd2IuWUpGRUi1LZ9laYfxTQtDKbBr8XbcJKvv4l
         JpXm3mCZQ/BCY/3C9y+c07oOLfzbvF3jsPyqcwNNOr2vb7ZjX3Oe3fEkR3VoVRPO1VwY
         SzwCkykIr3ip/9+La9yombGJUG28J99ceEMpfT4Uy0IOih8oLCpx0FdawXEuk8a8E7xh
         U3Mg==
X-Forwarded-Encrypted: i=1; AJvYcCU34fnsEc7U1pm9Ux/6ii/acer/DzlPmQlFpyNjJVcFu8HwtuNs7Fwv1bOn+u0mCb5Lyz48F3bCJQ5M@vger.kernel.org
X-Gm-Message-State: AOJu0YypMLOXOaWucUosyqm2BMfGKEMdYUHtus1KPqV9Q4bfcN/evhwG
	AmQBOr5v1FieejHN8ePnQ5QD/i7SrDJUdBqL3dDzo3s4qOg/X9RHi6Y7S2tcpfH+/0M=
X-Gm-Gg: ATEYQzzi4/pY8TiSaWWtdi529vevBRE2zc6uWfilWKHnVTWn4bMavUBb7L52Yud0ITe
	iWn/QS2nTY+hocmWhRdAmhV/+GOxxt7yC5H8S54kQ09a4o5AtOprNI6JxE26Le4w7EqxYVE+tjT
	gI5uhkbDLOsX0r5XjHl6zNHrRBrPuQhVG177txXuiLpnXk1dR3p6OeroygB5i7W4Ph1GgB1A/2u
	LLlmsvOst3EGvdlXhl1+YbmW+gH7/c9QJd5fUF30GBxsGYxDFU9a13tfyg2TBAHUZ1F4rthHlJ3
	Wj2bnRCo62I7PWetqFOFj4hTVyowPR3H6MyRIOzJsjlZvCk9VpKG//AIRrtGNYDvE8usb0wyDEW
	w3NL8rTa4byBcloNVmbaaZrYznu8Ko+uB79+DZmNnZlkbDzBRwoGmIkOCueT+jQ2qDuzAf1Kwte
	0zRxajC9O5E2sA1PoPDglbd71Xcm3FncoWP5c=
X-Received: by 2002:a5d:64e7:0:b0:439:b59e:5e6a with SMTP id ffacd0b85a97d-43a04d816cemr6178617f8f.14.1773404324041;
        Fri, 13 Mar 2026 05:18:44 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.176.163])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fe19ac5fsm17764848f8f.1.2026.03.13.05.18.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2026 05:18:43 -0700 (PDT)
Message-ID: <132116be-2964-4b98-be2b-1baae5bfb58e@linaro.org>
Date: Fri, 13 Mar 2026 12:18:47 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/5] Add driver for EC found on Qualcomm reference
 devices
To: Anvesh Jain P <anvesh.p@oss.qualcomm.com>,
 Sibi Sankar <sibi.sankar@oss.qualcomm.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Hans de Goede <hansg@kernel.org>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, platform-driver-x86@vger.kernel.org,
 Maya Matuszczyk <maccraft123mc@gmail.com>
References: <20260313-v04-add-driver-for-ec-v4-0-ca9d0efd62aa@oss.qualcomm.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20260313-v04-add-driver-for-ec-v4-0-ca9d0efd62aa@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-275188-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bryan.odonoghue@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linaro.org:dkim,linaro.org:mid,qualcomm.com:email]
X-Rspamd-Queue-Id: 88718282DBE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 13/03/2026 10:29, Anvesh Jain P wrote:
> From: Anvesh Jain P <anvesh.p@oss.qualcomm.com>
> 
> Add Embedded controller driver support for Hamoa/Purwa/Glymur Qualcomm
> reference boards. It handles fan control, temperature sensors, access
> to EC state changes and supports reporting suspend entry/exit to the EC.
> 
> ---
> Changes in v4:
>    - Fix fan count calculation to use min() instead of max() to correctly
>      cap fan_cnt at EC_MAX_FAN_CNT.
>    - Remove unnecessary mutex lock/unlock.
>    - Disable fan debug mode on ec module removal.
>    - Fix issue reported by kernel test robot.
>    - Consolidate hamoa-iot-evk specific changes into hamoa-iot-evk.dts.
>    - Add board-specific compatible strings as per review comments.
>    - Link to v3: https://lore.kernel.org/all/20260308233646.2318676-1-sibi.sankar@oss.qualcomm.com/
> 
> Changes in v3:
>    - Revamp the bindings and driver to support generic ec specification
>      that works across Qualcomm Hamoa/Purwa and Glymur reference devices.
>    - Add ec nodes to Hamoa/Purwa CRDs and IOT-EVKs.
>    - Add ec node to Glymur CRDs.
>    - Link to v2: https://lore.kernel.org/lkml/20241219200821.8328-1-maccraft123mc@gmail.com/
>    - Link to v1: https://lore.kernel.org/lkml/20240927185345.3680-1-maccraft123mc@gmail.com/
> 
> ---
> Maya Matuszczyk (1):
>        dt-bindings: embedded-controller: Add EC bindings for Qualcomm reference devices
> 
> Sibi Sankar (4):
>        platform: arm64: Add driver for EC found on Qualcomm reference devices
>        arm64: dts: qcom: glymur-crd: Add Embedded controller node
>        arm64: dts: qcom: x1-crd: Add Embedded controller node
>        arm64: dts: qcom: hamoa-iot-evk: Add Embedded controller node
> 
>   .../embedded-controller/qcom,hamoa-ec.yaml         |  56 +++
>   MAINTAINERS                                        |   8 +
>   arch/arm64/boot/dts/qcom/glymur-crd.dts            |  22 +
>   arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts         |  16 +
>   arch/arm64/boot/dts/qcom/x1-crd.dtsi               |  16 +
>   drivers/platform/arm64/Kconfig                     |  12 +
>   drivers/platform/arm64/Makefile                    |   1 +
>   drivers/platform/arm64/qcom-hamoa-ec.c             | 468 +++++++++++++++++++++
>   8 files changed, 599 insertions(+)
> ---
> base-commit: a0ae2a256046c0c5d3778d1a194ff2e171f16e5f
> change-id: 20260309-v04-add-driver-for-ec-3fa478f264d9
> 
> Best regards,


echo 'file qcom-hamoa-ec.c +p' > /sys/kernel/debug/dynamic_debug/control
echo 6-0076 > /sys/bus/i2c/drivers/qcom-hamoa-ec/unbind
echo 6-0076 > /sys/bus/i2c/drivers/qcom-hamoa-ec/bind
dmesg | tail -n 15

[   27.301126] qcom-hamoa-ec 6-0076: EC Version 0.35.0
[   27.311768] qcom-hamoa-ec 6-0076: Fan count: 0 Fan Type: 0 Thermistor 
Mask: 0

?

---
bod

