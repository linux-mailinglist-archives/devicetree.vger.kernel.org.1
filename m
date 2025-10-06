Return-Path: <devicetree+bounces-223866-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 26D6BBBE79A
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 17:21:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1D52F4EED79
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 15:21:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D09AA27FD44;
	Mon,  6 Oct 2025 15:21:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com [209.85.222.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB58778F36
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 15:21:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759764083; cv=none; b=h6aAFem1UX672e+YD71s0UFd9EbhOTWmL+nxNv5i+a8xaCZrIl0u2qyoVd3K0Q9guchDBY6Ya0aPmRxKwd+gyGuddriYSSXiIStGCT2nKwOZKuX4FhXsjTDnS4FCXyx9aazqwk+JP+QRy5M1xE7/BA8YDtRGARedlqUFVqEK/aM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759764083; c=relaxed/simple;
	bh=+TxXf/N99lUUoSpZ0iZnXZCYXsV81alNcfP3eMqdfWI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gFHqHd/t3oEISf4MOXsUgANTQ/xOpnoJMSXHZoAW+cnrzdOCPrrsVyeXoULGHSba1PC9iUW8szrNza74WW3l3gn+wK5ikCk3/2oMz/CqSmPUbGJWTEt+Us0ekjNJqwF6HzkiCOtDWfV+VW5WT+K8uBeWzu+C2enHqss3/Zg8f/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f49.google.com with SMTP id a1e0cc1a2514c-892196f0471so1873360241.1
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 08:21:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759764081; x=1760368881;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qNjjZf/jMJo3i+vgImT43DMbs4x4vUK4An39lZ8V464=;
        b=X+3n3cgD7W3Vicjp+GVSteVRigdtE6rPFZgKcCvOnq0MlNMKISipinXyFK2CkQLCit
         YLAsDXpphthIYC31PfO3Qy1HB7kyaZgo3zHBYJJ6XSLDm5pS41aEjuS1yEcwjMhXeGRY
         E1hTYKPZPvevK/hgt498VA9O3chJn/7nhKGWSEdQgqlsUIpZNRGE7eKSHIwFs6vuCY28
         JH/IZryL2ZkKcnPhAaZ4ALWnMidrSzNNfBYBXvAZjhl0+iTcMce5OVwaZbuhNipft7CD
         GVFjlgm7G5BHnfqkxX7uXc9w3TlIOlW24d840aD43Ec3pruXfEZSFF9gvIUGdJuQPITb
         HJsA==
X-Forwarded-Encrypted: i=1; AJvYcCWnQ7Q0r0U+Kw3zDHxwcV7jFJbiLK7rnqm69LDGox/J9pME/d8hGTDJtVZ7ZkwRcat/YW78rmFSFKkz@vger.kernel.org
X-Gm-Message-State: AOJu0YxK6CBTFin5gCw0SQRlblkWDHQgfkqjhDd+hfb8km+E8/eONuSU
	R5An1jHhZOddqnWitvgh2WetcrEtFgVL6FHf4GG0ICg9ehcZjZ3dTHUc1X8mmQVZ
X-Gm-Gg: ASbGnctinOUmEx1pNqlZRewqI5DobO/PaTHn31u42XtPnTwPtZyRt1db2a5frCXKjUU
	nseFgSys+PD25iYy7RL4vdcu3KFtSfm8QlakLPPAFASzuGD6eiY7MXPybxdejUyRFsC4K5bQwtK
	2mQfFsyTJ0JRwR3msLkbmxtL4wjmELt7LWpMVk71lMRc/3B/X/GB62s5rKgcsafs0Ugt4df8Ke/
	J3wHyoYGPnqTJxEgH3WZszEVzyvIQagU7v25RQDGZMd8XO3Ek23NEwVL44K7fyfDb+8FVD+KyZB
	Dmx3NCIub+WBHPyrpaV2tZuCYZTDtPATIprGy0Ezt2lLaH3R/Exx0gqm9dylDWJkANrVfLjUgYI
	JZKRRSQTyfhTgtrTdiu4W79VSOH33Ext5RHcLpeikFP7+879WdK9QWwHpQtXF2uNanaknMRnlHl
	L8WZVeqFrrl3veLO6BBGU=
X-Google-Smtp-Source: AGHT+IGaga2xerouA8ZYcmbuP8fsf8r9KCPbzQpGFI9KuPei0QufKheN0tvXQ/FIRxwkPy49n1o6Sw==
X-Received: by 2002:a05:6122:3287:b0:544:70f9:b0bc with SMTP id 71dfb90a1353d-5524e8ff97bmr4065668e0c.7.1759764080516;
        Mon, 06 Oct 2025 08:21:20 -0700 (PDT)
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com. [209.85.217.52])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5523cf64c29sm3044332e0c.20.2025.10.06.08.21.19
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Oct 2025 08:21:20 -0700 (PDT)
Received: by mail-vs1-f52.google.com with SMTP id ada2fe7eead31-59f64abbb61so2501668137.3
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 08:21:19 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXQHZ3QkJmpEBtWoALm5NLkIjBh9dg1Tng4woQkn9n/P87lhftIf519EhgbdGEIILKqDhxP/u0SuP0V@vger.kernel.org
X-Received: by 2002:a05:6102:e0b:b0:52a:ef9a:cbef with SMTP id
 ada2fe7eead31-5d41d16b894mr4797547137.35.1759764079488; Mon, 06 Oct 2025
 08:21:19 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251006082520.10570-11-wsa+renesas@sang-engineering.com> <20251006082520.10570-17-wsa+renesas@sang-engineering.com>
In-Reply-To: <20251006082520.10570-17-wsa+renesas@sang-engineering.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 6 Oct 2025 17:21:08 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVervDygy7Q8fRWUdmRw+Ru_0=LnmwPuUCLwV5SfwvYAg@mail.gmail.com>
X-Gm-Features: AS18NWBTxF4Vo9s4f4CcOmTGKFC0-eU9peD2h6OENdQsJDK4QlfG4uoEwiMYzY8
Message-ID: <CAMuHMdVervDygy7Q8fRWUdmRw+Ru_0=LnmwPuUCLwV5SfwvYAg@mail.gmail.com>
Subject: Re: [PATCH 6/9] arm64: dts: renesas: white-hawk: Enable RWDT watchdog timer
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Wolfram,

On Mon, 6 Oct 2025 at 10:29, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

Thanks for your patch!

> --- a/arch/arm64/boot/dts/renesas/r8a779g0-white-hawk-cpu.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r8a779g0-white-hawk-cpu.dtsi
> @@ -12,3 +12,8 @@ / {
>         model = "Renesas White Hawk CPU board";
>         compatible = "renesas,white-hawk-cpu", "renesas,r8a779g0";
>  };
> +
> +&rwdt {
> +       timeout-sec = <60>;
> +       status = "okay";
> +};

Rwdt is already enabled in white-hawk-cpu-common.dtsi, so this patch
can be dropped.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

