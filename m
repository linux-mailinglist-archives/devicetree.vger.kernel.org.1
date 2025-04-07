Return-Path: <devicetree+bounces-163629-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 41893A7D9C3
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 11:35:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9FE0716AF57
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 09:35:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D20EB22B8BD;
	Mon,  7 Apr 2025 09:35:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uTZvzowo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C81562248BA
	for <devicetree@vger.kernel.org>; Mon,  7 Apr 2025 09:34:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744018500; cv=none; b=AemM6NsHXUQSm7yaW8ZAFTP7aBNwNdGFrp3cQoJraPcYitAD0B8QNfzheoFRnetPoTWxZnHbiFlf8rWnWhlJsdm3gHWY+cGdjo+rmNLkW8if1pZGMNQcx00rBFUuGS3oRdwuRaYivt8kdTxevO5Oooo2UsZwOj8W3r39JwTci/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744018500; c=relaxed/simple;
	bh=sY8de/adKxVx84s/9OXx6B8gB3VJnbWZllFUS1NDxPo=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=P0R6O3LOSfHX1YW6ycMjaRZLsIWOdzN6xYOf3acE8lndo7+xIpr2N7l8MftKI4U0JcQhyzZIZd+Ds9hmskco0vdbYxLbV9r5ez9tdVx+KAg3OVb/3C8zMZ3D5h367fF/JGYz7Qff1bQnpq0v6DjxwiP5tgpKjpQ5QEdKhigJ6c4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uTZvzowo; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-39ac56756f6so3505509f8f.2
        for <devicetree@vger.kernel.org>; Mon, 07 Apr 2025 02:34:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744018497; x=1744623297; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=sY8de/adKxVx84s/9OXx6B8gB3VJnbWZllFUS1NDxPo=;
        b=uTZvzowoocuBhurdncvrklh8cm6VOJJcEIQSRLbT+JGtoypeC6dMvlfj0mc8wZU7I5
         GyrRjkKf2AE/n8NApqIRK5yf5sUDv6SkkdUQk5Y1v3JAdo4/vUs0MpVkdQOaBEbrCvno
         9xwcYUmjMDtS3xRbrMK3s6cOK03cLKKW5aK+EpFFk/Ds5xsPLUCQc98cH9poXIQMrzz5
         BZFhHInzrACnCEhR68cMq5z8Jf8kDYV333FTnQUjigevbuBS3JARVdAfD2WSx+2AF+89
         Vid59EjqbCNvhYtEByIRuyLU9p/dim9hoQjOWRXYIjifXG19IKdXNvRHa4+t4k7QRloZ
         Apdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744018497; x=1744623297;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sY8de/adKxVx84s/9OXx6B8gB3VJnbWZllFUS1NDxPo=;
        b=UWzAL51cMbsFL7TOKhYA+A6do022EXkIcYA1rzLiCgB36tUGEGAEWND5A8YTIvCA6d
         KZM9TuWcaI5BHrBuPf6wqoH+boskbNqkvTHe4ejlAJ1911Y4jkDhAFpHAfVBbYPhJ5jB
         /LrHemcmOK+AdMepW7VjdGyKwastIT4iaqmmxZ9AAoSCs77GF5TO8s7rpfEAOrAVmLY6
         xyliGMDg4KImJDjcvR6dWTFfnQ7i9kx3iLZc5d1zmm+o5firTqj/LC/EPmY34y5wLu+7
         qzkogW7hZjcyFL8ABOtDSHfHMQ7Vr69OsZL05qZ8sAOB9RqPYz1XSl09HAKdHa5al7eT
         PsWg==
X-Forwarded-Encrypted: i=1; AJvYcCVzexqg8uH6gty6UV2pED6RzM/IrGV61ictstewrnEQwVdYbIxf22HMyV9XDkMlNhdyjnR2sK8s3uqX@vger.kernel.org
X-Gm-Message-State: AOJu0YxxWnbWiLkwqdpe3liN/2xZ8RUA131fI9N5WdiqZpikX75xMv9I
	hMhkkzGysioOX+HwvAp4opT/iIhIRhbzileo3H67ePk6O0EFEGjXWRRsVAwlmUg=
X-Gm-Gg: ASbGncsYSpIa3s6NVoTIXk4mTDhH48bNenyVgCa4u2AreELS7KE8MhTv8Pbo/3vfW4F
	UDGegfxiTNZ2z0d/Dnodfn8qR5oQH31c+6/+gIXjhA4y71yghFEtkKIB7hzr+pO+yK5JCKkqIcR
	Fel9DNxdn01DlyOTPdcwKiUni1WdEKWI52MGbRu1uRBzAp5OyQY2+fKdJ5CN4gdp9gXyKGY7Lxn
	Gv34FBs0Q0EHvxZHQu2vzsoJ+if/i6OdMRctAJkDYLT62qiP0yMMWk4/5NLT7NHCOagrvtEBUp0
	bPSit5HVMo15d8Vxo+yRI8kd+5d7ZehXfRh2IqctM1tIx/5y
X-Google-Smtp-Source: AGHT+IEK2ylsj8A3zv5KP41r85GTG06Mj0FN2K9Pnsar54qT+bII0+ur9gb54xnBI0cqR8Dv4CuOpw==
X-Received: by 2002:a05:6000:4282:b0:39a:c9b3:e1d7 with SMTP id ffacd0b85a97d-39cba93ca51mr9835262f8f.29.1744018497031;
        Mon, 07 Apr 2025 02:34:57 -0700 (PDT)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43eda4662a0sm85615765e9.36.2025.04.07.02.34.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Apr 2025 02:34:56 -0700 (PDT)
Message-ID: <305582d4a9c0fc8f34f997a697081409dd2df273.camel@linaro.org>
Subject: Re: [PATCH v3 27/32] rtc: s5m: add support for S2MPG10 RTC
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
Date: Mon, 07 Apr 2025 10:34:51 +0100
In-Reply-To: <5e91005a-28b0-4508-b576-5406f3e048e0@kernel.org>
References: <20250403-s2mpg10-v3-0-b542b3505e68@linaro.org>
	 <20250403-s2mpg10-v3-27-b542b3505e68@linaro.org>
	 <5e91005a-28b0-4508-b576-5406f3e048e0@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.2-1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Sun, 2025-04-06 at 20:33 +0200, Krzysztof Kozlowski wrote:
> You just sorted the MFD headers in other patch, but here you break the
> sorting.
>=20
> For me patches resorting the addresses (as a separate patch) is churn,
> but sure. If you do this however, it means you really believe that it is
> worth to sort them, so you must keep that standard for all your further
> patches in that series.

Definitely. Not sure how that happened :-(

>=20
> Rest is fine, so with this fixed:
>=20
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Thanks Krzysztof!

Cheers,
Andre'


