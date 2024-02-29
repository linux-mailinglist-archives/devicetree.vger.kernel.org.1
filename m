Return-Path: <devicetree+bounces-47149-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B0F486C506
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 10:26:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F269F1F26E67
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 09:26:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C37E05D479;
	Thu, 29 Feb 2024 09:26:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DfImtXbe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E6DB5D478
	for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 09:26:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709198768; cv=none; b=CDGsZZaxgjKpNnxzPaskh52sjOEdCGs0hhLGdchkByIhwd2GULLFeyP1NAGI9/ob6EH8B43s+KDOPYGHkgRVcjXzEgWCAhOCYizUW/foAvdlrHOaDa9XAicEvLBs5RCXE2ohRQmFYeXkQeMW/kZAmfldUJg6yiHyHZS/GRcuEXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709198768; c=relaxed/simple;
	bh=8MZbBs4jE+57EMr4y95A6bSc30KOWei1Khdgx+Acw3I=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=oczRa/resnGt5yLn7KA/BAZB+x4dkQBRYUt+k9QAy6odIqupOpnDYrsWy397/KlzlaiSBGNaQECBpOeKdO8tdZoKmdBTyZpnhXW5hgSbRxzQ5jW69jJMJTgTT5Pk3JOJDsj7oTdMFtak8n7WqHjGESR8vU4rRxD3X47McTn0t08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DfImtXbe; arc=none smtp.client-ip=209.85.219.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f172.google.com with SMTP id 3f1490d57ef6-dcc6fc978ddso570607276.0
        for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 01:26:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709198766; x=1709803566; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8MZbBs4jE+57EMr4y95A6bSc30KOWei1Khdgx+Acw3I=;
        b=DfImtXbeG8aLSKhsnf6zIAZsbz9kcjqF78jB3Dq5rHAN7BxyQEOY2I7ebENgIp4jxW
         NznoOorsIxo1U4mtfLLauNZkTlOlcbBVTejJ1uGpHKFLqfc0f5gSkWvfmU6U9Q/MQw5E
         GHA6TJu2mzzaAhT0kE9DvMMS4eprIjZsw9NZ2DvYqfyRG913tgVjW7JWbY2h7/FtMqaq
         TpxbgKLn2tRWeC+cKpe+lpfJQ9bFpxo98Z5gG432aXbjAMxEY6vTBjY5K31dqvsuoQT/
         LLflNJmInbBWyyA1PobVEpFBku6Tv0A5ic2Z6hLiviRqjx2iTV/wDJ5/e6TwXWdelgiY
         tafA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709198766; x=1709803566;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8MZbBs4jE+57EMr4y95A6bSc30KOWei1Khdgx+Acw3I=;
        b=OtXhnB53wzt4upZTzruKXyLrTlxwACZPzO7XA1PwBSYkxn7+b0GAFse+6Mm0Dge9u2
         i3KaaG/PEw4dACs+yL3KqhQJ8SsUfg7I6pMBgWxAevwad56mEmXcM56kWQcaDQVETu2n
         i+kGXCpISHv+Ch1MHvffru8JXGrgCN/wGZLumnFMfrbANlUwxRLoMt7KFO8nrvRuZIu9
         swvDdZmcCI4UBepJeFWOX4sx+iK4D+V1sQwvhuif3io/wgWHMYdS+ieooMKqnoiXy24b
         pj9h5dK6LqD9vq6dBHeNVALZcbuUiPmANcdZbyKYOp0NGOS44G4aS/iWqwayAPThiPYd
         qyRg==
X-Forwarded-Encrypted: i=1; AJvYcCW7kG0+s17fp1N11H6r2wfULiTO80WB1jjBu7qObWeeWrMFXrb7CljII2B2vbvgA3gWBb4TujbOykrxsuKSsWe1Ohq9I7yeCQkjNg==
X-Gm-Message-State: AOJu0YxV5X1iIcq9K17e1znPM8WQ9u3GZ/BRCFZXIJIy4aFh+Q7fKkk4
	74dTAv+fyUxCfDTfNQ1h9A10iAUMvciPaELXROqfiJyAJ9GM0e3Ih2vyvxYi6UIfRUFbVoJvIqI
	/oWFE7rM5CRs6LHFLZHFgEDhKqjBxUEwy2ml6TQ==
X-Google-Smtp-Source: AGHT+IHTx/xUl5oT0k5/xaDHbETWnmicOkEUMu8vmJjZGcXFC7Lcsxgp+fiN/ORKwxrzMGSAjerenpWqUuDCx2Q9mtk=
X-Received: by 2002:a25:8308:0:b0:dc2:2d55:4179 with SMTP id
 s8-20020a258308000000b00dc22d554179mr846839ybk.17.1709198766119; Thu, 29 Feb
 2024 01:26:06 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240228-mbly-gpio-v2-0-3ba757474006@bootlin.com> <20240228-mbly-gpio-v2-9-3ba757474006@bootlin.com>
In-Reply-To: <20240228-mbly-gpio-v2-9-3ba757474006@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 29 Feb 2024 10:25:55 +0100
Message-ID: <CACRpkdbpQ83L4VM3FaT+kMXn60bQ+74B5oZ2PkDb-tk9xrPHkQ@mail.gmail.com>
Subject: Re: [PATCH v2 09/30] pinctrl: nomadik: fix build warning (-Wpointer-to-int-cast)
To: =?UTF-8?B?VGjDqW8gTGVicnVu?= <theo.lebrun@bootlin.com>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mips@vger.kernel.org, Gregory CLEMENT <gregory.clement@bootlin.com>, 
	Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Tawfik Bayouk <tawfik.bayouk@mobileye.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 28, 2024 at 12:28=E2=80=AFPM Th=C3=A9o Lebrun <theo.lebrun@boot=
lin.com> wrote:

> Fix compiler warning found in the pinctrl-nomadik platform driver. GCC
> message is as such:
>
> drivers/pinctrl/nomadik/pinctrl-nomadik.c:1169:12: warning: cast from
> pointer to integer of different size [-Wpointer-to-int-cast]
>
> Signed-off-by: Th=C3=A9o Lebrun <theo.lebrun@bootlin.com>

Patch applied!

Yours,
Linus Walleij

