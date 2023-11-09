Return-Path: <devicetree+bounces-14685-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B0B757E627A
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 03:58:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3EEC2B20D66
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 02:58:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65C73539D;
	Thu,  9 Nov 2023 02:58:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="QWt2lO6z"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F36A14C8F
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 02:58:47 +0000 (UTC)
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com [IPv6:2607:f8b0:4864:20::632])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5738B25AC
	for <devicetree@vger.kernel.org>; Wed,  8 Nov 2023 18:58:47 -0800 (PST)
Received: by mail-pl1-x632.google.com with SMTP id d9443c01a7336-1cc5b705769so3395125ad.0
        for <devicetree@vger.kernel.org>; Wed, 08 Nov 2023 18:58:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1699498727; x=1700103527; darn=vger.kernel.org;
        h=to:references:message-id:content-transfer-encoding:reply-to:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DppDE93uNSB4OmZjw8tLCue7p/imeYMCzu6NlobepZ8=;
        b=QWt2lO6zuHTDi57JkXBHKz8ANyMR6CcJlEUsLGyDQ2zkXdpj5EgAvuJHKfbT0Q+NRe
         x02fwDnXGSIo/ay8S1TBbHgUrWOQVh9Z9P6VikzpSEIelUzZ2RuIOIVwLLam6T9Rhhkx
         Mbv11mtYL9K0Y6Lp9rbfg41XL5ng9l6zISuYunDvIUPsPEvfQZ/beygwF4Av/3lGAfst
         KIMIFdPJMr/Dz4Upv0IPUotDN08YKAC5YYNrGUqfnuPAEtlAlulMHltNpX+WgAmCDqkC
         /OhWStF59Zj/bwY7iB5ZLli0W9KHrOauH9siUc5/dUr7dEjx+5a454KWbBWvqf9JnUdr
         oBcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699498727; x=1700103527;
        h=to:references:message-id:content-transfer-encoding:reply-to:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DppDE93uNSB4OmZjw8tLCue7p/imeYMCzu6NlobepZ8=;
        b=FThRNx8uwYPySviVqXOF2AJTvWbhWkcz5PE66fOw9CdHYxnLRHRjKXjHRQb2M9uF/V
         mxflO1+NqjmMjlVtQ6BjdmE6gbVMYDIOA0lAekcEcqYxndHe//jsbKUe87pWbVPAc50i
         G8lN0AGCMR7k7wkZrLXSvlTLqwx3iXINDXAhbXtEkQvnWPQgtupxPZYO8BUUjhv29qsG
         YRDhScC6JJK5j8EQ+D5Pm4fzHn/CFAkvFNAl6Wp52jC+rRCAn3dvi1CmCE4dtW5IPvYx
         iWnqXkw/gKsxavrHHP+Lb7ZkdExo7XjAz+CZXTTrq78bf/OvdB5+HgsX48tAJ3zkLtvV
         gwNg==
X-Gm-Message-State: AOJu0YyQlOuNzGL2Uva8t+WVsnCiNZbOdo0x4UcmB+S12F2hyM7/izC8
	xh+k4hLR4Bi/dons15sI1lue2Q==
X-Google-Smtp-Source: AGHT+IHn09W1cRZDEkkvIH3Oo47/42K6T4xkwgAHBTl4aY/xkO5ybUHzFNH6lbK8MUVDkJ0h6qQGkQ==
X-Received: by 2002:a17:903:2341:b0:1c9:e508:ad54 with SMTP id c1-20020a170903234100b001c9e508ad54mr4317917plh.13.1699498726815;
        Wed, 08 Nov 2023 18:58:46 -0800 (PST)
Received: from ?IPv6:2402:7500:4ce:aeef:31cf:49a7:c:20d4? ([2402:7500:4ce:aeef:31cf:49a7:c:20d4])
        by smtp.gmail.com with ESMTPSA id g4-20020a170902740400b001c465bedaccsm2383368pll.83.2023.11.08.18.58.43
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Nov 2023 18:58:46 -0800 (PST)
Content-Type: text/plain;
	charset=utf-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.7\))
Subject: Re: [PATCH v3 06/20] riscv: add ISA extension parsing for vector
 crypto
From: Jerry Shih <jerry.shih@sifive.com>
In-Reply-To: <20231107105556.517187-7-cleger@rivosinc.com>
Date: Thu, 9 Nov 2023 10:58:41 +0800
Cc: linux-riscv@lists.infradead.org,
 devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 linux-doc@vger.kernel.org,
 Palmer Dabbelt <palmer@rivosinc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Albert Ou <aou@eecs.berkeley.edu>,
 Jonathan Corbet <corbet@lwn.net>,
 Andrew Jones <ajones@ventanamicro.com>,
 Evan Green <evan@rivosinc.com>,
 Conor Dooley <conor@kernel.org>,
 Samuel Ortiz <sameo@rivosinc.com>
Reply-To: 20231107105556.517187-7-cleger@rivosinc.com
Content-Transfer-Encoding: quoted-printable
Message-Id: <5EF129A2-195B-4207-A2F6-DBA1FBB9F65D@sifive.com>
References: <20231107105556.517187-1-cleger@rivosinc.com>
 <20231107105556.517187-7-cleger@rivosinc.com>
To: =?utf-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <cleger@rivosinc.com>
X-Mailer: Apple Mail (2.3445.9.7)

On Nov 7, 2023, at 18:55, Cl=C3=A9ment L=C3=A9ger <cleger@rivosinc.com> =
wrote:
> +static const unsigned int riscv_zvknhb_exts[] =3D {
> +	RISCV_ISA_EXT_ZVKNHA
> +};
> +

> +	__RISCV_ISA_EXT_SUPERSET(zvknhb, RISCV_ISA_EXT_ZVKNHB, =
riscv_zvknhb_exts),
> +	__RISCV_ISA_EXT_BUNDLE(zvks, riscv_zvks_bundled_exts),

The Zvknha and Zvknhb are exclusive. It's not the superset relationship.

Please check:
https://github.com/riscv/riscv-crypto/issues/364#issuecomment-1726782096

-Jerry=

