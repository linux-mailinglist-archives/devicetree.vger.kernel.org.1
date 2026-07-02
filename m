Return-Path: <devicetree+bounces-319579-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 254oLhi4RmrqcAsAu9opvQ
	(envelope-from <devicetree+bounces-319579-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 21:12:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F27B6FC6EE
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 21:12:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=CQgTSdZ1;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319579-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-319579-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A340E3024E7F
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 19:12:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7023E3859DC;
	Thu,  2 Jul 2026 19:12:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53ED0385D66
	for <devicetree@vger.kernel.org>; Thu,  2 Jul 2026 19:12:17 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783019539; cv=none; b=cRJiXXv9TzsnEK8NJ7WdDtowg+9pwX4dBrDBxlKHQPWlpx1HLhfPlewq2S6eZGaAg0UB8gBCDC5y8r99Kanw5vq/+81GDB2ebO9iQ3WoRtsePYZVP12b0wKvy2QxcSiE3a2fXlhAf3kcxsn02Ph/ibN14IwPHs8DyWwg1btI7CY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783019539; c=relaxed/simple;
	bh=AVIYuPCgubCuYve1OA2lx01GpnFJKVLmIPNWXCKWycQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=F3x89jnmjuz1kMrl5HPlYi+JhrhF9Bq/UpvIWhaYL2FU00h02vwePPMPzuQIU47yK7+amO5rJWcqPYfyWMCha26K1Hbyysf11/LQj9HFoUJo0T2JOmFhxmj+6wQQTiMWgCAEYc7NWfsar2LqlJ/vrHN3BHoYP2PCuzr8LPBuCJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CQgTSdZ1; arc=none smtp.client-ip=209.85.128.49
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-493ae59eca6so15288095e9.1
        for <devicetree@vger.kernel.org>; Thu, 02 Jul 2026 12:12:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783019535; x=1783624335; darn=vger.kernel.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=yWVl92ySB0LOea/djTBKxUFhK5i6uFHRlukNHQHiJp8=;
        b=CQgTSdZ1EJ9vC0pV0hRyu8KzEoFEX7w0dfkqChjBf7ehwthEQjfQlUeUkOaPX5Av3o
         +VBg78ISUalx/kXmyqhgb0kCHoEpJWl2R0FZToH75WygA/M6dYT1h1S5fyXLtvwnEN57
         QKHrfXLl69IVqofabhHiK5hBN6m4NYe08jkGfdp0hE1FQ5Y/qrFcnLmWy2fOog5nuH94
         NMW+rvrjkAhFamtDmqf5Dl92yWE9D3YdpYNtrno6SefvbBMzQMGf0b9H5fIfsAf6qmw1
         d5nmkSpsbhRfTB/RDAXYY60F8LUWKHIvG7mzVwahroQEEmRtX17iXTVt8IijMi92pi1t
         rnXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783019535; x=1783624335;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=yWVl92ySB0LOea/djTBKxUFhK5i6uFHRlukNHQHiJp8=;
        b=DNfK+GG1nTvfZp1xpdir3rDNJhbxb8Hcc+uDwt9NnEuKJSGq+Q5Y6vcQ7sHeBTe/BM
         oRcn+PNcB4balujYcpRWm43Z2wSyTL6h8UvvAv+gIpP59Yvv4c9F5FP5k0WI+466T1AP
         KE/dXPzLSqox8kLTMStF82oKp6cxUuPL8lh1rBPBxl9m4Tkh4m2zJ4LFRqCf0bL1dx8J
         at/yabKpK2z4WCEqQiqTgTLSp76vFmbjBIrm/xLBqf5BAksX051M+IhAdDms25BgC2k9
         smQn1wTGcx0x7IOZXP296z9BuOAsBlQdoLCc68bE5VHuBG0eLzt5rPknT661xlqMohJZ
         DOEg==
X-Gm-Message-State: AOJu0YyZwdkYwDvsL1uJ4Y/PDCupdfvJhIA7gSitVNhH8KlL3oR6CkT8
	lPKALTX3f7iNz9yDe+nm27DlONacsHceWgQ0TIyb9Gysj+jBPAuv/cpQ
X-Gm-Gg: AfdE7cm51b5X1QL4qN6sb/EXBd+5IV2oM7YFExblPZn9Q2OoZl1YVh3N6wg3marSOtR
	cA8BLTY3ISmrDzBfqX7R1Hb5INOc5Mq1V5+e3JBDgKY3VLyFBvYiGteQPGYclWzSUmuZfUtwXMG
	hc1SaVxpzUWq5TjEKhO9hq6V1utw5IGsz4E6NVWofy8K1O3IUHclZMPfJhwLchrNX34MB8m46QH
	Zb3kQ3jXu/IX0PVUGVIp5e688Gzm2iEmmM1NawvL03aqIkF0yLxkdjOPLy6da7aAIIhQjpzhPNk
	0IrjFweE21yUGCOfxDgyN0MR2PHeD7fQTpDGRPJRjaLVwCRO3MCCFFZR+kACy9wl6k3DYtvUk4F
	kCsjS+/f7B/iwDFFw+NZ06hchlP6smc1yHB58WnVhsuSfyWJIocW7KETw4J9kloxC0LeN99jLq/
	O3jWzHnsGun+H+I9x3cTWAUmMeQZjFOWo02LyD2L8JWbnd+pQgJ81MncAqU16tD8O+GywVz4gQP
	DHi8T6I
X-Received: by 2002:a05:600c:290:b0:493:a613:56b2 with SMTP id 5b1f17b1804b1-493c3cd5967mr65147035e9.8.1783019535315;
        Thu, 02 Jul 2026 12:12:15 -0700 (PDT)
Received: from [10.128.11.240] (195-23-151-163.net.novis.pt. [195.23.151.163])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-493c636cc08sm83399065e9.11.2026.07.02.12.12.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Jul 2026 12:12:13 -0700 (PDT)
Sender: Julian Braha <julian.braha@gmail.com>
Message-ID: <eff80e31-f833-4790-8114-1ece4ed3a044@gmail.com>
Date: Thu, 2 Jul 2026 20:12:12 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 3/5] mfd: aaeon: Add SRG-IMX8P MCU driver
To: "Thomas Perrot (Schneider Electric)" <thomas.perrot@bootlin.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Linus Walleij <linusw@kernel.org>,
 Bartosz Golaszewski <brgl@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 =?UTF-8?B?SsOpcsOpbWllIERhdXRoZXJpYmVz?= <jeremie.dautheribes@bootlin.com>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck
 <linux@roeck-us.net>, Lee Jones <lee@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-watchdog@vger.kernel.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
References: <20260630-dev-b4-aaeon-mcu-driver-v6-0-d66b5fcbd2f0@bootlin.com>
 <20260630-dev-b4-aaeon-mcu-driver-v6-3-d66b5fcbd2f0@bootlin.com>
Content-Language: en-US
From: Julian Braha <julianbraha@gmail.com>
In-Reply-To: <20260630-dev-b4-aaeon-mcu-driver-v6-3-d66b5fcbd2f0@bootlin.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-319579-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:thomas.perrot@bootlin.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linusw@kernel.org,m:brgl@kernel.org,m:shawnguo@kernel.org,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:jeremie.dautheribes@bootlin.com,m:wim@linux-watchdog.org,m:linux@roeck-us.net,m:lee@kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-gpio@vger.kernel.org,m:imx@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:linux-watchdog@vger.kernel.org,m:thomas.petazzoni@bootlin.com,m:miquel.raynal@bootlin.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[julianbraha@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[bootlin.com,kernel.org,pengutronix.de,gmail.com,linux-watchdog.org,roeck-us.net];
	RCPT_COUNT_TWELVE(0.00)[22];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[julianbraha@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5F27B6FC6EE

Hi Thomas,

On 6/30/26 13:51, Thomas Perrot (Schneider Electric) wrote:
> +config MFD_AAEON_MCU
> +	tristate "Aaeon SRG-IMX8P MCU Driver"
> +	depends on I2C
> +	select MFD_CORE
> +    select REGMAP
> +	help

Your REGMAP select here strangely indents with spaces, while the rest
of your kconfig attributes (and this file) are using a tab.

- Julian Braha

