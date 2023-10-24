Return-Path: <devicetree+bounces-11290-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 41E757D50C5
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 15:01:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 73D351C20BC7
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 13:01:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2CF8627EC0;
	Tue, 24 Oct 2023 13:01:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yiDmmu1f"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EADD273D0
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 13:01:38 +0000 (UTC)
Received: from mail-yb1-xb2a.google.com (mail-yb1-xb2a.google.com [IPv6:2607:f8b0:4864:20::b2a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BE3E01734
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 06:01:33 -0700 (PDT)
Received: by mail-yb1-xb2a.google.com with SMTP id 3f1490d57ef6-d9ad90e1038so4056571276.3
        for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 06:01:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698152493; x=1698757293; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WdiQyW/DR0saP5hyzIEWBzZ94+Rea1U1vbWoFnm3Jwk=;
        b=yiDmmu1fMz8EXLYU231mPxIe/WZTzCpSnRY9wHniXSUz0Z3XATmxHRYzIOsG1uyACv
         b0ZnEFNLFtMDmprpBGv/vMfQ0OUnogf4r+foyAYYOgHiBTMZPRNI1KADPivor8wTOcYS
         Mc6Al5fUzWJL9Pwa8k+h3iEZU3WOTJJdDf9I/7LZRY9i707hCOzW2GBssQ8W9U0+qbaF
         qLWAAEPhV+Ak6tr+yVyLhgCwaNhssBLUVex8Wp3xPCgcMEPB/YNoTBDuOboTwKjm/V7R
         5RuTAVMvGCjtL6Dln4fHw2ROcq7l1VW2NmWv62zGFEA977CoX9CRLlJB4NJyJ36jUIOU
         L+EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698152493; x=1698757293;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WdiQyW/DR0saP5hyzIEWBzZ94+Rea1U1vbWoFnm3Jwk=;
        b=mdT3ZNn0Th1fmgse+rrAuOLye/7mK7mVm1TQ4pNjENJXsgQmAzcRKo82R2o21k1ROD
         fAa+VoXXpTkN861sVikL6k9+en6USwKkU8+cNxkxwmND8PoWmlX0GeyR5RMUwKGED0fF
         +BLqQxODO/CO6m+Bt+he0HbNclclhNbCVEIxyqbBgHRjkCBBQ2h+i/fHBftvtI5Hq0Co
         YruLoZ1b+ptivNabVOpYqNJkMBrdUpoXkt6TkgUktsNtA5szguy+TVJDBXkFWQkAaz6P
         qXCFI8+U91+fgb0IDJ0eVvMHlrDNefJdbaVt8qLgYC5C6K37OPjKyfvzkRsqp4jhVoCA
         95hw==
X-Gm-Message-State: AOJu0YxMBnXeuX1QSzOuYT5pBgDBl0GYqXURXYUmvI8MYmhmJixxtjbr
	9PfTuXDJGMvgaejnMwXCF63pUk5rYc6Ikasz6l5+PQ==
X-Google-Smtp-Source: AGHT+IGTYcmpmdeet3GcOIVCZdUeYXb/bVrngkL8EkuljSeAX1GNPGKhi8aceTk4IEt+bjxWe8gW2+TDsv4nvL3FDsI=
X-Received: by 2002:a25:b53:0:b0:d9a:ccdf:3873 with SMTP id
 80-20020a250b53000000b00d9accdf3873mr10818054ybl.48.1698152491198; Tue, 24
 Oct 2023 06:01:31 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231005025843.508689-1-takahiro.akashi@linaro.org>
 <20231005025843.508689-6-takahiro.akashi@linaro.org> <20231006132346.GA3426353-robh@kernel.org>
 <CACRpkdaLsfSBEG-h9ZNT2_Lm8tW8AZO7tedDVNeuZoQAqSkyjw@mail.gmail.com>
 <ZSTgTC4cFFpofYAk@octopus> <CACRpkdYD6pkccYoy90AfzV3KT7oYkBPD2_4ZW-AXzT1eUVpchA@mail.gmail.com>
 <ZS3yK/f12Mxw9rXe@octopus> <CACRpkdarDrVkPmyDawhZ+H94S4F=dtDSDVuKegi-eNfQNDY3rg@mail.gmail.com>
 <ZTduWx7CH1ifI5Uc@octopus> <CACRpkdba=echR=rZYKVbROfaOp4mzjTQ9RphHFyzqSNgE1jZqg@mail.gmail.com>
 <ZTeitAqfwyse9Vkj@pluto>
In-Reply-To: <ZTeitAqfwyse9Vkj@pluto>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 24 Oct 2023 15:01:19 +0200
Message-ID: <CACRpkdYi5rLvXwhWnBRGg8hxZ_tNa0g92Q_fSLnCt_vetjeS8Q@mail.gmail.com>
Subject: Re: [RFC v2 5/5] dt-bindings: gpio: Add bindings for pinctrl based
 generic gpio driver
To: Cristian Marussi <cristian.marussi@arm.com>
Cc: AKASHI Takahiro <takahiro.akashi@linaro.org>, Rob Herring <robh@kernel.org>, sudeep.holla@arm.com, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	Oleksii_Moisieiev@epam.com, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 24, 2023 at 12:55=E2=80=AFPM Cristian Marussi
<cristian.marussi@arm.com> wrote:

> ...a maybe dumb question from my side, BUT does the SCMI Pinctrl carry
> enough information as it stands for the driver to derive autonomously
> and efficently the possible/applicable gpio ranges ?

I don't know, that's part of the problem I suppose. But if the
pin controller can report functions supported by certain pins
or groups of pins, then certainly "gpio" should be one of those
functions or else the pin cannot be used for GPIO at all?

Then maybe that function is just a name convention, such
as "all pins are members of a 1-pin group named 'gpioN'
where N is the pin number" then you need to switch the pin
into this function in order to use the pin as a GPIO line.
Pins that do not have this group associated with them
cannot be used for GPIO.

This is incidentally exactly the method used by the Qualcomm
pin control driver (IIRC).

If the SCMI protocol has not though about GPIO as a special
function, or mentioned anything about group name
conventions for the GPIO function, then there is a hole
in the specification, and this is likely best filled by creating
one-pin groups as per above and feed this back to the
spec.

If the GPIO usecase isn't even considered a function by SCMI,
or (more likely) "nobody thought about that" then this is
a good time to send it back to the drawing board for
specification, right? It's normal for specs to run into a bit
of friction when confronted with the real world.

Yours,
Linus Walleij

