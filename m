Return-Path: <devicetree+bounces-9733-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 269237CE45E
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 19:25:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BA9F8B20F4F
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 17:25:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC0873D993;
	Wed, 18 Oct 2023 17:25:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="o1uvyhw4"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E6F63D3BC
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 17:25:30 +0000 (UTC)
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 241F8449B
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 10:25:27 -0700 (PDT)
Received: by mail-lj1-x235.google.com with SMTP id 38308e7fff4ca-2c518a1d83fso64687221fa.3
        for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 10:25:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1697649925; x=1698254725; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tbixeUBAnXxzznhgP0IZfHR6Ap9ypS+fHg7KPLOGdDs=;
        b=o1uvyhw4mRfZ0Oix87hN8GJA2ClSos4OYPMiO6an7rw5MbWQlhzuqj2eoL5yOrVwtP
         p5QUS6/h0TYpeOjkUBnHYQl0ra7W99G/ozAUFAGw1+eNYSqRl1zDd5BEyr4u0wCTxBI2
         ExUBMA6CSR6G11LRLu4MkCxjeabymUgc7wyEXYwjP17INwvLCKjskjsxuyR1rZXqgwFh
         yijNiifZUhpSDkQo1zOl1h6HufVzyM1NoY0fVzXQKAsl9YTPe1oyAsKmKH0RCmTc4ic4
         sECIegpq2PWyhtoMuKd9k8ZuzLSAmnBau2ehOzrHVgaJwRANXdUb+HL7u29/tPU5Z/wK
         3x5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697649925; x=1698254725;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tbixeUBAnXxzznhgP0IZfHR6Ap9ypS+fHg7KPLOGdDs=;
        b=S13wrzpnXwY9Uaqxq141m8ZjYEjIfBZ5Oo6PVvVfwsMxSCsd/nMYiQP/Dcp8WmYFxW
         jgY36+NfUuPcEa/CWSED48y2DOdnfhXI2IlqrFR0OryQE5VVeMxVpdNvE/JIatUGC4Yi
         xE4MOm8TYCapAL8Ef1zfHDunXsskYlYv/mpqq170ShLVSuuW9Ep1j4U+jNPRWA6xxpg9
         1y9yU6prnooVkxu8appcah2mRgEMoGdFC7VbEfoJ5ilEJ4ckbFT3hDD3yy2FAd/8dmP9
         peHk9L6WymgYN6I4dvetHYyd1qm355JwyCZe3BU+sy389Hntsd5syDuwWRqqUo2C3q+j
         1Z5A==
X-Gm-Message-State: AOJu0YxBvCWhRFXq6DQTRKdYEjz/jrUilN8aqLa1UyTDSv/trXzjlvT5
	zNVj3uOI5QTi7lBG6n+NgLzVUXJZC2l2pjweeGo2Qw==
X-Google-Smtp-Source: AGHT+IHzFya1PKaT/fp+v+fPaWtz2nZSKePWthzhWNxfg7RP5nxfUjweywZ3NPnQfQWgt7OXrR8rjvSgSZf0oZQ26Nk=
X-Received: by 2002:a05:651c:10b2:b0:2c1:522a:8e25 with SMTP id
 k18-20020a05651c10b200b002c1522a8e25mr3786476ljn.32.1697649925479; Wed, 18
 Oct 2023 10:25:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231017131456.2053396-1-cleger@rivosinc.com> <20231017131456.2053396-4-cleger@rivosinc.com>
In-Reply-To: <20231017131456.2053396-4-cleger@rivosinc.com>
From: Evan Green <evan@rivosinc.com>
Date: Wed, 18 Oct 2023 10:24:49 -0700
Message-ID: <CALs-HssE=denuwBqH4KtCr1QqTzPb9rELW1ZXR5Cr-nqQQWQoA@mail.gmail.com>
Subject: Re: [PATCH v2 03/19] riscv: hwprobe: add support for scalar crypto
 ISA extensions
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
> Export the following scalar crypto extensions through hwprobe:
>
> - Zbkb
> - Zbkc
> - Zbkx
> - Zknd
> - Zkne
> - Zknh
> - Zksed
> - Zksh
> - Zkt
>
> Signed-off-by: Cl=C3=A9ment L=C3=A9ger <cleger@rivosinc.com>
> ---
>  Documentation/riscv/hwprobe.rst       | 30 +++++++++++++++++++++++++++
>  arch/riscv/include/uapi/asm/hwprobe.h | 10 +++++++++
>  arch/riscv/kernel/sys_riscv.c         | 10 +++++++++
>  3 files changed, 50 insertions(+)
>
> diff --git a/Documentation/riscv/hwprobe.rst b/Documentation/riscv/hwprob=
e.rst
> index a52996b22f75..968895562d42 100644
> --- a/Documentation/riscv/hwprobe.rst
> +++ b/Documentation/riscv/hwprobe.rst
> @@ -77,6 +77,36 @@ The following keys are defined:
>    * :c:macro:`RISCV_HWPROBE_EXT_ZBS`: The Zbs extension is supported, as=
 defined
>         in version 1.0 of the Bit-Manipulation ISA extensions.
>
> +  * :c:macro:`RISCV_HWPROBE_EXT_ZBC` The Zbc extension is supported, as =
defined
> +       in version 1.0 of the Scalar Crypto ISA extensions.

At least in my v1.0.1 version of the crypto scalar spec, I don't see
Zbc. That seems to be defined in the bit manipulation extensions.

