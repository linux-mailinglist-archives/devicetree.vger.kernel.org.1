Return-Path: <devicetree+bounces-248586-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 33FE4CD4257
	for <lists+devicetree@lfdr.de>; Sun, 21 Dec 2025 16:51:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 35FB730050A0
	for <lists+devicetree@lfdr.de>; Sun, 21 Dec 2025 15:51:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AC4F250BEC;
	Sun, 21 Dec 2025 15:50:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="M+ewCzzF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com [209.85.128.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA51284A35
	for <devicetree@vger.kernel.org>; Sun, 21 Dec 2025 15:50:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766332259; cv=none; b=oGW2kZ2qO8BipUctlJ2Wjy0fkcLO1t3HnDizi2aWU8RxOfREirgC+7ovwp7GVhN9btxoDWY2ru7VnC1V002Sj0LLiWUMF4Nu26uuNNyrSgK8KyPFuSTC4aUebAz5WPnLqZ8LvooG2vPyUIQ1PGvPuhgvNiLgIApiSHvTMbkPkY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766332259; c=relaxed/simple;
	bh=8fCSODvcBdp2PEhtURkA7UUjirAp4XG9bUc5v/PYx98=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=HXwc+KVHpGR+cz4/m02bztu0WpsnaK1z5FeURz/+og9zusUyMGPVw5Jr4buniOXerCRghT+jvvng8iBhRn8l7cnXPWXi8cWWLju6IdRh13fwwDXJtfwGREM5LXF7+wwqPlfLwJI7quki9pnqOuGcaTAD47TgMtPiCwthDi1IxrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=M+ewCzzF; arc=none smtp.client-ip=209.85.128.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f67.google.com with SMTP id 5b1f17b1804b1-4779adb38d3so21273245e9.2
        for <devicetree@vger.kernel.org>; Sun, 21 Dec 2025 07:50:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766332256; x=1766937056; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8fCSODvcBdp2PEhtURkA7UUjirAp4XG9bUc5v/PYx98=;
        b=M+ewCzzFakXFdFbZwGaYQwRI2jMYBHcWP0yM8Vb02wJHHcQBzWQOnMc5/SD4WfLk6m
         mooHyRo4xW4bsQzapa1yNp0eKQCds5GfRgUqwFVN9ecmGmVaBRNFUJp3cxrp83K3thCX
         0QOwkzcgGM7AVAUl5ePxxOuLAUNNm+DgaEv13JYGrwqpn59BLJFRX2coJFapWTdoTQLP
         Rps+Em0aN+W4c6v3/Dc10vwRBWxs7yuUXjvtbjU4eNjYehXeqLXSwdjxl7EfOnIGEJCP
         0HkQdhOtxyMAdYht+k/C5S14GjSCLoXDz6ZWT+GhdQXBrgTU9GmYenW0M5cZZj+/AUhj
         nXBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766332256; x=1766937056;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=8fCSODvcBdp2PEhtURkA7UUjirAp4XG9bUc5v/PYx98=;
        b=taaCyIgCL4QDOzyfNnphHIrAOWU5xpHi2tW0J5PvoPBEma5j79ew5XEJdMxzKQvimv
         F+6XjQDezfneuW5w8dmznVXvWCl1X+GR5s0ZKrWNzu3o8KLo0DuIw1ol7CXEwOVdnCPL
         hN/t6yrs0YRZdlqa32E0cQHsXseKQURkFy9MuLa59LMggdlJhYBAdYJlM0qc3e86irMZ
         r64wILD8igkaBoRBqTbF/DxF0l2wQl+ivDNA9zSiegcANodCe+hrnqqrZnTmrSSIhDEL
         avSU4NY55T65wH8KcBiHn8DIfpoy366i5/OLpAW1MY1XlwtyHB9oI2HL3qZUHmOQLo8W
         uHCQ==
X-Forwarded-Encrypted: i=1; AJvYcCXvPGao7ekepG8qK2UMbJcihTcwZZKcWgCTNo2A8emasb/lIFLLaHPPtuvLe3pfX1C9TCasRfaV0fQw@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3aafRIxaFcA0yUQv2bf1B5kKBbzTQSH0bNDJhqV5M16cIFndH
	IsdxjKxgstdiHWM0T5c13SnrCW9Qa0mjhQI51z2wkCkyfkk1HNhC45Z0
X-Gm-Gg: AY/fxX5TJ37CPDfx12Bxw+NA7c0s/CrsDZBFBEZdRMMDZQnVHjKWjeWdacoVpzoETIZ
	d8dsHLsYJRzKEa7/GCvnweS6ueGgJgbFAqipouwIm4NmBFQRlskrdGLLZsGSSvj6wUb6cbFDA4T
	H6MfhjFx/w6PvYQGVVI4j6ca87HK22+Cmrbh3e0sqhmdCoGQ1ejtth1rMmrYD3RQyJ7ET/q64Sz
	fFoYQ4oI5U7B722sgaY6kQme2SqjuLci5lZKygZm63QNkLTLSc9VZL6Vy6vHcIv620rm1T4uPLh
	ikwHqkH831aflBaGQdo0xekt2WerL7TNPEVL8cxtWIgZyciWpkt+MZb1LS85H65841wYXmOAAVB
	de2pZRWGAhJ4XRL6TEkQAmcAy+IEFMh43CRtvxvNYWygPkz3CCExNU+wwwmCyfUxUIfBDEuYWx2
	ihhCGPQKKTAzFsvA8kasRG1G/ovZz5AhcZE1u6JiBbYelS/VesgtJJOpLxquhCa/spvDRBpfdCO
	ce1NA==
X-Google-Smtp-Source: AGHT+IEbzuiMyIUOvROlypd6C5VqTcqsXBg5CYHBj3GvTOlnnKn2/wIG/gIMrEnzDQVWqbyemA9QRg==
X-Received: by 2002:a05:600c:5251:b0:477:8a29:582c with SMTP id 5b1f17b1804b1-47d195a425bmr82073325e9.34.1766332256115;
        Sun, 21 Dec 2025 07:50:56 -0800 (PST)
Received: from jernej-laptop.localnet (82-192-45-213.dynamic.telemach.net. [82.192.45.213])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47be3a40c5dsm79185175e9.6.2025.12.21.07.50.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Dec 2025 07:50:55 -0800 (PST)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Chen-Yu Tsai <wens@kernel.org>, Jernej Skrabec <jernej@kernel.org>,
 Samuel Holland <samuel@sholland.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Mark Brown <broonie@kernel.org>, Chen-Yu Tsai <wens@kernel.org>
Cc: Andre Przywara <andre.przywara@arm.com>, linux-spi@vger.kernel.org,
 devicetree@vger.kernel.org, linux-sunxi@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/4] spi: sun6i: Support A523's SPI controllers
Date: Sun, 21 Dec 2025 16:50:54 +0100
Message-ID: <2391651.ElGaqSPkdT@jernej-laptop>
In-Reply-To: <20251221110513.1850535-3-wens@kernel.org>
References:
 <20251221110513.1850535-1-wens@kernel.org>
 <20251221110513.1850535-3-wens@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Dne nedelja, 21. december 2025 ob 12:05:09 Srednjeevropski standardni =C4=
=8Das je Chen-Yu Tsai napisal(a):
> The A523 has four SPI controllers. One of them supports MIPI DBI mode
> in addition to standard SPI.
>=20
> Compared to older generations, this newer controller now has a combined
> counter for the RX FIFO ad buffer levels. In older generations, the
> RX buffer level was a separate bitfield in the FIFO status register.
>=20
> In practice this difference is negligible. The buffer is mostly
> invisible to the implementation. If programmed I/O transfers are limited
> to the FIFO size, then the contents of the buffer seem to always be
> flushed over to the FIFO. For DMA, the DRQ trigger levels are only tied
> to the FIFO levels. In all other aspects, the controller is the same as
> the one in the R329.
>=20
> Support the standard SPI mode controllers using the settings for R329.
> DBI is left out as there currently is no infrastructure for enabling a
> DBI host controller, as was the case for the R329.
>=20
> Also fold the entry for the R329 to make the style consistent.
>=20
> Signed-off-by: Chen-Yu Tsai <wens@kernel.org>

Reviewed-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej



