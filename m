Return-Path: <devicetree+bounces-313528-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id bxKEDsX6M2pcKAYAu9opvQ
	(envelope-from <devicetree+bounces-313528-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 16:03:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D5F76A0C81
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 16:03:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linaro.org header.s=google header.b=EHkrr+Gq;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313528-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-313528-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=linaro.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0DDE93016936
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 14:02:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DECE43FBB6A;
	Thu, 18 Jun 2026 14:01:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ADD03FBB5F
	for <devicetree@vger.kernel.org>; Thu, 18 Jun 2026 14:01:58 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781791319; cv=none; b=nbtfjZ9csdmm48mQKtDF/SenPNifF0n80cNsmBsXRebxaNtQTG0DgQTJLRpPA+m13w9vlvzYAOsX4G/hm01nAtPOfM4iDtYS2Lw2Ax6rqwA/egV3VsEKxTnw8OEXdpVCu85CrV1Jv9rg7e5Fx0P+6HGvLAlf3So++Va9aXCCr60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781791319; c=relaxed/simple;
	bh=AZzjqtGd2uyaNC0YwOJ1usqM6sGXD4XHnvbkMzDVHsk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=ITHofcnA9PVsi16G28IOfvavlT7yk8Cwmri9BXsL/TNZ0qzQWhCAyammppvLPmJ6zye5Xl4cU6ZwlWQBKRZsGuxopFFIgCg95G53e6bB36Rbo8z/jGRUsJ3eBScaOOjnE4V+n6e+M9Bdj+lFZO85OZzN0dhxjf/gefKWbp1bLeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EHkrr+Gq; arc=none smtp.client-ip=209.85.218.46
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-beeba001887so120097266b.3
        for <devicetree@vger.kernel.org>; Thu, 18 Jun 2026 07:01:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1781791317; x=1782396117; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gqWrw5Zm6IcTUSbd0pVoLa2mAQQgXMRFds7fJ5WZYVo=;
        b=EHkrr+GqYEj7odISyKZq1/gFzi3oOH2X14s5KmU1vyZBhWsEoNLZoLyOdp5So1CAL2
         I+SAHprT8QYtcTKslSNNeU6L9UCZdvA4ymsitjCzPpuquBYBeqdP9288akjOEL5FyNUI
         ikoZFg7sUKxvYSeGwudX2vj/Nprm/mzYCMxOVy5gB6YXybCruxIBFdnnAmNqCUsWAryA
         En1In9uuDIEkA8P0R7xemrzlgUQytGOW/wwjYh80LaC0v3kYqbEENsiUY9I7RjHPPBjQ
         i27oSZsqMgLXWIpDrydQRBeI1k7hMLNN+xuspQhk+/OJLjCahYfHtk7EORugjmOmnuix
         xmGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781791317; x=1782396117;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=gqWrw5Zm6IcTUSbd0pVoLa2mAQQgXMRFds7fJ5WZYVo=;
        b=V4RXtkXLWjdmutsjyTn5DgfCsXktdsk9uBEjF14+Ml6dp6bXnvInHDgl+pNJa8LRcG
         awwV5XJxUgaPilc8ZH2c9G9q/yLOpK/GwxJWc390wgfPShtFrCFliCSSnbBTVOrspeWc
         oje+kJJTYg9tNR/akG4A5ln5l/RlsUyjre/1GfwIxtvrVl6zDjGmPf/xiIJ5ZUhsa8sg
         TL68THStBftDnEfTKoOc8zdV3Qjyu7hhwQh71GBT5yL6Z0s5NKSenk9bN4i04EoYaq0h
         M/K2cxobbfQHjn2AI+OUTh9C+NiQkFsSgoYtoIFZp5wyff27xFu981bSUwuVtHOZX2OF
         jldg==
X-Forwarded-Encrypted: i=1; AFNElJ+aIi5q28AMUgExEVzVhTJsGpO1unBzBG5xVU3ovcy2UtOD0tNOTaf72ptPRoQns24Jfo9zl6TpKa1O@vger.kernel.org
X-Gm-Message-State: AOJu0YzvV+oQTgWKeSz7JeNegpKWqXo/cFrhuQQDQzKayHEB2H2aRuSH
	aU46Hzn+VrUf1ur62QBIYG8CDVGI/zBwgbVbiHcDCpYbiwaAK/gtmb3INohWKQtuePk=
X-Gm-Gg: AfdE7cnvTN7YEUr6CV7viUILlC0FoUdbREJ4jsR0Uig0oCJe0fvHd6s1U9zWBW6AQDZ
	pq/3gAeH4iO/xvNLlGWHtVDaWLBHi8oiqFsxIRys+1+OMJZIhhyzNY4doh0ZP4eKFqf92o0MPyl
	p3Aw7e8DZ4C5cgaa3apZbl03e/pLtdGxDnSHtF7RKWbwRG3fNlX5jabIby8mzkz5wH0hidmMHi9
	GqSZC7cotkTr/dbryhzoq1F/Wvs3g4un9hALtzdy5lBacM5OTZYauFQ+Wt5QawIP78rUDh4u3a2
	6MtBf+KfhzoBuifqCNFRQP2kozKEsTXtd8w0dhTtkYBGqo30EWQwG2RLrTuQbjoS3i2/76bQte3
	RhLUhQl18YIsywx92wzCExawnOeXTrOEgaQ70z+eWaG4y95Gwr52IIjjelbjn2vsEfgzlxiIAhZ
	TQ6B689MEbzSG6VVYU6Otx0fwFrzi9XWWneQ==
X-Received: by 2002:a17:907:934e:b0:beb:7979:47d9 with SMTP id a640c23a62f3a-c074898f593mr220079066b.8.1781791316348;
        Thu, 18 Jun 2026 07:01:56 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:106d:1080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4620b3ed0d2sm27901309f8f.22.2026.06.18.07.01.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Jun 2026 07:01:55 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Jessica Zhang <jesszhan0024@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
 Manivannan Sadhasivam <mani@kernel.org>, Kael D'Alcamo <dev@kael-k.io>, 
 Kever Yang <kever.yang@rock-chips.com>, 
 Igor Reznichenko <igor@reznichenko.net>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20260617143245.372182-1-igor@reznichenko.net>
References: <20260617143245.372182-1-igor@reznichenko.net>
Subject: Re: [PATCH v6 0/2] drm/panel: Add support for the FocusLCDs
 E35GH-I-MW800CB
Message-Id: <178179131510.245596.16459075760414662708.b4-ty@b4>
Date: Thu, 18 Jun 2026 16:01:55 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.15.1
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-313528-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,sntech.de,bp.renesas.com,kael-k.io,rock-chips.com,reznichenko.net];
	FORGED_SENDER(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_RECIPIENTS(0.00)[m:jesszhan0024@gmail.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:heiko@sntech.de,m:prabhakar.mahadev-lad.rj@bp.renesas.com,m:mani@kernel.org,m:dev@kael-k.io,m:kever.yang@rock-chips.com,m:igor@reznichenko.net,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,gitlab.freedesktop.org:url,linaro.org:dkim,linaro.org:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8D5F76A0C81

Hi,

On Wed, 17 Jun 2026 07:32:43 -0700, Igor Reznichenko wrote:
> Add support for E35GH-I-MW800CB 320x480 MIPI DSI panel by FocusLCDs.
> The panel uses Ilitek ILI9488 driver IC in DSI mode specifically.
> ILI9488 also appears in DBI/SPI panels, but those require different bus drivers.
> 
> This panel driver has been tested on STM32MP157D-DK1 in addition to TI AM62P EVK.
> The panel works in video mode on both platforms. Additional panels using
> ILI9488 DSI can be added later with their own timings.
> 
> [...]

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/2] dt-bindings: display: panel: Add Ilitek ILI9488 panel controller
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/532701ad6e239f1b47bebaa597e159c282c6c6ac
[2/2] drm/panel: Add Ilitek ILI9488 controller driver
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/99e9aca83bfb867ae780f58d076bb89dd5c2681d

-- 
Neil


