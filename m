Return-Path: <devicetree+bounces-11008-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 22ADD7D3C3B
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 18:22:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C16B91F220DD
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 16:22:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 368801CFBA;
	Mon, 23 Oct 2023 16:22:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="WsdJ0m/9"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D587D1CA96
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 16:22:10 +0000 (UTC)
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9389AE4
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 09:22:06 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2c509f2c46cso50234161fa.1
        for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 09:22:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1698078125; x=1698682925; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CvcxBfUwTMvPmDC6TsZGUmIpxz3bHu9zv5qH2J4V6xE=;
        b=WsdJ0m/9057wlCFWmBJ6lPP86MRukuAKGIeWJGUp4DUjgUpbxGIMUb/sfUpFhglHSO
         f6VUGRgeBAVGrs04iqxf87cz/NSx+f2XfsuEVQIbxt2oWGgu/5/AaoteU1ZQ6gOr1dUo
         JEDanuO48q9oEH9gQRUDA7nzSOZq0lAB6g/MxMYMZFuo7ImymieUmO0lcJVeTnT1gWu6
         QhbL7TrYKklauvNC7CmTxii9TzxbOk3MYMKvpcaAzqGD3YZ6u+qWROJb1i8wAYoZtEae
         aIDFPRnV5ocbCRFG1XneochKjDFzO045DGP5Bpcp6PlwnOCJczBJ1bfl/fGPOGe5un4P
         255w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698078125; x=1698682925;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CvcxBfUwTMvPmDC6TsZGUmIpxz3bHu9zv5qH2J4V6xE=;
        b=Sx5dG6DO4u3GE3rCTxs7u+DM7eU9hDr/Ud3PMCkg+/tvKZeRVwmwc8aMpIU1QpRTdL
         cp6r3IRNTQus4Npuvxw3aguoAf8/KGihNMsP/KJTmlZeZTCaUM3oGrhzxHYmWcToCLls
         XCTYJclKv6ogm/Gf9/9O1v8mon0s0Mla3FlPm6ECBWE/O8yga4qsZdSzhhc8qBFEk7kK
         sDTm8x5uScvdje2nNTKWLnMMokeJXynLksKa6x5Y3dFe3BMdDRPC5zwmzV3HIJ9Z4h0P
         ddJ0GDo1w8/iS/cPRKf03BA9zdmCYXdXpIxC0gZDUepKeWoC8UqTMkyUlpXZ5eqOHqYy
         pT0g==
X-Gm-Message-State: AOJu0YyiprM0lGUb4y+LRYRmShPEwUZmGPP1F1aenSvkI75tCGcVckv9
	Sg1x8XQT/aGr9/xbKYK21uy3lbzsm843MfCRYNCfdQ==
X-Google-Smtp-Source: AGHT+IEP51JeurMrSnMxRP4SCcBBFFsO16Z3a/gjoXi+83Wq0Fjd6byKKpI/lH8LyKcnrolzQSYWFeD5i8xlSchTYy0=
X-Received: by 2002:a05:651c:1038:b0:2c5:1bd9:f95c with SMTP id
 w24-20020a05651c103800b002c51bd9f95cmr6122574ljm.53.1698078124702; Mon, 23
 Oct 2023 09:22:04 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231017131456.2053396-1-cleger@rivosinc.com> <20231017131456.2053396-3-cleger@rivosinc.com>
In-Reply-To: <20231017131456.2053396-3-cleger@rivosinc.com>
From: Evan Green <evan@rivosinc.com>
Date: Mon, 23 Oct 2023 09:21:28 -0700
Message-ID: <CALs-HssmufWCKzaGy7BwWz4n4hfwV9NjjRD-O_JeupM-p=Ov+w@mail.gmail.com>
Subject: Re: [PATCH v2 02/19] riscv: add ISA extension parsing for scalar crypto
To: =?UTF-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <cleger@rivosinc.com>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org, 
	Palmer Dabbelt <palmer@rivosinc.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Albert Ou <aou@eecs.berkeley.edu>, 
	Jonathan Corbet <corbet@lwn.net>, Andrew Jones <ajones@ventanamicro.com>, 
	Conor Dooley <conor@kernel.org>, Samuel Ortiz <sameo@rivosinc.com>, 
	Conor Dooley <conor.dooley@microchip.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 17, 2023 at 6:15=E2=80=AFAM Cl=C3=A9ment L=C3=A9ger <cleger@riv=
osinc.com> wrote:
>
> From: Evan Green <evan@rivosinc.com>
>
> The Scalar Crypto specification defines Zk as a shorthand for the
> Zkn, Zkr and Zkt extensions. The same follows for both Zkn, Zks and Zbk,
> which are all shorthands for various other extensions. The detailed
> breakdown can be found in their dt-binding entries.
>
> Since Zkn also implies the Zbkb, Zbkc and Zbkx extensions, simply passing
> "zk" through a DT should enable all of Zbkb, Zbkc, Zbkx, Zkn, Zkr and Zkt=
.
> For example, setting the "riscv,isa" DT property to "rv64imafdc_zk"
> should generate the following cpuinfo output:
> "rv64imafdc_zicntr_zicsr_zifencei_zihpm_zbkb_zbkc_zbkx_zknd_zkne_zknh_zkr=
_zkt"
>
> riscv_isa_ext_data grows a pair of new members, to permit setting the
> relevant bits for "bundled" extensions, both while parsing the ISA string
> and the new dedicated extension properties
>
> Co-developed-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Evan Green <evan@rivosinc.com>
> Signed-off-by: Cl=C3=A9ment L=C3=A9ger <cleger@rivosinc.com>

My tree might be out of sync, but in my search for riscv_isa_ext, I
also found a use in print_isa() (cpu.c) where we're reaching into
riscv_isa_ext[].id and assuming it's always valid. If that's still in
there we'll want to fix up that spot too, since now with bundles .id
may or may not be valid.

-Evan

