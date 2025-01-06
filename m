Return-Path: <devicetree+bounces-135957-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BBC4FA031D7
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 22:08:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AE530160F52
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 21:08:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 366C91DFE20;
	Mon,  6 Jan 2025 21:08:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LA6DBjvq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E8101DED6C;
	Mon,  6 Jan 2025 21:08:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736197719; cv=none; b=A9G+a6BOUsBc8ssG7SliEOF53UfARxqxSbJ9dYTyptByjWGBvv6jtykGYKWu2Auf6+cA02MRaWAPnnDMOVuV2f7PnD89yOfS11UtCICUSfN34taUJAa5jhUq6J3b6Zb72VY/ornaFYcIGQTSgxAsM/H2v0NZHTMsnDHt/rT5Nhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736197719; c=relaxed/simple;
	bh=pn4WwrIZl4q3yZbVPGmoGodJ5pv0OBWYacthkC8dikw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GXOR7cpU23K1OGU2PkREuLyX3gs0FNo5IY6M+VvUAPkyW978Gt1FkEVUr0cHfex6izPN98j90pHyxveeKzhTr80/NXRrkWbPxrumdLoqR9YPcOMi5K/qaMoxfl3gTFfbhi0L8L+004taZyOkizfTDtg3X61lR9ZpwM+95m3BhX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LA6DBjvq; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4363dc916ceso92145175e9.0;
        Mon, 06 Jan 2025 13:08:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736197716; x=1736802516; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pn4WwrIZl4q3yZbVPGmoGodJ5pv0OBWYacthkC8dikw=;
        b=LA6DBjvqDsyEoUuS4C1OO73LnjLjVqAYJhIz7JZs3m1cI7B8/YOAoRKA/joL+M9zND
         g9t6jM9A4mq+RvK7PLJoUrSD55F9Fn30tOeF/vQ0H0XAIJve8Sx6tHWYRBgDPzIEpo5J
         GrIllgP4cz9ANob1m9fQt+XVjiUZmPYezYVyCFtmwg/I677Ktf2UpcjPi3v5N/eUliDj
         MeSSn6dLiOvBmRUwlfVKsuDHE2d3btSopT0RhWeuOKBzrMTD6CyILM+PVeX9fNQzqf29
         LNm8rTAH/dOxqCpz3DK/6mkJj5uU23j8lCUOGQxFNRsnY9mkZ1c6VkqAkgpO14PEwF2U
         epCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736197716; x=1736802516;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pn4WwrIZl4q3yZbVPGmoGodJ5pv0OBWYacthkC8dikw=;
        b=citJmYwVEmEeA18wd5uSA7WMp/1Ou8wfvEVCOitsN7aXcNmD2t2hEkwrsFPdZGxH7F
         kWl/igtbkJG+0Fk8FhwNeW+MF5VPJ6pieanhY3SvfjvUREg1Xf4+KXSOFBqPPTr3p9yY
         71OtHOY/GqO6+HVAo6ryC/ebj7WNHn0SMqOFuWidaeseCxt5g1HNTZrBG7PVYhBpbCWH
         vkF1Px6EBor9Kl4fwYYwTyh+6wwN2YB/s+drtRgfdBbcqudTN+2nky/l89zmXrbTgOHJ
         8ml/cO+wWXx3p3tyv96PVnEAbbPM3U10OEvNtPUm4D0cBkDeZeeE8fZexoEcyA0ztLQu
         cWpQ==
X-Forwarded-Encrypted: i=1; AJvYcCVsUBzYQMS0kF8iz/dLgWlhDbz2LCjzG3gV40Opbo1W1jJYbDqu7PQ1TWU/S/E1GVVY1xcnnSnOPQ79X1w=@vger.kernel.org
X-Gm-Message-State: AOJu0YwhHP3XHdQJx/VaY7mM+aabFlMXETrSyAN07UARcp9hoEx8yumY
	YtDRupb2BC+xwFv1FSprYXavLrK0SR9tbNm2F7eJJl8Oinzsb53QLbOJYCDFK7DDdqcE2dPoD1z
	clpgqTAhW7qPh884QkSTHQZlSb0M=
X-Gm-Gg: ASbGnctgXBTvnLpes74hT5SmJAN5MIiMPZHxj9Wjfow0Rk1qDbj3A1JiUdt/ebIJo0v
	pMcybUZYlDN5WVk6dwzATB2mDl1/l9qW490JFhg==
X-Google-Smtp-Source: AGHT+IFpb3vDJfP232azjpEU+8oSssPqo6K1SCqKB3P53xPN/L3f6eNng72pkwnRi0gFWGBCmZvu7mJXcvKfZqRicbQ=
X-Received: by 2002:a5d:6d8d:0:b0:386:3d33:a61a with SMTP id
 ffacd0b85a97d-38a79244741mr521665f8f.27.1736197715562; Mon, 06 Jan 2025
 13:08:35 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250106205635.2177321-1-Mr.Bossman075@gmail.com> <CAOMZO5DDDFAWoTsujKuUsvRews4dez=rc6a3+Hnaq5iyoL6T6Q@mail.gmail.com>
In-Reply-To: <CAOMZO5DDDFAWoTsujKuUsvRews4dez=rc6a3+Hnaq5iyoL6T6Q@mail.gmail.com>
From: Jesse T <mr.bossman075@gmail.com>
Date: Mon, 6 Jan 2025 16:07:59 -0500
X-Gm-Features: AbW1kvZB24N2etW-yV-pwtC9S97WKTC4_Kq8j5gim8H_zQaiASlwEuz7cyMaGoQ
Message-ID: <CAJFTR8RYt0v+4WOLthdPUaLYHJeBcUFMz5HE=eA-Dx9cDo8Msw@mail.gmail.com>
Subject: Re: [RESEND PATCH v2] ARM: dts: imxrt1050: Fix clocks for mmc
To: Fabio Estevam <festevam@gmail.com>
Cc: devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, linus.walleij@linaro.org, arnd@arndb.de, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Frank Li <Frank.li@nxp.com>, imx@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 6, 2025 at 4:02=E2=80=AFPM Fabio Estevam <festevam@gmail.com> w=
rote:
>
> On Mon, Jan 6, 2025 at 5:56=E2=80=AFPM Jesse Taube <mr.bossman075@gmail.c=
om> wrote:
> >
> > One of the usdhc1 controller's clocks should be IMXRT1050_CLK_AHB_PODF =
not
> > IMXRT1050_CLK_OSC.
> >
> > Fixes: 1c4f01be3490 ("ARM: dts: imx: Add i.MXRT1050-EVK support")
> > Signed-off-by: Jesse Taube <Mr.Bossman075@gmail.com>
>
> Reviewed-by: Fabio Estevam <festevam@gmail.com>
Thanks!
Replying to fix the CCs and add Frank Li

