Return-Path: <devicetree+bounces-59702-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DCA68A6BAF
	for <lists+devicetree@lfdr.de>; Tue, 16 Apr 2024 14:59:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7EBE11C212A4
	for <lists+devicetree@lfdr.de>; Tue, 16 Apr 2024 12:59:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C5C412BF25;
	Tue, 16 Apr 2024 12:59:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Bf56ET9v"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com [209.85.219.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A95C012AAE7
	for <devicetree@vger.kernel.org>; Tue, 16 Apr 2024 12:59:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713272382; cv=none; b=HAoP5Yhw2GgoUh/dEr1iiwpvRZD5lFUjSbJp6AVANEMdRt1c6CZRzf67Y/wfpt0J6FK0lQc38ygN2fWSJf2cpBwap0JN+tWJ6toFd1icaHLauumNRbnu0MoBJgwalgnvYXvie8vCYrQMEHp6s8+x9af3dxiYBwxJt/GJ2717ZsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713272382; c=relaxed/simple;
	bh=9vivecuqLxpWcVVbWBg8R8WXEJKMUnErDIemeKW5USE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=K8U6Dl4ogbSCA32Gz4J7R0FOWs8KguIzVKp7YU86KshDewEM52LH+kkQjHOyaMcSlve8SN2mOp4OefFiqm4z1C4XkapcetTPbZTE1jhSzb4/bb/g5hA2Jo9MW2H5L8gIClY+0trv5OCOnYTbRKxRlz2G4rUqRQZo468/zEhpyfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Bf56ET9v; arc=none smtp.client-ip=209.85.219.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f176.google.com with SMTP id 3f1490d57ef6-dc6dcd9124bso4250074276.1
        for <devicetree@vger.kernel.org>; Tue, 16 Apr 2024 05:59:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713272379; x=1713877179; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9vivecuqLxpWcVVbWBg8R8WXEJKMUnErDIemeKW5USE=;
        b=Bf56ET9vzemNftn06WexwwlQik2rNcSpAG78C+8luGrHqPR2CFDo40mpQlDn3EswOl
         9ZosYnW4niLBTuO8hpunvgS6hDKmsDd8ZsKI78aOJmN9rI8RtxangNi0G/ML9dxZg3Hz
         3X0ro0/V2rbTOJN4PpWrAuwn8SFclUKq3EB/V3ZDPdrLNbCAl78rSST2OBWzNzRThusS
         /5sdFqa/7zje6ZVFWtfiFpQdwm2cV0AKBIOcOx32r109HK3woj+MiHFXeJuMnkImv9sn
         PE5Sf0fyZWBN46sd0W0yI2+krs/5fpS1zwS4xliavQCzZOh7c/xJQhL60goB1IpXz5x5
         C92A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713272379; x=1713877179;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9vivecuqLxpWcVVbWBg8R8WXEJKMUnErDIemeKW5USE=;
        b=jMPz8KFfT68eaI4VgIA4/vCE84D3/93eII0AJ/YTDyTf/gf9io6I/JfVCK72zBBOnl
         LAD4DoapBI4xG6UqNatpvHMx4dgLx0l23nGCajFTbaA/8RiOBi1dmtraIhqge0egJodj
         Dz46/Yfwxc2+/OmwxxbQHHt50BvfAlcBjgLXa2X83+1afl3WoirzJWz1zHqR3hHWo5x7
         qJdRFdDAv2A+37B74ITlo/4A4ZSv5diynZMV/KkA8QPD33D3Fo6TkqiLiurn5PMbPslc
         7dlLzDDYnzmvp39ekOKA1BIRP0dk/M1fDqRXd5T4DsAHyY/ISRewwkPilBGLlympY8u2
         p7oQ==
X-Forwarded-Encrypted: i=1; AJvYcCVY76K76uCekGvZRHIwpU5HAHjs5I9luVAgTLzVnuunQZueUNLR2B3qYduTqAhQBTBZ2Zyvgfel0HfcbANIvbpooBkbPmF7u7jiaw==
X-Gm-Message-State: AOJu0YxrmGqoBfM9GidSis5kMbY5wbVxfCWxZmTTtFBRg1ZJLi8sQUQH
	FkDmOSoY4qQcUNR/8lYbx6L4gn9eilp2aE72lZ8gYd/jk2X7SsGb/7IbL1mExuo6U2h8SKk5l3+
	wnwxD77EqRhtSu40a+EyQD43jo1sLjombOn644Q==
X-Google-Smtp-Source: AGHT+IER4ET7tjdY7MFE9y9iXSWpKZRx6QzxZXviRVDxpgAQBBJ7zwMk5n1oREBP04xnwa9enbl+aCjWdoQ+zs8fiNU=
X-Received: by 2002:a25:2747:0:b0:dd1:ebc:ca2d with SMTP id
 n68-20020a252747000000b00dd10ebcca2dmr11141827ybn.52.1713272379300; Tue, 16
 Apr 2024 05:59:39 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1713036964.git.andrea.porta@suse.com> <2d1272cad92ad618297a6683e9264e31b8f2df73.1713036964.git.andrea.porta@suse.com>
 <f6601f73-cb22-4ba3-88c5-241be8421fc3@broadcom.com>
In-Reply-To: <f6601f73-cb22-4ba3-88c5-241be8421fc3@broadcom.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 16 Apr 2024 14:59:27 +0200
Message-ID: <CACRpkdbGFpFM3WKXeAy8nfXUf46GKPNBM8sfi3X-WWQJ=A9nhA@mail.gmail.com>
Subject: Re: [PATCH 1/6] dt-bindings: pinctrl: Add support for BCM2712 pin controller
To: Florian Fainelli <florian.fainelli@broadcom.com>
Cc: Andrea della Porta <andrea.porta@suse.com>, Ulf Hansson <ulf.hansson@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
	Adrian Hunter <adrian.hunter@intel.com>, Kamal Dasu <kamal.dasu@broadcom.com>, 
	Al Cooper <alcooperx@gmail.com>, linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org, Jonathan Bell <jonathan@raspberrypi.com>, 
	Phil Elwell <phil@raspberrypi.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Apr 14, 2024 at 5:45=E2=80=AFPM Florian Fainelli
<florian.fainelli@broadcom.com> wrote:
> On 4/13/2024 3:14 PM, Andrea della Porta wrote:
> > Signed-off-by: Andrea della Porta <andrea.porta@suse.com>

> > +++ b/Documentation/devicetree/bindings/pinctrl/brcm,bcm2712-pinctrl.ya=
ml
(...)
> > +$id: http://devicetree.org/schemas/pinctrl/brcm,bcm2712-pinctrl.yaml#
(...)
> > +title: Broadcom BCM2712 pin controller
>
> This is not strictly speaking BCM2712 specific, the pin controller you
> describe is a Broadcom STB product line pin controller.
>
> Please describe it as such as and make BCM2712 a specific instance of
> the chip using that pin controller, see more comments on patch #4.

So also the name of the bindings namespace should not be this one
controller IMO but the name of the family, bcm-stb-pinctrl.yaml or
so.

Yours,
Linus Walleij

