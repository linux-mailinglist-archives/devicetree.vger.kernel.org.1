Return-Path: <devicetree+bounces-246305-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DECFFCBBA91
	for <lists+devicetree@lfdr.de>; Sun, 14 Dec 2025 13:04:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6309130056D1
	for <lists+devicetree@lfdr.de>; Sun, 14 Dec 2025 12:04:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7296924DD15;
	Sun, 14 Dec 2025 12:04:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DDy9UIjw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7B211DF736
	for <devicetree@vger.kernel.org>; Sun, 14 Dec 2025 12:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765713895; cv=none; b=g9crv+5toO6ChsD2bFrRtjYrAW6hlC6CRb/0X1LKuSkn9ehyMpjppcJlhq0CkI4hz2OVt0LMJE9U4CJTr9g8fvMGQHpT7sOXrDK2aa0tOj98KS7OW5PZZMiDAwxYCRkwV3zZtyzZTBXdfSXq8uj0M9VniV2a92Xx3dZ4fK5R2Zk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765713895; c=relaxed/simple;
	bh=JxC1TTUXOv8h7Je59fO0E1QysMbuRT+b24AHjrR1b3U=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=UDygJp7H6iQUxh5l+jF6gVKZltIJfIFBZ+NgB7panjWAvffHjvIvYRAK6s5x4dFSoskMoIBY+1sdU5i2ffGYjnSrClCfCpoEKRA8bFnVsZHA4Vgmu1XX3DZNKjqu7e1HXxqTHy6A/8yTrRsQljS0HYNqSJCXUkU5nrbTVgniPzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DDy9UIjw; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-37bb8bef4cdso22404681fa.3
        for <devicetree@vger.kernel.org>; Sun, 14 Dec 2025 04:04:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765713892; x=1766318692; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h6FVs1lq7FCYiXGgCHToT2WUTH1AKvFmKeDMOd7AaH8=;
        b=DDy9UIjwA7zS6sEcgX18jQa2pQkksLLDy6JzXGs3WVAOguWIJyCmDFnrlbwJgQgWA8
         txnwsH1do5xq2HhnoYS54lSqyU39vLW5llce40dl13MfFt3YEaLjDGqCJvqovGLUGuO0
         x15NFUI9UO0LNmYDPc+LnYQ2Crziy4gEQjmGKsFXkBwuohC8Y8xkFloNNjEnUW6GdX6q
         SsU1VMsx9+OhehGXTANfSFD0f2mkLYe3O78/XCsgoUzu9G9rdCk2ZS1W6n9dcBrzbxl1
         h26Ig4KGDWib1o1jc/hhvxtRV30lDIqp3FG/Yghrodh34qJ4q5ho+IpzjU20carCMNcj
         zxWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765713892; x=1766318692;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=h6FVs1lq7FCYiXGgCHToT2WUTH1AKvFmKeDMOd7AaH8=;
        b=pn4/tmoOsXTE443p/EmALEyG8CuH8cD6POyJIjVl+Mru6WEq48yFpaU8okAC7I/Y75
         9UJBQb/FmGJUfgGH6BywUamLa692jJZNbdM8B5vPDmm/YCzgUrLMoE1M1icJxaZ31tU5
         5yRi5a9pwy+RiwGlIAVLdECD+i4R1hvViFN258ObKlrf20l9Z8hJ71QOOU2krHLnqWns
         FI8TDAdJppObytRsRDsDWPrEFVZDIeu6LJ6NUcSsJIc0khTuSS5sISxIEw2HM6sSFGVd
         ldXFZOmZ7s0RN/g0gPKMC0RUEB+DCw8Ko0uTkA1DmosZiKP+r+//lvkzyRArv61G71FG
         yCew==
X-Gm-Message-State: AOJu0YyhhfqtRRhik8mo33HzFXx438dio+nE0boMeAcGv1DidZ3WnxKg
	qxmbwq8bENE2lLWx8IzoiLnwKVVtJ8N/jyQKfLuSq5MN7SJyznGLmVQIQdvtOmSW/AddxO8RScl
	YdhfMKb8jQ0QEatu5TgoU4dAzLX1X1Ks/jI1v
X-Gm-Gg: AY/fxX40+Qv/ttirU0I+0gW/PFo8yAZvCy5GnQRE+YGO9nz4U6SyxeIhtdYPsKkAd6G
	X37RpoznKSCau0EEM8GcIIWxQXggQmM88oeUCNFaJIxXK2uqFQwPh4bbhpwc3o7k9KAPwafiyev
	ADfm4MLLZEq+6SEqLCn/ij3WUUc1yHiabhJoyr/dgXmvnzOMCXTb5LgyF75445s5qHqnuaMrx8R
	/X9xZx8eMo2KUWgDqY+N5zjLAX6/PnBu5GVwrYnrRfe9p7sstGHs+oObvdoi8TE73vPlgfExm+N
	yx24J70dCSIEOXEVPN7QFW/k1t8=
X-Google-Smtp-Source: AGHT+IFEHj5vW/XmkFcEYVjxG+F3Nz7WaZtq+0llUfoVvXBqTv4i3OwZA6sGVcQV5jtiS+U2ieRUXKmtZhWxjytV7T4=
X-Received: by 2002:a05:651c:220b:b0:37f:a216:e455 with SMTP id
 38308e7fff4ca-37fd07ad69amr22302051fa.18.1765713891487; Sun, 14 Dec 2025
 04:04:51 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251214110531.9475-1-stefano.r@variscite.com> <20251214110531.9475-7-stefano.r@variscite.com>
In-Reply-To: <20251214110531.9475-7-stefano.r@variscite.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Sun, 14 Dec 2025 09:04:38 -0300
X-Gm-Features: AQt7F2p36DBHCZVA3WlHXwUgn4u6_L0tGkOCn88lhySCWth0zVlBdA_shlhyg2g
Message-ID: <CAOMZO5AzuZVkD3rTLEDGFpCx0ovtKfzjZtNgGG0uLDXbPkiqRg@mail.gmail.com>
Subject: Re: [PATCH v3 6/6] arm64: dts: imx8mp-var-som: Add support for
 ADS7846 touchscreen
To: Stefano Radaelli <stefano.radaelli21@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Stefano Radaelli <stefano.r@variscite.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Stefano,

On Sun, Dec 14, 2025 at 8:05=E2=80=AFAM Stefano Radaelli
<stefano.radaelli21@gmail.com> wrote:

> +       /* Resistive touch controller */
> +       ads7846: touchscreen@0 {
> +               compatible =3D "ti,ads7846";

The public datasheet states that the touchscreen is a TSC2046:

https://variscite.com/wp-content/uploads/2024/05/VAR-SOM-MX8M-PLUS_V2_Datas=
heet.pdf

I understand they are both from the same family of touchscreen
controllers, but shouldn't you use the ti,tsc2046 compatible string
instead?

