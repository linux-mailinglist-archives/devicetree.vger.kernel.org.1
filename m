Return-Path: <devicetree+bounces-311300-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id DVFMAF45LWp8eAQAu9opvQ
	(envelope-from <devicetree+bounces-311300-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 13:05:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EA3367E680
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 13:05:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=IX7qyOYf;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311300-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311300-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1F699301477C
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 11:05:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DEB43CDBB5;
	Sat, 13 Jun 2026 11:04:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E62443CB2CF
	for <devicetree@vger.kernel.org>; Sat, 13 Jun 2026 11:04:57 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781348699; cv=none; b=EzRvp0wYMTjEuLEuGFJBhrVzyDUmOoHEpclPwBuL77BOrNs/c6d/SQrJmtqE67FpioRUFn7+7e9elTkAuXCSb4URRxqyvwPz9Ox8GKIC8JEy5EAYyxkO+47zBl9HvK3cJ3kQ3dXw13nil0IaoiF/XllGW7y81MY5g/PGm3MP664=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781348699; c=relaxed/simple;
	bh=nBEHkzqVLw482vGdz5GT4uuKqoZ91h8lkYDukdrN6Gk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=iLm9zC7XB2zonxWMPIpTvq0HXsm3vR0FP7aHYMqQhdmQO8pJO8V9o0z2sga1Sr6N4kXOYIRdyMDEXmGfaSNfTX8iQukZl/9t8trzmDWcYkgI/JOSaBCj5zgS/wjfuuksGG1M2fxeODhGPysOhpQVlgZwY3CTVL8mQjqYBM2bYtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IX7qyOYf; arc=none smtp.client-ip=209.85.128.51
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-490cf322ed0so12047475e9.1
        for <devicetree@vger.kernel.org>; Sat, 13 Jun 2026 04:04:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781348696; x=1781953496; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nBEHkzqVLw482vGdz5GT4uuKqoZ91h8lkYDukdrN6Gk=;
        b=IX7qyOYfjgMNF4fMexxdPHB/co5FLq/e9/pvsgv5lH2aGWzZ3b2Hlr25DB/oS5ztt2
         wjiGPJGd3QPlvBK58KM5OrrG7FEAOKbYzO0z5NYVbVBhuVcYg+KC34BPc+NMUIN5fire
         ANNBs7N/1RmAxHMQFI6GNTkaRFbpo/aRXJBTm76meAKXi/TljPKTisb8L2jgAOjW9Pzd
         +jK4vjMTcqEARNb/oSQux4WpJKDXH4zWwqenHalNwtpVN8FIcd4EtjFQWQuDaTusoaTD
         vbDWYPIsg3fv7hNnTNEaR97ZUxCtLwsZcTbu6pT3BiurRGPLWHeR1ZR3DyJe/Fx1At6e
         qqEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781348696; x=1781953496;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=nBEHkzqVLw482vGdz5GT4uuKqoZ91h8lkYDukdrN6Gk=;
        b=bWooCjLF8Cyy9W9OPJkNj13SUvuAEiMbrslGTfi6ZW1JekxlP4wpBwhgkfx7ADEnZV
         Lu+Q/jpV3tqaso1D5Za7U8MNkgGk95B+3WdMtCC6gn6UfM7CSiF77Tu0YXMzUGSI7ok0
         HpjVYKBUBt653Sy0XEYKw59S6qWTWWOj8IBx1T6E8tP3bYfRV9xRUK+XSSD+6aLsVdc0
         lao1BRNDeGjZjndsYlx86SNKmczcvXSmEXoHLdAQ/Ht3uZ0rVOm9vjUT5j/iCBvF8RAS
         cdXhly5mHxROLof4/uZWuMkaSkgNK0R6jXJILhyGmxS6egFsAf5mq7ImhSICtWL802np
         oHYQ==
X-Forwarded-Encrypted: i=1; AFNElJ89UbvTiekahtv1z0wTOX+qu1bewUEVgUE2xhHWSUS3Z9LLCa5ZwxB1bJi3Ss1eUaCbFbSdrcjpwurU@vger.kernel.org
X-Gm-Message-State: AOJu0Yzoo7GxFhiqhr/Np2XEKKUDOSuIoZv/fulKuHKqr8EUAcXkFGhg
	gABArGj2UoCGqnC4MACiwv5uxA5FN0hbenF9AabVArDp0WG+HhfW2YR1
X-Gm-Gg: Acq92OGNGgu7O/TED2th67BJ5m6KZdlvhHg7TV9kKpDxfpQRKObTDUwFx6k1JgNBmSS
	7kysVF/xayNT3Qvo04wNXW3G53kFY5fHdDgapuERp9+TIOeGTFOZX1DvhKd4C6z64jcdS91iwon
	DCplDP8hvNeAx5Q1znwpGATyiXMTajzni8k3OLyhSuc9BBzl1REymYSoNpcsjzA2sqEDTDFyjYw
	sf1mf/JsI0j+KVc56DU56p3YLmsP0YlsI9rWyQBsJzGyVnQA/RQJP4IyFNCmixuNXIgmb8Orc2Z
	a84PnjW/X62L8g77mVLuIO31FmXNHN5MLJtMSiOY4akB5FIMfB+w2mnAIfC/kFrGbEpaVz33Mlu
	y+mnR7kaEYIQTt70OJGn3ttOgPG21cvGw+UcDABuEQbHkKp7sHvgMyC3xhThXBCrnpDdijX9vOL
	VCNBlWoOIygj5yLbDs9mXwx1mcKgWDuCLmLs1PBgl9BGwU
X-Received: by 2002:a7b:c8ca:0:b0:490:6237:521d with SMTP id 5b1f17b1804b1-49220092e7dmr27202205e9.13.1781348696232;
        Sat, 13 Jun 2026 04:04:56 -0700 (PDT)
Received: from jernej-laptop.localnet ([188.159.248.16])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49220310a58sm75036335e9.4.2026.06.13.04.04.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Jun 2026 04:04:55 -0700 (PDT)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>,
 Samuel Holland <samuel@sholland.org>, Paul Walmsley <pjw@kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Alexandre Ghiti <alex@ghiti.fr>, Maxime Ripard <mripard@kernel.org>,
 Lukas Schmid <lukas.schmid@netcube.li>
Cc: Lukas Schmid <lukas.schmid@netcube.li>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Subject:
 Re: [PATCH v4 3/3] ARM: dts: sunxi: add support for NetCube Systems OpenNMC
 (dobermann)
Date: Sat, 13 Jun 2026 13:04:54 +0200
Message-ID: <sTX6E5Y2SsWfe6WORpTiCA@gmail.com>
In-Reply-To: <20260606205452.2386930-4-lukas.schmid@netcube.li>
References:
 <20260606205452.2386930-1-lukas.schmid@netcube.li>
 <20260606205452.2386930-4-lukas.schmid@netcube.li>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-311300-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[jernejskrabec@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:wens@kernel.org,m:samuel@sholland.org,m:pjw@kernel.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:mripard@kernel.org,m:lukas.schmid@netcube.li,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-sunxi@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jernejskrabec@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,netcube.li:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4EA3367E680

Dne sobota, 6. junij 2026 ob 22:54:43 Srednjeevropski poletni =C4=8Das je L=
ukas Schmid napisal(a):
> NetCube Systems OpenNMC is an open replacement for APC SmartSlot Manageme=
nt
> Cards. It is based on the Nagami System-on-Module. It breaks out the
> following interfaces:
>=20
> - 10/100 Mbps Ethernet
> - USB Type-C OTG using a TUSB320 (usb0)
> - USB Type-C Console Port using a CH340 (uart3)
> - USB Type-A Host with internal CH334 USB-Hub (usb1)
> - MicroSD Slot with Card-Detect (mmc0)
> - WiFi/Bluetooth using the modules built-in ESP32
> - SmartSlot serial interface (uart4)
> - DS3232 RTC with CR1220 Battery Backup
> - Extension connector providing SPI,I2C,USB,CAN,UART for future use.
>=20
> Signed-off-by: Lukas Schmid <lukas.schmid@netcube.li>

DT Check passes, so:
Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej



