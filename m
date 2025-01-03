Return-Path: <devicetree+bounces-135213-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B500FA001EB
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 01:19:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7BE2B162AEB
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 00:19:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60C39A47;
	Fri,  3 Jan 2025 00:19:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JVelMueS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 980A3139B
	for <devicetree@vger.kernel.org>; Fri,  3 Jan 2025 00:19:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735863543; cv=none; b=uDsHfeF+AUhmo3MYrmhcCXVGIA8TI7TUC9oqct/dB8WEbbju9fHnGZIestDhx4JgQERy8susla+tmr5IVEaOZUeSWYnFkp1FBOStRZQtUNLd2S44X+pDs+X88sT6e0PHWH8xVa5cX7N+jw8M/AePNAVLXqvpvDruELCbzvf/ynw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735863543; c=relaxed/simple;
	bh=q/d49c7vDXzMHTcFFHoavdSb7tEDB3nMxvNA5hm7tr0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gJefk3q+ydjQXSsd1W94bxwitZzvY3vwlCLBWzN8N15wevqPGW0wKoLjtQBHjb3PR4DT55938Bi5+Dzqxq/OfV2gYUGZVAaz8Ys5ZJRbkOGDRLnfQEK4+U+7w3i2DGAahT7H8Nl4s3e6xRO9M6fHnm5ZGAg19ewscEusGOPDyxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JVelMueS; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4364a37a1d7so124741735e9.3
        for <devicetree@vger.kernel.org>; Thu, 02 Jan 2025 16:19:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1735863540; x=1736468340; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=huSEKVbzBTMcqWXnTQrTDEYxm+6yBPzd064JJPMGrmA=;
        b=JVelMueSjTVHmIuCIBMAVWhtcajpdO+Z+Jm4nDwir7Am9qdyFoZt/ZjmGbVmDaUBST
         2B2tPyK4PeZDo/zu3MjP1grEMzLBrXR/8O6uVs77GRhkZeUiyuZ14Gr5JDOri+vIsF9Y
         9DGcMI4kOI2eVizuQFWV2k/V8XuY6yrPzaQ5VNFYK/vB1yXQeqVy2yXg4EAucSWiy1rO
         S4EsZzjghQhDo2Koh9Ruf9A92wBoaiDstZHFcdKz+b0G/LhUqH2nPYPiWA6lLdXo3khD
         khgpOZWbc6c45dLIH4vJ/LwuWqePLoXiSP6XR4swjFNFqHt3kndFh251hfkbcpTFd4VA
         7tMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735863540; x=1736468340;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=huSEKVbzBTMcqWXnTQrTDEYxm+6yBPzd064JJPMGrmA=;
        b=QFGGzv+9Ip943r2MRe31yQ7n3kSKhSdLamaPJhqXHCoewvW+q0xAQ0J5t2zqL0PM7e
         B+qB2Jf3RBmSJlaSbarL1Dl2AZzC/N5c6QpYTy4B1JNdFl0DZy9gqebZqMEtHqr/HLIW
         7IcOTCWe2Udbmkr+lfQ6/gf6A6Y9i+Or3zyDrhIMfEmWD7OwRaDBVV4SSRrUa+CZVoXj
         b0rhr7AZ//vk0UK9GTSm//ki9nswzqZ520rFK3mAOGxyc0EJ2wiIouE5hkeRX3kI21NP
         Voz75xLObUQ5FPblwl05cqpQMKP/Dukgj8ReJJ9haUcCdSCQ22gikAmYElBZzUCRbJtA
         P5OQ==
X-Forwarded-Encrypted: i=1; AJvYcCUa/tO437eb6l/h8AEzp/vtrY+OoPIfQqBFRtdFcsvB2TX/esVRjA3rNRdq2yaJSXV7Mo85ZxPe9M6h@vger.kernel.org
X-Gm-Message-State: AOJu0YzHf6Xx/OepUfe+G0LRkuqCx4v0CoHlMsCi79Kai7tAtSd4x5ru
	r0w+QLUyxrl8f9xB1dNekwBLPUvWrFnG6uLYDBmyrXEVRV7fa1gD4tWpHN3Kme8tqRevuvQRalK
	xzgm/H1pbpaOSGWvh1WiW6hLPADFNw0Vj
X-Gm-Gg: ASbGnctDsu6WsQJ9QM7nzJ7gV/TG1V++1igYMVvUaAT+IfIB4oPQQB3O7lDaFqYJCXA
	hRcpi1c2qRn/iYKJRJsy3fyJcHOGwP5jBT0kcr4RlWHOlYiMhcytOzBP8fMm9ozoFdPRg6g==
X-Google-Smtp-Source: AGHT+IFAauF3ujNhgDjOT4xeOGtCr/wxIkY8hqpVIBW0I65Elwxcj3g4j+FKksFlophDch/7GEvnM0WPPbbN955zfiQ=
X-Received: by 2002:a5d:47c5:0:b0:38a:4184:1216 with SMTP id
 ffacd0b85a97d-38a4b9a98d4mr17319346f8f.46.1735863539752; Thu, 02 Jan 2025
 16:18:59 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241229184256.1870-2-honyuenkwun@gmail.com> <20241229184256.1870-8-honyuenkwun@gmail.com>
 <20250102215308.GA636148-robh@kernel.org>
In-Reply-To: <20250102215308.GA636148-robh@kernel.org>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Thu, 2 Jan 2025 18:18:48 -0600
Message-ID: <CALWfF7+B1nkKsA9RvCVhAytotgRM16-6Q1z+V5YyQCDSh4cc9w@mail.gmail.com>
Subject: Re: [RFC 4/7] dt-bindings: arm: rockchip: Add Xunlong Orange Pi 5 Ultra
To: Rob Herring <robh@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Ondrej Jirman <megi@xff.cz>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 2, 2025 at 3:53=E2=80=AFPM Rob Herring <robh@kernel.org> wrote:
>
> On Sun, Dec 29, 2024 at 12:41:31PM -0600, Jimmy Hon wrote:
> > Add devicetree binding for the Xunlong Orange Pi 5 Ultra board.
>
> Why RFC? Looks fine to me.
The DTS is only a RFC because the board schematic for the Ultra has
not been released yet. So I haven't been able to confirm the pinouts.

The 5 Ultra DTS is mainly a preview to show the similarities between
the 5 Max and the 5 Ultra.

>
> However, you should have 'v4' on every patch in the series if this is
> v4.
Will do.

>
> >
> > The Orange Pi 5 Ultra is a single board computer powered by the Rockchi=
p
> > RK3588 with similar board layout as the 5 Max but with the HDMI0 swappe=
d
> > for HDMI IN.
> >
> > Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
> > ---
> >  Documentation/devicetree/bindings/arm/rockchip.yaml | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Docu=
mentation/devicetree/bindings/arm/rockchip.yaml
> > index 2a141d99c533..9dd424265826 100644
> > --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> > +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> > @@ -1075,11 +1075,12 @@ properties:
> >            - const: xunlong,orangepi-3b
> >            - const: rockchip,rk3566
> >
> > -      - description: Xunlong Orange Pi 5 Max/Plus
> > +      - description: Xunlong Orange Pi 5 Max/Plus/Ultra
> >          items:
> >            - enum:
> >                - xunlong,orangepi-5-max
> >                - xunlong,orangepi-5-plus
> > +              - xunlong,orangepi-5-ultra
> >            - const: rockchip,rk3588
> >
> >        - description: Xunlong Orange Pi R1 Plus / LTS
> > --
> > 2.47.1
> >

