Return-Path: <devicetree+bounces-151071-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 914F2A44560
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 17:05:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 70FE716A212
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 16:04:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26A731885A1;
	Tue, 25 Feb 2025 16:04:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bTufpLNi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 605CF188591
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 16:04:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740499477; cv=none; b=qnaQe0/kNUPMzLv/dP6aNsSY7vPWAdHQ9ItLdMJrBI11SlEC3OZ1ZJ05/t/5VD4QiPHxpKAI+PEe3k2h9awOITQuBns1nVJlagwAc1DIUUz9wCzeiU/FE8HUUto04OfVEUcFCUjm6hLW+Tl9pDGjEuL9/2iPD/fo7ruEW4qvuVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740499477; c=relaxed/simple;
	bh=S/rgH/M1iUBKHpKR73DrjoPuwhXP790ErvaX1sQ/4T8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QCHgwOqjYzsPgRSTuG3Bv0Lwr/lxHdARDh8DY3hrcfXub2FQPwP4NN8qekoKLyYYqU9zqP5vNxg9LI2ZnMpyYA+6GLbBViO1mWlq2jwIwrVR7I7Bl4qsiFvZUWVJetVh19LawWzYn2bgOl+lbvvccIcqRQJWeErPVrCfdtyQKBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bTufpLNi; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-30a2d4b61e4so42333031fa.1
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 08:04:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740499473; x=1741104273; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S/rgH/M1iUBKHpKR73DrjoPuwhXP790ErvaX1sQ/4T8=;
        b=bTufpLNitTOJrEVbrhZ+yFeJuO8uznCZ5ElDC9QKayRvSFtv3FbxxJjlwVqt+7XKd9
         /6ECCeG9LFGkOOeTbes0MtctpQamUeEhU/L1tFX/NLSPgBGwkwP6wEFbmmHZv4VhBLK+
         cLw4etEuKQx3+rZQhN07dniv8ZY1U2c52O0AZoWL8nxFBnsulGc2T9jxkOx4jvN7CUjy
         16iNXMQcmaGEliTjF1hxw9kuIx5NsRFlvvYbv25fMh/3Emu8ObdCnVXGSrW2XOH9aVmw
         kWMl4bReOKJjivGi70Yb3A//dmXKDJGFGK3RBCSnMvnpbDVdSjTCTDMSHmlXI3oGJao7
         8Png==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740499473; x=1741104273;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S/rgH/M1iUBKHpKR73DrjoPuwhXP790ErvaX1sQ/4T8=;
        b=manm/K/2GCnlp3LEMu8yOnMAdF5u74hvZ7vZP2HlYUTlOM8UNO8AKUuekrYNE5v6QX
         oZDZl6A5E6zzbIWRwIGFRYD4vU7q/qhub4PoJSlG8AKvOM71Vpm0DzO2IHWVov/HcD0o
         2w5b6qc+tG85vu8pazLXZpnBF9I1atJUTd0jw8ZksO16mOOo6fyegDvZKfi6W+53IYQw
         /Qn8oh+h6zbQ2kWosJKVZzVhL3UP8ljsdgAJbr+X4P0bVNw9eTHnfBdqtVH84oowSxg9
         gCMCRoXWrZgrpnmaoMwcZCGqlDkZEG6Zt2KFZ6zYzSQivC5fZkB6MyKXWP9EDNw9Bks/
         73CA==
X-Gm-Message-State: AOJu0YyMocp9nYxqCnM/Pm9OkvXmhAlhec89ih1Bf06EKtTJvaBPF70I
	sxJBbQIuzAupup/N6Uh6eKPrh1wOqiO7j29P1FEEeyEs6sE3ZsmgxVqO5PyAMlXVtmcBRf+mTGr
	o+e/mxjfNbp+POEuxY5culfKHmSaZiLMr+LdUcQ==
X-Gm-Gg: ASbGncsOOKL/By4+x8cFF9DuDX/MK61PHZBkpj3riBaY1wYLp71pydhKbuz4xVXM1PL
	wY/C+n9l62u7kRzCo51Q6UMy9VYzKSG8OTBvlh6IpFRMWhSSoDrE05WDUPvjcpC2MsjIwhnZ7k9
	8gSa3cgIE=
X-Google-Smtp-Source: AGHT+IF86ZQ2QJdD1PYLoHc/m9ZtOYqwr0UmqMcIQEFbtQ0FQsDcgEhCVOpxamexsFp+Vfr5eRxzkLGXB4FrbPdhpD4=
X-Received: by 2002:a2e:3504:0:b0:308:f479:569a with SMTP id
 38308e7fff4ca-30b792cb1bemr791481fa.29.1740499473413; Tue, 25 Feb 2025
 08:04:33 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250221180349.1413089-1-vincenzo.frascino@arm.com> <20250221180349.1413089-11-vincenzo.frascino@arm.com>
In-Reply-To: <20250221180349.1413089-11-vincenzo.frascino@arm.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 25 Feb 2025 17:04:22 +0100
X-Gm-Features: AWEUYZkiPGUqQKYojawtR4pOItmwYFS0sJRpfMeD4T6KUl4OYeOcmPtqW0dPiYo
Message-ID: <CACRpkdbg+SRziBUyFXR64H6P3w+ZU-Ngp5GdX77VUHwqYTRCYg@mail.gmail.com>
Subject: Re: [PATCH v7 10/10] MAINTAINERS: Add Vincenzo Frascino as Arm
 Morello Maintainer
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Liviu Dudau <liviu.dudau@arm.com>, Sudeep Holla <sudeep.holla@arm.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Russell King <linux@armlinux.org.uk>, 
	Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Jessica Clarke <jrtc27@jrtc27.com>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 21, 2025 at 7:04=E2=80=AFPM Vincenzo Frascino
<vincenzo.frascino@arm.com> wrote:

> Add Vincenzo Frascino <vincenzo.frascino@arm.com> as Arm Morello Software
> Development Platform Maintainer.
>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

