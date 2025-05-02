Return-Path: <devicetree+bounces-173164-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A2C97AA7ADD
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 22:29:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 383089E1F1D
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 20:29:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E8AC1FC0E6;
	Fri,  2 May 2025 20:29:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gkX8ctaY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AC9B1F8AC8
	for <devicetree@vger.kernel.org>; Fri,  2 May 2025 20:29:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746217779; cv=none; b=C6cFxddiPFK9WyHPlcWCOZqFDrzfzGJF7q8FHacRS6ElPJioa/7foRenuGb200TwHOJe2IlDyY78FKrEm75Cw+u5HXtAUBEvBSRtsBbLgDbMZTQCXKxqHfEcVGGi+7/FoBxmUpvbYuNEDYHW/Wbii/pnCyF0Z97G4twhMfXXn3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746217779; c=relaxed/simple;
	bh=Dyc4VucIA18bMQ/LaDxwZ0u3No29RUGoJCBcBQD1gr4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=uCkE3V3heNSvsfDHOcvnxRbgSNCdil72WgvAOD4abS2nphamog+dY2X5YXtDI6kuAsJPTOYY8wv/YNphjmfMjpGK9aBxVsK/xirxVjq2alKettfOeJtjIaXIeVDNJ8LjIDQIh56HtRrsJLXBwai87sdf8kxKMLJxt7F3cLLKS5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gkX8ctaY; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-30bf7d0c15eso23566451fa.0
        for <devicetree@vger.kernel.org>; Fri, 02 May 2025 13:29:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746217774; x=1746822574; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Dyc4VucIA18bMQ/LaDxwZ0u3No29RUGoJCBcBQD1gr4=;
        b=gkX8ctaYC44kdZJvcD/i6x2qKypvYMoxuk8qxyQpVeA+/OfvmnsuR4sWf3fCaUprXZ
         oDGuKJrpVrP+IoSwksFkWX8EgGMdfzq2lzcnKfR2B4WvehRCOJoSFtwNFeNbGgoihTBH
         b5N2d6B4qIkSvIMwz0OaHkfrF77FIN7uYMN0bRRu1kBU6RCpNriRJPIFhnxBtLkrWqKY
         /6xci12lIsj59h875vqMaqhiAdclf7Ayi7Me+XJotC3Dct4CYtkJ828+35h7UrwHhC8R
         XMpJpvoKV0QZ5taC1zg0IooAzqCvc1F30QsoopYMHfPiWYa36ZceFCXa3lSvMAj+4M6D
         mm+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746217774; x=1746822574;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Dyc4VucIA18bMQ/LaDxwZ0u3No29RUGoJCBcBQD1gr4=;
        b=vII2FjJRltNgqwPt8BYL0oqJknSLn2YuPZnP7UiUqCbF7YshPKX/GDbzz/TKr9+6ae
         eqJD/13NiY9LjKxDBkh1T/aEcZcs0lLidfe9r238vzNTv/bPQTJC4j8awxhwxn1ZdcxW
         zMIgGVpT/zH9nIzCpLeQzp6fyKLJ+lRFq9cUTxBgXGAFzgklm2oFZgN7sy6PHPf8auXO
         NVdSCiOxAw8Lw6uqaH+j4XUh4McvUvafEWJNqdqbd6l/yGfJJVaPLIOo+Cjy9s04TtEU
         w+TEdm7I6KSoWn0gWwNvAFOZMDGP2BNItDI8zNok9Gw2K/a4u5jn+ICpQwUMGX4yv6ZY
         kOGQ==
X-Forwarded-Encrypted: i=1; AJvYcCUBHTbv+x7QxYat6CxOocX2XhOpugK96V8Mp5pkaKZtGhjsDj+3Vj7r3KpadkhAMmlHlApOkIXEZ/gC@vger.kernel.org
X-Gm-Message-State: AOJu0YxFZbpFDFnWpIqpIe4SY7TxyqQJMxnRjvrsQL7xPSQNd5f3iIou
	Mo3RwLx88aKwBN15U0jnhzSBWbMZd6rD5T3YyRnr+SHYM9X7gMW7Pl0FcpQ2Yx0/KP37Jr9ovPr
	kK0VQarvOdLiL8leQMwzCm0MsedtFT56+HDarfg==
X-Gm-Gg: ASbGncuEHZHpZaesfx/LTquWkJ0M1W2yMKsm6/q2h7qLEPGRdTchjYZAPl8RCrOdKLl
	zGTCSNsUvHzuJZSVzbUwcZ3J8VzT17ChQ9jocVb998j6u5t6zUL/LuMLBykH6N3oDKKGu9Vr7za
	ixbhYk5AKoZuvD7h7BFiKP2g==
X-Google-Smtp-Source: AGHT+IE6YTt/niqKQC/QybVWYRM9e6shd/VbSY8KRysq6VEEG74icJfMuCm0qJps54EJDOCFiUhMQ2MFyXvrkj5LwG8=
X-Received: by 2002:a05:651c:24b:b0:30b:fdc0:5e5d with SMTP id
 38308e7fff4ca-320c3b0277fmr12099371fa.4.1746217774478; Fri, 02 May 2025
 13:29:34 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250502013447.3416581-1-robh@kernel.org>
In-Reply-To: <20250502013447.3416581-1-robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 2 May 2025 22:29:23 +0200
X-Gm-Features: ATxdqUHkisrPrxN0V8LxOcj69_oQIgjXM5hj0MkSydduFZ6VmGupMstVtA3t7To
Message-ID: <CACRpkdZ6ZsSTXGDFCLe_bFanKLeEm8+vY4_SvKrF5BrH068UCQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: PCI: Convert v3,v360epc-pci to DT schema
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-pci@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, May 2, 2025 at 3:35=E2=80=AFAM Rob Herring (Arm) <robh@kernel.org> =
wrote:

> Convert the v3,v360epc-pci binding to DT schema format.
>
> Add "clocks" which was not documented and is required. Drop "syscon"
> which was documented, but is not used.
>
> Drop the "v3,v360epc-pci" compatible by itself as this device is only
> used on the Arm Integrator/AP and not likely going to be used anywhere
> else at this point.
>
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

Thanks Rob, I see the robot is complaining about a oneliner to
MAINTAINERS but I'm confident you will fix that.
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

