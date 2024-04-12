Return-Path: <devicetree+bounces-58619-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DC628A2959
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 10:30:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AC6781C2115E
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 08:30:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E63C50246;
	Fri, 12 Apr 2024 08:29:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="o7WRa6jJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AE0F502BD
	for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 08:29:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712910598; cv=none; b=musZ3Tg3PYYPWRQinnCHn12+kvKVq7tdp4a2q3uokCMRHh16XQIEt1Tw535N67soQop4b1WEwHEBKOsGE8JQ1FGXSvHLQLBqm7A2tkF/LVqgIMBV9ogvbEffzj3ZDopYw77zdj+v9ogJqd9Cs3ZV5FEXAI9ZWwayGsxQ47Mq0es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712910598; c=relaxed/simple;
	bh=BfeZ4IL+0uJkrnFhXyulwMZH9YOcEsG7N4UPSxQwrXw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VQVNSO5+3BR08TWhieR82GeNcNI8GO5DFn297kF50xVkf99cjr2S1eDkzaa14ht//CHzMpLUMQFLLJRQ9i7mJfYSwphxmYUvRLqFwizEYfsWvo3nnjtFOQx2vUgwW3b7F/zONEXUdUCj9Wek/Za+jUIIFFR095UfBeypbNh86Wo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=o7WRa6jJ; arc=none smtp.client-ip=209.85.219.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f182.google.com with SMTP id 3f1490d57ef6-dde0b30ebe2so641456276.0
        for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 01:29:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712910594; x=1713515394; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BfeZ4IL+0uJkrnFhXyulwMZH9YOcEsG7N4UPSxQwrXw=;
        b=o7WRa6jJQjOSiSk+LM1LMe0eCEDv7pAxXn+9tRG+OHle1hjRfBQS5s4F9tkEkGlWtT
         f7n3wIJFjkHAHvZwljozZ0uKtwjuUKi0eaYYJDDemqW9FU+mGFRDmjLvyesUEIAt3tja
         lnf51I6sIlylsYJ3Ou/TPakkR8Gu9dQTcGrT/289MGzM+MGDyfAhvrwZk6tzeGHEfdn6
         m7aJ/3QPgOvSvdYopJkVKasAeYQ1rSzpt82omMLk48Mszc0FlJQkvsAhL9eKdq9Bu4ko
         MDKGhGFCZuXU0zDg2b3hNghLYlSjkxzb3uvPX6ThfTnh2diP9VhfEMM7p090E0VrH/2W
         17Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712910594; x=1713515394;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BfeZ4IL+0uJkrnFhXyulwMZH9YOcEsG7N4UPSxQwrXw=;
        b=QNgN8E0VjTlMT/WNhLQQQ5duniR307lY9XGN+yRLshkn7drEQOrKY4+Uhgv2C2uGUV
         O8bW8hh4Baojb6OKka7utSArwdN+5u0iadzwJBespjffjPL3qXuklngzZts/dFtJMsb6
         ixS2YEyjuOyRy/A0X7VcP0/ryyDaEQz+MrvxZJY2gHgGTqLEYWO4CXPFWxksXVE7rElv
         33UxTWk6syu0RWIRV2prRP73kAzBSwXAIlSQ5OEi2qzZgk1BCfyS7QFH1txcV37bt33d
         8mTEy3Zj68itiFbPh01Nt5YLyWpvIR3AzVfnWVgxEsJwhaMENCCoA9P607pjEyMfyRkk
         6OyA==
X-Forwarded-Encrypted: i=1; AJvYcCWXjuHgQI4FRqbG7HHRMlEwNT2ztHHC3zsanosc67HxnDnhkHZzu9lHGfD7c+ext0kP1K3r+mpj9XPbzwy8GLoPdoRhNDfoK8EkZQ==
X-Gm-Message-State: AOJu0YxpfG7xVCwHGQIOzEJuqGXr0BnfhgFbVkMt03+XiH/Yn3sgJm47
	sdhXNui19ZhReS2UK36ujA1Kp0GqNZhTQSHfyt6IEM/xaBAwxydcX/y2CrfM9LM7YyTDY96uT7R
	yOOzK6T7GKDo5HejKYMzwV1iiMNVu00xt9D6aiQ==
X-Google-Smtp-Source: AGHT+IFFCDn8Tj8KbGC7ulaXoT+mmD8v5dmvH9Q8fuetYWLwrEUEyf1O0q+ueZp7Pg5qNbx8uhruJtp5xKm1GgD2U80=
X-Received: by 2002:a25:29c6:0:b0:dcf:3aa6:7334 with SMTP id
 p189-20020a2529c6000000b00dcf3aa67334mr1854728ybp.7.1712910594707; Fri, 12
 Apr 2024 01:29:54 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240409-qcom-pmic-gpio-hog-v2-0-5ff812d2baed@z3ntu.xyz> <20240409-qcom-pmic-gpio-hog-v2-1-5ff812d2baed@z3ntu.xyz>
In-Reply-To: <20240409-qcom-pmic-gpio-hog-v2-1-5ff812d2baed@z3ntu.xyz>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 12 Apr 2024 10:29:43 +0200
Message-ID: <CACRpkdbRxhKYNHgssFZ0Pf5_0_Gt7+Ga0OhWdhxG5eKCrZ7Wkw@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: pinctrl: qcom,pmic-gpio: Allow
 gpio-hog nodes
To: Luca Weiss <luca@z3ntu.xyz>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
	Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 9, 2024 at 8:36=E2=80=AFPM Luca Weiss <luca@z3ntu.xyz> wrote:

> Allow specifying a GPIO hog, as already used on
> qcom-msm8974-lge-nexus5-hammerhead.dts.
>
> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>

This patch applied to the pinctrl tree!

Yours,
Linus Walleij

