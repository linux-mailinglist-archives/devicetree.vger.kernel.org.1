Return-Path: <devicetree+bounces-67840-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 701518C9E0A
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2024 15:20:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 932C91C219E0
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2024 13:20:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A632136649;
	Mon, 20 May 2024 13:20:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="Gi413aOO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CF611CD18
	for <devicetree@vger.kernel.org>; Mon, 20 May 2024 13:20:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716211248; cv=none; b=r4BonLmSObga4P+Ca/LEYDxiPHIkkKrZBrka0Ve0YRQd3vVNe2LHzBqJpiboofw0qTsLeugyh5gMjw8bC0sif4MEIZonFJX/3HIteYWNfJZ64wXx9vDExnts3581FoNxbTEToDL/WPsamkJ6KNIYv3NIdiOhplGM7JpHaGHsFTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716211248; c=relaxed/simple;
	bh=ZtzndvGkIGuejxzhOSScRg7IFRuZt6nV23246Vkm7LU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Content-Type; b=IbRgNAYFQgbiFlZNdZglbsGSm7W6CmUYJVN7BzR9u8XtVyCuuEd9sPxPQO15wdBRDgw5nvd/l+A9uLwUsmJ64fkv5a/zNBcT8/d+F+07GQZOpZRvL+rn3XfpKR0tLWrdAMasmcx0dBadCRDsX35yGKhO6yafiqDJuPpNYdx6e1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=Gi413aOO; arc=none smtp.client-ip=209.85.219.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-yb1-f178.google.com with SMTP id 3f1490d57ef6-df475159042so2028468276.1
        for <devicetree@vger.kernel.org>; Mon, 20 May 2024 06:20:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1716211244; x=1716816044; darn=vger.kernel.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hpoD7IfFyo0fRXVXGRhMKLv7hvGmowk4hNOwLuLBHAQ=;
        b=Gi413aOOHZC8oi/vIxiokZn6wPLk1GwKQisEgY9YXEYwHF4JEYQCv6oxrMMDZH8zxn
         sZ3pkNx+z3MffKoEv4oZo4Dug06YaSMPc7WuoBu+rDzK7es9E2GGVhNPy+VSvsK6Ipnv
         Ma7FAcwb7N/rw/jKevDJ6MUwossqrJ+maZyrTSMORnkqarhEv1MCDO4XCyGXGEX/wBIf
         FX8wY8poBv96TLV8D6Qr8xIRmCGTddAANkVJsZUvonmPWYyk7x74py7qITor9xWLLrq7
         HEE9Cu6Bf0ohpJy0xNYC9ecUaH4YA/5/L+XwKSkvmZ1kUxnLmEeiWVR6M2/sU6uE4XeI
         NJWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716211244; x=1716816044;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hpoD7IfFyo0fRXVXGRhMKLv7hvGmowk4hNOwLuLBHAQ=;
        b=GmRb0p9I33GubfHNUuDJDmafp6awFrbek17loFzA5cY17kkfuHwGitJOeYobgAjEHB
         lHPXn5N8JroMRw44YpdQHSYkwcAavxk4xCUU9kl6h4sb9sTmeIX5LBkUZN2W2LK1hnDY
         T9T6D0NAtOUANTbOxG1mucCIl1C11Iw+Wh47ZlWZyToV3bAHCT5lfbEPzDPaZbVdFaVV
         SR+cn4B2Ii1eVrbZsUr0YeJJNvc08v0Es/DZd+fFyt3a/ba2UG+QQgAj3qaseH2S0JbS
         xPH9TME/mswhxZO8hJlxDrDks6/muC8jES1albPKTqfzKDlPzlYG+xO06Sl4oztaiu1B
         YcWg==
X-Forwarded-Encrypted: i=1; AJvYcCX6gElGtE9kVW715tEGmbnTzdBZsQqIAVZqN224EjVw9kZi/Gr50DqFK1Em9R8fICXZmdnEOKawHlYoKLkIAMXUxICzk7PUJX1/tA==
X-Gm-Message-State: AOJu0YwC9luSB6X/D9XzKRngs+OqCJWKL30GuCAXmUcBr65DY2hN1vd+
	baoGgir0SAMhVA285r8B4XwyEyXXxIUMphuHKwR9AjhALk59YDg4dsNVT3bqpK5c/u+OAQ+aB0c
	vZGQif0k5aqgTAGz5XXRgU0Tk9d4vieNpOkpY+MAtGXt4KA4Qa3w=
X-Google-Smtp-Source: AGHT+IGLhrSKkPUoJZ62vutQInuJJOzTJYTiNFbmW3RNzAPYbVG1k0r6chzGp7BB1txzsNkSl4SqFlkWTloKih5W6g8=
X-Received: by 2002:a5b:3ce:0:b0:de5:51d0:9a8d with SMTP id
 3f1490d57ef6-dee4f334373mr26443106276.55.1716211243868; Mon, 20 May 2024
 06:20:43 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240501152442.1072627-1-git@luigi311.com> <20240501152442.1072627-22-git@luigi311.com>
 <ZkcV5xWZz2jCszxA@kekkonen.localdomain> <q5nbk3qcxsjsqp4mdyx5nlrn4oie6oynunwodm7r2nwtywc2ey@kxsgcatwt5b2>
In-Reply-To: <q5nbk3qcxsjsqp4mdyx5nlrn4oie6oynunwodm7r2nwtywc2ey@kxsgcatwt5b2>
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Mon, 20 May 2024 14:20:28 +0100
Message-ID: <CAPY8ntCfQvp9rCt=fqTFKYEOamLZwKmJDv9agxerQtDvsGKB0g@mail.gmail.com>
Subject: Re: [PATCH v5 21/25] dt-bindings: media: imx258: Add binding for powerdown-gpio
To: =?UTF-8?Q?Ond=C5=99ej_Jirman?= <megi@xff.cz>, 
	Sakari Ailus <sakari.ailus@linux.intel.com>, git@luigi311.com, 
	linux-media@vger.kernel.org, dave.stevenson@raspberrypi.com, 
	jacopo.mondi@ideasonboard.com, mchehab@kernel.org, robh@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, shawnguo@kernel.org, 
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com, 
	devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	pavel@ucw.cz, phone-devel@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Ond=C5=99ej

On Mon, 20 May 2024 at 13:55, Ond=C5=99ej Jirman <megi@xff.cz> wrote:
>
> On Fri, May 17, 2024 at 08:31:35AM GMT, Sakari Ailus wrote:
> > Hi Luis,
> >
> > On Wed, May 01, 2024 at 09:24:38AM -0600, git@luigi311.com wrote:
> > > From: Ondrej Jirman <megi@xff.cz>
> > >
> > > Add powerdown-gpio binding as it is required for some boards.
> >
> > I thought the conclusion was that this wasn't a property of the sensor?=
 If
> > it needs to be controlled, then this should take place somewhere else t=
han
> > in the sensor driver.
>
> It's a property of the sensor modules. It's just optional on
> some, eg. (pin 8):
>
>   https://assets-global.website-files.com/63b65bd4974577341e1fe194/654290=
d4d0fb173e87f754ed_IMX_258_FF_drawing.png
>
> Where else should it be so that the module is described properly in the
> DT and the powerdown signal can be used as part of powerup/down sequence
> of the sensor?

From v3 [1] Luis reported testing dropping the powerdown-gpio on a PPP
and it working fine.

I linked to the IMX258 datasheet in the same thread[2], and that
datasheet does not include such a signal on the imx258 sensor itself.

If your module has a powerdown gpio, then you'll have to ask the
module vendor what it is actually connected to. Potentially it relates
to the VCM driver rather than the sensor.

  Dave

[1] https://www.spinics.net/lists/linux-media/msg252519.html
[2] https://www.spinics.net/lists/linux-media/msg252496.html

> regards,
>         o.
>
> > >
> > > Signed-off-by: Ondrej Jirman <megi@xff.cz>
> > > Signed-off-by: Luis Garcia <git@luigi311.com>
> > > Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > > Reviewed-by: Pavel Machek <pavel@ucw.cz>
> > > ---
> > >  Documentation/devicetree/bindings/media/i2c/sony,imx258.yaml | 4 +++=
+
> > >  1 file changed, 4 insertions(+)
> > >
> > > diff --git a/Documentation/devicetree/bindings/media/i2c/sony,imx258.=
yaml b/Documentation/devicetree/bindings/media/i2c/sony,imx258.yaml
> > > index c978abc0cdb3..33338139e6e8 100644
> > > --- a/Documentation/devicetree/bindings/media/i2c/sony,imx258.yaml
> > > +++ b/Documentation/devicetree/bindings/media/i2c/sony,imx258.yaml
> > > @@ -36,6 +36,10 @@ properties:
> > >    reg:
> > >      maxItems: 1
> > >
> > > +  powerdown-gpios:
> > > +    description:
> > > +      Reference to the GPIO connected to the PWDN pin, if any.
> > > +
> > >    reset-gpios:
> > >      description: |-
> > >        Reference to the GPIO connected to the XCLR pin, if any.
> >
> > --
> > Regards,
> >
> > Sakari Ailus

