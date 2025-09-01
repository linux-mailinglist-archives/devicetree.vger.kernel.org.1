Return-Path: <devicetree+bounces-211160-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B6C02B3DC34
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 10:21:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CE3CB3BF9A6
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 08:21:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 926962D73BE;
	Mon,  1 Sep 2025 08:21:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jCxIderr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4F6023ED5E
	for <devicetree@vger.kernel.org>; Mon,  1 Sep 2025 08:21:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756714875; cv=none; b=ICoUX2PLb5oQ/OalgiYGfJm5M/4TXpWMMBCX+BT1DkpwEB0Xr+zr4EcC4aKVHssuDx5XdHhOQFYm7/cswdndIiy2TF865kn7V5FvLq/1Mw1Sji/EmsU/Psvjw4V601oPwZa2298XuPrucEZ4TPAPVRAl+bxvWHxkykw7rYmFs7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756714875; c=relaxed/simple;
	bh=doa7boRfZzmeMyQLHEC3XX913QTwfh8FzsRBnVndqFM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cGWjvhSRZD9+cdRx7wBPA8HqtrW7u8YrezUFuqtN/NzxmlJyVpADV6SY8JVwbkAZeAikaA804WXB/WFJrg/4HceTN+BaqQHmejcQtFtOmuamR19C0HHjvHUq/qxE4Scw7Xr6xVlJ3ALpGfFDnLc5DLlgc5AHeYCs2ZLoFFXKtek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jCxIderr; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-55f6017004dso3675662e87.0
        for <devicetree@vger.kernel.org>; Mon, 01 Sep 2025 01:21:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756714872; x=1757319672; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NtzxvUr8vZxd8BREn+bPHHNBP8tJDJJwcdr3v5pD4CU=;
        b=jCxIderr8GYyJTxNUKUaBQess0VM8IOl53ks3tiRAe5VYM50jBSc/aR0j+tXfY/OTo
         Nq12ng7ecuxw77Rf8QynOnQ4xdC7WNpxvSOks19E8fZPaDG6VQnECRghmo193jzvsXSl
         4FEbbt0LWCH4u16R9ympRnIF26ASHfdsEGgxZeCzl35zPRyx4A1FQS8LSz93zTFnfZ+E
         tOOLz49vZ4AiRX8837W81ZTi6Bgr5xL5PvV7L7vlSd1Xid4yeuxpLuOhLIK0Z3UlCgKt
         tLWFEO5T50n6fnKiZVKKXUhNeFAMhsmIKXQ+lkwPadiO9CIuNuznmpEXBLJgz57Eye+w
         bjnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756714872; x=1757319672;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NtzxvUr8vZxd8BREn+bPHHNBP8tJDJJwcdr3v5pD4CU=;
        b=j79eJAHqs2eHEwUCCwur8jHPlcBHJoB6QnQr/B+AjUCkeGC0FeHI2TauvB0mlVlLmL
         /dRDO7hU64YXKFkU9CRJi2qDQC5NbPPTCzsRc14FIObKPDh87ggltCO+RD6P9Ee+B3Ga
         AenZjLpg6/0zohzddIaIMKaMg9xMtiKxnL8hQl1iUnfNathLW/5igLUrb3pZs8qh5dNh
         CTLLLWhY9I8GXuA5eo83J4O0I2Ji7PYckma34FpROl1C6YHgRA4WHprrzUHV9IFMzfyL
         cNr5T8HQmlHKQn1bg/n4fHaqcBTKSwbWjGdFtY8a81RB6uKPPt3VSYIqry+6NFRorOkz
         VfXQ==
X-Forwarded-Encrypted: i=1; AJvYcCUKO88NrKEEL37fuFvbIyz3eyYwEo3TkMqS0RrAIb6VQ2w7mclrwh/xcHUsn6akS079WXP/tXAlzMTQ@vger.kernel.org
X-Gm-Message-State: AOJu0YzY/nKuLBXcaqoT44CLLLjIRtfidHceUWnY8AWMHZpOQ/eCo6cF
	VaIcWHgGXlRci30axiSats+0K2OLLHAVbP9HcKOmmbUIGsUabEzm0NhGs2QSiVtSYOUbKHRC1GN
	QokXZQz7d/GXkMwFECZlPlmZ7x92PyLo+QI08k6j03A==
X-Gm-Gg: ASbGncvxZEATW2j1cZe/GhMVciIDIR6rtT5ACe6Tk0nk0OyFUzbL/CVKMErnim36OyO
	2/M+1f4VLMSNa9ylWT4arxC3JPiT4vqJPZ0mICB7UGkSTOtHeboi75umoEneiGLtvtzWMU89diB
	p6U0DhMC5VxjzvhyNm524WOnzh49PLExkWAm29yPoHxvXyCOURSHHw0oiY7nKvi99nYd6h90OS0
	1775aZ4HWigiQCWEw==
X-Google-Smtp-Source: AGHT+IEaD5coQULhIexfF1mqVXsJQC24MaqrNpPKJTVWeCuhL3ZZFklbo3Bq+zdNZ4cv+ZlQPPiJygTUgUeUbhR6Jvg=
X-Received: by 2002:a05:6512:ba7:b0:55f:68a2:769a with SMTP id
 2adb3069b0e04-55f7094fc5fmr2092828e87.41.1756714871924; Mon, 01 Sep 2025
 01:21:11 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1756372805.git.andrea.porta@suse.com> <bee7c98a96c7000db32495b94ebae2ea06fe0e77.1756372805.git.andrea.porta@suse.com>
In-Reply-To: <bee7c98a96c7000db32495b94ebae2ea06fe0e77.1756372805.git.andrea.porta@suse.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 1 Sep 2025 10:21:00 +0200
X-Gm-Features: Ac12FXxXum4wFPneUej-Q8PgTeyjRANYxjsjqL1ILL7wHJ70KeajDhKxosakvEs
Message-ID: <CACRpkdac9K7mc5DAUnb82bR-eyzdsurRX_qFu8qoCFARDmTe4Q@mail.gmail.com>
Subject: Re: [PATCH v4 2/3] pinctrl: bcm: Add STB family pin controller driver
To: Andrea della Porta <andrea.porta@suse.com>, Bartosz Golaszewski <brgl@bgdev.pl>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	florian.fainelli@broadcom.com, wahrenst@gmx.net, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, iivanov@suse.de, 
	svarbanov@suse.de, mbrugger@suse.com, 
	Jonathan Bell <jonathan@raspberrypi.com>, Phil Elwell <phil@raspberrypi.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 28, 2025 at 2:45=E2=80=AFPM Andrea della Porta
<andrea.porta@suse.com> wrote:

> From: "Ivan T. Ivanov" <iivanov@suse.de>
>
> This driver provide pin muxing and configuration functionality
> for BCM2712 SoC used by RPi5. According to [1] this chip is an
> instance of the one used in Broadcom STB  product line.
>
> [1] https://lore.kernel.org/lkml/f6601f73-cb22-4ba3-88c5-241be8421fc3@bro=
adcom.com/
>
> Cc: Jonathan Bell <jonathan@raspberrypi.com>
> Cc: Phil Elwell <phil@raspberrypi.com>
> Signed-off-by: Ivan T. Ivanov <iivanov@suse.de>
> Reviewed-by: Phil Elwell <phil@raspberrypi.com>
> Signed-off-by: Andrea della Porta <andrea.porta@suse.com>

Overall this feels merge class, I am looking over the requirement
series from Bartosz to see if we can merge it all today.

I also looked in a vendor tree for the (by now 6 years old...)
BCMBCA driver, but it appears to be a completely different
beast, requiring some magic 0x21 to be written into a register
to "commit" a pin control change.

Yours,
Linus Walleij

