Return-Path: <devicetree+bounces-47154-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A05186C527
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 10:29:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BCC02B252DA
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 09:29:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFF655D72B;
	Thu, 29 Feb 2024 09:28:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TYuNkIPj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0F435B5D8
	for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 09:28:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709198939; cv=none; b=cxsS3CV/mUIu4qNANeLWU4+p+jRzdxajAw7PVcDZF4DLVWvPx/EYRxOUP+7gW8Ym0KxY4/of42lBEvLiVpJSNYwCEa7PMSRXNWOiTAfKLgneFi4Rl2HwIgnEuEy84li7qSSx1N8M3DsYHPFO8z5gG5+jvAfUY4b2RpoHoCcnbnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709198939; c=relaxed/simple;
	bh=il/+MTSUB+hJ9/Qk/zhTY8kE7bR8Rhe3rQiBlSatDYc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jg0yvslMTxISGUuafiGepa61G5mgWAKjqVyQdcjN2SDtR6MWLj5Zt4iXBUGpnRwitiR+mMuIO1dQkSUnD97MfipJI5KExk7nva5/nkvP27Det/zMgQwKl4w+W42jhAqkMSsXMbTV2fzV9Puc8b6L2lokNUmBgmoFS8Gpv9rTv0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TYuNkIPj; arc=none smtp.client-ip=209.85.219.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f175.google.com with SMTP id 3f1490d57ef6-dcbcea9c261so767739276.3
        for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 01:28:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709198936; x=1709803736; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lpnwZXvO+GxSiHd0a/DytgyertWwHVGU4iyf7Q6jgRw=;
        b=TYuNkIPjMwzDHQdknFcZap2VRp457jPMtJDlOKTrctAkBWLQi4bK2SGCP2BZEl1Rq+
         E0gA3YYj58ti5Duzm8HbzOG4gRNfoCtzM16hKtF+9B2WPMJVjkepl0FSh7J62ze0SOmG
         LaLgb4IWlYioWh4MATdLMcmwEKWO9VRCoRUGooefg45aWtBJH/Y3Ny58TDlunKSijXAH
         v5lAuOy2zJL9QdgQpaPwR3geDDFbwQWlXt5+aDJR48UrUXJDpUnB4a3dNlkJPIpHELab
         P0WizjuSJk9yuwQ12ykZnqHygcaW2sNnQC/ojEmDgp0kdwLsR5zs9c9MUUC25j79wlIk
         MTaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709198936; x=1709803736;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lpnwZXvO+GxSiHd0a/DytgyertWwHVGU4iyf7Q6jgRw=;
        b=BGvYEN2hVoSXlqGvb4nDhYZKBVVdKf/WYgzu6oGQ94Y1gkWumlWCZwJDySdbknz/oU
         28tZ098GZBjWVMFIgrsUIEt9nC5g3F8MnyHIYukSWyQe8JzeQmys/dWTykjR+yZm5xvZ
         mKg18xfOJPIKS5FgXcEQby89Vcw/u/8m7rfe5jw046BMmVJ1W5X7NZ3lhyTbJ9RvI8ru
         RJ6HO40PEncEBPbPCZBi5wcsAupUJLHQPRBJzHD90ZIZ0Tk4HEWzr2FMjsLZ8iiLlXU+
         jnreJzHJRlq8UlBl8t+Yal1YYIFgAeSWf0cCC2ITFo+aXf0Nzp3Ge65tdT6T7MV/Rjsp
         TWtg==
X-Forwarded-Encrypted: i=1; AJvYcCXq8vZKVaMKsT7i/JCzrJuOLSaHC7oHxStC55oFyltBoEni2LHo8GalPXWj85ppwepJ5t3sKm7a7LviwZmnvXz8LDnMSm0MN8YYhw==
X-Gm-Message-State: AOJu0YwNVcREE2Vgk6DKJUlKg9xOi2e0njxxENrK670o/lRyx/OYdqCB
	ZBu5m7yRa7dS1qA3Wnj5Ct3nakMb9TxFlpTHOkc+kulEIlydEsoiHMytTA3Xn1Hp2+jbScdE6IC
	lhSp6Yf4fKJH+QucjyHrYHgc60SADGYeBopDdXEYK/ENNbqTO
X-Google-Smtp-Source: AGHT+IGIbl2TgaNavrw5wNoqVGLPJWdWimW4CCp6UKDlUrz43Cqlv3DtmfGj5h6AXkXD7KdYMCvm+9wtqdkrh8HvPfQ=
X-Received: by 2002:a5b:445:0:b0:dcb:bff0:72b with SMTP id s5-20020a5b0445000000b00dcbbff0072bmr1559369ybp.31.1709198936052;
 Thu, 29 Feb 2024 01:28:56 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240228-mbly-gpio-v2-0-3ba757474006@bootlin.com> <20240228-mbly-gpio-v2-13-3ba757474006@bootlin.com>
In-Reply-To: <20240228-mbly-gpio-v2-13-3ba757474006@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 29 Feb 2024 10:28:45 +0100
Message-ID: <CACRpkdb6cLAaAkYa=2Sz1G4t2yBRQcwPWsoQShdQ2JMcg+VaRQ@mail.gmail.com>
Subject: Re: [PATCH v2 13/30] pinctrl: nomadik: follow conditional kernel
 coding conventions
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

> Fix strict checkpatch warnings relative to if-else blocks and bool
> expressions. Message types addressed:
>
>    CHECK: Comparison to NULL could be written "!nmk_cfg_params[index].cho=
ice"
>    CHECK: Unbalanced braces around else statement
>    CHECK: Using comparison to false is error prone
>    CHECK: Using comparison to true is error prone
>    CHECK: braces {} should be used on all arms of this statement
>
> Before: 0 errors, 1 warnings, 16 checks.
> After:  0 errors, 1 warnings,  7 checks.
>
> Signed-off-by: Th=C3=A9o Lebrun <theo.lebrun@bootlin.com>

Patch applied!

Yours,
Linus Walleij

