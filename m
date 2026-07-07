Return-Path: <devicetree+bounces-321974-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id kMaJO83lTGrsrgEAu9opvQ
	(envelope-from <devicetree+bounces-321974-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 13:41:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DE2A71B086
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 13:41:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=YPc6XOny;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321974-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-321974-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C6253305688B
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 11:33:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E22B3F8717;
	Tue,  7 Jul 2026 11:33:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76D5B3F8247
	for <devicetree@vger.kernel.org>; Tue,  7 Jul 2026 11:33:10 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783423991; cv=none; b=bl0I1huafsNOdvP8VlwTArT8tbh+vSp/qtdWLcLxtJnCeopZmCoqjja4e0kfjC7XYBDWYNUkAowixQeDNcePYiwiHjvPnX7h+9H2GA+4Utvi4uisFbnhvIQmXBHWdfr0w/bAcZsykmvumUMw7Oy6PwgX1F+0J4xGQ5EvIk/cED4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783423991; c=relaxed/simple;
	bh=XXSAv8CDLC977jDv4wpsIukoXkHLxJ2vpuTbsDwobOY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=RBWP4rrTFbtJictIHtHZ5Xl4QOyEgWIeeeLS7VUvH1KBOZ2O95z+z7Z7pm4KoQLqETKBQVegR9rNy9qiK84tYY1H6O4VzHtKmxi+uM9LXlglkKGBUXB6jGDUkpsZ+u4377Zv44Yx/Hxwf9XfB7cMqRaBNAz/ADyK/MSWhCRSbpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YPc6XOny; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EA43D1F000E9;
	Tue,  7 Jul 2026 11:33:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783423990;
	bh=9Xo/YT93tezsgzijNZrroHoH7Ut/890ixShMERfO3f4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=YPc6XOny5ZhbazG3aq1QCudyMhQTgELq2eFM5Ijw76msm+Prmu5tBSZ7eFZOxqF4M
	 Vl23z9/W7cx8CbZva4YLzJs+kdP9QrZjnFxaPj58AxkLS7U0D/zYwRanMZEXTDGyZz
	 Lpg6s8BOFdgfQkzO1CtJLX8+19RIV68/HXqfsjlMbgzX92nKKqpNt/R5gPdONy4J3s
	 xLyJSw9F4TUbUek6AYQdtca07+auosKWULqouZTIDxz65uNzf6MQJEY7uCz6PKBG3P
	 g0JMwPWg+kWlxIG0/wunmZ5klbRuG5wk4ZoOK8KDFXA3rK6jXlJF9MXZd33mvIeIi8
	 3kNd3y507A4Kw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v9 1/2] dt-bindings: iio: health: add adi,max86150
Reply-To: sashiko-reviews@lists.linux.dev
To: "Md Shofiqul Islam" <shofiqtest@gmail.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260707112714.2261727-2-shofiqtest@gmail.com>
References: <20260707112714.2261727-2-shofiqtest@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 07 Jul 2026 11:33:09 +0000
Message-Id: <20260707113309.EA43D1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-321974-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:shofiqtest@gmail.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lists.linux.dev:replyto,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4DE2A71B086

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The new MAINTAINERS section 'MAX86150 ECG AND PPG BIOSENSOR DRIVER'=
 is placed out of alphabetical order.
--

--- Patch [1]: [PATCH v9 1/2] dt-bindings: iio: health: add adi,max86150 ---
commit 5abdccc1a1cc20780d9daca161bb926907771020
Author: Md Shofiqul Islam <shofiqtest@gmail.com>

dt-bindings: iio: health: add adi,max86150

This commit adds the Device Tree binding schema for the Analog Devices
MAX86150 integrated ECG and PPG biosensor. It also adds a corresponding
entry to the MAINTAINERS file.

> diff --git a/MAINTAINERS b/MAINTAINERS
> index a92290fffa163..436c86d6e5dfa 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
[ ... ]
> @@ -14848,6 +14848,12 @@ S:	Supported
>  F:	Documentation/devicetree/bindings/power/supply/maxim,max77976.yaml
>  F:	drivers/power/supply/max77976_charger.c
> =20
> +MAX86150 ECG AND PPG BIOSENSOR DRIVER
> +M:	Md Shofiqul Islam <shofiqtest@gmail.com>

[Severity: Low]
This isn't a bug, but is this new MAINTAINERS section placed out of
alphabetical order?

MAX86150 is inserted between MAXIM MAX77976 and MAXIM MUIC, but MAX8
should sort before MAXI in the file.

> +L:	linux-iio@vger.kernel.org
> +S:	Maintained
> +F:	Documentation/devicetree/bindings/iio/health/adi,max86150.yaml
> +
>  MAXIM MUIC CHARGER DRIVERS FOR EXYNOS BASED BOARDS

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260707112714.2261=
727-1-shofiqtest@gmail.com?part=3D1

