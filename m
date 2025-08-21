Return-Path: <devicetree+bounces-207717-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6769AB308F9
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 00:18:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3A4491892E6B
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 22:18:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B46862D3ECD;
	Thu, 21 Aug 2025 22:18:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ddlvl2vF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCE132C0275
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 22:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755814698; cv=none; b=V3rKdhPM/43oUtUuh49lP9CvlUOStHy4VXvCKWqLEf2wK4+YyZreKRNcxlXntEYSOU/4ZgpDNdEZ0nkbDKHXZViI6IkiRMKFTBR7HAzex91Qs2lKLpnvHgpG/USiFAfdL+WGPTGbtaTTm6H9W+IRZWCYDPIE3ION8KOc9DLFXyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755814698; c=relaxed/simple;
	bh=hJvLmDOHRH8htVDkh8Zi3UnZ6HEw3OYx2eFdQyAdZEU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=k1B4ZiusDU4XdIGltQKLDxGLJV9x/NACHIe6bWFy22IE6TaFGSQdIGW9Bll7MRcOPelw6CLCrD1U6kzxFYTLKGmBUnLAYOP27ssNuaM6j7cx6q6WdR2GYZ3wlOV54vOw8hlF1q5rNZcjhintMNOaAvfVRNFVP3nKpjRCF1BydVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ddlvl2vF; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-333f8d24c6fso11458851fa.0
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 15:18:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755814695; x=1756419495; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hJvLmDOHRH8htVDkh8Zi3UnZ6HEw3OYx2eFdQyAdZEU=;
        b=ddlvl2vFfSC7cPidCuNjxai5SVOm9E493/urLmHQ8fZL9CMGMmebB+BSNOqXJ0ztVz
         FBnYt4bEkbD8XHQ75DrNuzdo/kraEIRrGBDQALiRnyMBEg56U58tKwOLhS6dr8zbpxEd
         dIE4h9gTiW1mMgoWKqPGHfBl8AQ1epzvNXPRuaqN9dY3KlpFMnzcsEkwb2yyZWeAkp05
         rS2hw8GKg6qkvO6vi/zs9/Jh57ViYDhH3+yUsjnfHNGarUlGf1rPPH8eCwIhK9Nkl6gf
         2XYNfFJlqNLo8cBQH7LKc1+ylEWmuX7dPAC7hKk4xyVkMgO659B00Rrw4CPVjxaUYQBZ
         YgEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755814695; x=1756419495;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hJvLmDOHRH8htVDkh8Zi3UnZ6HEw3OYx2eFdQyAdZEU=;
        b=aztl9E4S9ifvEs2KrZ0MqBusqY9PKyi9Brmm6EK8nShqTUf5+j1aHYurfhE+niUoiz
         VdOmFvxaa/Q/OU2k00LvRKwze2lggnL9tt0Hs6qn0eme20UDpzPhmWmjMSqd/i+3c7S9
         0zpF0Htw9zAKZuUKICDk2wAyWVIkoRVNYaR/TKZHQ6MYqCX3ejVRjo0Lb9A2nyPfZqwc
         QAyNZjz/WtDk5jMGVdlCLX+F/JTv5644i20EU2WJPyisXDuRNYWCsiYj7ZPaXNfWU4CP
         +guDkIpUJ7tyPjUSrhbouhtv7/p2K+ljGFJPySSNrOlbQ6ysUPI3+3DfMvFOguG96507
         5yuw==
X-Forwarded-Encrypted: i=1; AJvYcCWk8R3Y+QoKKzCkFmQB0z6qvL+idtSjgVxBGdM+S2nJt+QFrV8gVoa7/CglBBwQlbsdZhgUnYgFrYY8@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6msB8aiZHhcpjh4oHqxgXJajWigiwPCLKZ7vU1jpZNbAnCp7J
	xF+oZAZlwr/EDxGdzgyVHl0Cs70R/4ycqPFKZAQ10RDI1J/rXhgn8u3IkKMfhxatoWTXVEZPpCI
	vd5oWxVlay9CqXz1k72xCgjY/5XzwXVfYUvARaQkhJQ==
X-Gm-Gg: ASbGnctO47SU8d17kZxYVO0KSntKlsS7oxNjuGKJE9seiV6E9+dGheqiLGcjoJxRtge
	chN8dc2nkatWwP0fb5n1Lu4wKplGQ0jJ/mB+Pi/gje/W/6XrbZhto1MZ3KTbilXDjrx28fNvyOT
	ATPZKrcHgwDi0QkOSXNB0RhjRGVn78ToKmvdaxKaS/u027408EXx6NQ8K0gmiUlrK+eB+fgNnSZ
	vkAH4I=
X-Google-Smtp-Source: AGHT+IFrY2hS5SsxaMer/fv4j+sLFV7Lrat9cyli9ISfVkjiqJsId841iqyuhRGNs237tnPBVWSS/MeqLwPZ7xMQfUE=
X-Received: by 2002:a2e:be2b:0:b0:333:b1c4:4d8e with SMTP id
 38308e7fff4ca-33650f9e9c7mr1818881fa.35.1755814694915; Thu, 21 Aug 2025
 15:18:14 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250821215703.869628-1-robh@kernel.org>
In-Reply-To: <20250821215703.869628-1-robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 22 Aug 2025 00:18:04 +0200
X-Gm-Features: Ac12FXxrs--F6z9RMfNLzTHaN2eK8D_83wEqiGwNidiDTMP6YOpUfEK7YMZn4RM
Message-ID: <CACRpkdZMJ-wY-jtonjJaNufGG3L_OhA4_CeWqfODto-TAHhEVQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: rtc: Fix Xicor X1205 vendor prefix
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-rtc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 21, 2025 at 11:57=E2=80=AFPM Rob Herring (Arm) <robh@kernel.org=
> wrote:

> The vendor for the Xircom X1205 RTC is not Xircom, but Xicor which was
> acquired by Intersil.
>
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

Aw shoot. My misspelling.
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

