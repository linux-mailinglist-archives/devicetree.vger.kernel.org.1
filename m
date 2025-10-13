Return-Path: <devicetree+bounces-225966-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 132E2BD28CD
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 12:24:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 03C4A4EB8A3
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 10:24:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E2242FF141;
	Mon, 13 Oct 2025 10:24:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PnycrD9Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8240223D7D1
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 10:24:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760351091; cv=none; b=H7S4SRuqpNMfdvhtpi1fDKUh6vgk1oMWun+Zt6OPWwDiNgGZ1PQpfhFoAedQjQkbhXnrWz5niLcJ2DwmkOafYUS7198SISWHomi812DWO1kpHQ0a47hBM4eB8tuc84yHP5YZXBTUNaoG/iwjaV5weSCeKoC2cGxHScN4+QUW4zs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760351091; c=relaxed/simple;
	bh=+unRYycP97fv008huF8n6bo0ikkvJYI2Zc7wQSeA3nU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=iWN+FSHhUxG7vP+eBh8VNnmNbOgpoa4NqiS6iGNXpgyqyioFO1LDRt9/jkp7jjkR5Wj7YOtwQ8NsSjQRgQV8LFoszpn5AIirWgW3NKdh+vvdQqYGnOwGBT+MEgAxsjYSfk2NjDYXiV92S/QZHMaDQIWVLiZ0WvxbEtvG8JH8nIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PnycrD9Q; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-59093250aabso2500260e87.2
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 03:24:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760351088; x=1760955888; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+unRYycP97fv008huF8n6bo0ikkvJYI2Zc7wQSeA3nU=;
        b=PnycrD9Qad1YKFd8X1Fdi+B+dQb2/88AAJMxqSdOEyAn89o5Vkb6zBKx4rZK8+SYA7
         l2s5oHfjefOqLMnW41TWJdDaS8KtoTVXqwZUFsi0Ih+x6jXCizfsM3njjDTzrf8Hn4xm
         +zFcy+h2NDXA/DNnvMNVpkZqB3gp0511kfa3K/+iDC6UTCF35SoIscW5voCfrJXOsaW5
         UHhH3ttD2YsQPKHIkOJIRRvJ5V+QnZbK3GEE0VJhm9HtdGTqJ0uX5CMQ3rKMT/QCDT/f
         DhtdIIRbTgImcyvRWPvPL+StstNq3dbIOaFbxqe5/Bh7LsjGEklpQSG5n+ZuTJNTDMND
         vZKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760351088; x=1760955888;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+unRYycP97fv008huF8n6bo0ikkvJYI2Zc7wQSeA3nU=;
        b=G4ch1naR2yYuVMrzSdeQl0rPVCf44y9uv1jX2ecGdwu6HHcHkzslxJz59X8y5WKl9j
         5CRrhYGMXRHwE16k5jjBJu+fERTbK88HYvsm1K5qLWdQuCsalrbQOK3H9/kqWq4DclIM
         9057F2CzjZL/oYZu0olAfJKitOXAJPxpzmY5AX7lAN5NQLwCCnpmT3iN2Idmgd67ZvQE
         xBcs8EBQGP6sLY/vEWWozHfPUE7m/C1PHdxYpNPS6aoO/VtdN6yy0hTQNJm3yyqb+UV7
         a72excRRZRl2mrAAOYkpD8SuDFgZwViEr1oGAsfljdBOGKJE5sgWXEXZnJOHVf1TtB/6
         gV8Q==
X-Forwarded-Encrypted: i=1; AJvYcCXvlW2a5+P1D6XQJyNq8/C4/1p816XPo8FB1Bm2tjVZUtpW6RXPGpeIZ/T2zjrVdkh+zoWJs7WpgHL3@vger.kernel.org
X-Gm-Message-State: AOJu0Ywk8YiphVOm6mH5/QiPWajerJ0aFSyCEQfwbAD/zA7oA6mOx+xF
	R9rfxyfZDAOSpsotkj0i760tohE0cN4CM7zBZfyRfS41W2ls2BZY10CF5c7NiV8Bbi59yhUBeak
	AEJLDeOGQoffqqblMB35NtOVR6D9YQ6rlRmoAgyvx2w==
X-Gm-Gg: ASbGnct65LrKGe9Zv10zP++6ITwTundWiV+e79EeD6Uh5tSqFIUqm2DUZ0A6KDQW2WI
	kvvdAWxh+mgz05Kev8QbPFNRa8UD+nrMnDRIEQFha20zjgKtUgM9h/d5sgr3LU5laJnhZPIC1DV
	K4uzfbIoIuioaA6RuYur6/zVaJLxLwIe1I1UnVbvIcq0fn30IRElhosgmZGDD0Bq2tfvWogbqBl
	Un5I7phbrWQcjdfP7IHsXatK/jn4A==
X-Google-Smtp-Source: AGHT+IGvGHloV1limtQ0fx79bfGJXQow2XXzmDst8EglcpB9EbNJ8pFYHIXf92/sCJscA5Ld0pw8fuj+myOX2Y7yQHE=
X-Received: by 2002:a05:651c:1ca:b0:36b:8361:15c7 with SMTP id
 38308e7fff4ca-37609ee797dmr50886881fa.42.1760351087667; Mon, 13 Oct 2025
 03:24:47 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250925221927.2610760-1-robh@kernel.org>
In-Reply-To: <20250925221927.2610760-1-robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 13 Oct 2025 12:24:36 +0200
X-Gm-Features: AS18NWDB8GoBtqV-UtGzBfY0pqqIxdxK6aWLKDGgXTJxVPFOQb277q1e2UR2gHY
Message-ID: <CACRpkdZH_Q18CHnT9rjhOGUx53L3pKrP6BrPkB0hSV7JB1N44g@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: pinctrl: Convert marvell,armada-3710-(sb|nb)-pinctrl
 to DT schema
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>, 
	Gregory CLEMENT <gregory.clement@bootlin.com>, =?UTF-8?B?TWFyZWsgQmVow7pu?= <kabel@kernel.org>, 
	Miquel Raynal <miquel.raynal@bootlin.com>, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 26, 2025 at 12:19=E2=80=AFAM Rob Herring (Arm) <robh@kernel.org=
> wrote:

> Convert the marvell,armada3710-(sb|nb)-pinctrl binding to DT schema
> format. The binding includes the "marvell,armada-3700-xtal-clock"
> subnode which is simple enough to include here.
>
> Mark interrupt-controller/#interrupt-cells as required as the users have
> them and the h/w is either capable of interrupts or not.
>
> As this syscon has 2 register ranges, syscon-common.yaml needs to be
> updated to drop the restriction of 1 register entry.
>
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

Patch applied!

Yours,
Linus Walleij

