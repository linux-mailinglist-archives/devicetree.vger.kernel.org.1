Return-Path: <devicetree+bounces-244685-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B3FBCA7D40
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 14:49:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C8DDD3061AA6
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 13:48:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBD12332907;
	Fri,  5 Dec 2025 13:47:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V5mZW47g"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 508EC330B1D
	for <devicetree@vger.kernel.org>; Fri,  5 Dec 2025 13:47:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764942421; cv=none; b=NMCupBh4rfgS+szTiBVTCs/CyUcKva3nfBNoA9WpwRlIz6MfIAB6nFRZquQT+XdbaX+fBi0nVvsEXI1KmpK6TFFUj6Y7UA0YwE4XUZx84hBuWo2Pm4a0mRiywso3cUI2cOBjtwzXyKFKZp/H4CNkdhDm3huNrgAW1j5kLAE0Y+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764942421; c=relaxed/simple;
	bh=G1DKwO3QOoOSXazmt1Hz6axf9JJ+8JmRfw6we/+3fMk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mvMKqdnherAc3RDTBfx8OjHTrgblGMlQ/lOu+ElZCFn5rCc87y7j0IgmCTGAVA0uM1EYKDDE6un/dJAn+0Oi90l9do3okmePAklQrVeTc4dyjrqxSzw22ZGiQipgZwu0CGAIztCN08UEE1e8DWqtcRrKl2xx28N/5dz1iqRiKsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V5mZW47g; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0447CC4CEF1
	for <devicetree@vger.kernel.org>; Fri,  5 Dec 2025 13:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764942419;
	bh=G1DKwO3QOoOSXazmt1Hz6axf9JJ+8JmRfw6we/+3fMk=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=V5mZW47gQS5wF6e3EaBjNjjRUsYMKA5vtJw93WQp8Yb3ErZUowS8tGrMrJ45GQxYQ
	 AbLPrtq+M/80a5GkVgG4trzqo4ZS06PDiyqJL10XkzmszUyl82UICaM7tlvH3l9Uyl
	 d0xkk90igghwQVETRaYIURkSlQPvPI1ZBBWyVrvrMnOXpgRRsQrz17hR5jryW0txIR
	 llk7JIYWKm9l8V0VbRMsqVOie6XSQfvEh0NtI8kaP6WFrPxHcPr6/ZSNoCWW9rtHVk
	 Z+hnLUnCmtNR78D4tNQw2Qhyv51Ht5Jjta3zjv/kSaYNY13nH4ZDVMFIJ9nyjdi43F
	 EI2rrYf74UnNg==
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-64175dfc338so3463777a12.0
        for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 05:46:58 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWCDN9m8JLM3+6rL016URwoHagVJPicmux/Ey5xhojW03AxTkvh7voyrMJ37rQjEYp3h0fzqqOJZJ0+@vger.kernel.org
X-Gm-Message-State: AOJu0YyLA8VIW3wwLsg4DL49b0Kt9DdB8hfdMB/CN2eKHpz9d7H0e8ep
	SB4uFVOTj3zO5ByeaBYuW5IgDIV3TdeOMRJkuTAradK3aRh7jYnvROUu+PZ7A80SlEqCVxCuc43
	PpHheN22beazaBJU9GAj0Zj9Vunkv1g==
X-Google-Smtp-Source: AGHT+IGnSnntD86eE9Z5w3JvKyrgl2TQ4p6Ck5tFuBzhXTViEp5pLzmxGFWb0Gp0bPBwpBev5udEHdS7Zgzngud/oYg=
X-Received: by 2002:a05:6402:520a:b0:640:f2cd:831 with SMTP id
 4fb4d7f45d1cf-6479c4076c1mr9111075a12.10.1764942417575; Fri, 05 Dec 2025
 05:46:57 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251119175124.48947-1-linux@fw-web.de> <20251119175124.48947-2-linux@fw-web.de>
 <fc5c9829-96fa-4028-a642-0792699e92a5@kernel.org> <ddad2f21-4853-41c9-acfb-1613f5000f0c@collabora.com>
In-Reply-To: <ddad2f21-4853-41c9-acfb-1613f5000f0c@collabora.com>
From: Rob Herring <robh@kernel.org>
Date: Fri, 5 Dec 2025 07:46:45 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+Zu14ojvNNjgOFWA40iaqYrgGQsrHNWraooOML98fXyw@mail.gmail.com>
X-Gm-Features: AQt7F2rRik37jIlkQlnszPiS-dbpLXF7k5YqaJSivvbMgbRGbC8B4kGSUMOvhpk
Message-ID: <CAL_Jsq+Zu14ojvNNjgOFWA40iaqYrgGQsrHNWraooOML98fXyw@mail.gmail.com>
Subject: Re: [PATCH v1 1/2] arm64: dts: mediatek: mt7986: add dtbs with
 applied overlays for bpi-r3
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	Frank Wunderlich <linux@fw-web.de>, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Frank Wunderlich <frank-w@public-files.de>, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 5, 2025 at 3:05=E2=80=AFAM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Il 05/12/25 09:10, Krzysztof Kozlowski ha scritto:
> > On 19/11/2025 18:51, Frank Wunderlich wrote:
> >> From: Frank Wunderlich <frank-w@public-files.de>
> >>
> >> Build devicetree binaries for testing overlays and providing users
> >> full dtb without using overlays.
> >>
> >> Suggested-by: Rob Herring <robh+dt@kernel.org>
> >> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> >> ---
> >> resend of
> >> https://patchwork.kernel.org/project/linux-mediatek/patch/202406080805=
30.9436-2-linux@fw-web.de/
> >> due to discussions here:
> >> https://patchwork.kernel.org/project/linux-mediatek/patch/202511172113=
06.725678-1-robh@kernel.org/
> >>
> >> changes:
> >> - updated sd-nand with sata-overlay
> >> ---
> >>   arch/arm64/boot/dts/mediatek/Makefile | 21 +++++++++++++++++++++
> >>   1 file changed, 21 insertions(+)
> >
> >
> > This looks like still not being applied and now it is a warning in
> > Linus' tree.
> >
> > Can this be applied and sent as fixes?

There's still one warning remaining after applying this series which I repo=
rted:

scripts/Makefile.dtbs:20: .dtbo is not applied to any base:
mt8395-radxa-nio-12l-8-hd-panel.dtbo

It's fixed in my original patch. Can you all take that and drop the bpi hun=
ks.

FWIW:

Acked-by: Rob Herring (Arm) <robh@kernel.org>

