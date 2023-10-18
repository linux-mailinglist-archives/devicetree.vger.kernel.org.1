Return-Path: <devicetree+bounces-9741-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 18DF37CE482
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 19:29:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9C92CB20E35
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 17:29:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB7403FB02;
	Wed, 18 Oct 2023 17:29:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="WdIVHNn1"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8181E3E484
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 17:29:26 +0000 (UTC)
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 044001B2
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 10:29:23 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id 38308e7fff4ca-2c50305c5c4so88108481fa.1
        for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 10:29:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1697650161; x=1698254961; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rAT+E2Mqww2+Xf9ub965fid4r/e0BGLFO3gBSbvEEyQ=;
        b=WdIVHNn185WrCBxZcxeK6EpHAm663qxgoDNWOTzFmYKl/5CTDaBmjvxkA3ULQrCSPT
         m4vq4bJCAM5g65oDxaw1iCzgMRWE4j7X6L4YXOYPT5Fp7TR3sjoLhh01FmlWcOYEiHpa
         AIm6RaeGuuFoKOL3LoOW88PxgAirIMqJHntp2hRXPF5BajDdKGZCsuha6G5JB8swo5nv
         wd/zfQxQRIPeRvleWn0aPBZv8/VSa3HWyONrSV9vn/OGCCCGAp30/EAJtUC1uAJksVh3
         cpwqP2PFPwYHDvE5Xn30d9AihUBtS6oKHCeZ8XTjKBtmOQGqmcGR8b8eS6ZxbQWVYMT0
         8eQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697650161; x=1698254961;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rAT+E2Mqww2+Xf9ub965fid4r/e0BGLFO3gBSbvEEyQ=;
        b=SCIeuWIyLF5ADE+FpxQEvKOe1CnLldArrsFz3Apbh/XT3U3hAhh7PM1s1SvzI6S5t/
         3IpeQvKFKSGjjOvDwoIB1fJSj3cshXqMDCGIN1FPm3aK5EMI7pLvJTMwZrf9uPop4jBB
         HyL0i3Xe/3M1utajJPHnaLZaCiu3dIwG7wUyZ37zDvzFxK49Bxmp67qYdoqNlXiQnFYH
         CAWVgfxZAsN2hI+n3Cr4w+zo0m1ZHONi6nmwNWdZMXnw9jobyRtTby/HuwfwKsv80I2s
         UMkrE/O3OfSsIsvVMe1PlsnfsNYNbFbszaMGcw9UbIpULUXHxghpiqb/1JFdseg3IhpN
         zF+w==
X-Gm-Message-State: AOJu0Yw0D24OVwfrpsUS0GwdbRMJdYJfGD4cfz0+6r0a0CnGzPkFfH+4
	GHWqTOcKgTi0u6/zUxzKUMYr6rGfqTlk/KE61hck8g==
X-Google-Smtp-Source: AGHT+IEfrz0unC2GiQPrG2JuKmc9QnUuo5JLCp2+gYk1KnHMA7dr2bOwgXlPjCwKOCgOOnKI1jFbT+XgHxTamtCDl18=
X-Received: by 2002:a2e:b5da:0:b0:2c5:25f3:8e1c with SMTP id
 g26-20020a2eb5da000000b002c525f38e1cmr3998973ljn.21.1697650161325; Wed, 18
 Oct 2023 10:29:21 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231017131456.2053396-1-cleger@rivosinc.com> <20231017131456.2053396-16-cleger@rivosinc.com>
In-Reply-To: <20231017131456.2053396-16-cleger@rivosinc.com>
From: Evan Green <evan@rivosinc.com>
Date: Wed, 18 Oct 2023 10:28:45 -0700
Message-ID: <CALs-HsuG7FRpbaJaj+q4gEhJnAyVvZv8osDCJ4irrXEJaMd=hQ@mail.gmail.com>
Subject: Re: [PATCH v2 15/19] riscv: hwprobe: export Zvfh[min] ISA extensions
To: =?UTF-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <cleger@rivosinc.com>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org, 
	Palmer Dabbelt <palmer@rivosinc.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Albert Ou <aou@eecs.berkeley.edu>, 
	Jonathan Corbet <corbet@lwn.net>, Andrew Jones <ajones@ventanamicro.com>, 
	Conor Dooley <conor@kernel.org>, Samuel Ortiz <sameo@rivosinc.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, Oct 17, 2023 at 6:15=E2=80=AFAM Cl=C3=A9ment L=C3=A9ger <cleger@riv=
osinc.com> wrote:
>
> Export Zvfh[min] ISA extension[1] through hwprobe.
>
> Link: https://drive.google.com/file/d/1_Yt60HGAf1r1hx7JnsIptw0sqkBd9BQ8/v=
iew [1]
> Signed-off-by: Cl=C3=A9ment L=C3=A9ger <cleger@rivosinc.com>

Reviewed-by: Evan Green <evan@rivosinc.com>

