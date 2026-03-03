Return-Path: <devicetree+bounces-270623-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CLNSARUFp2k7bgAAu9opvQ
	(envelope-from <devicetree+bounces-270623-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 16:58:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BDA71F3160
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 16:58:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B8E2F306B380
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 15:56:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BABA49251A;
	Tue,  3 Mar 2026 15:55:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dYb1KQz5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F20B492187
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 15:55:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772553359; cv=none; b=kGpICPE1ywSdUtl8dcd1A3rtQ5D0vUmf+7ZhiyX9HlrCji4LqYiVdAuo/0tGqaWUFowg2vRJlFDezQpmEQBmpjNOA/Ue3Gu7hMpeCBSd0/S5rrJf876d3llqnqjTjIeQfIUcsCS7U0stOtY7yTAuQWlF39NiyCm2+wxmKdxAKTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772553359; c=relaxed/simple;
	bh=08otPddaBSK/iJqaPlVYLa99pVemHYoMD+SbFgLpoVw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qtsUT6yTxEIlipx7ffyYYeVj4f9IuqiLvA7gtpJSguBkZg9QbXuoYa7lmISR/+fsKE9wF0VOSD6s8Dage/mBwixBCj3KX7A5Aca6cqOylvz5Gd6nbvkgAdcXvHfgkw4qH0kvZvNTbkpIXlAGhczoTwW0f4uoDy4nMT0/92ssxZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dYb1KQz5; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-48375f10628so39443445e9.1
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 07:55:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772553356; x=1773158156; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hCve6WB7p5HFK86K5uC4kN5A3SIG4RHj/dCOzJXHcas=;
        b=dYb1KQz5Rz+uJAy0E51k40Ov+Pu+3cnl4Mm8pmPxErBUHGOOnBxGvRQFbxhWN2NEyP
         2sQwH9F829U1bqniNp8XlDyBbYhIEjXd3QaKEmwfSJDfX9kQBU29Uop2T5kkpryZrHvr
         XOKuIJXKsdL+pa9LctW5WuZwECvcEWVShnlfG+46n038tzXP42P3Z409fOvMSy4PNnUd
         c0SVWwPGI+6pF9w2T1Z/t8YkWv2RUWLS4yLYhMJ/ZobO3+34FH+P8sHQsPl1G75dCvOU
         mxfOS1dWtzOy+j/Zva+AXMQcAQQ7PM2RSKFy97rtTymu4/He94jSdD867cDhb/ZrQEL3
         83VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772553356; x=1773158156;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hCve6WB7p5HFK86K5uC4kN5A3SIG4RHj/dCOzJXHcas=;
        b=r8jYdeASZxNZcqgxDDOnIf4C0rn4AFbonZNxX/qRKDJUy6mB3Qz2acuGC2xE4U10GY
         tXXXqDUcHzsjF/NDOkM3hHy0vvC3XwRbjtXrMUMpC2DffEfme5fV/9sNUhgD04sD6Rnf
         5vAgZDZOe97pFRin0pOOlOC0fuk4YDctTtRWVsyOQSroGbLI3y0l0um1Q9JbytJcaVqW
         HsJgPXE0hRXHXD1QqjmhFYM3Q9XGnM5+6mEsb9GkfBvOxhQPwC/qP7aO9uHcqWTo+bWy
         l9g7U9a9PEJon+FJix5s+ZAAXJ0EkE2mKAwJ718h6dg2GNKhRfHNYrA9rE6mulz0PT5f
         sTCw==
X-Forwarded-Encrypted: i=1; AJvYcCXZ2bZTWkzwQaHhaUlM+hvCLsIwOc4DJhPUkN8Ka3VZL65y0/KwL5KFhFCA5kpceo21owayySZg/944@vger.kernel.org
X-Gm-Message-State: AOJu0YzeMiwqPcm47Wy6qvf1CJLaWjq6wPTZ57QF/KN1jWk1SAXl5KFp
	MY7nlir+pZFesGv+6UwsskTZ/J/JjmTxflFDHOmZZc6R1TVuw5cXdpxN
X-Gm-Gg: ATEYQzyp5kzPEJo/3mTfcn9L3wgCvJ+3Wh8T521KY8zPSqFyy3ahhXYTfAF0spkxD38
	l2wPQ5TYWTkah4r/A6OaYGATmP1Azn0NP/cPhKiONtFliVsNuilCot1MJVJnf7rb8/qZSmAU34G
	nnKb/2wRna4hvScZftBzs/jVPXPjg4F7IirQhNid6BLOKWngP64cgSnKAwDJ5QQozwrsShPxJTY
	eQeVhu7+lrlppLfW1mk86PIDcYa4ZFaatNHtQ4wJ7phG4zPetW4VTGiM9wTl2P7EgGGOK0cVTsH
	eielLw9Q7IHfUIyVy7+bCSCnvNtsXgNDqc6TNpVkyEitK1x1gD6BLBJ3P2wBKD/u7zQjjrt0XA1
	ukKjCY4gjYPec31VOL6AFmdZ66Ox6qIpu5/f99fyw6TPzmNtKV2oIbyTGeCq7umkLjlLwJwhlcg
	cd7t5cg8SahdTnlj4hYhyg2T2hx1Yuf9mAPAsyQ2DUjyuEhgN7VObDlKn1jTKX4VgWg50mqQ==
X-Received: by 2002:a05:600c:8b84:b0:479:2f95:5179 with SMTP id 5b1f17b1804b1-483c9bb1adbmr288516035e9.15.1772553355437;
        Tue, 03 Mar 2026 07:55:55 -0800 (PST)
Received: from [192.168.68.74] (93-34-120-147.ip49.fastwebnet.it. [93.34.120.147])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439b485a0b6sm20131646f8f.39.2026.03.03.07.55.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Mar 2026 07:55:55 -0800 (PST)
Message-ID: <84ccccd0-bbf6-4f36-9862-68264f85ed9e@gmail.com>
Date: Tue, 3 Mar 2026 16:55:53 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] arm64: dts: freescale: imx95-toradex-smarc: Support
 Cortex M7
To: Frank Li <Frank.li@nxp.com>, peng.fan@oss.nxp.com
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Emanuele Ghidoli <emanuele.ghidoli@toradex.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20260303121324.1576841-1-ghidoliemanuele@gmail.com>
 <aacAYYuPkqgV3QYu@lizhi-Precision-Tower-5810>
Content-Language: en-US
From: Emanuele Ghidoli <ghidoliemanuele@gmail.com>
In-Reply-To: <aacAYYuPkqgV3QYu@lizhi-Precision-Tower-5810>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 6BDA71F3160
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,pengutronix.de,toradex.com,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	TAGGED_FROM(0.00)[bounces-270623-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ghidoliemanuele@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[5.63.12.80:email,5.62.198.0:email,5.63.20.32:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[5.62.229.64:email,toradex.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,4.196.180.0:email,5.66.33.96:email,5.62.237.16:email]
X-Rspamd-Action: no action



On 3/3/26 16:38, Frank Li wrote:
> On Tue, Mar 03, 2026 at 01:13:06PM +0100, Emanuele Ghidoli wrote:
>> From: Emanuele Ghidoli <emanuele.ghidoli@toradex.com>
>>
>> Enable Cortex M7, the vring nodes, a mailbox and reserve DDR memory for
>> the M7. The remoteproc framework is so capable to load and run the M7
>> firmware.
>>
>> Signed-off-by: Emanuele Ghidoli <emanuele.ghidoli@toradex.com>
>> ---
>>  .../dts/freescale/imx95-toradex-smarc.dtsi    | 50 +++++++++++++++++++
>>  1 file changed, 50 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/freescale/imx95-toradex-smarc.dtsi b/arch/arm64/boot/dts/freescale/imx95-toradex-smarc.dtsi
>> index 5932ba238a8a..77c4a6dee098 100644
>> --- a/arch/arm64/boot/dts/freescale/imx95-toradex-smarc.dtsi
>> +++ b/arch/arm64/boot/dts/freescale/imx95-toradex-smarc.dtsi
>> @@ -42,6 +42,16 @@ clk_serdes_eth_ref: clock-eth-ref {
>>  		enable-gpios = <&som_gpio_expander_1 13 GPIO_ACTIVE_HIGH>;
>>  	};
>>
>> +	cm7: remoteproc-cm7 {
>> +		compatible = "fsl,imx95-cm7";
>> +		mbox-names = "tx", "rx", "rxdb";
>> +		mboxes = <&mu7 0 1
>> +			  &mu7 1 1
>> +			  &mu7 3 1>;
>> +		memory-region = <&vdevbuffer>, <&vdev0vring0>, <&vdev0vring1>,
>> +				<&vdev1vring0>, <&vdev1vring1>, <&rsc_table>, <&m7_reserved>;
>> +	};
>> +
>>  	connector {
>>  		compatible = "gpio-usb-b-connector", "usb-b-connector";
>>  		/* SMARC P64 - USB0_OTG_ID */
>> @@ -156,6 +166,42 @@ linux_cma: linux,cma {
>>  			alloc-ranges = <0 0x80000000 0 0x7f000000>;
>>  			linux,cma-default;
>>  		};
>> +
>> +		m7_reserved: memory@80000000 {
>> +			reg = <0 0x80000000 0 0x1000000>;
>> +			no-map;
>> +		};
>> +
>> +		rsc_table: memory@88220000 {
> 
> I remember driver use hardcode rsc-table, I suggest fan pan to update
> driver to support memory-region-names to avoid use hidden ABI.
> 
> Fan peng, what's current status?
> 
> Frank
> 
>> +			reg = <0 0x88220000 0 0x1000>;
>> +			no-map;
>> +		};
>> +
>> +		vdev0vring0: memory@88000000 {
>> +			reg = <0 0x88000000 0 0x8000>;
>> +			no-map;
>> +		};
>> +
>> +		vdev0vring1: memory@88008000 {
>> +			reg = <0 0x88008000 0 0x8000>;
>> +			no-map;
>> +		};
>> +
>> +		vdev1vring0: memory@88010000 {
>> +			reg = <0 0x88010000 0 0x8000>;
>> +			no-map;
>> +		};
>> +
>> +		vdev1vring1: memory@88018000 {
>> +			reg = <0 0x88018000 0 0x8000>;
>> +			no-map;
>> +		};
>> +
>> +		vdevbuffer: memory@88020000 {
>> +			compatible = "shared-dma-pool";
>> +			reg = <0 0x88020000 0 0x100000>;
>> +			no-map;
>> +		};
>>  	};
>>  };
>>
>> @@ -572,6 +618,10 @@ &lpuart3 {
>>  	pinctrl-0 = <&pinctrl_uart3>;
>>  };
>>
>> +&mu7 {
>> +	status = "okay";
>> +};
>> +
>>  /* SMARC MDIO, shared between all ethernet ports */
>>  &netc_emdio {
>>  	pinctrl-names = "default";
>> --
>> 2.43.0
>>

Thanks Frank. You’re right.
I spotted that my patch is not working as expected, due to a last minute
renaming on my side.
I’ll rework the patch accordingly and send a v2 to align to current expected
naming.

Emanuele

