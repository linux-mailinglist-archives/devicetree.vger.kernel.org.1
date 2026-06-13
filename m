Return-Path: <devicetree+bounces-311259-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id dU63ADARLWpoagQAu9opvQ
	(envelope-from <devicetree+bounces-311259-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 10:13:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B08167E189
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 10:13:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=SAoFvKVr;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311259-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311259-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CE09C30DA827
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 08:13:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D268B3C73EA;
	Sat, 13 Jun 2026 08:13:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2717D367B71
	for <devicetree@vger.kernel.org>; Sat, 13 Jun 2026 08:12:57 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781338380; cv=none; b=rXY40D4Kabp3eKQy3YZiSOuCBWh+G72lyj8nKdZE/2Lay8oDqlc/AYWNSIJFrPcb+rNQOTiRVJerUmYGtaJOhiQxs+r7NiHKWuoTf1r3AqrasrJA2KhO9BlC9slkweW9zHL9HCA+u0OeKXNoriLRvgR1/I1NCEuXCokGYtbjgBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781338380; c=relaxed/simple;
	bh=x+DHXyBduh8nW5mH/RwXPnUoFvsJilmF8kF51mFs5s0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=WcsSKb7u52JIJr7Sc+t/bvJVj+rtDSA3+OyKtsjJ9xVhVk7mTxnNuej7Yvh6PoeyIdPq+2thMPv6vPpCgSl2ysw103hvizpzZV0YgMLEKjdVcFstV9vg3ourPxBBpZFFdJR9az6DTLHJPf5uMlbbqxtfPFRpbefae2RhJK1TI1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SAoFvKVr; arc=none smtp.client-ip=209.85.128.44
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-491b390f9e9so10234985e9.0
        for <devicetree@vger.kernel.org>; Sat, 13 Jun 2026 01:12:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781338376; x=1781943176; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x+DHXyBduh8nW5mH/RwXPnUoFvsJilmF8kF51mFs5s0=;
        b=SAoFvKVrAPS5pH5h0ZFLSCLmSwG3YVuEo7AaEAlGjFjYkwutikYepsKrjR5SaDoWOc
         lbaQhNP+vsn1ZF779xqg0fWzWE//jtDt/h+JqEdJRQ1IqI/uQ6KLeeM7znpwDVOv3PqF
         kT+NyqubT/OF+8B8DmmCAwpZXgWpyIU8uSliUj8ccqbkw0VqlYkasucF+L/Mib/ttIPr
         e8QJ/dRWYv3jv51tp3DdHyUoh4n1E2MI+03KuSmXIXELgxMidRPbcG1T7VqhamlJYMKA
         ONygYnXihGL8EHIWhKuz304AnGotSvNQoszCmkPsyQ7HlaosbtKsd3sjfFuyBBCiasYt
         IjlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781338376; x=1781943176;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=x+DHXyBduh8nW5mH/RwXPnUoFvsJilmF8kF51mFs5s0=;
        b=GTd4cvpqvmluNo+QRJ9vRR3ulpmvs0zpU4Kr6MDwavJPP9R3QqucB6IGvX3zqa+Afo
         1XNxm9bKj/j0a6adUWwW4KRG7IBRmL247BTmuSvsBYe1vOY95vYAEhQ1qsEHYTh8E0Me
         qRefIoqPgcMBh3hKyyD166x4s3K5/rNISyJIkKUQKo2xn1u7RtzT9z4T71wUoIPAE4iG
         EFImRVahh5s/2VhgRXa7P/pv6ZtFilvQxHiNu1BWK81DCjte0azrMEFbXD1p2Kx6NQZW
         BJRfkcMtlnj9hPyDKCplIPAh3DZoU90ca7a62ygdEbMEORB7Ygy5ir69nZuOtzHXdxFd
         cI0Q==
X-Forwarded-Encrypted: i=1; AFNElJ/AQr0v1kaMoDfCl2bLNckqoZ4E23DGtAMp+7vYkM+HUsEopVHWszWv8yFD2X3mDDc3TdQMCLQwKoGZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3tFc5U8AzFlUfKkrKBzc1RJSuOWUpZvBaQSm2CCA4AcKn9PEA
	m4r5OfswBOMqJxgWaGjHylPJtzryw0ZTPZpHqcGfJmNmBnC8xuW5Io8O
X-Gm-Gg: Acq92OFC2cw2N5flkZaf6gMaYOQy86pcXyqaAWWk7J9ouBdIsz91Ol5pkOSkoVolaoq
	r4CnDzCL/TZE51FmeF6/hzbY1bhjc8K+GuqT69VdKK+GOU92FNThWjqoEvf6omcE0+nKXetZsAB
	BErLF3BcXNAOWwKRCtvOeNm2C3ztRCwRbAQY/DKJ8lF+QCdt8egVLTxPbmlFwR/uvDZcOG+3S6a
	x/ZPYPirY+q9LfuAm2uZTDEiyGwtBtktN23+wtd21mfmuQwghlI3lvAntl2rMuGndCqoruDqupP
	dyS8oqgWW+ncXOFxssWihJ2Bf97EaJDqW/boRGIl/Q75rcLF4HKllRsaXtSNmJoIF1z70Z9FdaJ
	gC+vkm0xaZQ0gbTjVEDjRHLYWWUF49j286WE18hg8qV9WspHJBfS7Hks2X9CKGox7j4V6pXaus2
	Du9oYDtPJfTPkHL1uYS/g7eAvOmTITMHAjE4UJbChJmfuH
X-Received: by 2002:a05:600c:8b31:b0:490:e5c1:b8c6 with SMTP id 5b1f17b1804b1-490ec4b58ffmr75929755e9.8.1781338376446;
        Sat, 13 Jun 2026 01:12:56 -0700 (PDT)
Received: from jernej-laptop.localnet ([188.159.248.16])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-490ea4b39e9sm88333215e9.0.2026.06.13.01.12.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Jun 2026 01:12:55 -0700 (PDT)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 Alexander Sverdlin <alexander.sverdlin@gmail.com>
Cc: Alexander Sverdlin <alexander.sverdlin@gmail.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>,
 Samuel Holland <samuel@sholland.org>, Hans de Goede <hansg@kernel.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Andre Przywara <andre.przywara@arm.com>, Jun Yan <jerrysteve1101@gmail.com>,
 Lukas Schmid <lukas.schmid@netcube.li>,
 =?UTF-8?B?Si4gTmV1c2Now6RmZXI=?= <j.ne@posteo.net>,
 Eric Biggers <ebiggers@kernel.org>, Michal Simek <michal.simek@amd.com>,
 Luca Weiss <luca@lucaweiss.eu>, Sven Peter <sven@kernel.org>,
 Maxime Ripard <mripard@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-input@vger.kernel.org
Subject:
 Re: [PATCH v4 1/7] arm64: defconfig: Enable Allwinner LRADC input driver
Date: Sat, 13 Jun 2026 10:12:54 +0200
Message-ID: <sIT7xrHETBux3nDrv9ggVw@gmail.com>
In-Reply-To: <20260605070923.3045073-2-alexander.sverdlin@gmail.com>
References:
 <20260605070923.3045073-1-alexander.sverdlin@gmail.com>
 <20260605070923.3045073-2-alexander.sverdlin@gmail.com>
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
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-311259-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linux-arm-kernel@lists.infradead.org,m:linux-sunxi@lists.linux.dev,m:alexander.sverdlin@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:wens@kernel.org,m:samuel@sholland.org,m:hansg@kernel.org,m:dmitry.torokhov@gmail.com,m:andre.przywara@arm.com,m:jerrysteve1101@gmail.com,m:lukas.schmid@netcube.li,m:j.ne@posteo.net,m:ebiggers@kernel.org,m:michal.simek@amd.com,m:luca@lucaweiss.eu,m:sven@kernel.org,m:mripard@kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-input@vger.kernel.org,m:alexandersverdlin@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:dmitrytorokhov@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[lists.infradead.org,lists.linux.dev,gmail.com];
	FORGED_SENDER(0.00)[jernejskrabec@gmail.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[23];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,sholland.org,arm.com,netcube.li,posteo.net,amd.com,lucaweiss.eu,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jernejskrabec@gmail.com,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5B08167E189

Dne petek, 5. junij 2026 ob 09:09:15 Srednjeevropski poletni =C4=8Das je Al=
exander Sverdlin napisal(a):
> Enable Allwinner LRADC input driver as module to support buttons on Baijie
> HelperBoard A133.
>=20
> Signed-off-by: Alexander Sverdlin <alexander.sverdlin@gmail.com>

Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej Skrabec



