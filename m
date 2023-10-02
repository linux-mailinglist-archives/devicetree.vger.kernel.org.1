Return-Path: <devicetree+bounces-5141-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D1DDB7B563F
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 17:36:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 33068B20A4B
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 15:36:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7223F1CF9B;
	Mon,  2 Oct 2023 15:36:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB0741A715
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 15:36:23 +0000 (UTC)
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com [IPv6:2607:f8b0:4864:20::530])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CAB83D8
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 08:36:21 -0700 (PDT)
Received: by mail-pg1-x530.google.com with SMTP id 41be03b00d2f7-578d791dd91so2227847a12.0
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 08:36:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1696260981; x=1696865781; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+RgMLD9dSESZx52XLswNxjXiae7bjz6p9TOP3CQJHyA=;
        b=oky/oqG2dLxveE0LCaeozY/1eKrsOFkx/QIfqtBzkf9wQXi+RSSxI+IAzKe5SePCIR
         +SgKbhHh0n1FeXE76779o5YLUAGOwVkyoDt78Wwzp6L2ZjdGArDi9UumFpkQNRLd3/21
         m4LE0R1onuyCZvn0aW9y5JwsVdnD4AWxKO5dSn1jkg2ttlWrYFy2WrJY3e2F1badcnYU
         bZSgJldjWYsHLhchTN6VOdlYvrQEcaAo/KHm2i8v6fe0Dws64FE58UJvgqvNB48MtmJf
         +1n2VuC4RC4gTrQ8EK7uEyUUejfCa5lSPo+efD/TVTsa6zYh7GpWVLnkzb4OhwcbF2eR
         zM/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696260981; x=1696865781;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+RgMLD9dSESZx52XLswNxjXiae7bjz6p9TOP3CQJHyA=;
        b=NKkRZ8ZyGB/wp2b9I0rpeP3/qkjGmuYgxICXZEh5C7jOs06zcGMLAXxM0A8utuhySa
         6lfN1F0aBJdGVEEaavd+mPJtBboGWWqsv1B2H7d5JfSHyTYR+3s6v5zk67h14M0Zl/3P
         JvabuDgtl9EM5UxctnXLhPyeLWqpUEuj4W4FatKPGPnoOLX3BtKk4agCJvF7c2YnttMM
         4y1Y32HtYt2US/A2Wv6tJtt1dd4uJUR2qAa6An20/TTBFtcuaH+Aq8HUqfmI64eznaIQ
         7EHvKW20HsPzkBhZ+/sQpbg+M689UqxBJoi2wpGIqt6EfmrhoYfetsMSdiD2J+HDLtPF
         AVFQ==
X-Gm-Message-State: AOJu0YxJLHdsC0GLkueHnXrAWzyo2MunLHCcvkGcs0Km+W/CGIUEEbGZ
	Pl9KR/V1p03FhKiN1/5SFfblcth8gsDjTuMBrxp+Kg==
X-Google-Smtp-Source: AGHT+IHdUbkKZ2bTW3F9Qg4PjCMCpRtqgGBYo+9VzsIQ8Arz7Ddo4OzAJxCLa36qrqP4KqitPbbTePoaUqx96PBwxCI=
X-Received: by 2002:a17:90a:b396:b0:277:422d:3a0f with SMTP id
 e22-20020a17090ab39600b00277422d3a0fmr18387610pjr.17.1696260981095; Mon, 02
 Oct 2023 08:36:21 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230919035343.1399389-1-apatel@ventanamicro.com>
 <20230919035343.1399389-2-apatel@ventanamicro.com> <ZRpitP5y1yhzKwbE@infradead.org>
In-Reply-To: <ZRpitP5y1yhzKwbE@infradead.org>
From: Anup Patel <apatel@ventanamicro.com>
Date: Mon, 2 Oct 2023 21:06:08 +0530
Message-ID: <CAK9=C2XyQtHy3__i+fahbi49=j5Z3Z_Bv5s3Ptqjmuaa5q18LA@mail.gmail.com>
Subject: Re: [PATCH 1/7] RISC-V: Detect XVentanaCondOps from ISA string
To: Christoph Hellwig <hch@infradead.org>
Cc: Paolo Bonzini <pbonzini@redhat.com>, Atish Patra <atishp@atishpatra.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Conor Dooley <conor@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Shuah Khan <shuah@kernel.org>, 
	Andrew Jones <ajones@ventanamicro.com>, Mayuresh Chitale <mchitale@ventanamicro.com>, 
	devicetree@vger.kernel.org, kvm@vger.kernel.org, 
	kvm-riscv@lists.infradead.org, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, Oct 2, 2023 at 11:57=E2=80=AFAM Christoph Hellwig <hch@infradead.or=
g> wrote:
>
> On Tue, Sep 19, 2023 at 09:23:37AM +0530, Anup Patel wrote:
> > The Veyron-V1 CPU supports custom conditional arithmetic and
> > conditional-select/move operations referred to as XVentanaCondOps
> > extension. In fact, QEMU RISC-V also has support for emulating
> > XVentanaCondOps extension.
> >
> > Let us detect XVentanaCondOps extension from ISA string available
> > through DT or ACPI.
>
> Umm, I though Linux/riscv would never support vendor specific
> extensions?
>

We already have few T-Head specific extensions so Linux RISC-V
does allow vendor extensions.

Regards,
Anup

