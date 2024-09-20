Return-Path: <devicetree+bounces-104146-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D99F97D636
	for <lists+devicetree@lfdr.de>; Fri, 20 Sep 2024 15:36:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E8F621F24CD8
	for <lists+devicetree@lfdr.de>; Fri, 20 Sep 2024 13:36:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EAF5717A5A7;
	Fri, 20 Sep 2024 13:36:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oI3yXrZX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE6E177992
	for <devicetree@vger.kernel.org>; Fri, 20 Sep 2024 13:36:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726839402; cv=none; b=Mc7cWAyQSiiUg47RwydPC7cDzeZ5nPVr+bEjqJbVM1c+MWA9T7zRi2FDJePhWIPeAArO820GMGD3/SzdsHV859e1yz0v16yHN6puRgUVQaT+90OszzHBQgSxNSQAJnrZmes1V2OHmsKKbrLOQkIf39ClLQlxFTMPaCCynmp+Ta8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726839402; c=relaxed/simple;
	bh=JvX86XJgCRYYcyM726NTaN9hhTnAJ4K/UyW2ajC3ZH8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cRjX7HBICVQGTfS4J0WQG/gR4ed5er0Qhl7N4q01AjRCfBjaOfFqdJ6s1HwSsWFJMsodXGCl+7rrBaT2J7YJUSwoNP5v65RT5Udoo55g4wUgslo2gQYJDM1b1jdgdT8tlcDsh8y8iOYalcdwVWHCeZLsEYz1n5Qpk0rI4V2L5v0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oI3yXrZX; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-5356aa9a0afso3589415e87.2
        for <devicetree@vger.kernel.org>; Fri, 20 Sep 2024 06:36:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726839399; x=1727444199; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JvX86XJgCRYYcyM726NTaN9hhTnAJ4K/UyW2ajC3ZH8=;
        b=oI3yXrZXrd+qlM3cvxz+cZBm1VWqtsUMdTWDJFfCmeieCaIBH7o7PYN1voOAWB1BSP
         BKBKkNE+dXkloopyrIKVhNE5AIVDSaLs/yt6wu97WFHf5ZR6xD/RARuwYWTi0KpDjrJW
         7XmAqscznshPnaSwWCF5xpmCbfeU9fERUVndd6gxg6Tp1bcGjbnjuHHKNrcg9FQnMgJg
         622ifNW+SMjNwKbR5eNRhahj+Tc6wEXqj8C88fwfZMcEoaepLSh11RR4FBbINWjeRZyi
         HhuEPRijzPMQ6arvufhq5fvt/rgg2O6hxL8JStWR3yrS6QXyWeZ03Kq63PYwF7d3CZcu
         Ibpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726839399; x=1727444199;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JvX86XJgCRYYcyM726NTaN9hhTnAJ4K/UyW2ajC3ZH8=;
        b=wm7oOJsRktuf6VYK7b5Na9rlNw9nP9T9i0eUqM3ODsWTMNw/3tM/rLqOdHGX6CqdW4
         Y5DVHzPgib5o8OTbiwV7LZbKmkbodN/O9VAJaqJm6+axcK5LHW4e5ap7An1+6SL3eY6C
         PmMRS//IheFljhm8AreSwRhSoaSVPasz6y+ZZREsX26cst8rDdktFiG0Fx7J9SSR55NK
         s2d9DBcpdKtaAyNi31gkK062xcVPfdEcAXIBZUYe1Srj0yoNSpJ/uJ8a1CSRv0wjlZ4l
         walYrQNvdOCxYo2Iq8+vRa+2gfTGduPe3/C7XjwqIvNnsrSNKUQqAnJ9MXkDBzStOB4x
         PD5Q==
X-Forwarded-Encrypted: i=1; AJvYcCXhMgvI/4VDbUXXR+0oKYrJs2//M25rQZzeNwlN5GhVIj3/Aqs+NX4xw/Dq9tEm2zxd7TiTe2kxmauF@vger.kernel.org
X-Gm-Message-State: AOJu0Ywm7zKAUGJYmGqzXMjvsKzzFJzjS7+481u4p2izUsaTa5i3FtVZ
	RBa2rXZgbu4jZTldtOlR3CIdZX8NayLCaHdtqt4hy2UtBe4B0cZuGuYh+aa5QsdKJ+TxHuNr01U
	QNAovRn8TD90NL1ZLeYFlkX5ZU2suBa+MD38wMw==
X-Google-Smtp-Source: AGHT+IF3MXqM4AHdMsRT0X+IuAROYjzOa/eJcaWjmb2kM5RxfqdyUYT97T2lTKxU1txf6kHpDxbFL++mBvZFpq5QCTA=
X-Received: by 2002:a05:6512:3989:b0:536:a695:9414 with SMTP id
 2adb3069b0e04-536ac2d69abmr2693139e87.6.1726839399099; Fri, 20 Sep 2024
 06:36:39 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240920-bcmbca-leds-v1-0-5f70e692c6ff@linaro.org>
 <20240920-bcmbca-leds-v1-2-5f70e692c6ff@linaro.org> <12ea4d8609b3defa8782a37c62a22820@milecki.pl>
In-Reply-To: <12ea4d8609b3defa8782a37c62a22820@milecki.pl>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 20 Sep 2024 15:36:27 +0200
Message-ID: <CACRpkdZTrT-+u+Mt4ymyYxx8pR8s2rS6yfyf-11fLb-MZoMzxw@mail.gmail.com>
Subject: Re: [PATCH 2/2] leds: bcmbca: Add new driver for Broadcom BCMBCA
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Cc: Pavel Machek <pavel@ucw.cz>, Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	William Zhang <william.zhang@broadcom.com>, Anand Gore <anand.gore@broadcom.com>, 
	Kursad Oney <kursad.oney@broadcom.com>, Florian Fainelli <florian.fainelli@broadcom.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, linux-leds@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 20, 2024 at 1:30=E2=80=AFPM Rafa=C5=82 Mi=C5=82ecki <rafal@mile=
cki.pl> wrote:
> On 2024-09-20 13:15, Linus Walleij wrote:
> > The Broadcom BCA (Broadband Access) SoCs have a LED control
> > block that can support either parallel (directly connected)
> > LEDs or serial (connected to 1-4 shift registers) LEDs.
> >
> > Add a driver for that hardware.
>
> There is an existing driver for this hw block, please see:
> drivers/leds/blink/leds-bcm63138.c

Gah how could I miss this ... I will test with this driver and then add
any stuff I need.

Thanks!
Linus Walleij

