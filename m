Return-Path: <devicetree+bounces-214381-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C31C7B48EAC
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 15:07:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4F7641888D35
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 13:07:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40D8D30B500;
	Mon,  8 Sep 2025 13:05:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wWAKFTfs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28173305941
	for <devicetree@vger.kernel.org>; Mon,  8 Sep 2025 13:05:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757336752; cv=none; b=ujtR8yEuqOgHzzAntRD6ho1H60rsGWBaQO8M8v+GcOvPBA85ePkgPLoh1yUVa+VLvtiLnNpjBk644qiME1mmbIJarHFwsXhQgnDEtG3/wupiFxB4Z/mKU7JxAMTTiAG2lbNxz0uIxbD+9+Cyawc0ESacB407Knsgd+Dc7Qri5V4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757336752; c=relaxed/simple;
	bh=LYN91bQqUrNYUhmQdW71bD3/SM1otCIFFxtgi6WtlVc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=uZSo8jyM6u0BcnSyjHIptN7JjvCxdU2/xvwsf5tJMW8L0UgafmN0ZPEZdIJMOyTIUepYAURLG0ZY64xbYnG7WE0plCbmci81AvVeqqs23nBw1Ohp+D3pymue3CV3YKjZKdf43qN2W5WSw3hVvm5wONmlNGwI+eRcJoF0+DqiSCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wWAKFTfs; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-55f7cd8ec2cso5520659e87.2
        for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 06:05:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757336746; x=1757941546; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LYN91bQqUrNYUhmQdW71bD3/SM1otCIFFxtgi6WtlVc=;
        b=wWAKFTfsK1JlnBBVH6qjsuFVaE+Mtpm4d79TTwBjvveQEuxWzd5fwUCWUE4DHHvA83
         5BV5+CmZERW1sgjSZfjm7A1JKEtmyBvPXWv2c868IBpGiZR5XbZT69ln04lkOghoH8Gq
         sJz1f4Dlb2ZTd5Kj+O93G0ug6nXvwwW6Io/jjRKFHOQfQtAoBnMdQX4YpmKQ7PAFdGCD
         2VtD8QSDpbny/yu3CVH/owmHV9KHyeDhTU1FkJnDIHY7/rXPSBi109DMeJuudp7kUDAY
         RlClapLN9wUQnpiE895qF+whFGZGOuyDJX0uqID6hiS82Zp1QduIj/5L1OHLxdhz29bv
         248g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757336746; x=1757941546;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LYN91bQqUrNYUhmQdW71bD3/SM1otCIFFxtgi6WtlVc=;
        b=k7bxINTsg5cEW3dGt8jKOi5YcrpchFLXWSwDkK9B9vlRr4/hVZ4iFI3kwkP82ECiAC
         sQavXt1P/U0U6oQXoFmcb/1VrA5lw46T/g8aWo5yCUHORehh+PtshdjspHcOjE76ngcc
         jFaVgA+RQFQ6VYZteyhm+zEpjEyVOHNsC/47QHG72HnzCStc+pVcd8rxDMF01/jHrIo5
         F22ItQEiOqpMlY5PLAdN8yoF3971NAVty3ljWz6vLdsCH1qoEI6ZRp+LFCjwaMn0HEoS
         yWsZ9Fz7cySC1dbmLlGu+tB8awYnZRwXMVbaSFX2n0RgTBbYv5k2ZGlLZQ4Q/p3Rg6G+
         X3Ag==
X-Forwarded-Encrypted: i=1; AJvYcCXNeavmgvrgihEQPcM+3wW5Si91d0iXjsPIbpvHbh1AVg7G80lHYP8eBR6cF2+2+3aMjyxI+ubxuBAU@vger.kernel.org
X-Gm-Message-State: AOJu0YzyOSiE6+mE9c8MKFpYmJGvLWCmsT/gszvEUg7Wtdu+Lk8IrlaR
	1qDktq4Sk4NLeSmxlzNUKV7GjdEY85Ii393tX7Y3KNo52i22ZQ61mkMInGxdGijd5ySBFcGt12L
	pmSPexupb7MIcXKSIF4/F2jBjRDETAPQjaDh80mlfcQ==
X-Gm-Gg: ASbGnctRn0ZrA/vsUc5sTRBWMU/vk2Ey1rFZ+PbSOdSEQNHgM9PJj0JukmTWcWRRpTV
	ly1z0A0FhlVjC0JPdHGWKEy0qrlj0mGGrhYgeq6IZVgBEf/AS+VckU5I3bMiy6mMIfsXi48W5f/
	jKT3e7iJ58wSonb9wo2OB3hLZLksECKh8GTjlb+XahJNdsjQjVZrOsQ3r4DzTxlcJ7skQB3sSTm
	Af0nm3UIKbqR4RbUA==
X-Google-Smtp-Source: AGHT+IFlTN8OpHYsGHM62R0OPEAwkGGAxDlHW1WL1Lov0st1tkOFwInpDmo4NNdZazteQFyHlXy5vp/W4pyIsH/Vy4c=
X-Received: by 2002:a05:6512:33cf:b0:561:96e7:1048 with SMTP id
 2adb3069b0e04-56260e42bd8mr2388356e87.31.1757336746015; Mon, 08 Sep 2025
 06:05:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250908-sdm660-lpass-lpi-v6-0-e0a2e2ffff3a@mainlining.org>
In-Reply-To: <20250908-sdm660-lpass-lpi-v6-0-e0a2e2ffff3a@mainlining.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 8 Sep 2025 15:05:34 +0200
X-Gm-Features: Ac12FXyXUXNncuUUxovWiCD-JsAXl6Mwe1cAZlACtOqaRJ3LpgqrnQJl9Rw6oPc
Message-ID: <CACRpkdY4Wahd88d281Gxc+oGdHtpiZWRFUhd3W3w98v4qnj8uA@mail.gmail.com>
Subject: Re: [PATCH v6 0/3] Add SDM660 LPASS LPI TLMM
To: Nickolay Goppen <setotau@mainlining.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
	linux@mainlining.org, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Richard Acayan <mailingradian@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 8, 2025 at 2:30=E2=80=AFPM Nickolay Goppen <setotau@mainlining.=
org> wrote:

> This patch series adds SDM660 LPASS LPI TLMM pinctrl driver and
> introduces pin_offset field for LPI pinctrl drivers to support
> SDM660's quirky pin_offsets taken from an array with
> predefined offsets from downstream [1].
>
> [1] https://git.codelinaro.org/clo/la/kernel/msm-4.4/-/blob/LA.UM.7.2.c27=
-07400-sdm660.0/drivers/pinctrl/qcom/pinctrl-lpi.c#L107
>
> Signed-off-by: Nickolay Goppen <setotau@mainlining.org>

Patches applied!
Great work on this series Nickolay!

Yours,
Linus Walleij

