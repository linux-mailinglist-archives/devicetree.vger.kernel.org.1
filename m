Return-Path: <devicetree+bounces-173869-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AAA23AA9EBC
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 00:04:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1E97A16495D
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 22:04:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC862274FF4;
	Mon,  5 May 2025 22:04:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CbqEW6mo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4A221EB182
	for <devicetree@vger.kernel.org>; Mon,  5 May 2025 22:04:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746482683; cv=none; b=Fo84WcpLU8Y8XkayoLSJrTmcLImsEDEnWI3HLOsIBCRCKvl020fiWrp17ZhK0z2EVIshyv4TxVbwKPEQUnJY/qhqsDaX8Bizooy/TjLB7J5bWvzIq19w6UnMvZCD+Rt/Q2lCyLZXqCCHQGcNhAqcBIA6xCV29HZiO+FV47rmVJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746482683; c=relaxed/simple;
	bh=snnOXzAe6Heu5aV6mBs11DJFSl0CS3QgcwKgPRQLEqw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YWj6mgZ3+XeaRgLXHicPgfBNCxPQHSWz/PiRbz573+qWp128dfKXyTyV+SeEExdtN5SVfv4FIMKuIvMeOZ3tryHnIkGwzbGecQQuH1evHdJ+pFJ2dVo0RumDbcTfTpis01zRnnU8XZC7y6Ty04+Gg/0sa/SzIMpyfExPm+xGK5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CbqEW6mo; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-30c091b54aaso42539801fa.3
        for <devicetree@vger.kernel.org>; Mon, 05 May 2025 15:04:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746482680; x=1747087480; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=snnOXzAe6Heu5aV6mBs11DJFSl0CS3QgcwKgPRQLEqw=;
        b=CbqEW6mozUuh5dSDm0FHYiwRVzfuV7llWkCzbTPuTbHkkU0TEsOlvxxTr6qhqJu4ES
         wPlgqLaTwzN5D2PMseUtgzVsk78H20k8NVe/0k59Nx42F6rRond8FV7E/yALe8SxqNXs
         25WNqWieGSiigKK6vmi7ZTuuR7oF//scBKHSGHdBMvsGJr0DjBg87IokuCgfGSxTbUrC
         MBhH/PDPpbnC1JTQPagM8exsn5tpKuYgGTjUs+ScypV5r8ncWP9tDiwbXIV+1mRlVez+
         psAzX1r+Oh2zSF6tTSOKY1LXu+ov78+c3vdkZtO/WJVmEa4f2GUua07Mm0qjrdS7hhV9
         HUIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746482680; x=1747087480;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=snnOXzAe6Heu5aV6mBs11DJFSl0CS3QgcwKgPRQLEqw=;
        b=u+sfUjP5ymsxjqadNl9HYDpnH4B/5eHKIxwqbBhcv08kLBpiIK6XjtPK82pyrv/t7I
         l/YTgMsNAgpwir7R+t9cQp2zwe0afJdrU3cTd7fwIft/5rzKEGIrJ/ub6aCkHpSyzt3F
         vdl07nF0N329d2+FWunD+RdGUnQTUh2gdI/xT9hu1SF3r/ZyKZD12OjESoUm7YkuKSdh
         dC3Srt5KLsug5fMt5PAf5hLRelEgPyYGbpgdJ+FgYF4N4O9KYiGSodmACnvEICt7bq9M
         ulTVuSKsJKg2BDDEEbSBIk4ATJfS9Hhgjtvnnf89rKzNaGkrZ0MR3JV0wdMJxTXPprZl
         BYxg==
X-Forwarded-Encrypted: i=1; AJvYcCWv3o9anNIOi3AYChqy4V3JHAL1oquOyt2g9IRMqlzuaaCveUEvLN1JcycfC2t9aA9FfMYf+/XB8cMK@vger.kernel.org
X-Gm-Message-State: AOJu0YxV3CdrSsjsaDXxmwAhKfu5ylIgY/aeTgjTa+BNYowI1KqXg5oB
	WXPzayZLTKcyIcW1k2KdIeNxT1z3d8201hNQ1jbc6GBH+MEuLbGFaBmKHSTkhgRVp025m5hfU96
	ihcaX4If4hO00icWdsVrib1Mig9tVL7o60w6Yzg==
X-Gm-Gg: ASbGncu0vZGh894LQYEQZUfFuvgtS6MhCBa46bAXNM7yyYtwdA1wlzphRWOhF2kcBYS
	0AidFqgdLhQPGG16Q7ymCEDaj5/iKAEQd5YPTgBjpSOwIyOex+5DNNGt+jiTYUIAkgy7sX5KOGL
	MEHWj1tjhdm/XhNSLAdN/Z5FWy6c3x//eJ
X-Google-Smtp-Source: AGHT+IGApbe9p7gXAk1nkGLKFD1tdslNqS67hi+XGq/azpYJ6FPZ6Uj8RDgT8dGRyemAo12Y9+ch0ZiUQQSCtCm0RZ8=
X-Received: by 2002:a2e:a58d:0:b0:30b:b987:b6a7 with SMTP id
 38308e7fff4ca-32668d51266mr1583961fa.0.1746482679935; Mon, 05 May 2025
 15:04:39 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250505144654.1288979-1-robh@kernel.org>
In-Reply-To: <20250505144654.1288979-1-robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 6 May 2025 00:04:28 +0200
X-Gm-Features: ATxdqUGbLo14PoDMJ9iRiD56H5JN5nsFkKufHU7P1DoHi_A24GdHzXWd-M_Gq0E
Message-ID: <CACRpkdY1OU+hfTuqOJ2noHp9pMtYbTJGtOzpHrb6qcVt4hY22Q@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: interrupt-controller: Convert
 faraday,ftintc010 to DT schema
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, May 5, 2025 at 4:46=E2=80=AFPM Rob Herring (Arm) <robh@kernel.org> =
wrote:

> Convert the Faraday FTINTC010 interrupt controller binding to schema
> format. It's a straight-forward conversion of the typical interrupt
> controller.
>
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

