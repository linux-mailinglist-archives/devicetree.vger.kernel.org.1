Return-Path: <devicetree+bounces-230293-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 97C9AC014A5
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 15:15:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 67EA018C8726
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 13:15:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88D2E314A8B;
	Thu, 23 Oct 2025 13:15:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="v/8+Ah+E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BF3F30AD04
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 13:15:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761225324; cv=none; b=tBnKR4EFg5C67cuFYMeOOoP+z7lLZO/Ow7eL4eUlhnIlmLVnqu7QndqBXOn3sZwAySVLqLQKl89spxCvhLL3lIrsohrFzUPGYLDJXSyotPbNfFu+MJjv0+C99h9ySF7Bx2Vl/y3Pxgfq9r75Derc2E80KLm8nojVi5qmCMkQn34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761225324; c=relaxed/simple;
	bh=z76NHbYS0l11eBUt7HKnQi+UP7NNGUE+0BdLSRPd0MQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JbHh73qnws3jXN1stukCibvCqs2qtQzbnB4lhplUbNLJ0zSIQYa6/vMlRetWeDWCABK80E2Z1tUAv+z5tgGtoaCuO4wQP7hvz7oU7+jDYz+jIFurHb9a2j8GxcX6coTQH3rI7hXx5+/aJFvNX6u1d6zCxpG3OFrqoy5Je0xnrMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=v/8+Ah+E; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-3737d09d123so11007541fa.2
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 06:15:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761225320; x=1761830120; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z76NHbYS0l11eBUt7HKnQi+UP7NNGUE+0BdLSRPd0MQ=;
        b=v/8+Ah+E94O993/x9K1KeDjV8MYEBky1QF2AsgHqGiukg1O6EShOphrzgIigfER504
         VFaiVGBJMDYSDNBnixNVCUDIRpGbzvy3uz+CmBMLj9HvMYg+R4wK0l5YRACz18wxq66i
         eHjWLMA9wqWhI64MNtWu89JOY+LZVy1ptiMHcc+1hIn6nQ2rfMso8t4bMmNxHQWWM6rB
         Dk+dBBypmHIr7G+c6sZrCEBYcPV6mIQ8Q7eEj47dsR2vD1H9QAwteAGmsosMqnH53WOg
         mH5zBgEKcKvBhhqwigHdpLk6bGrYEsokEEcqEjGEL3sHnTdJeGxyu9ocjstIgx5KIXJF
         CEJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761225320; x=1761830120;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=z76NHbYS0l11eBUt7HKnQi+UP7NNGUE+0BdLSRPd0MQ=;
        b=m+ZqyEhvSEdQWOhxodBmRCB8hvZ/eGcMG3fCk0b2aFLH64JZ+xrV2kaK8cgqwTCyw4
         RLZSiufgIThf90Nui+uh2kNP2gRztxRwtq/CLd6DIcyCN4E3vRbHY3LL0X4XNMUv9nGP
         j4raJw16c3OsTwFBb+s7LEWvxZ6IxhUHidBB/7db4IrePr42nxL/sxR6KhAde9m2P1yZ
         BIVv7HjCm3hzhqxq+SoSzEQz4IVw9pejBnRYEVhWWdZbnAaOzzCmzCiB5cqArPdWS3JY
         lNEv5pV9ziXPaFZ+aQxTQ5w0RZ7OFQkkwagDQEdhBOLlddiqqXzGMPgMIQwdmg5yqg8g
         /dsA==
X-Forwarded-Encrypted: i=1; AJvYcCVlA3fgxn5dJKrcGmtH+XHYqoLOSSn3v45yD8nL/+SAGN41xIu8l4L7orFHdRr+xfJARfkOuOi6e6En@vger.kernel.org
X-Gm-Message-State: AOJu0YwmsE+yHm7qaz3Ntifqn78rBjro012jvoql+YWhVV4n5sNbQZhN
	+ktD6iJB78TDE7aXSR1zz0pbXqf8rE9KB8WkSIESYtAiMiMIpCCufW42x5YY1GGxn03Q8/v+8SB
	+Y58ubeP+gY+iFDGOKvJd59nYS/scfTP7v9be+7hOIA==
X-Gm-Gg: ASbGnctO0+1W2M8EpDvG38g9PquZPndpCKsUI4JtrueuLexiMB23B6ZIdXXWkCxKEXk
	4SX5LXV8EbdjC+Ak2kN0F0I281Ahik7ysqi27S3peXHRCihsp4BiXLPLh0c4SEMx5K/4N+7SZz9
	VzkaAO7vuWCTKQ4Ytme8YuMlDgDlJntapCW+eKAF+KaMVEdNKxoZnPg7J6kVN9ZdHRTYVKRn210
	XBQen2ElH4dezu1NGMUErYdBCcnFbOMEc8DSLjoT5/B5vYnwQoDetbl8ei2T/QXwtvidAygTeoe
	Ma+5Xw==
X-Google-Smtp-Source: AGHT+IG/ZAd7RUnoCK6/TWMMjPJ1VQjmx8Caf3SATBmY9x3/PxhBlmEnwJGz57NSvFmOq7fh2pz0uSBe0AV0o43DOpw=
X-Received: by 2002:a2e:a906:0:b0:378:d424:d3d0 with SMTP id
 38308e7fff4ca-378d424e478mr9052641fa.8.1761225320551; Thu, 23 Oct 2025
 06:15:20 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251022133425.61988-3-krzysztof.kozlowski@linaro.org> <20251022133425.61988-4-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20251022133425.61988-4-krzysztof.kozlowski@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 23 Oct 2025 15:15:09 +0200
X-Gm-Features: AS18NWB6N45TxgNnccz0wGQlLC0_F0Qi57GxnfcGIPV2g0I0ThiCPIszr8ydkDg
Message-ID: <CACRpkdZ8rcWy9SvNuh+wq0Yz+byYMPkK6ZMkqjd8YW3SKKBzug@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: pinctrl: toshiba,visconti: Drop
 redundant functions type
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, 
	Nobuhiro Iwamatsu <nobuhiro.iwamatsu.x90@mail.toshiba>, 
	Punit Agrawal <punit1.agrawal@toshiba.co.jp>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 22, 2025 at 3:34=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:

> Referenced pinmux-node.yaml schema already defines type for "functions"
> so $ref is redundant.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Patch applied for next.

Yours,
Linus Walleij

