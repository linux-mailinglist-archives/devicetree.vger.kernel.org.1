Return-Path: <devicetree+bounces-244321-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C2329CA3B1B
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 14:00:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C33623006FF3
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 13:00:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6359C342158;
	Thu,  4 Dec 2025 13:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DkSoE2R3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B528341670
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 13:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764853235; cv=none; b=fGpHlPPGe49IvehxyM14D07r4th/VX7AQqMGDRgG6z2DxV6iidP4puF8kDTB1ED1qNika2YIfW8KfsVmUCqjxA5Nse8/usj5NL2CvNnRrtA6S8186QkALD9X+AX5X9vVl3fmZhuh9FYLUmyBL7ei1iNLAmX49kzEhi95KTpFuIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764853235; c=relaxed/simple;
	bh=0fCvcFtNbN12UPsuHe7S4Q2jSch6DxCtM0IF1MpswKE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ejIHYMJeasRpcXeHRHSWF/bFpAJoZ+osTowQlQRbovYJsbaRIVqWK2oTTiVt45CRVr/rU2xSCXlTl1J3o171a5XpTdmpsRKkY6VAYNkZNNOLgFDVOjYfy5kwHt19LqXj2S4MMu6xtvUFLHBC1bGa6YkAAp4yaMySct3J9b2lLQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DkSoE2R3; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-b77030ffad9so139393666b.0
        for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 05:00:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764853232; x=1765458032; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b5fx96rNiwtHfR6RsYA+itKvYo7drMccRUTM4rvN18g=;
        b=DkSoE2R39PLVyzfGZeNw+1WvBpIMGLAUV5zcpc7f4OL6yFfNQFc4H/CxZFObS8Fqh+
         M3qTLURBGl9czcBvPyGdejDXQ/kS9WpcynEpsIphAPexr9Z9AYNk2w+mJZAdcFt8+l2M
         vvnPxMRY1tr84TkWX9em5dRIG12V/X1kN6RRX/AuYh6iDtuEm//2JJneeB63B/n4kr/I
         OCG5v9f94y5dIEwXDzj00KIyIE0O+sQoEyZ7Wx/fRy/tZclBPEDV5qLF45MUYn4AEqtk
         8rRMFJ9ACLUc1XOZOhmfrYM6hPrRREDjSkZMQcQdw1Ea+ZKqlc8kjzudUnoSi3TA2Tc8
         Kksg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764853232; x=1765458032;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=b5fx96rNiwtHfR6RsYA+itKvYo7drMccRUTM4rvN18g=;
        b=ePsFLwi2lO0JlnkTgHNIIWTN9XTSBUgFmiRmAgcOitU2Xsa8gsYg1451odRJrxiaYp
         u6asCyxXq8hr7KaUnYYRd7QPMJig9ZqIUXn40dlxDiRCzeT2I/QI3275RxERNLGbEmIt
         KhXsmhGZiGwY3eaVaAoPVmq4y+K+2J6z3iiDClExKti/FyuX9ROYBJvkzgOi0JkhLxdE
         4yfoGAyhzhxR9J9JFxmU7s/9W9TqkCdoOSSnxulLQUD0LsuixYueZry5HVqlBFV+McEk
         b3XwvUuPzEJb4IFoRrUCzRmDOqeyUZQPAI6ajJEMWjaC6QdgdeKbD/BJhJDHrXljTsbB
         8Yvw==
X-Forwarded-Encrypted: i=1; AJvYcCUKLyhpwIZyk+wfc9Zoej5GQ5NBWnJayxEuRj+LCHsHIccI6iZNvn1qHcGVnVJ37OwgMY7q08vBKUDq@vger.kernel.org
X-Gm-Message-State: AOJu0YyDten/c3MDQ7/uzPyST9L4iCABlxff7GYYvWMmVPSe7xE4Q3Gr
	xVUcCLfryHIgaQeEp0lF1mQNjqtjxzMAvDaRMai0fQq5X2XhKPUSOnuTg4emj78lEgYlvH2Die4
	PMDbR9tyGeGcrQqElR90xeZmGfuQQWi0=
X-Gm-Gg: ASbGncvZfajIi56dIC8QcEF+rHp3qjUqjx0aqA+wrxMp7IfLCygrHWzli6naj3XLzcy
	jpN25N4K4vN1snu3+LelbWuLbslXozgIli5c4hPsAAPYcRpqR7T2rQiuZDrJgncxn/acByUwtxJ
	Bn4CDFswnctMBkWuxmRJ2mP9PRt0o+tUeaa/lNr/i82nNoJaOAS8tpExVOy2KlXmLbDJfjWFfwH
	nsv2qNt9upfZyhKnT02/v7h6ueDdqjekD8Z6R60/+jxN7HZ4KsEhUB/APcXWstb71kAF9rs7hWh
	/Gtg7332g1C+NPLiUuwnONwMdYbNDweWK6Sk1j5j9cFyTcYc49ExWFr1cjfIbUmG3yO0t8o=
X-Google-Smtp-Source: AGHT+IG5xtcD8WFGZMnNACJKi+kBaTgoB9p7pjnnPYqB+YYXV9ekB1xyt/sH8WrtPNJBi2lgQYyYRUtfGWfvaBc8by4=
X-Received: by 2002:a17:907:3f26:b0:b76:2f40:a307 with SMTP id
 a640c23a62f3a-b79dc782b84mr586284666b.57.1764853231801; Thu, 04 Dec 2025
 05:00:31 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251128144428.24450-1-antoniu.miclaus@analog.com>
 <20251128144428.24450-3-antoniu.miclaus@analog.com> <CAHp75VcxYGskVpQ5HKiFUUnNSj-9qpdXeBjz9-oEHc9eumE0fg@mail.gmail.com>
In-Reply-To: <CAHp75VcxYGskVpQ5HKiFUUnNSj-9qpdXeBjz9-oEHc9eumE0fg@mail.gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 4 Dec 2025 14:59:54 +0200
X-Gm-Features: AWmQ_bkPfHtcezHN-g8WIkK6f_44B1vKCaXPHMsWVDP167l1dSvO2J9SbrsxjeE
Message-ID: <CAHp75Vcrjpxcf7LAQwaZfH-Z5QXM0waf7HH2QrFHuWiNWdjiwA@mail.gmail.com>
Subject: Re: [PATCH v5 2/2] iio: amplifiers: adl8113: add driver support
To: Antoniu Miclaus <antoniu.miclaus@analog.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 4, 2025 at 2:47=E2=80=AFPM Andy Shevchenko
<andy.shevchenko@gmail.com> wrote:
> On Fri, Nov 28, 2025 at 4:45=E2=80=AFPM Antoniu Miclaus
> <antoniu.miclaus@analog.com> wrote:

...

> > +static int adl8113_set_path(struct adl8113_state *st,
> > +                           enum adl8113_signal_path path)
> > +{
> > +       DECLARE_BITMAP(values, 2);
> > +       int ret;
>
> > +       bitmap_zero(values, 2);
>
> Move this to the switch case...
>
> > +       /* Determine GPIO values based on signal path */

Note, you may extend this comment to show the mapping, e.g.,

       /*
        * Determine GPIO values based on signal path.
        * Va: bit 0, Vb: bit 1.
        */

> > +       switch (path) {
> > +       case ADL8113_INTERNAL_AMP:
>
> > +               /* va=3D0, vb=3D0 - already zero */
>
> Unneeded comment here and below, just put a number to the bitmap
>
>   bitmap_write(..., 0x00);
>
> > +               break;
> > +       case ADL8113_INTERNAL_BYPASS:
> > +               /* va=3D1, vb=3D1 */
> > +               __set_bit(0, values);
> > +               __set_bit(1, values);
>
>   bitmap_write(..., 0x03);
>
> > +               break;
> > +       case ADL8113_EXTERNAL_A:
> > +               /* va=3D0, vb=3D1 */
> > +               __set_bit(1, values);
>
>   bitmap_write(..., 0x02);
>
> > +               break;
> > +       case ADL8113_EXTERNAL_B:
> > +               /* va=3D1, vb=3D0 */
> > +               __set_bit(0, values);
>
>   bitmap_write(..., 0x01);
>
> > +               break;
> > +       default:
> > +               return -EINVAL;
> > +       }
> > +
> > +       ret =3D gpiod_set_array_value_cansleep(st->gpios->ndescs, st->g=
pios->desc,
> > +                                            st->gpios->info, values);
> > +       if (ret)
> > +               return ret;
> > +
> > +       st->current_path =3D path;
> > +       return 0;
> > +}

--=20
With Best Regards,
Andy Shevchenko

