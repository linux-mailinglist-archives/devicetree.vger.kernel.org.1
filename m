Return-Path: <devicetree+bounces-231795-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id BA155C11A3C
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 23:15:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 85E674E5C74
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 22:15:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 900F932C31E;
	Mon, 27 Oct 2025 22:15:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oIIusBLH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7EDC32779D
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 22:15:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761603308; cv=none; b=lODvTxrcs1wTi3bkij4vQVuXWVa5hXExuKjfY1ek3kMDnUkfWCBQJEB0iA+wiwjCMJNeGgiA6luq9uFjvdZIk+7IW/BVhf1z2eKjNonNpWLiG7KiogCcWkvcnw1IXy9ejVE803gDPX8Xzrk6ahSa+USK/52uSW89Lt7rZ/a2PHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761603308; c=relaxed/simple;
	bh=MklpS3nPFH/8Q8+o9LUwlAzS9y0GP87dIrP5WY05aXE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VSI7yDKB7MOF6zXhs/ut+9OoZDQSxQwA1/xCBDroWr+m0wxuM00vgT+9DaV0TYPLOWdZGGW1UhiH5rDyOPR7+x1kJLS5UiRFqwRQ9Wu/ThGqF4EJ/g/afC2gXkusFttCAvxiTpH6e+M6sV5kyEqi7KaI44/Q5Ip6igcPKyXZESM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oIIusBLH; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-592f9400b04so4548346e87.3
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 15:15:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761603304; x=1762208104; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MklpS3nPFH/8Q8+o9LUwlAzS9y0GP87dIrP5WY05aXE=;
        b=oIIusBLHv/uPMiuYIPKVd/A4DljZqaB0bAwbK8/xAvaJ1+qq/tUE5VO7nJgv9ImHmd
         vxuEIeUbxR34eP3Jmo8FXMt0FXZyBqXmC86KMnVf12MGces8PpustttlzE5elpY91FlW
         TsdgIBoGDGL4dDNYtaijN0/fPzFy6f4xxT02eDSlKdVxmHCGvd49PCUL/urZaLkLQQ5Z
         1TlzmtdzzFIhHQd2NUD0ph5VWJWH2tz6UI2XRXS+QRK0hJPezLVcfLN4cBNAiD2AkrVL
         gIrQWD/y2s9+8A8myk/Gkh0Latrad8vCiK1CULu78e0b0ChcvjB+fUp7rNZ1+FAOs+0b
         PDLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761603304; x=1762208104;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MklpS3nPFH/8Q8+o9LUwlAzS9y0GP87dIrP5WY05aXE=;
        b=cNUckeoJaEkS2aHqM7vjjx5Eao2QJANLzH+OIUTI8DGEjzr4M87vvtebbGQP7XNjY4
         6cZDaqI3+dBIFWF/hwhEtBKLtRVi37d9h4g+SN9cf0aUw6yk/p9glIRcptG2PtaQovGk
         UDQZmiSpnLQqOoC+9/kCMKHIhH3tQ/bBeQrJUcRzOT7//3SxVIxn01MIQVks3Ca1yHEe
         floRG1DkCk1VXjv/BPM17lTQkWJN8moI6XdMJT2NGsL8lbiJkAFBi0jzQYhmxkMzLSBe
         wafko20Qty7rsbBhly6mre4C3JVXDQgMck7ZCPBvlS7QvebM0hT/p6JS1sT/8jQYVAoF
         QpUw==
X-Forwarded-Encrypted: i=1; AJvYcCVeSyW2gyNS9c176ikWZlJhDKEabcHDeXAK8dqt2biYRxhX7g/taeCN8ivMx2Sb7jOLUsPHvocBatal@vger.kernel.org
X-Gm-Message-State: AOJu0YzzKxM8lrtY+K0qpikSZ1fLUx9spJH289lcSK5UAa/fVV7I86cP
	zHvEBUXKYjCjG4OAYttYdOWhxMPF3bl6DTozWo5BvTWIS1IftDoGrzqYg9ABJJjR2O66rLZRf6v
	OJC5JQJ7X83PWyiLL7fBOxP5kJ234baSxfC5d4teXlw==
X-Gm-Gg: ASbGnct+ZFxLmX3+dORlTJTu/PhMgBTsI+WkcpIHakMZcBLIG7A1DR2jvDKk6svcnjl
	IUeoFXmabF4qVLCeO5Mjc+Ly8vpiUaDyZ1Uwjtgt/7YQLYwYcH1w0gO7e5aG+8kTdi+w6R7Lxxc
	+fBYwl6JA/nLFl0VSmhVbVRg2fu6qkjyXkfbyxmJ8shm1G/9VhfQiV4VpzEgjlcyPpndFUitvun
	cy6Tm6bdWU+Uf76JVYVkYH69dzPSdA/RRGgc03mWDOy3st+H7Qkk7+0H2oBxdhXrvABb0Q=
X-Google-Smtp-Source: AGHT+IGLhiO6SgwWEy6J63NGSkHEkhNG2WH3ZWZ7Mjt5HjFADLOLTHG32rGKFBXTboiBLjapU4iKntf9dVI4uinRnL8=
X-Received: by 2002:a05:6512:308c:b0:591:ec0d:3014 with SMTP id
 2adb3069b0e04-5930e9c3bb1mr426683e87.48.1761603304563; Mon, 27 Oct 2025
 15:15:04 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251023132700.1199871-1-antonio.borneo@foss.st.com> <20251023132700.1199871-10-antonio.borneo@foss.st.com>
In-Reply-To: <20251023132700.1199871-10-antonio.borneo@foss.st.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 27 Oct 2025 23:14:53 +0100
X-Gm-Features: AWmQ_bld4K6zXNCkN---w7iwBNN2WjFxw2gv2dtNkgQHft2zTjwtq7Bsw-LLEv4
Message-ID: <CACRpkdZoecqkKfXmu4ih3qb00OMPmAtJVvyqerXf52n+s7vFxg@mail.gmail.com>
Subject: Re: [PATCH v4 09/12] pinctrl: stm32: Support I/O synchronization parameters
To: Antonio Borneo <antonio.borneo@foss.st.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Bartosz Golaszewski <brgl@bgdev.pl>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org, 
	Christophe Roullier <christophe.roullier@foss.st.com>, 
	Fabien Dessenne <fabien.dessenne@foss.st.com>, Valentin Caron <valentin.caron@foss.st.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 23, 2025 at 3:27=E2=80=AFPM Antonio Borneo
<antonio.borneo@foss.st.com> wrote:

> Devices in the stm32mp2xx family include an I/O synchronization
> block on each pin that is used to fine tune and improve the I/O
> timing margins of high speed synchronous interfaces.
> It can be configured to provide independently for each pin:
> - skew rate on input direction or latch delay on output direction;
> - inversion of clock signals or re-sampling of data signals.
>
> Add support for the generic properties:
> - skew-delay-input-ps;
> - skew-delay-output-ps.
>
> Add support for the property 'st,io-sync' to configure clock
> inversion or data re-sampling mode.
>
> Show the new parameters on debugfs pinconf-pins.
>
> Enable it for the stm32mp257 pinctrl driver.
>
> Co-developed-by: Valentin Caron <valentin.caron@foss.st.com>
> Signed-off-by: Valentin Caron <valentin.caron@foss.st.com>
> Co-developed-by: Fabien Dessenne <fabien.dessenne@foss.st.com>
> Signed-off-by: Fabien Dessenne <fabien.dessenne@foss.st.com>
> Signed-off-by: Antonio Borneo <antonio.borneo@foss.st.com>

Patch applied!

I'm really happy about how this turned out, lots of generic improvement
with this as the end result!

Yours,
Linus Walleij

