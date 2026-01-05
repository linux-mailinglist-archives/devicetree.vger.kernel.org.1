Return-Path: <devicetree+bounces-251452-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 84E63CF326D
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 12:07:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 46818303CF71
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 11:03:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2E743168E9;
	Mon,  5 Jan 2026 11:03:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com [209.85.222.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31C71313280
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 11:03:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767610988; cv=none; b=Jeq5tXO53sOS6oa0QIUUX29EemOtX7DSheaUTwW0zb9UcX3uWXpkjV1YiUB8mhX1pxt1yR6yN4ebSUE1RRsVj3FqiXBpNCyT3QbBVta8o7SqS5I9ToTOTSO4lvCkXVw7ECwVlr4k4fz0LACFKk2LdBzrO4fE6+qyyNDdBzJgYG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767610988; c=relaxed/simple;
	bh=hAms7IKyqam6rNOoqdYp7LLOeRfAUy6pwyvcxDno2zY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=K5ivm5CRPgT0Q0BRLTNYs3prJkJZs1H4OiS1bD/19tLiEP6wqIOYLjXunEYFIRK2V+UBhkeJ1JqcR1bdQ2IIqXIyDz3ELabMKIBJzOT+tHvYCENHioJ6rKqlGCrdReA9KbOQh7bZUlDVvDW/+BRaKd1A2Rlfr+ClD8EGyGjgODo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f53.google.com with SMTP id a1e0cc1a2514c-93a9f6efe8bso3208563241.0
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 03:03:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767610984; x=1768215784;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5HVxxcSl5ZUgm/OiTpMLt/jnUpdmkmBIJiQ/3TY5I8k=;
        b=M8Ra2I7LxM+MdTDm241KO+HDnlnSKYAn7E4PIPyJP8D0syZ6LsWmi7DXyBo2shXh10
         NmZbxmThk3XHbrIxSUh890/w5rXDQcI3rFfoKM1ugqlJtdbu87EzJ54srL9QozYa3rvf
         YaVaGPFCQIHeUF40txAEmZuT6qYmVtH4XPZIdqYQ5rfQJ4nx9ZEc5opFPlDRLiHtEWWf
         +dCG+eRJYwtGxgRoP3PsIAorMLKbn2v6967e2eRqpDmcD2zNeg7QDPfeOtdHn5ZYsdhC
         bJg0ZmV4aE1tEA4Bi1jQgBQzvfs0I9kzomCw4WmryPbSIBstQvcJEfYpP0TBBYP68wxQ
         UfXw==
X-Forwarded-Encrypted: i=1; AJvYcCVkS8hRwqNrNKR8xFpc+2uWbZTmA7fOdX6rATYD4WubfThJreyhNJvxhbSuGF6IzhPLOpVGCQBX8m0c@vger.kernel.org
X-Gm-Message-State: AOJu0YwvORmpEp7D2AEFhxBm1QduyR3N9/HFUbymZV4UaMJRtkcFO2tm
	huLETqBiNUX4IlC4LSzqOcATeGj1pnaEBqh+09Yfz8rzGYAzPDhhXG0/dJUb753k
X-Gm-Gg: AY/fxX78VIh/gQPZ1kyV83TonxGthVpXgiHBOm8bqfmrws8EXRu8mOBV8VThMBLvstY
	KA6q0GFtObxWTNf7AlBroZyeI8Qo0smg5w9bSvCp0xgqOevpyqHZGvnPuz5Hnwuj0iUpX1Wr8Of
	vqG7YhxWTFo+mLucLY/fW5sppX5n1cAKqNw2En3CC+FpEBy+LOWKgt2SsKrlpHM2jyw86E9v6zz
	hQ06izI51EZeLm9qTYZ9ELoVqXKLuUxkPn6ne2fpcxhzXQIRjyvWNXFwNlV8lDYwPA0QcDn01Qu
	qhpcFdKKQAq434HM35z6/53VkeTCEp3+bglw/YpsFb6cxHfstHUbbSy6Ck31Yqt78HKiB/ho2VU
	jA8+xVv0YxlJnG557OCPAwtVzIatTW/wbKwEgiKR/2wmUF6a2aV6kupMXXp1gatj34TXoOl1Kdz
	Ulu7uxdj3aVVdPA+FpIwJV7OcKIBikotiwZWDYwI4KgP80pDYhWg8Z9CYaWVA=
X-Google-Smtp-Source: AGHT+IE1nkHGqaTZXPLpEciPMUJN0GKg7Zq7TokDWhsCvOmGvPd3fEvgNG4IW5h6OuXNmMA5Ys00lw==
X-Received: by 2002:a05:6102:8023:b0:5d5:dbbb:5b86 with SMTP id ada2fe7eead31-5eb1a7cfce2mr14672303137.25.1767610983821;
        Mon, 05 Jan 2026 03:03:03 -0800 (PST)
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com. [209.85.217.48])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5eb1aa4f55dsm15016563137.2.2026.01.05.03.03.03
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Jan 2026 03:03:03 -0800 (PST)
Received: by mail-vs1-f48.google.com with SMTP id ada2fe7eead31-5dfd2148bf3so4928704137.1
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 03:03:03 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCX2f7oVNdhVD8W/TMRJOOtJ0GFlngR2Fwd3tSn+8Lxp6b18JZiDgH2Y8v0VKxNRtCEDkSyOThWzHKOj@vger.kernel.org
X-Received: by 2002:a05:6102:c90:b0:5df:c15b:4feb with SMTP id
 ada2fe7eead31-5eb1a7d3c4fmr13074222137.26.1767610982990; Mon, 05 Jan 2026
 03:03:02 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251217080843.70621-1-shorne@gmail.com> <20251217080843.70621-3-shorne@gmail.com>
 <CAMuHMdVCY=5UypK65Ver6UZM_m6DZuw9mhfANMx4+Y6PgNAdmA@mail.gmail.com> <aVi0W6syzK6buL_v@antec>
In-Reply-To: <aVi0W6syzK6buL_v@antec>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 5 Jan 2026 12:02:52 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUP3z4Os=3XC6Nuzx8QAap=LTcuJrGZsy71GO=NFTOjZg@mail.gmail.com>
X-Gm-Features: AQt7F2psihV0yZwb9Ig62dHZ18S-t-DpkRavD32vIkfcb25fPGFgWjTlZzYQH6k
Message-ID: <CAMuHMdUP3z4Os=3XC6Nuzx8QAap=LTcuJrGZsy71GO=NFTOjZg@mail.gmail.com>
Subject: Re: [PATCH v2 2/5] openrisc: dts: Add de0 nano config and devicetree
To: Stafford Horne <shorne@gmail.com>
Cc: LKML <linux-kernel@vger.kernel.org>, 
	Linux OpenRISC <linux-openrisc@vger.kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jonas Bonn <jonas@southpole.se>, 
	Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Stafford,

On Sat, 3 Jan 2026 at 07:17, Stafford Horne <shorne@gmail.com> wrote:
> On Thu, Dec 18, 2025 at 07:36:08PM +0100, Geert Uytterhoeven wrote:
> > On Wed, 17 Dec 2025 at 09:23, Stafford Horne <shorne@gmail.com> wrote:
> > > The de0 nano from Terasic is an FPGA board that we use in the OpenRISC
> > > community to test OpenRISC configurations.  Add a base configuration for
> > > the board that runs an OpenRISC CPU at 50Mhz with 32MB ram, UART for
> > > console and some GPIOs for LEDs and switches.
> > >
> > > There is an older version of this floating around that defines all of
> > > the hardware on the board including SPI's, flash devices, sram, ADCs
> > > etc.  Eventually it would be good to get the full version upstream
> > > but for now I think a minimal board is good to start with.
> > >
> > > Link: https://openrisc.io/tutorials/de0_nano/
> > > Link: https://github.com/olofk/de0_nano
> > >
> > > Signed-off-by: Stafford Horne <shorne@gmail.com>

> > > --- /dev/null
> > > +++ b/arch/openrisc/boot/dts/de0-nano.dts
> > > @@ -0,0 +1,54 @@
> > > +// SPDX-License-Identifier: GPL-2.0
> > > +
> > > +/dts-v1/;
> > > +
> > > +#include "de0-nano-common.dtsi"
> > > +
> > > +/ {
> > > +       model = "Terasic DE0 Nano";
> > > +       compatible = "opencores,or1ksim";
> > > +       #address-cells = <1>;
> > > +       #size-cells = <1>;
> > > +       interrupt-parent = <&pic>;
> > > +
> > > +       aliases {
> > > +               uart0 = &serial0;
> > > +       };
> > > +
> > > +       chosen {
> > > +               bootargs = "earlycon";
> >
> > Do you need this?
>
> What do you mean here? I want to keep "earlycon", and it is not supplied in
> de0-nano-common.dtsi.

Why do you want to keep it? "earlycon" is a typical debug option,
and should not be needed during normal use.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

