Return-Path: <devicetree+bounces-217776-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 37A35B59320
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 12:15:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D26947A6D0D
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 10:13:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77C6A2FA0D4;
	Tue, 16 Sep 2025 10:15:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f170.google.com (mail-vk1-f170.google.com [209.85.221.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBD9F2F83AB
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:15:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758017711; cv=none; b=WBEiZeEKme6auaYeRtdPdUdsZEr0POiu7MPPj+h6TJTYOIzoMCGUOPbe8wQSvWGMsqzMf5N68uaBuNJI1k/HGZ7v20Bl/1JMoFAuoDJlxhbkb2d/EqyE4EyPIpAtZrq+SYX+UA2oQDSkgjHrVVei/NvwtArz7r6AK5lNbkGJcO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758017711; c=relaxed/simple;
	bh=HROZpllWSaMccM/VLWuB0kpy0TJhHwHU9kTqwzxCWc0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PmPScHWDYZ+L84NKQae67b74so8EoR8S4eO5+sebnRJw3JmkSkK6YIJp19b6GysNz6d+jZDMhlJ3ScLxrtms+Gx+5aJYvwRDqkg6VT0sOkRp9dFcLoP8dXVdpye3F5XocKlUN9Avz95C0K/M8pr5DEN8Fu+O28aOfyH9mevX4b0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f170.google.com with SMTP id 71dfb90a1353d-545e265e2d0so3816961e0c.1
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 03:15:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758017708; x=1758622508;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/yxShZZXYgWMyGx047XJbFO5W2W4XcJcCx4gW4jVWvk=;
        b=UMPrLkoRtRnHgMH9q+xk5sORk0R6tSxM18shl2lC7hD/zOuEPnSmMIlFcLi6MmqDTA
         8AY4C/JWI8hKsliE2c4IzNvcNoc8EcyaJZzLazSmRg1W9n7lCqFhpCsdcU/arR3c6vWl
         EKyDMkByraj9Frl2ikhlq4IITpYDwlBze2dHUTleVmy/4yJU/r9I9Mfs9TpGgYE2DbMd
         83bQlxWndgXN4PrPwuf3kO/HFO3vnNbmUH5Wv7S/J+Cu00WcJG888z04UV+hrzytVadV
         ybOiC9jvy+ySuG8vLt9yZgMXJJP8yoiFfwA6MUg7DL8fy/TDxnsR9HBVXbKpc63/hRC/
         1HTQ==
X-Forwarded-Encrypted: i=1; AJvYcCWXHSudCbKwdDBP9EZh6FPfpEcAjJ1IF1zzfvXQadwrc9P0+J2WI9PJ4wUkso+ca9atXEQ+v8IomM3d@vger.kernel.org
X-Gm-Message-State: AOJu0YwKikze4ITq+jtqMJ0/+vuSxwTaCag7O0aMvCp9zwc6khAa/8uY
	n2H708EqZKATxFiNJz9SsS4NJXkyaHQB3GW91u+FISJoeXon83a5jIDtLebM7sJ/
X-Gm-Gg: ASbGncvC/534fLGvvYCZfCSXTPnO+Ta4+cSBUWe/kBSMibOQiSBDowKtU6o8KD/Xwa4
	dbxa793x/EHCwsR48fdoID8JN+0fo8Zu+ndmudjuoT/uKOUKBnOsyzJd8BPTiHWiehY+USvVaeV
	F9uzzbRkazq5XgTEJc9JL6bz+HtijOkaVOibyvCUQEbbtyZQkeVBblfT84ytIQZmzrpvYq2rCXl
	pFXJqoUbX+T7QuRIsyZv0JHv3feMyf4g8baivGipVs67OtIKdJ9Pv7W/5/dgK/VdPgwi4V5Aetl
	o7jO7gxcGc67oOxTsG3KR/EQQGY7H6lflUg83Ld+0p/G+MMioRnDd6uGqAIKOHuzLPpf1Bac5Qf
	SKJSvaajF+1BnU9TrsEl3V+7N95KsA24jBz4Ag5dXUigW7FBXLn39QPClsgrgmFlQQaRFbAg=
X-Google-Smtp-Source: AGHT+IEBhIpQq36CDtE+eOMKjhJh30yye4T5BoS/FdZzc+F6jO5O89ileHrfU6vCYbp+GFD61U66fg==
X-Received: by 2002:a05:6122:1d48:b0:545:eca2:1c63 with SMTP id 71dfb90a1353d-54a16c87ba5mr5584447e0c.9.1758017708497;
        Tue, 16 Sep 2025 03:15:08 -0700 (PDT)
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com. [209.85.217.52])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-54a0d1bc289sm2772876e0c.4.2025.09.16.03.15.07
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Sep 2025 03:15:07 -0700 (PDT)
Received: by mail-vs1-f52.google.com with SMTP id ada2fe7eead31-5357f3e2520so4010925137.1
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 03:15:07 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXRqHwJcNk8eYoFjPmkDgtpcbzAlqIiSzqyNwvLYk+Ki6Nntk10DzjDEIgSP8KWMXHxC0ApdtwH7j49@vger.kernel.org
X-Received: by 2002:a67:ff90:0:b0:569:1c73:46c5 with SMTP id
 ada2fe7eead31-5691c735ffbmr267311137.2.1758017707282; Tue, 16 Sep 2025
 03:15:07 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250902105710.00512c6d@booty> <aLkiNdGIXsogC6Rr@zatzit>
 <337281a8-77f9-4158-beef-ae0eda5000e4@beagleboard.org> <aL5dNtzwiinq_geg@zatzit>
 <20250908145155.4f130aec@bootlin.com> <aL-2fmYsbexEtpNp@zatzit>
 <20250909114126.219c57b8@bootlin.com> <aMD_qYx4ZEASD9A1@zatzit>
 <20250911104828.48ef2c0e@bootlin.com> <aMebXe-yJy34kST8@zatzit> <20250916084631.77127e29@bootlin.com>
In-Reply-To: <20250916084631.77127e29@bootlin.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 16 Sep 2025 12:14:54 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXXi97HN-G_Ozbs7vc141GmbMTPD6Ew6U_0ERj5wh6gvg@mail.gmail.com>
X-Gm-Features: AS18NWCbl1r2QYO00aPBgisYLqrkmJmQ3Y4JYZGczVS7GzKJm4yKut71Lemfvns
Message-ID: <CAMuHMdXXi97HN-G_Ozbs7vc141GmbMTPD6Ew6U_0ERj5wh6gvg@mail.gmail.com>
Subject: Re: Device tree representation of (hotplug) connectors: discussion at ELCE
To: Herve Codina <herve.codina@bootlin.com>
Cc: David Gibson <david@gibson.dropbear.id.au>, Ayush Singh <ayush@beagleboard.org>, 
	Luca Ceresoli <luca.ceresoli@bootlin.com>, Krzysztof Kozlowski <krzk@kernel.org>, devicetree@vger.kernel.org, 
	Rob Herring <robh@kernel.org>, Jason Kridner <jkridner@gmail.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree-compiler@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Andrew Davis <afd@ti.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Herv=C3=A9,

On Tue, 16 Sept 2025 at 08:46, Herve Codina <herve.codina@bootlin.com> wrot=
e:
> On Mon, 15 Sep 2025 14:51:41 +1000
> David Gibson <david@gibson.dropbear.id.au> wrote:
> > On Thu, Sep 11, 2025 at 10:48:28AM +0200, Herve Codina wrote:
> > > From the addon board point of view, the only think we can
> > > say is "me, as an addon board, I need a connector of type 'foo' and a
> > > connector of type 'bar'".
> >
> > Agreed.
> >
> > > Also, at base board level, statically defined in the DT
> > > connA is described (type 'foo'), connB and connC are
> > > described (type 'bar').
> > >
> > > The choice to map connA to the type 'foo' connector expected by the a=
ddon
> > > and the choice to map connB or connC to the type 'bar' connector expe=
cted by
> > > the addon can only be done at runtime and probably with the help of a=
 driver
> > > that have the knowledge of the 3 connectors.
> >
> > Agreed.
> >
> > > I have the feeling that the choice of physical connectors to which th=
e addon
> > > board is connected to is a human choice when the board is connected.
> >
> > Yes.  Although if the addons have an EEPROM, or some other sort of ID
> > register, it may be possible for some connector drivers to probe this.
>
> Right, I think we agree that a driver is needed to help in the mapping at
> least when multiple connectors are involved.

I agree you need a driver to read an ID EEPROM.
But why would you need a driver if no ID EEPROM is involved?
If the connector types on base board and add-on match, it should work.

Gr{oetje,eeting}s,

                        Geert

--=20
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

