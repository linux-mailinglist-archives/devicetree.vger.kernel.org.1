Return-Path: <devicetree+bounces-247124-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2897DCC4817
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 18:00:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1D2F2309D952
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 16:55:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FCD43246EE;
	Tue, 16 Dec 2025 16:55:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b="ez9Xw+hC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEF332D6E64
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 16:55:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765904111; cv=none; b=FDFHrlztq10DCe/Oa+QRyNUXQxZIs5GiA69PRlPjkGdmhYLqOqgAg98nxfPne53xtnbsH8IXj+N+7Q1beLX/EzcGVeWcDVxq+oNK05G7wVnhqADQJVId9Q1EHz1LBc8x4lgZ7OpWhV9Sq4CAioA9bO45Z+ssfzyHVguXW0UZGNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765904111; c=relaxed/simple;
	bh=UN+I8vzJ8cwqizu/csjxQGAMQDSJQX7rflsi34zqodk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HttNJuGVYJm2h7/6ai2PiRZExuGjDHfuTKX34Ow5zqmeibiXMEzHrMg+cpMwoQjvhr+Ln/pFdpG4FH2wfZ1IvmyV8+fXi+8HwUwl7xAyN/ZINJ3r7kWSMz28282aPtu7a85i4U9K1V8o/XJROV1jS9bwpkAjJAGHjUYCNoY6/nA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr; spf=pass smtp.mailfrom=sartura.hr; dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b=ez9Xw+hC; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sartura.hr
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-640c6577120so6858005a12.1
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 08:55:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1765904107; x=1766508907; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UN+I8vzJ8cwqizu/csjxQGAMQDSJQX7rflsi34zqodk=;
        b=ez9Xw+hCct1myrsDrpo9BeJ5zKvjFtpk0SaqIt4mwiYvGonlK477nfeFk+JDxF+Xuc
         8TVTQH8l1oaXPyEl0+UM4g1cUyssoGnMCTxvwMWdh7AUPyA/yOUV2sKBmDoUoNIgE1pA
         5VamXVieCMdH715zfeYeYTUTnwmmeSq2zz6pCLr8xBZwbj/lUWqZRTSJZeWhEzqS8+sk
         dfiJlVVzRIlbDTCmO1waDiDhWU4b/IovxwXvLmjSi1VcUZomaQuc/E/oDNH2JnbNajhS
         oWBRtsNnA3yzof/LdWnheuZ3A43EJG2vZGMo+vpl2MXH3h2Ib6Vd5Em8hiILw3Z0Jqr2
         ARcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765904107; x=1766508907;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=UN+I8vzJ8cwqizu/csjxQGAMQDSJQX7rflsi34zqodk=;
        b=V9pHowtWmx4kKbC18BXjffMRAgIXR1qaGPj+98Io07BT/9FQQyfT/WoGxz9oSHq9FV
         NeNUu5PlQ1xlRq5t+A9iRD1w7bXYPIOQPUOTwl3PV3DfSoMuJYqSsmqthYa6+zegJpNs
         DCKENrYIBHIyDvnRMc0+yxWeKmVumGVsLuuCQSJsTXF1SCmgZX+r9jkrBATGxTrJq8CY
         cuLOrd8KHWq8TakQ5I8GP+o+BZ8vIzj5hiCnqJ2ltHsSJrJvxx1/3qZYJ76ghNwylW3a
         xd5qd4Z0A+aN+ZbuJonVk5oPeNoexH1nvYHdK6KUyKRvq+zW8glJ77Ew0Rdj0FLjlE9R
         uOXQ==
X-Forwarded-Encrypted: i=1; AJvYcCXDnKbsIWCpP94mRlahZdHHdNzb/RPZmzmdPFv8KTaiUz5aUgqHhyzoqG492zNGiEsBG8V532CwqUvo@vger.kernel.org
X-Gm-Message-State: AOJu0YxPbZNeqHYUgaFVKsVApKF+DOhZ2i6/FLxgE7bLXaNz3sWCWiyy
	iioG6lx+/3nooMVaBQGcycJbcr/eRRBFrsOvuQFvhAInlUlc/ju8sjLs+T+4JP3lEiw4djqH0ua
	EWO5Vc9YdO6okEIunvrc5RYN8aCFz88QIM0RlpAGJdQ==
X-Gm-Gg: AY/fxX4DEe9TKUNSkIJ9shRsZ4MGkOfQhxtTWN/aZmMALuczxXu6wvoaQIXqdIzwH2N
	NNtdELkJREqgJuS8dy+3X3iPbpa05AUYm1TbduOLaEw89TyM5u81iQ3W6QPfSRQ1y2RwMSbnKoL
	4H1m1lImONM75GmaC3w6QU1UNLCdsNnh7AHpUJxHxSQwOKcjGGsm7OKWFjmFxyBXH6DM/gu6jnN
	FawNlTpvl4223LZORICJ2mMNVH+0AoxMKbAMdN703oLFx/eoBT3EwBIip2P/2oG0EMQcskw
X-Google-Smtp-Source: AGHT+IHss9Bd1xLNKBKVvo2auf8JouoGjNJ+pij6L9GBIFkYaw2yQJkBsu5mTJ8ApxjlWW3ipaEa8krFjlxvR+te8cI=
X-Received: by 2002:a05:6402:430c:b0:64b:3a8d:8f2f with SMTP id
 4fb4d7f45d1cf-64b3a8d8f4amr1282460a12.8.1765904105940; Tue, 16 Dec 2025
 08:55:05 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251215163820.1584926-1-robert.marko@sartura.hr>
 <20251215163820.1584926-4-robert.marko@sartura.hr> <39d5371a-ed3e-4262-9cc9-e76c039f352c@kernel.org>
In-Reply-To: <39d5371a-ed3e-4262-9cc9-e76c039f352c@kernel.org>
From: Robert Marko <robert.marko@sartura.hr>
Date: Tue, 16 Dec 2025 17:54:55 +0100
X-Gm-Features: AQt7F2pB7VocjSO0euYm2JMWHk2AXNZHaLhwttYBwdz_DAq0CW2nlyHeH65guEQ
Message-ID: <CA+HBbNEsXG64L26S-78A4E9dUOnfdtTEQoifiv5Y16_oQeiiHw@mail.gmail.com>
Subject: Re: [PATCH v2 04/19] dt-bindings: arm: move AT91 to generic Microchip binding
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com, 
	claudiu.beznea@tuxon.dev, Steen.Hegelund@microchip.com, 
	daniel.machon@microchip.com, UNGLinuxDriver@microchip.com, 
	herbert@gondor.apana.org.au, davem@davemloft.net, vkoul@kernel.org, 
	linux@roeck-us.net, andi.shyti@kernel.org, lee@kernel.org, 
	andrew+netdev@lunn.ch, edumazet@google.com, kuba@kernel.org, 
	pabeni@redhat.com, linusw@kernel.org, olivia@selenic.com, 
	radu_nicolae.pirea@upb.ro, richard.genoud@bootlin.com, 
	gregkh@linuxfoundation.org, jirislaby@kernel.org, mturquette@baylibre.com, 
	sboyd@kernel.org, richardcochran@gmail.com, wsa+renesas@sang-engineering.com, 
	romain.sioen@microchip.com, Ryan.Wanner@microchip.com, 
	lars.povlsen@microchip.com, tudor.ambarus@linaro.org, 
	charan.pedumuru@microchip.com, kavyasree.kotagiri@microchip.com, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-crypto@vger.kernel.org, 
	dmaengine@vger.kernel.org, linux-hwmon@vger.kernel.org, 
	linux-i2c@vger.kernel.org, netdev@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-spi@vger.kernel.org, linux-serial@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-clk@vger.kernel.org, mwalle@kernel.org, 
	luka.perkov@sartura.hr
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 16, 2025 at 4:56=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 15/12/2025 17:35, Robert Marko wrote:
> > Create a new binding file named microchip.yaml, to which all Microchip
> > based devices will be moved to.
> >
> > Start by moving AT91, next will be SparX-5.
>
>
> I don't understand why. Previous layout was correct.

Hi Krzysztof,

In v1, I sent the LAN969x series as a separate binding, but Conor then
requested that
they should be merged into a generic binding, and LAN969x added to the
generic binding [1].

[1] https://patchwork.kernel.org/project/linux-arm-kernel/patch/20251203122=
313.1287950-2-robert.marko@sartura.hr/

Regards,
Robert

>
> Best regards,
> Krzysztof



--=20
Robert Marko
Staff Embedded Linux Engineer
Sartura d.d.
Lendavska ulica 16a
10000 Zagreb, Croatia
Email: robert.marko@sartura.hr
Web: www.sartura.hr

