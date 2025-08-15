Return-Path: <devicetree+bounces-205062-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 15495B27C9E
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 11:18:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 510F3622C58
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 09:12:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CA442E612A;
	Fri, 15 Aug 2025 09:09:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fuCuXZe+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 842C52DE6F3
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 09:09:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755248984; cv=none; b=LiYppI3X3q4Haj+dDYZARKrsawZJ4ftGVIkzRxCmVKDBdUIYpfIcv0zJZphbw7G/b5XMH/adw+DBtojpfWx42z22DTUymDO2UX1NNqCvoduT8A5H3co8hWcq55QcVchJtSNcQhwhaSj4ombtWvz2C1iBn3k2qD16wWls3miwm5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755248984; c=relaxed/simple;
	bh=OIJNRqjRIKZy3S/hGDiq9C3wvFkIdWxYwaBQ3lO/5U0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=b/zhrDLDeLJTIyokCzQs0azU8pIgP6fd1mrLVLB8di9kvSB29v/Ws2llQhk4TtwhB4Qe0wwyyPj7UPaKhyUF/qzp5lrThSjveST+VBHxpOGcCR7uYFw3nkkOWJwIYVAiy1mhY3PIOK1cmNiyzj4mvhCANaADwdw1d7WO/rskCo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fuCuXZe+; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-333f917a67aso12058301fa.2
        for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 02:09:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755248972; x=1755853772; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RGJhJQc6FwYGEhY0RLSGVMOBhQEywfsf5GcAeMtkOBc=;
        b=fuCuXZe+IuKggbWMZdNT7h7nq5/yN2raP59qR/YMj8j88LHWXnxjiJmzXORdAGWoXV
         2uDIZn2EnA0pE0LfRpM262MCmXlCHXVY0aFMFxmhNVaVCLaKYUHpUqo5+CbLNopP9bpZ
         bq2nLw8YEbHgYx9cgtXLk3xLuK8KaTXevhjFB8Z7vD6OWZ1LZTbGMZK1rF9rvowy3N4C
         Lt+A97o5yRtqchlpWyV/4UwPBIOx+qEJFwQhvtCcJ4sbmfycejylvTSI+9awxX0Xoc31
         yxXrnkAwSPsfnb39sdPnW+hkEFIZ1U+oy3ptPAem4SA/S7VaLSMdZygXG/8snpKzd+Tf
         /tLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755248972; x=1755853772;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RGJhJQc6FwYGEhY0RLSGVMOBhQEywfsf5GcAeMtkOBc=;
        b=mOfutayVWpOWKUYCdNw/wEbD5Ed6hvisR1W7DFI7hkvFkjke2lQu3CuFxsHBqy90/e
         yhzDEZcyQJ9UUTIi/nekENx1sQKGyTck0cfwOb17xDTJ3XvT/YCDvIFRyrkQwLkChp7e
         zzGGCwLyimE2848GGBnh6XRAmSAKgbufwGuXIYuuApABmLrBHIeMpnAelj06rWsvEo1F
         pd87pWcxMMVV6DA4z3E3eNRftpeoVX61LjeQCUTLXwgq4WpFov+0Zp0R6DQgMZd7VOs0
         Qf0kAu6625+r78tTaxLiCk+n8iKAYZImi2xPSzVxpnxIh//j53SO+o8SKs94F/R1AYJf
         6pPQ==
X-Forwarded-Encrypted: i=1; AJvYcCVZW8KSIs9fVdseiQ64ZY5sF/S/hDf6oHOa53zwLLQx3iPZ/35AXxFn4Jbya1Njy+FTHJjMvuQ80bFk@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9VCy2fpzJb2T4C3ANrkgY0OYsVLgzwNop52bXoO6OIDbrE7yL
	ZDiMVhjD8WjfmZSuCH3qcvv9ouf3I/qXVA53KfciLzJ3b6dacfAFJo+e3BE5QvIbvwlud7iuoCf
	2XuguSMcw41hj0JHzLhZNbfQxoIu7Ih5F+fysuB1wJ+8EyYF4Q5mz
X-Gm-Gg: ASbGnculGS6AkyNaV5yfwv6CFgBmgPvfcYP1Va9ZCGgpFBDwvXGgOe3J+GLM8W+w0Tg
	y0BZS7N8FfMLYofO7D92FWIBt9PGESYftzsg/fMhX5lDp5RsqaagVXnPbgdry7TvSb642sxeMQ8
	mrUF6iKljl0VJeKZvpdaEBfqqc8YHwjXI3hYTSDZXSrapeadOTf1zAEWs7SCdZP7HYgqo/NKR8Q
	uhKWImI+gJW
X-Google-Smtp-Source: AGHT+IH+k14bfZQAC1KVgtSKkgagSBtIxwMlEW1GNm9qBzYXcs+SImACCXvKbAOcHL0E6nXXVuPokyIcUWjwXHTd+18=
X-Received: by 2002:a2e:bc05:0:b0:332:197e:f746 with SMTP id
 38308e7fff4ca-334097dc5ecmr3598311fa.6.1755248971706; Fri, 15 Aug 2025
 02:09:31 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250814-ixp4xx-mi424wr-dts-v1-0-b7c10f3c4193@linaro.org>
 <20250814-ixp4xx-mi424wr-dts-v1-3-b7c10f3c4193@linaro.org> <f8529fab-d455-470e-b05b-9b5069091dc2@broadcom.com>
In-Reply-To: <f8529fab-d455-470e-b05b-9b5069091dc2@broadcom.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 15 Aug 2025 11:09:20 +0200
X-Gm-Features: Ac12FXy0B2p02EnH59JnC8rlf6TrQUcwEMck9pCiYQKxMABEtNQZh6UTI0EhI1w
Message-ID: <CACRpkdbmEz7_0_XTJh_Zf2=Fi4Bx3AWY5Vm8-uAAd8pPi-ARDQ@mail.gmail.com>
Subject: Re: [PATCH 3/3] ARM: dts: Add ixp4xx Actiontec MI424WR device trees
To: Florian Fainelli <florian.fainelli@broadcom.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Linus Walleij <linusw@kernel.org>, Imre Kaloz <kaloz@openwrt.org>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 14, 2025 at 11:13=E2=80=AFPM Florian Fainelli
<florian.fainelli@broadcom.com> wrote:
> On 8/14/25 09:40, Linus Walleij wrote:
> > The Actiontex MI424WR is a pretty widespread home router, made
> > in many different revisions.
> >
> > Revisions A, C and D are based on IXP42x. We add a device tree
> > for the A/C variant and one for the D variant as these differ in
> > the location of the WAN PHY on the MDIO bus, and the ethernet
> > interfaces for the WAN PHY and the DSA switch are switched around.
> >
> > Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> > ---
>
> [snip]
>
> > +                     gpio1: gpio@1,0 {
> > +                             /* MMIO GPIO at CS1 */
> > +                             compatible =3D "brcm,bcm6345-gpio";
>
> Is that really the compatible string we want to use here?

Yes as a matter of fact ... I got slapped for not just using compatible str=
ings
that are ... compatible and piling up new ones :/

Maybe I should try adding a new one, I suppose just "basic-mmio"
would not be an acceptable cover-all compatible string?

I guess you're right, I should poke the DT binding people as to what
to do about this.

Yours,
Linus Walleij

