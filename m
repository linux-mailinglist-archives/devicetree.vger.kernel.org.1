Return-Path: <devicetree+bounces-293193-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kLC5KPYZ+mlYJQMAu9opvQ
	(envelope-from <devicetree+bounces-293193-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 05 May 2026 18:25:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 36C0A4D13A8
	for <lists+devicetree@lfdr.de>; Tue, 05 May 2026 18:25:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7DBA5311B7FF
	for <lists+devicetree@lfdr.de>; Tue,  5 May 2026 16:18:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F69C38C2D1;
	Tue,  5 May 2026 16:18:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eoMIb/Oe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A59E53806AC
	for <devicetree@vger.kernel.org>; Tue,  5 May 2026 16:18:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777997894; cv=none; b=EMyRclLVnAjB6FYccqOi06JUIDbNEqQGCfIA7Jl7ZUCmZCxGsoXbf6uILPy8o+PFg1MV2yFQDZBN4ndYe0UmNsF5Ns8L3U/nL/k35BfRcWoWFJqHsjJHR/AYD68Ii2gLoR2EpCrj4pBY9deUMTTPpothUxNrTuRTcm8646VoSHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777997894; c=relaxed/simple;
	bh=pHCtfjeFxc5IrqY9Ylg8aIPRx+nL79BtlDjjquddJdg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=gBtz5iSokh5OeLuKjIO2vPf11L/BLj6lEXMLR7/wf/Ivs4UIZnWugOcC3qTJ1wqcRHq5Fby354B/f3ZHxEs4AVPaX5xUBpYBqwX/kC/B7aJGkTteg7J05KUZCEPDVNlWoQo7NBIHAIlgXWMIPP1CTDQcFbkPmN+Ahl1rkDg8C38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eoMIb/Oe; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-43d76dd4ee8so4388903f8f.2
        for <devicetree@vger.kernel.org>; Tue, 05 May 2026 09:18:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777997891; x=1778602691; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pHCtfjeFxc5IrqY9Ylg8aIPRx+nL79BtlDjjquddJdg=;
        b=eoMIb/OeO6TFJwJdLyVtcwcSYffLECdl6hSGZwLiKr0wDLVndIvTlyD0cfpka92dti
         ULlNMLjc5FLrmU8zx7fJePiYzc3Y0G1raFas5RJrn240VPJ1v/0FCsvuiN5o0PJ6Mj5h
         CE5r4JrRp5w14Y5UVkIq5N55OLmKuG+Ki1GR/gFJswv5Cj5jQNavVI8MtQECWcB8sahB
         WocbfoteeI+UdN/beuZDGHQVIahpGQCQSSddaRT2JAjyunMTvHH4naCBcCg9f9qAE+ZX
         Qpewzo4jQ5PXQ/i3eHL0MpCEp657B5DI5xm0d+E1RNrJ6ZzLJlVQy5nZPhD/aUIUxfsz
         borg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777997891; x=1778602691;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=pHCtfjeFxc5IrqY9Ylg8aIPRx+nL79BtlDjjquddJdg=;
        b=djXkaodOW8DgVR5n7KVo4Snvem/501kN457jQ43mrtpTRRwST/cgi6xigmOr/w18nY
         MKWDqkzP3tRbb5QSdUoQLY0Ojt05kJoDN7W251Pf6+09zMrTGo96rsRgs0lZw3aMFLM0
         klz3Sm+3GlnThx6Ydjf5li+1y0vr1bBZTBsOoMEaVPAj/3KkUOIL367hqiphR8Lpu+zJ
         mLCA0A4XLza/9NXkZhn1jnjiAuIE8eztI9SrHrgcxvn5ZKBGKN+o/fQWnyPJcxh6xftv
         1fMccfFNAztnJO1gawpGGJIq3VN/oau0WzuapeTWhYb7dpg4zZanqVX/bdrjtr48Qj36
         nE9g==
X-Forwarded-Encrypted: i=1; AFNElJ+dGYhNORYnD/NLIK9ENtYHQ4bRBHDaLvoIj2xnjk1XKKuDUKQqv/AuTwyAo0S/oydwOr1FrXSe/agn@vger.kernel.org
X-Gm-Message-State: AOJu0YzVO3VTWA6r+LbfCzhk2U0PdqdzM23lbZC3YHqD35vMxDV0t25w
	K+Qah6/PaNAXtfYF+YO98aQDFBeYuLzmVofU6N0gNK0JVXvMPiCs6bKt
X-Gm-Gg: AeBDievOAPzpVGtLGNzITfS0pU3NaFoR+DCH5sjG5fDDRnisdaUvsU+fBE7zqTMEYfT
	V2ac+Ehk6/KRC3bM5bCd4JfcBtJcsAdZ+BwCJaL8f38+lY/nNvcqw62zZ1UXH94rwY2ohkbWv6K
	rBUxM/rPMi0MXuMs9A7al/PxX0Td4wIH78fMNH7ctOBJMDNvOxzvFksnyORqk8GtwEeP1GDgYUR
	akTz1SqSoVKhKjEsZb0hdoiSVwT4cuN6vmQjEK7XruycAwcgDhftNs+gWzQqc6EnR2Zjussg6Yf
	1R4+dOYFx51UoPKQClJ8gcfbDiq4+n3DwX0rvla7fLl+nPOOB8d/ktSUqKTgBhYnuFeFv3jLa08
	YRxrSu/7IhIDTwfLqBcb6x6P/GnzUB8DiKhVKMOIoTBFkr8T5idcXZpcFQBTvj0IW61FIamA2DV
	rIMd/+8E2vliDD80HMR7gYNk4fF2ut1dzdrctYhLXkzIubH8BEbIDtBbc/Nwjfz514Lh6Kq529B
	Ck6Osn00SWTpKzkQ/0V4LKIU3Ts
X-Received: by 2002:a05:6000:2dc8:b0:43b:498f:dceb with SMTP id ffacd0b85a97d-44bb2f282f4mr25038895f8f.9.1777997890976;
        Tue, 05 May 2026 09:18:10 -0700 (PDT)
Received: from jernej-laptop.localnet (46-150-62-216.dynamic.telemach.net. [46.150.62.216])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4505558e213sm5821604f8f.25.2026.05.05.09.18.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 May 2026 09:18:10 -0700 (PDT)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Maxime Ripard <mripard@kernel.org>, Paul Kocialkowski <paulk@sys-base.io>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Chen-Yu Tsai <wens@kernel.org>,
 Jernej Skrabec <jernej@kernel.org>, Samuel Holland <samuel@sholland.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
 devicetree@vger.kernel.org, linux-sunxi@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject:
 Re: [PATCH 4/7] drivers: staging: media: sunxi: cedrus: add H616 variant
Date: Tue, 05 May 2026 18:18:08 +0200
Message-ID: <JyKk48uGRMGhs1Z-wzq5pA@gmail.com>
In-Reply-To: <20260505134812.408316-5-wens@kernel.org>
References:
 <20260505134812.408316-1-wens@kernel.org>
 <20260505134812.408316-5-wens@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Rspamd-Queue-Id: 36C0A4D13A8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-293193-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[17];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jernejskrabec@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]

Dne torek, 5. maj 2026 ob 15:48:08 Srednjeevropski poletni =C4=8Das je Chen=
=2DYu Tsai napisal(a):
> The Allwinner H616 SoC has a video engine hardware block like the one
> found on previous generations such as the H6. In addition to the
> currently supported features of the H6, it is also supposed to include

Remove "supposed".

> a VP9 decoder. However software support for this is currently missing
> and still needs to be reverse engineered from the vendor BSP.
>=20
> Add the compatible for the H616 variant, using the H6 variant data.
>=20
> Signed-off-by: Chen-Yu Tsai <wens@kernel.org>

With that:
Reviewed-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej



