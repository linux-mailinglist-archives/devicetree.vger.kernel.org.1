Return-Path: <devicetree+bounces-192847-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F2A2AF82EC
	for <lists+devicetree@lfdr.de>; Thu,  3 Jul 2025 23:54:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C50151C83731
	for <lists+devicetree@lfdr.de>; Thu,  3 Jul 2025 21:54:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CBD424C06A;
	Thu,  3 Jul 2025 21:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LH/PsIz4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD8DD23875D
	for <devicetree@vger.kernel.org>; Thu,  3 Jul 2025 21:54:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751579663; cv=none; b=crrlm7erL6q2C83/bdSUZlYEWoTmTZMXtz/guhNi9PAW9OVklRBM+oUTSZrR/skH4qB2J9CZQssl4qKS2p7dScAhFwWyJS78a+0Sv+tIxa/gvs4Qp829JBamPFPk3S0Yn5FlMebZBgM33QWR/SSD9GLPenz3E/SoMS28/k0imPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751579663; c=relaxed/simple;
	bh=LEo27SpxoT6z4tyv6TX/oS4QzkAl1cDA2pfjJ6uCnsA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VvqBOHzHuLXAA8LG5jTjV+2rAWnh1/Sf7wBKkiimRYsu8h+/tIj7cVKO0kLle9l87M2Kd4ZQ8Gor54Se7fQAN/rlo+K6ysOmz8At0pq6SRzH20jED5SCl9+lzunIDzxCqEIa9d36iu+Z88AooUe/1kQAlcYJUgPq2AnQff8Y9to=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LH/PsIz4; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-553b544e7b4so375166e87.3
        for <devicetree@vger.kernel.org>; Thu, 03 Jul 2025 14:54:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751579659; x=1752184459; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LEo27SpxoT6z4tyv6TX/oS4QzkAl1cDA2pfjJ6uCnsA=;
        b=LH/PsIz4Rdp3SZpO6iSO4RMi70OfPm1+90Unk2x8B5XbUjnIHXB7dpdjgq6tDRF+28
         nkqoaNOm3WVyYFejAqUT+gzgV+eO5EVsTAjxso65fqWpNSZEWs1bWFDm911HaBDkIJxX
         ZlnBwIR8Mg8d6qTxyA9v7yaLm2erhEbGpWbbO+ChWfUZ3V5QTtTqV5vr0vN3HlBA3ea6
         hjb2AtcKXgcrANkiWxyB+kiLcknGBofa4bJ82rJk8Bqg6wHOoS9pX3LijxfgEJtonbrO
         /Pbrmz9e+0+OpNtPdzLOTmXWDV6NYprGu1OKQVYcu4Fsj0iYooRzvTIQ3N35KPgtAeSh
         JR+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751579659; x=1752184459;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LEo27SpxoT6z4tyv6TX/oS4QzkAl1cDA2pfjJ6uCnsA=;
        b=h0a9+6CJemlcE+TeHRAsrcFkwvct9a9yonEzPtog6XKLPTG3lwEt+ho9wMODSjsRFE
         DmrSMGQMpLBdPIh8JaBlZcbr7jXNyXYTo2qKNLPuZsTscfMonYlYVYNOinPP/idI+2UA
         gUtyRyLiJ3Qkz2kgtpvZCRBy6McBIr+PUW85D7GxCVXFK9xTSesLTVt9HwaqRDLVJ/i5
         hjuzELzrudGwad8awmPK2Y7PX9g5MXjudePs7nphWBJd1wUrVs7oywpldY/hSH+4oOSU
         QEy8ZDoOQiIktzV2jRep70uoohbVoUdKp6oUVRuctkvEEJSxD9FRCltH+OR1KG7i25e+
         CadA==
X-Forwarded-Encrypted: i=1; AJvYcCVF/Xpt6uhHjwllDZfG0fdOuUtoM7UhpLaIFiDdn1gGaGM9Mme1wi+FOCLJRBydxyEcnBH8qg4lRH44@vger.kernel.org
X-Gm-Message-State: AOJu0YyYRfx1v/eKzl5o++Im0kGKZS6Og4tBVm6CFsoVqJzZP/IqgVT0
	xabcn/CB7R/tKEnIZdGvkEnhduc7MhGMosWjsoBhbx9hurNzBW4qu/S362KUj58k9dty5pyoRDB
	CuIMMPnJQmh8OsiNgnrf9ZW8F9e71SQtb06/M2ti85Q==
X-Gm-Gg: ASbGncsOQcwm13OEnDyoKXM1oFJH5X05CAjLRCx3Z8uwI2ZsEAz1YCj/9gG95eXa3rh
	z3Txd92ObS/kF6AuofP4GreWd9I9Q+8aSHrBzIywi0Ts0p9swgTTtrAcXTJZPrBT9/3BH4tk/ES
	oZ1CrvLNigMkr0ahUlv+UjRmNyHCDrQDFb0o1ucbUuDEo=
X-Google-Smtp-Source: AGHT+IFckUZv1qDN34YL9xP78RpLLOjoYJYZ+wKY65GHTkc4fwzbahypUbKLt2uekYZ4NWpbxz8d+9N/6fdIiPphiOQ=
X-Received: by 2002:a05:6512:252a:b0:553:d910:932b with SMTP id
 2adb3069b0e04-556de26ecdfmr19471e87.46.1751579658980; Thu, 03 Jul 2025
 14:54:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250702-sm7635-pinctrl-v2-0-c138624b9924@fairphone.com>
In-Reply-To: <20250702-sm7635-pinctrl-v2-0-c138624b9924@fairphone.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 3 Jul 2025 23:54:08 +0200
X-Gm-Features: Ac12FXz8bSnZw_fU0LoXZXBdvuWYVqNdvL-IUi3U2zwuKMo-p81WILsJ1A0gEfI
Message-ID: <CACRpkdZ8oHJeHydLcMmtttJiKSGybX7vmhgPDEjD_4SDoxvCzg@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] Add pinctrl driver for Milos (SM7635)
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 2, 2025 at 5:56=E2=80=AFPM Luca Weiss <luca.weiss@fairphone.com=
> wrote:

> Document and add the pinctrl driver for the Milos SoC.
>
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
> Changes in v2:
> - Rebrand SM7635 to Milos as requested: https://lore.kernel.org/linux-arm=
-msm/aGMI1Zv6D+K+vWZL@hu-bjorande-lv.qualcomm.com/
> - Link to v1: https://lore.kernel.org/r/20250625-sm7635-pinctrl-v1-0-ebfa=
9e886594@fairphone.com

The patches look entirely reasonable to me, as long as the DT
people are on board with the compatibles I will apply the
patches.

Yours,
Linus Walleij

