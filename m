Return-Path: <devicetree+bounces-160823-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 75B96A713CC
	for <lists+devicetree@lfdr.de>; Wed, 26 Mar 2025 10:35:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D1CEA18953EF
	for <lists+devicetree@lfdr.de>; Wed, 26 Mar 2025 09:35:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85C0D1ACECB;
	Wed, 26 Mar 2025 09:35:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Meadw21h"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9823F1624DF
	for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 09:35:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742981724; cv=none; b=bo1zDU2Fqx2mEHlOHda27bvHtmXtwVaYSoUlWblJ8IXEW1tIXzQhcDk2ui+h6RH8gRP51Mntu+3qiwgMp8WSIIH1p+d5DVlLbSJpv5p7QeY+lBKUvZuEI9qN2M6j8TDFsFRmGENSurKuG7ygzNVR5Fn7JMlaz8RRi0uAWrmM8mc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742981724; c=relaxed/simple;
	bh=mO7U4m0oTja17D3RFzqvynDUKnVhiYqxVxjxnWasqbo=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=cmGNvcoock2PX/Vnc7U7ZziUmVKGEQxY3JAwn1eN/kscwuL21CIsfacQ7UlNT9VKmzKaSoI7ecDfINLdCvyOfHpqrWCUaCt0m74T1n1xIsCM5F1Ywl/WXZsEkMXuGEEUgsiZQXR3c9E2v5F132oDS4qHL0QIkNYeZbK7DE8jG/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Meadw21h; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-43cf3192f3bso56497865e9.1
        for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 02:35:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742981720; x=1743586520; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=mO7U4m0oTja17D3RFzqvynDUKnVhiYqxVxjxnWasqbo=;
        b=Meadw21hAJAbPxHWIvE2IdbDLH8Iu3gP2LwW1a7LUKHThLlqX6CsngMPJQR3Q8jmMi
         Y/eXaeJ2x7qmckOmGM+Jt76QXYznKk6sayGrFiGmC3p4f12N30t7L+d30z9E2Q8aBkXP
         iQ9hoRNkYoHeidu7iB/Di4Nb87PM8VkZiIUZy8lIkD+LLt/igq+9XyvPqk1gxuPfoNxl
         az/n99XmR9iXn/FKMzOJ5s0zKA/MJzY5VQAMMlW+2epY2do+caRJMfrvEs7M1EEfVSIC
         BfJkoIRfkPD63mUG+g0R72X73Y+mHNCvriWSWpX1id9Hr4XFD9b76gm+Vt2PfVNWG7gs
         QRsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742981720; x=1743586520;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mO7U4m0oTja17D3RFzqvynDUKnVhiYqxVxjxnWasqbo=;
        b=KRDYzcyiLNWZBnZlo08ZSGHWuv/6+QfbZ+6PMhgYIq/QOaSm/b3NAtqpXODi78aYga
         o0eeT9DJP3Zdpi+IRoeHxg+A7KcMQQfPiHqcblg0YqgT4YwRswF51bgAZmiCHaOGKwl6
         bZqyX6AqrEPIh434mPesBcrjF6QGh9V4+T3catKoasZPiMHQN7/1HDZzjIBwghach5AG
         L3ybY3oyu5YG2N4YMoHpsufFtbEMhC0y+9eXF9tze7EyF9ifnH6FuHegjFvTEgV7itqF
         NgeaE4gpRqEnL1P7hY9pqNnLZJZtdbPn+zu9EbnxHTQYMrglrSWZAApY4+qZY0PeKoxq
         IYuQ==
X-Forwarded-Encrypted: i=1; AJvYcCUpDzyybLO2+i4AoZW0yUlPzbnylXCFUCs55xRAYRvZJoFV9Bpug7k/6meGtAwyfDX7J6Cj6Lk4q2oA@vger.kernel.org
X-Gm-Message-State: AOJu0YxcQQBBBEOYcl18lYNPo8z5NblbblHCvNk3o7EYcQaISJtjS1OI
	d9Czc8OwrU1RzIn0PzxuLuQX9AFXrIdfnDVBa8Ql0uADAGaMju89jaG4r8Ayato=
X-Gm-Gg: ASbGncvJJLCrPXTMnjT/NaN1PERVlrEGBwmlAakVcKtka4ZPmrK8QvzIz5dkkDvPdqJ
	fRlQCuxBWl1IKsKTE37aPID57q1CdtKc8SMWcuNljc6PAFgBnSjgHbv6/RDVByHAZnbrko74Gox
	jz1dXJdqdLI4oiREj3rnLdcfmOI8BijYMXgGLel6xqm2YAGohHVXDsvmWw+5FR+2Rx2Rtl1OCh3
	9emq7cTkOoa/ItwRKI/xwXO50OuCAxRCCBC9sZT2kDd7PHhqaHc0Tr0GsCw7H/c+ozG1R/h6jHb
	Td6eYhW6LN6NiNLbEHt6hWaU38HdzaJAh+Q782neIGMllHPpbQ==
X-Google-Smtp-Source: AGHT+IGcfQ6I4FNrJirurd36EI4HsUJuWVwi1KHS1E2yEYqjMI56gm6awQtr8PEUURenI12KJk6YUQ==
X-Received: by 2002:a05:600c:c0d:b0:43d:738:4a9 with SMTP id 5b1f17b1804b1-43d50a33d03mr152636725e9.27.1742981719714;
        Wed, 26 Mar 2025 02:35:19 -0700 (PDT)
Received: from [10.1.1.109] ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43d43f32fcdsm232615235e9.7.2025.03.26.02.35.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Mar 2025 02:35:19 -0700 (PDT)
Message-ID: <40a8d82aab764669cf755adbabac80a5c0044a5e.camel@linaro.org>
Subject: Re: [PATCH 12/34] mfd: sec: add support for S2MPG10 PMIC
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Lee Jones <lee@kernel.org>, Rob
 Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Sylwester
 Nawrocki	 <s.nawrocki@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>,
 Alim Akhtar	 <alim.akhtar@samsung.com>, Michael Turquette
 <mturquette@baylibre.com>,  Stephen Boyd <sboyd@kernel.org>, Russell King
 <linux@armlinux.org.uk>, Catalin Marinas	 <catalin.marinas@arm.com>, Will
 Deacon <will@kernel.org>, Alexandre Belloni	 <alexandre.belloni@bootlin.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, Tudor Ambarus
	 <tudor.ambarus@linaro.org>, Will McVicker <willmcvicker@google.com>, 
	kernel-team@android.com, linux-kernel@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rtc@vger.kernel.org
Date: Wed, 26 Mar 2025 09:35:18 +0000
In-Reply-To: <25eb9c47-96ba-4037-b320-af16e0226f4c@kernel.org>
References: <20250323-s2mpg10-v1-0-d08943702707@linaro.org>
	 <20250323-s2mpg10-v1-12-d08943702707@linaro.org>
	 <25eb9c47-96ba-4037-b320-af16e0226f4c@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.53.2-1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Wed, 2025-03-26 at 08:22 +0100, Krzysztof Kozlowski wrote:
> On 23/03/2025 23:39, Andr=C3=A9 Draszik wrote:
> > Add support for Samsung's S2MPG10 PMIC, which is a Power Management IC
> > for mobile applications with buck converters, various LDOs, power
> > meters, RTC, clock outputs, and additional GPIOs interfaces.
> >=20
> > Contrary to existing Samsung S2M series PMICs supported, communication
> > is not via I2C, but via the Samsung ACPM firmware.
> >=20
> > This commit adds the core driver.
> >=20
> > Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> >=20
> > ---
> > Checkpatch suggests to update MAINTAINERS, but the new file is covered
> > already due to using a wildcard.
> > ---
>=20
> I did a quick look and seems fine, but I suspect small rework when PMIC
> becames child of ACPM, so full review later.

Thanks Krzysztof! And yes, there'll be a small change to support that appro=
ach
instead.


Cheers,
Andre'


