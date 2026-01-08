Return-Path: <devicetree+bounces-252530-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 289F6D0075B
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 01:25:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7FBBE30024D9
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 00:25:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17817198E91;
	Thu,  8 Jan 2026 00:25:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o+iSKdWJ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E644213E02A
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 00:25:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767831938; cv=none; b=uDXswCZy4Fhe5HECfZYyivRtFTaEL7dWUio5lmDU2TMFuXr82DZJgtzOkztp0kqZkc+Ev9HNyzV30IkJ/8oCiYdNPfgTy3ya6UpyoDUU56v/VS2GSM8trXeDAR8leFmbj+zoVYkp8vmc/kGWuac1OBddk44+oY7+xVEbgJJXrH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767831938; c=relaxed/simple;
	bh=dKpvfWhR+ao6SRp4kUICqTTWzO7/JiKNMNbKfPilDpc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=le2K4fV0HTUcMoosKPK8j7dgMs2xshIMPcl4eVukr7MnvwNcdTbf4RJhhuGKAWV6lfqlzTKG2Q9AZej6ZPkAZnc6xT14kfjyzos+yPHrtIk30seJblB9okJZ7d8rADCf0q8igSG83nkwVozhCd7nfDGajJTe6oHaL3ySjTEInF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o+iSKdWJ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8924EC4AF09
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 00:25:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767831937;
	bh=dKpvfWhR+ao6SRp4kUICqTTWzO7/JiKNMNbKfPilDpc=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=o+iSKdWJNZubEaw2VairlWyVdJTSZcyFCq6bk1fo2xRjoOO5sT3i3hwWH2fmu6Rwk
	 zijOFlsg3xed3WBwr3J33ccpgA8EnkIauMCZRzYwA7p6ESY6j2v42uUylZN7kfnRcP
	 x7Pm0+Nq6PvglbBH2Rk4Vk5R9ssqaVpJn6x4NC9paLe6RdOoAecV6VgNO+xCrcXahN
	 2RvoKIDI9NhhrwaN4tR3/WqqttK7IOSkF8cZ3KBIhLkhV+KdyT8v4wEA9s7YPavSoJ
	 SNZGV4QUOgv6MINP1Ei3GgiAxpwpzZWIaBdxYW9ZdCRVSKiXvUJbWCULo8B8Ew0iW/
	 +Ghf20BgfpCDw==
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-b7ce5d6627dso534188366b.2
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 16:25:37 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWF6vCEtmKgrRn6jiP5V+k6Hvl9flVz/JQ1NHS9Vd4JiMKG3UuQvLXu5c5tz/JlSJxhbR3mRUPXUfx7@vger.kernel.org
X-Gm-Message-State: AOJu0YyCCWEqr/DDnez3ATGrn3LznYFxilspfErzHZUeUvCEeYrOqRIS
	L+GIr8j7p6sIemncftuRzGF+LgzwL8UtuJItyWUdfxt+A/XE0qd3GTt5IKGex8b808AD1jdeRSe
	zegST+g+f+MMSutW2XLzRr47STeLWng==
X-Google-Smtp-Source: AGHT+IHGbdOq9A7ht9GwHXUB0lkTxrQU8h32ytsd60tIWq2VQbXNaEf7DbGEZB5drNoTLCE118ndwLzIrKNWa4uD3U8=
X-Received: by 2002:a17:907:969e:b0:b76:4426:3a3a with SMTP id
 a640c23a62f3a-b8445218177mr472166366b.58.1767831936081; Wed, 07 Jan 2026
 16:25:36 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251119175124.48947-1-linux@fw-web.de> <176778436967.39195.1901837532049373497.b4-ty@collabora.com>
In-Reply-To: <176778436967.39195.1901837532049373497.b4-ty@collabora.com>
From: Rob Herring <robh@kernel.org>
Date: Wed, 7 Jan 2026 18:25:24 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLdLaS+9q7_BgtjH-ezX6Bd0r9_GaOM59CyUctCm84kZg@mail.gmail.com>
X-Gm-Features: AQt7F2of3BOU5fJm5dFNBkUc0jh06Bp6eZBJGWiAa-ihxq2BG_e8zm-MeY4S07E
Message-ID: <CAL_JsqLdLaS+9q7_BgtjH-ezX6Bd0r9_GaOM59CyUctCm84kZg@mail.gmail.com>
Subject: Re: [PATCH v1 0/2] build full dtbs for BananaPi R3/R4(Pro)
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Matthias Brugger <matthias.bgg@gmail.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Frank Wunderlich <linux@fw-web.de>, 
	Frank Wunderlich <frank-w@public-files.de>, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 7, 2026 at 5:12=E2=80=AFAM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> On Wed, 19 Nov 2025 18:51:21 +0100, Frank Wunderlich wrote:
> > From: Frank Wunderlich <frank-w@public-files.de>
> >
> > Build devicetree binaries for testing overlays and providing users
> > full dtb without using overlays for Bananapi R4 (pro) variants.
> >
> > It is not required to build all possible combinations, only for
> > common usecases and to test if all overlays can be applied.
> >
> > [...]
>
> Applied to v6.19-next/dts64, thanks!
>
> [1/2] arm64: dts: mediatek: mt7986: add dtbs with applied overlays for bp=
i-r3
>       commit: 0516c548883bbe58a48d604e81e33b390986cdb6
> [2/2] arm64: dts: mediatek: mt7988: add dtbs with applied overlays for bp=
i-r4 (pro)
>       commit: d977b61d38030f50bae9f634049110af0a364d0d

These are already in Linus' tree. I picked them up because there was
no movement and he was complaining about the warnings.

Rob

