Return-Path: <devicetree+bounces-246530-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id EE9D1CBD83C
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 12:36:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C8278300BED1
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 11:36:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B38932C33A;
	Mon, 15 Dec 2025 11:36:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b="VwyGvywQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD4FE221F20
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 11:36:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765798599; cv=none; b=qAzZUmNSkPehRPfPyRFScAJCfNACIBKO3nml4d2Xe0RvfZGUXPHPyvnOeZTc4ZgbXe3p/mrxI0bpYDEoufQudy/GP+M/iMb8MVYOm3rvVdqXCEeiijP7b/49t9fr4amhCyEOEw3BO2g/KP3WpZh5QEZJKUCkhvdAwvVDgpSLrvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765798599; c=relaxed/simple;
	bh=8K5CQGNJve1RW39NoSUfaSDkqaJ3UQVV/VleCfTk9x8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=myJAYAQApjkfF6fA4NASRsOrfE1BZMWYx47XMnp1xeENDBr4PMxL1ohYb2nBQg9WFlB/aqQIvZJBNzwIlPafquayX87aVwPZC1Y/dHfEVfP6thjoiZ/zcqFGLkbMMq8d73x9lEIK33jI40nTsnp6AEDY/4dJPItLuhn5FFmUIPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr; spf=pass smtp.mailfrom=sartura.hr; dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b=VwyGvywQ; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sartura.hr
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-6496a094ae1so5140205a12.2
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 03:36:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1765798596; x=1766403396; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Our2tTrLeS9+cKoDnOgCot+9A7UItxQonDfN3Zuzcsc=;
        b=VwyGvywQGp1uMScnX1vlpHce6SV2NoXE/I2TmQo+qJiFufjCa7dCX02s0Z/MCDCNN+
         1rHF6lmg1nY84K6oQTjyMOuRi2AgLCv3V6O5RLCiI0PAFJQcGpxkFpWqLD9MI8Sc1GuV
         NrTBzTgGLqtuKFzlUYrIofbnmMOueyf/heQhGpBOTdpxyZTldQwuj/4bhB5FpXyVl4PJ
         KA4Ue24LdKM08COAAdoJJGxHzyHbuRswh1HSA1xkSun99A9lawP0mTi8QEzvP5zXEnyI
         8Mi3aZuAPYs9CViWk/U6/h7K2imxo/eKm5e35a+282FxjEper6auPCj4sBzfqlaREd+m
         JhmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765798596; x=1766403396;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Our2tTrLeS9+cKoDnOgCot+9A7UItxQonDfN3Zuzcsc=;
        b=AVJDrO0jFsoDvgV0jIghqff4eoSNybUUf6mxguBqUoUyz++jZeOAoyxShDDU3bILxl
         2UYAiAazzGeQ6gp2xlbQcDOD4NlDCu1SgrD+lab/pNhsA5nUUjmDC34gEY968TMc5Ihc
         8JB/wckeX1gvFuBfsfMpTAJ0h3jP5M6ZasC1Dv/DFl9dConRg6yul3tAkO07MArz62Rm
         xRGBm9LQZbBNB8hh7g0CMudXvl6fA+Vi55JuAnQ41GLY8atXAfvpCUNUim8oVxV3JMSt
         F3Vvqq3SbSrYUpLQxN6ikfrFYuHfKaauTKC1K2vMnRMv30/PeT2p57nDaJyGCI4bX2d0
         ERnQ==
X-Forwarded-Encrypted: i=1; AJvYcCUq6XX4vBAGkbtDcKgJckfuPU91KLWIsrwX6R0UeOjvcfWxsyUQ4G1yJggRprPqVdKOIvz/QzgxoM2+@vger.kernel.org
X-Gm-Message-State: AOJu0YxPKi/SMpYZcgO3f7l/TqK4n+jo7T24jAmJlpgfSQuRAmmeQ7VI
	O1puzVOKvwOFWv4HIvEh6KvpR3LN//WvMKpikocwo0y1pda5StIDLjb6CV03ACbmTLehToYJ/sR
	bXL9x4G4jjF5eXO0PMwVXWS69dC3fB/DWjRxZwGKZfA==
X-Gm-Gg: AY/fxX68igum9U8+VYHVN0Tj6Dro00OIVJU/wRpco4B0Mwjt+/ybVuj4HCXFYjgOMKT
	tIfE6qOynYzD9N9HfVL6BWKCezS99kQCzcG06sguCANS+30jVg1X7Zgpu+iCvjT0r/j2h2vewkq
	ca8L+X20UNipLRVnkHw/pCflzv6EX0S7697LffOWVTAlL0iuzmreQT84rGVZmCWuYP6HFLPz6kA
	AWv1ZMBULYSemMuamsj9WfNktjMs11EtSorgu2LgakfMi/SW+LQ1UiozwcWj4nl+g4pTbMW
X-Google-Smtp-Source: AGHT+IFe8rw0qhWAiH0mQoOljUOiqcSqb5gRs5qS5m8hogOLlJs+w47H8LQqQzDIOFZ44fMZWWGRbbSWXqIYIq4YXXE=
X-Received: by 2002:a17:907:9628:b0:b73:8798:3be6 with SMTP id
 a640c23a62f3a-b7d23665c4fmr1116568866b.24.1765798596197; Mon, 15 Dec 2025
 03:36:36 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251203122313.1287950-1-robert.marko@sartura.hr>
 <20251203122313.1287950-4-robert.marko@sartura.hr> <20251203-splendor-cubbyhole-eda2d6982b46@spud>
In-Reply-To: <20251203-splendor-cubbyhole-eda2d6982b46@spud>
From: Robert Marko <robert.marko@sartura.hr>
Date: Mon, 15 Dec 2025 12:36:25 +0100
X-Gm-Features: AQt7F2oZT8D46ks79tXEN44Gcwk4DCt-08YRdCse_jKqK0ZpniHWAPSwJLfDHCc
Message-ID: <CA+HBbNGdd-u=4PtXZtirqRkFBhKwraa5gV-32QChDDjfVARPRg@mail.gmail.com>
Subject: Re: [PATCH 4/4] arm64: dts: microchip: add LAN969x support
To: Conor Dooley <conor@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	gregkh@linuxfoundation.org, nicolas.ferre@microchip.com, 
	claudiu.beznea@tuxon.dev, mturquette@baylibre.com, sboyd@kernel.org, 
	richardcochran@gmail.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, 
	daniel.machon@microchip.com, UNGLinuxDriver@microchip.com, 
	luka.perkov@sartura.hr
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 3, 2025 at 8:21=E2=80=AFPM Conor Dooley <conor@kernel.org> wrot=
e:
>
> On Wed, Dec 03, 2025 at 01:21:32PM +0100, Robert Marko wrote:
> > Add support for Microchip LAN969x switch SoC, including the EV23X71A
> > EVB board.
> >
> > Signed-off-by: Robert Marko <robert.marko@sartura.hr>
> > ---
> >  arch/arm64/boot/dts/microchip/Makefile        |   2 +
> >  .../boot/dts/microchip/lan9696-ev23x71a.dts   | 761 ++++++++++++++++++
>
> >  arch/arm64/boot/dts/microchip/lan969x.dtsi    | 482 +++++++++++
>
> The majority of devices in this file are missing soc-specific
> compatibles.

Hi,
I missed this before.

The majority of the devices are simply reused from the AT91 series, so
I thought it was not required to
update all of the bindings to add the LAN9691 compatible.

If that is required, I will do so in v2.

Regards,
Robert
--=20
Robert Marko
Staff Embedded Linux Engineer
Sartura d.d.
Lendavska ulica 16a
10000 Zagreb, Croatia
Email: robert.marko@sartura.hr
Web: www.sartura.hr

