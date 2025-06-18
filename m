Return-Path: <devicetree+bounces-186993-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 29676ADE6FA
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 11:31:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 211AC3B9D79
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 09:29:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C7D7285050;
	Wed, 18 Jun 2025 09:26:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yAeeIEfz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6E67283FEE
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 09:26:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750238786; cv=none; b=WYbMMtzLDZ+i7srs1cVCvmSgDTfk4L4vsiwbLnVQs/EaAYnjubXDdExD8yLMQXg5puRdICQaXpjY8Itdah2A6T6gfojCKSFC1+s52MTc1V2iGeBg5DtFkmh8ryCnLOCyKHcgQvd2qJoyW6bg2OBhy+YnxnUzTwdXRh8kskZbV7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750238786; c=relaxed/simple;
	bh=nAixNKedNDaYjMoDbFJJWtykzraK5wtml5m9AKWJpzY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ByfT/q12w8nbfKbYF/bd3kHdzwoeLOhPZkJp1vvYlfaAAS1RWXdAli8i76UMB/kesj6wqfYgaZlFTdhpedain393iRZ+CvoBPUeNcipVtYQDzdrSWE8P7WSJuWSLboBqyAHfnFxY5didNBHP8Y0wYvhrqZr7Q+Qt5HPNxICS9YY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yAeeIEfz; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-553d2eb03a0so584846e87.1
        for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 02:26:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750238783; x=1750843583; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QWFR3lJZvy4GZXmA1xUeMKYw+5FpI0OcmJNgyVyXgIw=;
        b=yAeeIEfzr7L+oZZxhNiqA2bDIsKcUw9vfMsxJy3A8Li+vwxW7MT0ewaxRF7X3wUwe2
         /100WBwO6ZoaskvMXg2kNHVFa/OUULZs1XfArhRJI3aNJYjesKZNlYeSW89ts8Noenmg
         DoOVyZGCOOwYvVpYebqS6YoQDwPGwNzyC6KD6ggOGNkIy1gUdSu8wiVcEh6t44ZSa2Ir
         YbWh3Wwnq23AKhVLjP79qaCAl3IAQAKBQ8g5d1W+XMUXt9O6MuJTUHr3IG6gDACJIV1R
         83yqgpsSeJ9xCrJjNdcStL0HgynCSL2zFA9QMWYjON+jELo+VUZUJTmerK/neFL3xCn3
         VfyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750238783; x=1750843583;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QWFR3lJZvy4GZXmA1xUeMKYw+5FpI0OcmJNgyVyXgIw=;
        b=C/SgSCK2fJkmt+043X/XVLCcGxUHNclxaTrKUc9woHT+2bUx9lK2xuzXa2e8UGaFoK
         xb8zn2WVi8j7d/UytpOu2VOWRMoMLKkWtYUGOBFBJBgYSHrdDmgEXLxgqHNkze0NtkFM
         Ud9ZJl0Pnp9/6JvdcJpy3H2YOtjw7pMCwKb2wN3zyUIEzvOLKpATEDCqTyQT8MbeaQvb
         /POC/meX+2vdfMk6p8x9byagejYve9XS3i1mb3G55BxZK+M0hXZeWiSyPDCa4MmsNzD6
         lH4jywjrfNXzE8obnQKt7v6jH9BVGyzoE+6CKiooescwNQJtZOX5GCBOLudUKvaT3gBN
         nDVQ==
X-Forwarded-Encrypted: i=1; AJvYcCVCIq0ljGROpM5xhc1+dzP+5hscWR6tEINFe6wFlRXxRrm4sQnuFQ1uS3aTkLsZuMlubzzfYpm2jA5X@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8w5w3nhzS4SnOFMwjEKkrrZScvF5iXIBQeAd+7a441ynqVJ5E
	nh9Pg0a/A30svPICk+O4y7BLIEFPUQJ3OL93FGl6etbfDaBbPij8VZIndPyhyQ+poO2OZQ9sgUL
	vGcwBCTzsZZDa27pyEeLyltSHEl6+onFnsrRpYZvmBw==
X-Gm-Gg: ASbGncuHtzsslASdOz39RsFiY4T1D3Hc5xf/1gUbfIRYdKnN4mCd+Zm7FjUH5F8nA8o
	8eyn8lg0/Id+gFV/Ix4XrN1yRa1vi7BKgC2V3sMvqK2dT2qRnojDmjTHGGeX32/NBSUNyJ4ElVw
	Ao9HKvE887LQUd+UNOCvAqaqUWG3LqIYh7oVuAwGg4edC6Eue9dW1AZQ==
X-Google-Smtp-Source: AGHT+IGZulR1H9+iCIC55gEsLEoE0oqDCjkL5Fd28aQJZaej+7J7V66hn4S2QtWJZn/tk65wm8JptBmvBC8HG7edLQ4=
X-Received: by 2002:a05:6512:4023:b0:553:2375:c6e8 with SMTP id
 2adb3069b0e04-553d38bc9edmr644722e87.1.1750238782845; Wed, 18 Jun 2025
 02:26:22 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250610152309.299438-1-antonio.borneo@foss.st.com>
In-Reply-To: <20250610152309.299438-1-antonio.borneo@foss.st.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 18 Jun 2025 11:26:11 +0200
X-Gm-Features: AX0GCFudSA6Ai2Ztyy99YXMMTippK2eV4K98kdxAH7hr-WIHL4mRq5_nr4kVdg8
Message-ID: <CACRpkdYy+sVQAdntEWMfJGqEzw+eexLGG6pXt8QVYD47rVzjdw@mail.gmail.com>
Subject: Re: [RESEND PATCH v2 0/5] STM32 pinctrl: Add mux function RSVD
To: Antonio Borneo <antonio.borneo@foss.st.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Fabien Dessenne <fabien.dessenne@foss.st.com>, linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 10, 2025 at 5:24=E2=80=AFPM Antonio Borneo
<antonio.borneo@foss.st.com> wrote:

> Antonio Borneo (3):
>   ARM: dts: stm32: Add pinmux for CM4 leds pins
>   ARM: dts: stm32: Add leds for CM4 on stm32mp15xx-ed1 and
>     stm32mp15xx-dkx

Please apply these two through the SoC tree.

>   dt-bindings: pinctrl: stm32: Add missing blank lines

Waiting for a DT binding maintainer review on this one.

> Fabien Dessenne (2):
>   pinctrl: stm32: Handle RSVD pin configuration
>   dt-bindings: pinctrl: stm32: Add RSVD mux function

I applied these tow because I have a DT binding ACK on 2/5.

Yours,
Linus Walleij

