Return-Path: <devicetree+bounces-98623-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AAE0966C7F
	for <lists+devicetree@lfdr.de>; Sat, 31 Aug 2024 00:33:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7E0321C206A9
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 22:33:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC1091BD02E;
	Fri, 30 Aug 2024 22:32:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rfnKxrKB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0677C17B4E9
	for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 22:32:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725057159; cv=none; b=M6cgPg3gpLV0UV+HCxUpbK/Zqly/7J9uBVg4iYVAlCNKv81DhzggEWbZezqWtxhAmLJs/Sk7bolZPfxBBdB7AVcbb1bOGTPKiP5YwHn4E6071ZrR+vIBIwas6m2an9xaxV2ryVb5y6663mFh977392alUhqFhZrmIF1q6YH4Qxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725057159; c=relaxed/simple;
	bh=O4BVzo4/O12zJnAXRC6H/18YaBmS+B36iZcOSvO8Wdk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lhxDuU6eTTkY5UdOkzHP2GL5CKK9FJrKWNTmpePl5iPNecgEWBtGmg0jrBRNkP3KzSWYbvUKoJ7NZOOPm4rHMKfCtu6S3E4/VsPZ+lrKb5HKx94QENSTD8JUfPhL4ORtquVp60jhiA2szOKYaeUBzPcjewFiq1/uxYeDGd6euHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rfnKxrKB; arc=none smtp.client-ip=209.85.219.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f178.google.com with SMTP id 3f1490d57ef6-e03caab48a2so1944637276.1
        for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 15:32:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725057157; x=1725661957; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O4BVzo4/O12zJnAXRC6H/18YaBmS+B36iZcOSvO8Wdk=;
        b=rfnKxrKBpB4EIwpnGRFvzfFPFtF5qw8wflecgdm8PrJT1nGkeKPW7oUlm0ZYwuRv6x
         EOKC6ckH9SnxvLbdpfbZCz5LFr66UStvj+SOxHjDoCiCermKPZuhjuriuYPHewXfJnrc
         47fbbq4H91b97+tkaAfMqjMku2MtYf3cjq19FOJJbIMLGgVrN9o+DJfp+HsaHmR8w1lW
         ydt22Z1HbkdnKbfIKpu00UWcG0H8E2a+GHrVIvQKkVpuU7Kdh1PZ89324BGrGLiZRTYQ
         3N8H8trseMi8T+Y+NqSx0ZOkJHKfmjVKjr0S9QlHGR7yocCjP4xriPBLL6A86fQiLB18
         MWhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725057157; x=1725661957;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O4BVzo4/O12zJnAXRC6H/18YaBmS+B36iZcOSvO8Wdk=;
        b=CeHSETSUlSVWB0UJnIfoDpwxxDGt63O+JpgxV/K+Xf3zd/1je7QorU/amviTb3xuF0
         9zFJYpG99H0lIsCO0wRbIJ6JFuj9nhOZXrx9kkAGdJ03VJYJjy98JjyuDpDfvooKmtU+
         OQy0UO76kKDJ9x3WSf0MlNsRIMTcM5ve2Os+at8oeXwrEOsYHztPQUIrTe2IVtPChyAh
         FCdt7GVE5ENEe8YYlgXKKL7d9+lfC5KC72O9IsqKCNwtFu++vSf238dfRowA9kuYQ4nh
         6bKTAw+0xVXzEN9Xmz11B2C9cz7uFcCf+GhaaCS1PumBvy939t8yKsQnDazTgpk31g3x
         5auw==
X-Forwarded-Encrypted: i=1; AJvYcCX49Ru2+gSHTVw7OvBi/FuqsERdDQKTm/xgrT00V4EfyBUQJsHIjggWYQlRPk7OlgQtNk1adt8Lz3WV@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4pc+OXeoAdLuhriCbHAv/aVjO9ejYRwclAMZadNzKB3w0+wrz
	mc0Q4YrxAcxAWKUbcRp4Og9f3XuIYSQhPM6/zI9arawWASDqCdchj0xq7FGWyd619Cua3B5udB4
	YOiL9R3CHqfRpI/rBTHxnbn6iq8EYVnf1s4l/0Q==
X-Google-Smtp-Source: AGHT+IGY8O84DiR2Aaig1136Hn1BZ4NVKNmKGEF29tIOvuMMt+pTTKh5RAqmh/aYiy5yQpsPuZ+gYm0rdnzyEcUt/SA=
X-Received: by 2002:a25:8391:0:b0:e16:7070:97e6 with SMTP id
 3f1490d57ef6-e1a5c648a4fmr6700554276.9.1725057156927; Fri, 30 Aug 2024
 15:32:36 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240828-dt-bindings-gpio-hog-v1-0-63b83e47d804@linaro.org> <20240828-dt-bindings-gpio-hog-v1-2-63b83e47d804@linaro.org>
In-Reply-To: <20240828-dt-bindings-gpio-hog-v1-2-63b83e47d804@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 31 Aug 2024 00:32:25 +0200
Message-ID: <CACRpkdZzF5yJQnnDsjU8cTr9Fpe7wZZXoW3K-wFYuAq2vv8XxA@mail.gmail.com>
Subject: Re: [PATCH 2/3] dt-bindings: pinctrl: qcom: add missing type to GPIO hogs
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Emanuele Ghidoli <emanuele.ghidoli@toradex.com>, Bjorn Andersson <andersson@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Daire McNamara <daire.mcnamara@microchip.com>, 
	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Maxime Ripard <mripard@kernel.org>, Masahiro Yamada <yamada.masahiro@socionext.com>, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	Krzysztof Kozlowski <krzk@kernel.org>, Conor Dooley <conor.dooley@microchip.com>, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 28, 2024 at 11:36=E2=80=AFAM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:

> GPIO hog nodes should define type, otherwise "dummy-hog" boolean
> properties would be allowed.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

I suppose it's best of Bartosz applies this to the GPIO tree with
the rest of the series?

Yours,
Linus Walleij

