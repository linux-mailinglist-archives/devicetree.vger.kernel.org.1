Return-Path: <devicetree+bounces-9734-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CD5387CE465
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 19:27:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5C66D281C2A
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 17:27:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7B073E481;
	Wed, 18 Oct 2023 17:27:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="23BVLdIz"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DA563D965
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 17:27:14 +0000 (UTC)
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F41B44487
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 10:27:11 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-5046bf37ec1so8915269e87.1
        for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 10:27:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1697650030; x=1698254830; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k+Kj7LOopyrO9EbtedWl87IOzpgEdsrSg3mf/n9/RII=;
        b=23BVLdIzqR6bI4D1ozZsMCKXQpAIK45Sbf9jMpNSCiYy8nWHZEg0GgAQzttgeoJSP0
         91i4sZ6jeqyswQcpTyVHiU6//M3B1zE9WqupBHmA5oDLYizxIGV0ViAS5+GfTXZhg5h6
         QAUlKxTXrxlqjC1tvlf9zPsYLbCDF3dLGUx6NnCZoOTzV016qVkWP0qZ4UzgVhBdu9cD
         7BjoKZEpFhhJUtyu2e+jDTjRmP20VyP+TkXMk+QP3gpHYLRSTJPhXGljrVmRgtg8hjpL
         I1AEZBxLyqZ7xZiFtPU1giFieM1+pXPBuCt0slkEs7397q4KT+preYsnLf5Vha7epSKK
         HOzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697650030; x=1698254830;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k+Kj7LOopyrO9EbtedWl87IOzpgEdsrSg3mf/n9/RII=;
        b=f2aqwvRMsgGtzIosEzmuUe826wcMPu/uon7hC0zHcL4enaIgeDh8d0sUrFQJhkz435
         ukjViQqCIe4xvmEv4ZUaXgudNY6PAe3Evm8wD5V3GLngiLLPr4Tn/tTu8jBuUEKFWIBR
         FPodJjpwl4d5PVWVhYrRvm/w2l7OTHIWZm6S4uloP6oePmyidUkWyYnQ9JqTwvgfDbDP
         x0Cii+lJt3SVxWPGxoJdUs3peWBm52pQZZE0fFrgU98zy3EE+Shy11o6s3ujoE6BGiyR
         Z36ICQlABm6ewZDoAUEp3O2CV91YJ+Z+UH/X0ceGbX0sn8f1ZCCDQO32k8t/TjbSnVMm
         Zhog==
X-Gm-Message-State: AOJu0YyMgfWwDQMo9u+e0TDpAbmWxyGzSsXhfgI/c+mJ7VBf3cifA958
	A93rV3ONGamwluGiY3RKyrQZMxbsNIOPIahW4TfCgw==
X-Google-Smtp-Source: AGHT+IFZJhAw5mzgscPKCkGfLuEObjAjse1oj45qbH86RhgIjYIEdeLlJt2zA/fa9rmaEbB5fXJsbYZYUW7bovjuTmQ=
X-Received: by 2002:ac2:4a82:0:b0:506:9c0a:17d9 with SMTP id
 l2-20020ac24a82000000b005069c0a17d9mr4831537lfp.40.1697650030177; Wed, 18 Oct
 2023 10:27:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231017131456.2053396-1-cleger@rivosinc.com> <20231017131456.2053396-6-cleger@rivosinc.com>
 <DA8B4610-D514-4733-B875-C247FFCCC7AA@sifive.com> <af785f0f-9de7-4548-9cdb-f392cde1cc2b@rivosinc.com>
In-Reply-To: <af785f0f-9de7-4548-9cdb-f392cde1cc2b@rivosinc.com>
From: Evan Green <evan@rivosinc.com>
Date: Wed, 18 Oct 2023 10:26:34 -0700
Message-ID: <CALs-HstEBt-ntCcETa9YwS6On3nGyoEc2p7R-gaBLG9+aFJL5w@mail.gmail.com>
Subject: Re: [PATCH v2 05/19] riscv: add ISA extension parsing for vector
 crypto extensions
To: =?UTF-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <cleger@rivosinc.com>
Cc: Jerry Shih <jerry.shih@sifive.com>, linux-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-doc@vger.kernel.org, Palmer Dabbelt <palmer@rivosinc.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Albert Ou <aou@eecs.berkeley.edu>, 
	Jonathan Corbet <corbet@lwn.net>, Andrew Jones <ajones@ventanamicro.com>, 
	Conor Dooley <conor@kernel.org>, Samuel Ortiz <sameo@rivosinc.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Wed, Oct 18, 2023 at 5:53=E2=80=AFAM Cl=C3=A9ment L=C3=A9ger <cleger@riv=
osinc.com> wrote:
>
>
>
> On 18/10/2023 03:45, Jerry Shih wrote:
> > On Oct 17, 2023, at 21:14, Cl=C3=A9ment L=C3=A9ger <cleger@rivosinc.com=
> wrote:
> >> @@ -221,6 +261,22 @@ const struct riscv_isa_ext_data riscv_isa_ext[] =
=3D {
> >>      __RISCV_ISA_EXT_DATA(zkt, RISCV_ISA_EXT_ZKT),
> >>      __RISCV_ISA_EXT_DATA(zksed, RISCV_ISA_EXT_ZKSED),
> >>      __RISCV_ISA_EXT_DATA(zksh, RISCV_ISA_EXT_ZKSH),
> >> +    __RISCV_ISA_EXT_DATA(zvbb, RISCV_ISA_EXT_ZVBB),
> >> +    __RISCV_ISA_EXT_DATA(zvbc, RISCV_ISA_EXT_ZVBC),
> >> +    __RISCV_ISA_EXT_DATA(zvkb, RISCV_ISA_EXT_ZVKB),
> >
> > The `Zvkb` is the subset of `Zvbb`[1]. So, the `Zvkb` should be bundled=
 with `Zvbb`.
>
> Hi Jerry,
>
> Thanks for catching this, I think some other extensions will fall in
> this category as well then (Zvknha/Zvknhb). I will verify that.

The bundling mechanism works well when an extension is a pure lasso
around other extensions. We'd have to tweak that code if we wanted to
support cases like this, where the extension is a superset of others,
but also contains loose change not present anywhere else (and
therefore also needs to stand as a separate bit).

IMO, decomposing "pure" bundles makes sense since otherwise usermode
would have to query multiple distinct bitmaps that meant the same
thing (eg check the Zk bit, or maybe check the Zkn/Zkr/Zkt bits, or
maybe check the Zbkb/Zbkc... bits, and they're all equivalent). But
when an extension is a superset that also contains loose change, there
really aren't two equivalent bitmasks, each bit adds something new.

There's an argument to be made for still turning on the containing
extensions to cover for silly ISA strings (eg ISA strings that
advertise the superset but fail to advertise the containing
extensions). We can decide if we want to work that hard to cover
hypothetical broken ISA strings now, or wait until they show up.
Personally I would wait until something broken shows up. But others
may feel differently.

-Evan

