Return-Path: <devicetree+bounces-134397-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DCF349FD5E6
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 17:20:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 88C713A1164
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 16:20:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45DFD1F76AC;
	Fri, 27 Dec 2024 16:20:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pRMdJRDe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57CA21F76A3
	for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 16:20:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735316409; cv=none; b=StY1xqXwux6pk/Kc3vOZtcql1eZVFhCHc0uo5C+GopeTLy3HntEcP2g5SYRIbZfSJgOKu25jJCKpMRn5YWJy5g2G4SMuPss1VMGoZhTGiPAHUNibyFnAyAaed/Q0bUMXOkMu1wmGwZqsHBdsV6cvgI6rGIZOqwh1YsxzmO4pzX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735316409; c=relaxed/simple;
	bh=aVbJnWxc3HnzjcWyW35ORpkVisHz4yDO0pY2qTzfLWw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jTiHr0PSfXfJ1dk8c6f0nEDyyiRmGDtaAJHlVpkE8it7kwqHSO+zSrC0lRQTcglroHAIHIf6wed0JhW26DatyYy3gwy/Ugb1ENhkLvpQKR8ruBbjRsqphwP6cX5Mtp2Mxe5lk24c/uuwrjrYD+jmpwjKY2qImvWPwuWSQ4b5VEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pRMdJRDe; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-54021daa6cbso7674482e87.0
        for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 08:20:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735316405; x=1735921205; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aVbJnWxc3HnzjcWyW35ORpkVisHz4yDO0pY2qTzfLWw=;
        b=pRMdJRDeiIYyCba81QAq7KxfMPQaZ9HshLooIWu+UoymoMPTrdKgksqj11POOHOiZ/
         ZOjAyFMn4sLHUQ9iThJbxtV3wjBP7cPTFkWDBRUWHp0v9ZwIvYCdCb/ioI0phg0/Q/NE
         dsZhdGX3IBybf40YHxOs95iwvO4Umm/mI4BFkAUqFMvtlJ+9OHjjY26YJ9/xVVK6CycY
         JrWgwbBF3iadwD2NNWUE6ccmo7o/LDE1VDGyJTeP1IyE5FydbRq7BxsVt59f+IVjA0L1
         NeNTvUJKnl+yTDcxYtbmj5+KGQVaVMGiDi5WXbIiE9malqnPNtdAQTvoT4Pl8K0n/5PT
         XMqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735316405; x=1735921205;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aVbJnWxc3HnzjcWyW35ORpkVisHz4yDO0pY2qTzfLWw=;
        b=lC8kcRAID6iQybGF3TdHeXRUH6sfPe81WLK3h0xnYEAqSyKgjQeOb61CoB8SY5Dtvt
         9qjPybv5sHEJ487V8I+kqcf2Q31IbGAsVxHc82L0ts51Hjiq9cPxmvWtHkMcyh7CQxNa
         8Xn1CxLhLYuLiPRe6BL+GUb48weGlNsMKWyxHuCDbyIEfXJyabqX86VZk+Xyn64AV+yx
         e7c35gqskE5jN85HBgX6f1GuK/cg4W0QO6Xm8dcTfL0YwCgcQM8jb/W/kuDPQWjqpNsy
         M31Id7Jyjpk6j8SK8jyu2t4jBF3w9wd+4sbAYD74yvt/HBKK/2JPmrhwUFi8PQpstleZ
         iZ0w==
X-Forwarded-Encrypted: i=1; AJvYcCW7pi2IXnFPBS2storWNCXv6dT29AbLlPupI6TpccxLWosKNdKhBgHYbMhq475cIF1qS+hf7wRqWXbP@vger.kernel.org
X-Gm-Message-State: AOJu0YwGxfDQLjMMjkd/gMtXUL8RnwpT4AKZKg95LMhJNhIFAeCTyBpu
	Fw4AuW0Ot23bmWQwqQ7/q/N4hHLX0YI2y2gGo3fbqVEmBxD58LKfs46CS70m75+ncBFhghVM1Cz
	1/K6u8ZY6fkm2Ho9WrHpJXccEHVu9B7jpZG4q+g==
X-Gm-Gg: ASbGnct4rJ7af0ZUmZg8z4rxU1M1foEC1g24GxqXkOciESSF7wRrD1bcQ8ZLN7QrbEV
	OKlZFheYF/tTUg3uZtUifFsmvbgBwBu+DHTxi
X-Google-Smtp-Source: AGHT+IGzU50N1k0rPMwqZpnXSnDmhN5kfnjoTXOA295CNUdTOPpbZYikYnMIW1JDcYAohNmURREOlGqv+1OZ3EkcwG4=
X-Received: by 2002:a05:6512:2395:b0:540:17ac:b371 with SMTP id
 2adb3069b0e04-542295860a7mr8568562e87.56.1735316405411; Fri, 27 Dec 2024
 08:20:05 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241225-03-k1-gpio-v3-0-27bb7b441d62@gentoo.org> <20241225-03-k1-gpio-v3-1-27bb7b441d62@gentoo.org>
In-Reply-To: <20241225-03-k1-gpio-v3-1-27bb7b441d62@gentoo.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 27 Dec 2024 17:19:54 +0100
Message-ID: <CACRpkdbiaT8UwfJZNuVExdJY8g_K-akt9ftuLzsCDXamK4nK+A@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] dt-bindings: gpio: spacemit: add support for K1 SoC
To: Yixun Lan <dlan@gentoo.org>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Conor Dooley <conor@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Yangyu Chen <cyy@cyyself.name>, 
	Jisheng Zhang <jszhang@kernel.org>, Jesse Taube <mr.bossman075@gmail.com>, 
	Inochi Amaoto <inochiama@outlook.com>, Icenowy Zheng <uwu@icenowy.me>, 
	Meng Zhang <zhangmeng.kevin@linux.spacemit.com>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 25, 2024 at 1:33=E2=80=AFAM Yixun Lan <dlan@gentoo.org> wrote:

> The GPIO controller of K1 support basic functions as input/output,
> all pins can be used as interrupt which route to one IRQ line,
> trigger type can be select between rising edge, failing edge, or both.
> There are four GPIO banks, each consisting of 32 pins.
>
> Signed-off-by: Yixun Lan <dlan@gentoo.org>

Looks good to me:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

