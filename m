Return-Path: <devicetree+bounces-210648-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 77EB1B3C4DD
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 00:31:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BC35317CD62
	for <lists+devicetree@lfdr.de>; Fri, 29 Aug 2025 22:31:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3633A2737F3;
	Fri, 29 Aug 2025 22:31:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YdIgCpPX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 948F41D61BB
	for <devicetree@vger.kernel.org>; Fri, 29 Aug 2025 22:31:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756506687; cv=none; b=PeI8UaeUtoXPSX2eF5ecKMf1f2RdE0k3xREoPpqGvvtKTvPt3UqzCLkvsmwytXUYjArieL6HwCUyGCHzaOmI6rCjQ2/iLbDyGZrB6ALyyMNMLWfQv3F7sHmqmBMvXjClBXvJPDqZF0yeZqHbWAB0tYgmUppSY1AjgHHwQ8u96/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756506687; c=relaxed/simple;
	bh=ABTnhbbS7L5HkpCGOSZTEM0Im5AWWxZ2DgMSTWPYRFc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=e/Kdx54gHDrfPbeiH4PO3qApoqPmVhbh9emktKcH2gyGx6ovQO1rnF0ENnWBBfledB1bzgnqtLXJMyvkLpBB0S6oWLAfua89Gu/r852oNyfw6YW6xnuFLuwKQhO4nTBSgJhx9yiEShPVsXGK+H+7eZUYvJ4ylhuVTSG7SkSUAug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YdIgCpPX; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-55f7039aa1eso105237e87.1
        for <devicetree@vger.kernel.org>; Fri, 29 Aug 2025 15:31:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756506683; x=1757111483; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ABTnhbbS7L5HkpCGOSZTEM0Im5AWWxZ2DgMSTWPYRFc=;
        b=YdIgCpPXRFsuA8bZTTf50yN23f5FqtX1UBg6HaM5KywgC4l2o3LlCpUjp6uDQNpkDJ
         iOyDjpVnh7ssSE08Hsu125AVnJO+74c0Yru20zIT2jVc9HnjXRZqqChzw41Qp6YTRaRi
         CtjysG7/JmN+QF7bVapac2z8VpRtU3+SNRyvDrBzGjNg+IP64Pukmbbfp5mAd4wZLUCt
         nDmqrV8mHRsGVGYOsd1Ra31KLfMw5/dTOtPESfvuXUgGmDOQzg5Qq/Jfke+E1WFl/TII
         c+MV98i9LTvo6bz84MLw90ZEVxEKlLZcUNR8q83Hk/RDP4qf+X8XTjM4edg+LN9TO+fB
         g5uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756506683; x=1757111483;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ABTnhbbS7L5HkpCGOSZTEM0Im5AWWxZ2DgMSTWPYRFc=;
        b=iPA/w/FNupHDVDlgkB+o8b9MrCwxuX6YX3UNyoD3rZM+f1KVFizZfMlXMeuLF7Poli
         48tNMT6QIPEmY6fEuYJiUnnlXhqVAGEgisFEkpHmpceqs/J1ix0BtZlV5qpg6tiunCjw
         CNyCM9pQV/z/GfPLw2vBrVAHhf2IOrgC7vGmXoD4zFIxeM0Kvl5qsnHilKmXQ88qjX+d
         Ow7ioVsmJLf3rcTTpw5Mo5JlGAGBG2Rfe0FOFUA5+VICccINOb0agk+Iw9XPAkolo9A7
         jYWGaRwsFWNuOsXANpC1QQX9O8vizShefYgy5CcbVa2v/oJDcj+s0+r9OCs0JFz3aoqF
         43UA==
X-Forwarded-Encrypted: i=1; AJvYcCXRwrGlrtrOvhTtvdcxWmZUuUGM/SH+OzYGxAFwGgjkHwpaZUPGheLUWAgurNj4mbKdWYShSQBnvZjp@vger.kernel.org
X-Gm-Message-State: AOJu0YzFLKxvfQ6OhIdFbgnG807Zqhq+X56rmQ5VWK1HFg7eSgtsi+X3
	i+6zbMmrEatSb/qElB+OVuyK9Fu5WSL4rHP++g1VpBuUcS7oT+bnAEAkZoFwERqtFuKnECwn3NN
	nUXg3Fp4kT+YlslDeHqusQVPx2qg5Yh6xwwIXRtTZjg==
X-Gm-Gg: ASbGncvmioOFSqp0/rKuv0NqfH7YmHZctZl1X9wW5xfyuI3EVzMu4r0LyGc+DBvtm/l
	WOEqMY9r3l81/3Vpcx7dwX9WPnccj/NIuB5jEHoIPPZ2QkeMm0vzT4FBXIiIDWBldc71g25auAs
	bUfesLGXoOcGcO8kikjDTg9HYr2zS/xKxEWsSKLefMOs9t9OeG2EEXORbLWBPE+yfW3Cye5v0oR
	ckbTaQ=
X-Google-Smtp-Source: AGHT+IGEsnYhsV7tsgFN84KPDIRoOPf0/B8DKbI7M0URReevQxuA0Bzr4lMQoYrnOIFpony13QSt3vd1Z/GbWsefU8c=
X-Received: by 2002:a05:6512:b06:b0:55f:34e8:b1a6 with SMTP id
 2adb3069b0e04-55f70a05aa1mr46987e87.57.1756506682752; Fri, 29 Aug 2025
 15:31:22 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250812203337.731648-1-robh@kernel.org>
In-Reply-To: <20250812203337.731648-1-robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 30 Aug 2025 00:31:11 +0200
X-Gm-Features: Ac12FXyB7pgkBvR7Aj25d5oehVpWxFIRJ4xjMg8x9Wn3iT-JlQETgMnYYiDN10o
Message-ID: <CACRpkdb9NKKeDT_b40aEHW7qZPsKA6omzw_OFp37zf9pF8dptw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: pinctrl: Convert brcm,bcm2835-gpio to DT schema
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, Ray Jui <rjui@broadcom.com>, 
	Scott Branden <sbranden@broadcom.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
	Florian Fainelli <f.fainelli@gmail.com>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 12, 2025 at 10:33=E2=80=AFPM Rob Herring (Arm) <robh@kernel.org=
> wrote:

> Convert the Broadcom BCM2835 GPIO (and pinmux) controller binding to DT
> schema format.
>
> The structure of the child nodes wasn't well defined. The schema is
> based on the .dts users. The legacy binding is a single level of child
> nodes while the standard binding is 2 levels of child nodes.
>
> The "all banks" interrupt is treated as optional following actual users.
>
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

Patch applied. Why didn't I do this to begin with, I think I was
confused by the gpio in the title and some stress :/

Yours,
Linus Walleij

