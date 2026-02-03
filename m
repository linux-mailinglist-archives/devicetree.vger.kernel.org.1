Return-Path: <devicetree+bounces-262169-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GOfnDmDLgWl1JwMAu9opvQ
	(envelope-from <devicetree+bounces-262169-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 11:18:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id CA373D77B6
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 11:18:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B549E3071C4A
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 10:17:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9ABD30ACF8;
	Tue,  3 Feb 2026 10:17:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TamJxJqn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47CC32D8367
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 10:17:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770113824; cv=none; b=R4tmY7Lgx0Lo7sM7dNlpBWlOpWk/KvZAy9S4EMJ7xZPseK/JjrQn6MzYbqpng4DpmH2vCwTX7i8APnnNlQfrZEQqBPhVA1LxMTsIlr1iZsOwNSd/9TaE8q4gF9iFLuhhiYVrqI2B/d6M+qulmmHFtSQIzg9nBpV3jlElVf3OpN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770113824; c=relaxed/simple;
	bh=OV6h1EbKbY8CqIrF6dRNWqYegK9uWHJ/xg8S0f3xyEw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YODp7LIGdH5VQgbxXhMDW+lwB1LPGV6oR2oTKlIrFArm3oyLxjxORQbFZgv+DeHp0y2qUN0zeivEG719tQ6vk9AnY2I0U5Rhs1xPolgkcHLcQzyH3cTAnM33/OkiDgGI9juqv9dedlzdR6Srg3GS9ByYIWZheNto9iENHKHPrUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TamJxJqn; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-4359228b7c6so3808852f8f.2
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 02:17:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770113822; x=1770718622; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fscSYj6Edq1KO+eKiUWNHrblwvs+zwoKFQhpyWKzmWc=;
        b=TamJxJqnYgko1/8XE86/uyQ0d6Ldj9esgNMny0+IceW/uzkOuDpBTxCo64fOIMjlYl
         S6MtuxDcD8wzSOCR5S83JP9AUfmZ3ehS2faPgiYAXQsqNf5ziQajvcdyGUExaDG3SlpD
         Cv3iyWq+fCttOk4VWCjL6sw76/8chS88NLLCYikP+LYtUDFfwIikN40lbClzo+0WRhFi
         nOeqikhwTuEn1FmHj1xO+JiqFfhfC18VNECmFkBy9j3Rl+DNo2aA/ejYKVvfG2OIL7q3
         AJb2dC89yWvMO8lbYDjqAE7//Bi2rq0z2lZwftSx4/uUh3yAm966ChTLWPq0jjzaM3WT
         2yAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770113822; x=1770718622;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fscSYj6Edq1KO+eKiUWNHrblwvs+zwoKFQhpyWKzmWc=;
        b=X2nBbvtEJ3D35/mD2jMpbe75+EoNrgvexOKVRFdaVNtL4+CBRgcEMBB/3FJA3XQH3s
         kwgKgTG7X8WOr9tTtvFAKzfE9RlFiDWwayUKfilfgqwRfTiS74CJMsQksY9IubEjsXpm
         CJdO/gSB+FjFDntxPOajXonHhus5RMMSqZYawwk58gi2z/N5C8owSeQh6czj+DMkvz17
         dqF+W+v9OxutkBRkpiueiV0K0WczT9FMvwQ1APe4FOiZHZ1KaoSc8QAkPb25G3PU7W1E
         C26I+3xzaU/52c8lIBwxXR3Pqrq/pTQsZ4gKBPvdN3BbrSF60BudgIT3x849mrqttspW
         SG9Q==
X-Forwarded-Encrypted: i=1; AJvYcCV7AmHS+SPBJJSVlsnlFNBmSmw7DPPqHFsfLUesTNUIBQuJFhgzB1y/KRe0OkMWesqgtzDYKvxQdlw3@vger.kernel.org
X-Gm-Message-State: AOJu0YxiW37JdXJsRn371p9kCsGBHBMi7nQlXU9FN9AbhXje0CFWj/1g
	X4l/Nbae/ibUTn/JTowBXE8uoZAzrtRMYYQeRA/KNFQjnggwQtNXphyu
X-Gm-Gg: AZuq6aIXFqs0oiPozbNX6MK08xCBaTGD+lrVP+P4FvgMPdpPYHMvfSuw2heRejA1Fwh
	+AkS1OZ5egcIXzXNNTCLA/GoV2VgPxBPui8akiBVCvuOf8mMNpuAuZ8kP7Z3Ol0JamwBWMlUjZF
	mT3p8mmsWHcVCi55mSsHYW4E2akLPk+tawmNGw0YRXiPMkT1JaJZ3DLwYLFw9WqX/7LQUGGoxul
	RfQdPQF9V+MbbyNCdsmuH4wSbf2w4mFLF4uAIGb8bAhK3rgHRYLIY34BWY/EDw7mGvBmtBR15+C
	sfPRIZwqGKK4arUXsjkXOAy6KE398SUlG7hAM9M8ofUL/97RaTTZjg/YtIcY98zGzDzv2qV6NfW
	iM7KBWSNgab9SSo/RBeHBooHbYTHbAYst7BCRIrGzaIWKrYGqy0J9IJ6ysVXUwZkTwEcMg6ff6a
	92oq6pMIBA5lrHDL3PrC+aIv7PWFdXSUnSX/LCtzje1wE=
X-Received: by 2002:a05:6000:2c01:b0:42f:8816:a509 with SMTP id ffacd0b85a97d-435f3ad2726mr23780172f8f.62.1770113821338;
        Tue, 03 Feb 2026 02:17:01 -0800 (PST)
Received: from [10.25.220.39] ([128.77.115.158])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e135422csm53010801f8f.40.2026.02.03.02.16.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 02:17:00 -0800 (PST)
Message-ID: <d9c72c09-0b10-4b5a-a49a-ec93764bdbab@gmail.com>
Date: Tue, 3 Feb 2026 02:16:57 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] arm64: dts: imx95: Reserve eDMA channels 0-1 for
 V2X
To: Peng Fan <peng.fan@oss.nxp.com>, Joy Zou <joy.zou@nxp.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Frank Li <Frank.Li@nxp.com>,
 Peng Fan <peng.fan@nxp.com>, Ye Li <ye.li@nxp.com>,
 devicetree@vger.kernel.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
References: <20260130-b4-imx95-v2x-v3-0-95af05bece95@nxp.com>
 <20260130-b4-imx95-v2x-v3-1-95af05bece95@nxp.com>
 <aYAYeQaGK2RUFQs6@shlinux89>
Content-Language: en-US
From: Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>
In-Reply-To: <aYAYeQaGK2RUFQs6@shlinux89>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,pengutronix.de,gmail.com,nxp.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	TAGGED_FROM(0.00)[bounces-262169-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[laurentiumihalcea111@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[2.128.222.128:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: CA373D77B6
X-Rspamd-Action: no action


On 2/1/2026 7:22 PM, Peng Fan wrote:
> Hi Joy,
>
> Sorry to jump in at V3.
>
> On Fri, Jan 30, 2026 at 05:36:27PM +0800, Joy Zou wrote:
>> Reserve eDMA channels 0 and 1 on the AXI eDMA controller for exclusive
>> use by V2X (Vehicle-to-Everything) fast hash operations.
>>
>> Reviewed-by: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
>> Tested-by: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
>> Signed-off-by: Joy Zou <joy.zou@nxp.com>
>> ---
>> arch/arm64/boot/dts/freescale/imx95.dtsi | 2 ++
>> 1 file changed, 2 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/freescale/imx95.dtsi b/arch/arm64/boot/dts/freescale/imx95.dtsi
>> index 55e2da094c889fc7c1096d0e36f31ae118d2a982..9ac82da2ff440e08ae8378d7ff830a568d50a354 100644
>> --- a/arch/arm64/boot/dts/freescale/imx95.dtsi
>> +++ b/arch/arm64/boot/dts/freescale/imx95.dtsi
>> @@ -631,6 +631,8 @@ edma2: dma-controller@42000000 {
>> 				reg = <0x42000000 0x210000>;
>> 				#dma-cells = <3>;
>> 				dma-channels = <64>;
>> +				/* channels 0 and 1 reserved for V2X fast hash */
>> +				dma-channel-mask = <0x3>;
> This is wrong. Per dt-binding,
> dma-channel-mask means Bitmask of available DMA channels in ascending order,
> The usage in this patch does not match the dt-binding.


Ah, good catch. It would seem like our EDMA driver reverses the meaning of the "dma-channel-mask"

bits (i.e. bit x set means channel x reserved instead of channel x available).


Now, I wonder how we should be proceeding with this. According to the DT binding, our devicetree

configurations are wrong. Since there seem to be only 8 upstream instances in which this property is

being used I guess it wouldn't be so difficult to correct the driver's behavior and then correct the

devicetrees?


