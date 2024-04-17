Return-Path: <devicetree+bounces-60092-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DE578A824D
	for <lists+devicetree@lfdr.de>; Wed, 17 Apr 2024 13:46:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CEAC61C21811
	for <lists+devicetree@lfdr.de>; Wed, 17 Apr 2024 11:46:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F293613CABA;
	Wed, 17 Apr 2024 11:46:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mCpzGYZR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 769B213CA8B
	for <devicetree@vger.kernel.org>; Wed, 17 Apr 2024 11:46:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713354409; cv=none; b=W85cDlRfIS2+sJ/FgdP3uJUKw55OoH7Q2BfXTf9bXz25sIdKZSC6GUXJDjFXNTCc9I5fOr2afk5Vor72yL1octV67xwTHl4gSUorLa6c8JGsCBRGNkdLFMZ6YqLyc2zyuXKr7Olnkq8+gtRzgz1UITkRILyX76tb+D1xYv+0VkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713354409; c=relaxed/simple;
	bh=fvmf65/P9szpFK2qdaU9n3rF1YNMb7cvoUstdIgrV3o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=AV8E+/U80ru7GFX135jHmkwQi/SFoWTuaWrQeh8rWkKuiHuXKCdZCEK4Wn5TLV8SSRVglAJlSGpwKgpoTsuuC8z3d0zDTGQYsi0te3/ghcM09Px9ZJ6wEiM/AGXSDhtZfBobEAN+p8lRbESg9eocqHUn8x4PPQxHZ4IbRQnccvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mCpzGYZR; arc=none smtp.client-ip=209.85.128.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-6157c30fbc9so54177987b3.0
        for <devicetree@vger.kernel.org>; Wed, 17 Apr 2024 04:46:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713354407; x=1713959207; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fvmf65/P9szpFK2qdaU9n3rF1YNMb7cvoUstdIgrV3o=;
        b=mCpzGYZR/46ZQuAau0bSRhR0FD5k7fh4SSEz3Nq7zi0S4UDs+2+/mgG8hbZ2TOEfFa
         VnuEAxEfiUW5dW8ztwTzgs7fezgt4SmjroWhsc5KCg2ILZ7XrFDUkqJj/kWhLJR9n3cX
         OAaASPVPTX8pPR4V3iIxqTyRES8TonOBKKbj8Ia9JgBKr6Qo2O9mnQjtJiGDMZl/CoIE
         l5+oqhw1O3ZLVLkibs1r73NVAeJmC+6UJmoA72qmo1LGEIGNvEbMA71jIQSfnMCbN4Q7
         Knym4rLCB+h0yYobOKyFaTbBeAhFXbW32Fkuc43l3jarw91MdMvjaNsXaBDxbbL2vQLm
         KYNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713354407; x=1713959207;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fvmf65/P9szpFK2qdaU9n3rF1YNMb7cvoUstdIgrV3o=;
        b=LEcLp/sXJBXBnarjqoaVPONfoj6iv06mItdbpX4PHG0P1mPP+SxriJMkJLwdKi4I3G
         BL9TJ0TaXsCHhCiKDclGALcnwRcZ6MoLgEqGtgGwN93IpGseOv/zZVIciCNhMFtO8oJS
         dQhcS9Mqb/N5NO0Aj0z8ewzazfw/aplb/4S0Q9wrV8fD6TjPOhKklOYMl54VPceFOT2w
         py7j3MKphJVHV08I8ffpAr9zIjLaJnHbUM4Gjv0256wKAfCPAyJgxg60vsHA+AQhdw2+
         AYo76ckkX4MzQwSgXAB5Y/OoTLK/Z3wBUTk54tWMeA/wfagFFN+zVsEnr4z3SwU/ulZk
         oinQ==
X-Forwarded-Encrypted: i=1; AJvYcCXxalfgqiw1px7FhSzBfK5vMIYZqLYnU+f0TbZUkZxQHCFOWQJmDwTgwqX+t/j2+sIzoY0CxnEzj18jLHDgRQsTL40RrqoBjipzwg==
X-Gm-Message-State: AOJu0Ywn7kvOSxt4JXJ4x5oYPznyV99PCBSlFfCqDx9bQr0CdsV8YY6+
	Nk97nk+M3EwQ3A53NdUxdEtAo7P8nKuel+j75WIpUTwIsQIcj2UtnAqHSDha/Vw4NkWu5I4b9+z
	JOWuN9t4GsBc/JSwjwSmqOdg4EhwOU/QeKiWdLg==
X-Google-Smtp-Source: AGHT+IHaD+oBtxsxurR2xr7+C5Dc/H+UHa4V1Pxg4C+1i8P8lLpLApH2p8YLciARVFNYj0rwHnv7aiDYHF6DmqUMe9U=
X-Received: by 2002:a0d:cc4d:0:b0:61a:e856:85f1 with SMTP id
 o74-20020a0dcc4d000000b0061ae85685f1mr6294364ywd.13.1713354407196; Wed, 17
 Apr 2024 04:46:47 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240417-msm8660-mmcc-v1-1-efc9e455268c@herrie.org>
In-Reply-To: <20240417-msm8660-mmcc-v1-1-efc9e455268c@herrie.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 17 Apr 2024 13:46:36 +0200
Message-ID: <CACRpkdZYujAGZc04Zk0CdzMvFi9KJB+8z8ADN6+VBgahxxPwUg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: clock: Add qcom MSM8660 MMCC defines
To: Herman van Hazendonk <github.com@herrie.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 17, 2024 at 1:19=E2=80=AFPM Herman van Hazendonk
<github.com@herrie.org> wrote:

> From: Linus Walleij <linus.walleij@linaro.org>
>
> The compatible binding for the MSM8660 MMCC already exist
> but the enumerator defines are missing. Add them.
>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Herman van Hazendonk <github.com@herrie.org>

Same question as the other patch here:
do you have it working on real hardware?

I didn't submit it because I could never test it, and
for me something was missing (like SAW regulators,
interconnect or something like that).

Yours,
Linus Walleij

