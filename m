Return-Path: <devicetree+bounces-281591-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UM8aJYttxmmkJwUAu9opvQ
	(envelope-from <devicetree+bounces-281591-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Mar 2026 12:44:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 77713343ADE
	for <lists+devicetree@lfdr.de>; Fri, 27 Mar 2026 12:44:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7FF59304481B
	for <lists+devicetree@lfdr.de>; Fri, 27 Mar 2026 11:44:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27CCC382367;
	Fri, 27 Mar 2026 11:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BabSZsKn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91DF73815F9
	for <devicetree@vger.kernel.org>; Fri, 27 Mar 2026 11:43:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774611833; cv=none; b=DTwVccfjaYym/cMiZ4Ke4kCJRMCABGaRTf/EdNdWGNgetnxUTWK8G3YtR+wysCp3brPCBXpD4MMgTEatXcX6FHZeXPH8tpRsJwFKnQ8SCMTsdjbXUH6BEkUsEbDVXQ4iByzftEHu2w94q8mICxvp0bd0ZRm0MZMLvsiBnbTqS4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774611833; c=relaxed/simple;
	bh=FEc9lT0BW2KeKXQ3ChIovGLpCHr9pq972Nq5Th8ooKA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=G+mjqZBfthfCg2YNcSi/Or/HYM47GmxgFIkA0CqmNB/nNcA3Vbsmwj51tvXEDHHlq3wkmsy55EyGoaAQmWVOio59Xw8ibLEOPZChFHyS1/bYhY0SLgdLHLOtgIVxV2lyvsQPGv22xdBdq93nNi/Q59sIn4Z6UNvM4827pcCrfNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BabSZsKn; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-486b96760easo22361925e9.2
        for <devicetree@vger.kernel.org>; Fri, 27 Mar 2026 04:43:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774611830; x=1775216630; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FEc9lT0BW2KeKXQ3ChIovGLpCHr9pq972Nq5Th8ooKA=;
        b=BabSZsKnOO99HHWQQXFoIzpAxk3giCxlB76Y+7KLcZeZmxpVZgmiW+YW9jCAXCgAiX
         AE3eDs+oS6YqW3cb/fXeIZPUlCUlxXrTk53O7vi0DzfloC+3IQpRzEDG/VbEq9DVfAtf
         SzWCrtjghdEXC/fe4cEjIPGvx4IxNX4TECqyKauorHzyxNiydYY83F6PbuSDbF1Pnk7t
         F/DR3Bilwdey/aBj5hi3h7LKMZ4967TXtn8ZG6+cbdl/ZaC8j8R9CYuvy+/wuBDxKUwm
         2ly+4iLa9+ZzKlUkMKkh8/gLYbdzKtJse9e43Dk7+j84OiwRzjFuiMjIujgnCwXYt6oZ
         EQyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774611830; x=1775216630;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=FEc9lT0BW2KeKXQ3ChIovGLpCHr9pq972Nq5Th8ooKA=;
        b=r2vfJQvkZCv3PY4RVGkAgcyzpmXNz6qGl8xoqJAMlZR54SKm14ccGBBc2sMg2n3sAE
         VUvmwjNQOBr0ee1c3PK6PDPBVVBGyFTi8hFLmO3GyBHgL7Mue4Pi2R2PYEIrcyjZiNhV
         x2ly17xgZaCGXTyXfm5lD7TNn1/MRqSrNY4xg7JtRRMXv/gCCJ7vmwZkOCIL44Rpnp5y
         G7lEn83Ai4aA+t2e2jY1SNF8dByMjozKZNKxlYvq9p/qx6hatl5whP9S/bie3mSPlelO
         IO0PBzqzHXlELQIrc2ep+R8p/nySC7qVCWRowyYWbOUlMQq++Hv7ytvseU3vtfOpUMF3
         GKeg==
X-Forwarded-Encrypted: i=1; AJvYcCWLiDG0yx5a+7QRL09F91DaIKaSV8x0JMzVA2J8NPBr66uyD5p4ceQhZ8HOImZJxsYRbFa99rWRywZE@vger.kernel.org
X-Gm-Message-State: AOJu0YzOCblAE51zyh64VbtVu2st/3BN5YK/SfebpJ1/ntQCiKfEEONF
	9HnmD1KfyxMWIpKzj90wjsUZBJjVTs7rdW7cfW97bPbpSNFOJ5+tWFO8
X-Gm-Gg: ATEYQzzAQ1uEYH64tNA1Kw0Ew9t1xX+dbWwFeWtiYSADuAtTlq27KaSRBfASgqpTEYG
	OMkoISugaiGf8AXCq9B9j3r2WX9YtGIIqDW6MzJ1jD2n1vyfLGAyy35pAyh/6IupPnhHMIBuJut
	hOZWeTU2yL9sg79A9gHZ2pi4NASnopzFd+KP09o3wVG979O21G7Mw3OH+ftzHPewwVmPMHrboyv
	P892NkmF3kBlF1GLtvsTcNr2zNsXy3vMb9wLlbaCUj4mt/OrR1j5OAwzRqZXkQ84mnBe/i+yM0L
	HLxgXcAn6WwcuYZ351zJ3S/6pFl6rWf5B87al8lyMFlw2SswSFhtwZ34VsLBYWXL3dcT5s/GsC5
	1KjR325nh/Tx+HzNuayMYS4aTWx2wESF3lYYW/z/NNnHgCkPicYq9BYP6Jjkge+pKwCgMeMP5MW
	TgBzf9cykfwr1gufOZ3ZHHjpmI0nXTkieW4O6AsLuruQymtFkV2PvHvTLw9Lj4Jrtd6Vbu1dVjM
	QXNdDRUAiWkqWqQ5w==
X-Received: by 2002:a05:600c:a06:b0:487:1108:48af with SMTP id 5b1f17b1804b1-48727d59ce3mr37657225e9.4.1774611829936;
        Fri, 27 Mar 2026 04:43:49 -0700 (PDT)
Received: from jernej-laptop.localnet (118.red-213-98-130.staticip.rima-tde.net. [213.98.130.118])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b919df903sm14813099f8f.30.2026.03.27.04.43.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Mar 2026 04:43:49 -0700 (PDT)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>,
 Samuel Holland <samuel@sholland.org>, Andre Przywara <andre.przywara@arm.com>
Cc: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org
Subject:
 Re: [PATCH v2 1/3] pinctrl: sunxi: a523: Remove unneeded IRQ remuxing flag
Date: Fri, 27 Mar 2026 12:39:42 +0100
Message-ID: <2822911.mvXUDI8C0e@jernej-laptop>
In-Reply-To: <20260327113006.3135663-2-andre.przywara@arm.com>
References:
 <20260327113006.3135663-1-andre.przywara@arm.com>
 <20260327113006.3135663-2-andre.przywara@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-281591-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jernejskrabec@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,arm.com:email]
X-Rspamd-Queue-Id: 77713343ADE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Dne petek, 27. marec 2026 ob 12:30:04 Srednjeevropski standardni =C4=8Das j=
e Andre Przywara napisal(a):
> The Allwinner A10 and H3 SoCs cannot read the state of a GPIO line when
> that line is muxed for IRQ triggering (muxval 6), but only if it's
> explicitly muxed for GPIO input (muxval 0). Other SoCs do not show this
> behaviour, so we added a optional workaround, triggered by a quirk bit,
> which triggers remuxing the pin when it's configured for IRQ, while we
> need to read its value.
>=20
> For some reasons this quirk flag was copied over to newer SoCs, even
> though they don't show this behaviour, and the GPIO data register
> reflects the true GPIO state even with a pin muxed to IRQ trigger.
>=20
> Remove the unneeded quirk from the A523 family, where it's definitely
> not needed (confirmed by experiments), and where it actually breaks,
> because the workaround is not compatible with the newer generation
> pinctrl IP used in that chip.
>=20
> Together with a DT change this fixes GPIO IRQ operation on the A523
> family of SoCs, as for instance used for the SD card detection.
>=20
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> Fixes: b8a51e95b376 ("pinctrl: sunxi: Add support for the secondary A523 =
GPIO ports")

Reviewed-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej



