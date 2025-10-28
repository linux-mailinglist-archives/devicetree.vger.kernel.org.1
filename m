Return-Path: <devicetree+bounces-232222-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 27820C1597C
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 16:49:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id F3E605441ED
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 15:45:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 901E0342C95;
	Tue, 28 Oct 2025 15:43:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Y+/32qUY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B539D3446BE
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 15:43:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761666214; cv=none; b=Ccy+YjVsPtVV2rKr3xTW4000jtueHRNMCVbTOt83vXjWGmEf+0+d8HRwdWq414h8TyXkA8BUYs4s2fqSVGvMc++PSiKaio122t3LE2fvhkD6SDk9hCr/X7sg04NiX8TPG9/yIZ+IeRD4ANs/VuS/JsgHkLeM8Ypr6rLIF6QEEKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761666214; c=relaxed/simple;
	bh=0OdKjf6E11PLhTN47izQgrYewu6DAaBIZBsxLqLrIEE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Oq6W+MtxYpcf9gCwXdK64nxYBanL1wgLQXB76FyoBi5J/Z3vhgtQrJ7I1bGE6p0nVPFYXbu6iF9mhf1NmnxMvfwe+xri7hoMdQsf4iD+xjjskGMp2tJ4KiqUxCahWRxrWRSt1en28Z1a55yce8CG/CpoC4NfrWTdHprbBvMN0u0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Y+/32qUY; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-475dbb524e4so23843595e9.2
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 08:43:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761666211; x=1762271011; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0OdKjf6E11PLhTN47izQgrYewu6DAaBIZBsxLqLrIEE=;
        b=Y+/32qUYnUB+gqfNDafPgKTIQtmGDLg8GdilWpQT2hijTOq0kmzOGyZJCpBrV5qDdi
         xPPKx4Q8wCx+fdZFoPBZjK+i7QrCBu1Ec9KPf+tJerMP4ng5Guh6ToDmJuA3rhTbVd84
         r23Eqqn2FnJUVZMfsHLq+peJaOq+/615yY5gCAX8zA7koYOzJ1+hu/Oqc6l21G2Fo8dc
         vNFR1ilSNiV4DNH6DMBk8fgjI8lR86K/Zcf8MabWqk7bDeT1Q6l5Fa66D5ItqEgoSRce
         lYkyHBsaOySdBDz+T5OaPoCI1ZQnvcTFZAo+oLylrCaVlTJZqHAQ5KeLe+c2x7OAGWX9
         5HBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761666211; x=1762271011;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0OdKjf6E11PLhTN47izQgrYewu6DAaBIZBsxLqLrIEE=;
        b=QY9GzPb/4uuwAm/V6JZ3VEQqTEN7IVPRJe+12MtXRz64Je52+kCXgWmpo2NTt0fQfH
         tz47zxs8izcWyzofQeAsGBDeo4K4KDzeKg/OMpFP9S++CvCTBL6iHfgvIXWJ8l0DN6yH
         2zUYeW0nT1bDWaeyE6Lkm8SsM8zhBOdSiQPM40X4kwAuTChSm1QwgLrguXAYi5TI5ngq
         LxDA9K6+VBW90QsTuf8GN//K4A7CqaFp0rYdGNZDmO19DcqI9pKCeg/AjBRr9EYggU77
         Eb0VHjET2XHKgxSLCtr6bEV4GhvFK/uHDalCND4Xubw/VmFgK5F5yZ/rTTLUkErqEQNb
         /Lvw==
X-Forwarded-Encrypted: i=1; AJvYcCX7s/cZtllj7Qvef5E0ndHzuN376HOv7bKwkQI/aItgfE91z2rLFcYLvJ8G+ewUFONbw1fXzrNni0KL@vger.kernel.org
X-Gm-Message-State: AOJu0Yykjv4NNcAsgeDRfVokDFDlkI0a3RRaSptDm+MSsL2VZC6jGNCO
	pfbi3K/oa98aIJ4QJvNPeueIzloWb7MPS8dWuf0BB5PiUpzhacbNApEK
X-Gm-Gg: ASbGnctkOWmzY3XGshiFka5jvvCwkO2lN/GtoT18a4+Shk7w8L9zetlUHpcxxT26bUr
	GgFYezCjMAs/6I18Cr+BJpfgcszNGNbAPHwoS1Kchpx5ZYYZPrW4nv7Bbk4ICS9uSX4T12OT3sK
	rdFakab4ZGTRl+yYU08PxMvZBvxc6o8xoQXAui7/LSYrixN7w98C1+zl4M0N+udIs/gIh6hrRnF
	lt7T4T861sMUXTdSTtWXtYJOTtgk6zTJbujYFLRM/59EzN1i+VKwLd7ImIhKZhDxx9xw7UXi6Do
	5M9AkMcTNfdpdIFGtuVfuMlb++AhjqXlrI4AYK92DUlztBc6aQow7XnLenhNCvneFXvjj3SUx+R
	ioaPQWBAseOISOIDmXOInm97fqpHIfHiPmKWKkq3ueTRntPHQU5FDZgtc84duje5eadVVwJeNaH
	XJ/qrYNn1/cFUYHsQTWbrQVUa5qpIZosCwgAwibfq5YmC6DCA7ThIORlYAGg==
X-Google-Smtp-Source: AGHT+IGQT1sWn537O9lUQH0SeyIcZJ4uWohxTzjPx9kV6HFu78PmQQbglpth1JWOPqlEUpT9jeFZgg==
X-Received: by 2002:a05:600c:4e02:b0:475:dd04:128a with SMTP id 5b1f17b1804b1-47717e6b4c8mr33281395e9.31.1761666210763;
        Tue, 28 Oct 2025 08:43:30 -0700 (PDT)
Received: from jernej-laptop.localnet (178-79-73-218.dynamic.telemach.net. [178.79.73.218])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-475dd02cd6dsm210045835e9.2.2025.10.28.08.43.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 08:43:30 -0700 (PDT)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Samuel Holland <samuel@sholland.org>,
 Richard Genoud <richard.genoud@bootlin.com>
Cc: Uwe =?UTF-8?B?S2xlaW5lLUvDtm5pZw==?= <u.kleine-koenig@baylibre.com>,
 Wentao Liang <vulab@iscas.ac.cn>, Johan Hovold <johan@kernel.org>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, Richard Genoud <richard.genoud@bootlin.com>
Subject:
 Re: [PATCH v4 08/16] mtd: rawnand: sunxi: add has_ecc_block_512 capability
Date: Tue, 28 Oct 2025 16:43:29 +0100
Message-ID: <8637155.NyiUUSuA9g@jernej-laptop>
In-Reply-To: <20251028073534.526992-9-richard.genoud@bootlin.com>
References:
 <20251028073534.526992-1-richard.genoud@bootlin.com>
 <20251028073534.526992-9-richard.genoud@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Dne torek, 28. oktober 2025 ob 08:35:01 Srednjeevropski standardni =C4=8Das=
 je Richard Genoud napisal(a):
> The H616 controller can't handle 512 bytes ECC block size. The
> NFC_ECC_BLOCK_512 bit disappeared in H6, and NDFC_RANDOM_EN took its
> place.
>=20
> So, add has_ecc_block_512 capability to only set this bit on SoC having
> it.
>=20
> No functional change.
>=20
> Signed-off-by: Richard Genoud <richard.genoud@bootlin.com>

Reviewed-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej



