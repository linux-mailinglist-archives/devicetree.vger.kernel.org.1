Return-Path: <devicetree+bounces-64838-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B7428BB171
	for <lists+devicetree@lfdr.de>; Fri,  3 May 2024 19:08:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4F7821C22516
	for <lists+devicetree@lfdr.de>; Fri,  3 May 2024 17:08:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59BCB157A76;
	Fri,  3 May 2024 17:08:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="BCEkRgcW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56AB115748E
	for <devicetree@vger.kernel.org>; Fri,  3 May 2024 17:08:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714756126; cv=none; b=JdIlmMeYruABGbp+V44GIrI4xCdopOayyuW9emV0xMQBXMdv/5XCKifhBfi4D8A/9OXF6csuIPOAZ2Urd6QlFV2dViCgPWUDwlY+V+hn+hBmMlDWV9tcafKSV/y08qr+W6sVkFao/Ja1eAvQ7n2gXdoAZZpxhoy9zU3ZGAT4H3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714756126; c=relaxed/simple;
	bh=tjBVqV0e3mB+a3mVKNBc8waALPm4yw/SXl9iYAZEwA8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=frpigccL2QnQE88AUVbgeibR842Wfu9bZzw2YjHW40XTP3+Py7c8yML7T5bnqPF1IMs1q191ol293Nem5YXJLeCZ5kkqIv6NRwMQmDxYTw2HjmH0uAdGDSWbDvbgzoDGjHeGMXwGmtp+wClXAOf3OugnpbbK2MDZfkOBYj9e+30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=BCEkRgcW; arc=none smtp.client-ip=209.85.216.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-2b387e2e355so1604695a91.3
        for <devicetree@vger.kernel.org>; Fri, 03 May 2024 10:08:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1714756123; x=1715360923; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=gt87Sr6itbk+KMDGSG8ct9g9uJtFf//vhHjuaZsqwkI=;
        b=BCEkRgcWZzoVlTSP0r3hZj3I2m62la7ouhXHSWwJ23MVcobra2m8kJkP8UoPTGfwuk
         iWr/20k9qORu1///ne6wofNUPzAawXDZolKfbT+4VmUkc3+ZMhmAmx0gL9jj4w88oiw6
         P4xRi4JEe4f33KaoVrWRpkIESEOGEqM+uyRqZm9oIR0mOssk4VwYVv43gioh0WdIKc94
         Xn0fBNOJKIXcXGIykXZ7eSTkU8GE55FHQkVw2XLCrmBLQMhlEf7gD6mbsgEo+lmhpMLN
         bHnFRtAFqU2Ebl/GIv5xgwxusoYthCn3RPqPHpBW7BgabUzFjK81ixpxsbdGHbySDODP
         f8MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714756123; x=1715360923;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gt87Sr6itbk+KMDGSG8ct9g9uJtFf//vhHjuaZsqwkI=;
        b=GQ/4Mf0dV1fxYhogFkDH0nQGpknACvbDS5kslsTqNaCWwbUoGrxyr1dXUI2AmOxVrl
         nta3oW3NcjWetBNNWuuN3U5mlcqEsj2wVs7ptsTP9H5frrLpbwlGm0x1HBzd+T5kHIY/
         KvfKDf1Bw/MQpU3tlgDFFaWKeATA/viLqfluVyn8Au2c5h9DmXS5xa+/VaBc+eQP60Wz
         NhN16miYAvh+uj4WHcssggQAJq9wL0Y3gn1gJNmDyMeV6mx1lYQ03yo4hdyPEpLPVPQw
         JjFDcRcGmEpMSiUqxmRbGIlafPRJWIfv8KNHUoLPsbkvoVRJiheqC+q+4xT4qqdEX7h1
         QpoQ==
X-Forwarded-Encrypted: i=1; AJvYcCWWRVfljCU9tv6PJD661AytfuROPbVHlG5JiCwH1HXXZSn56JMOyhlFpdhY/4yHLfWlQ1TgjFvjURKBvEqWM9CNfViT9zHhxxGlpg==
X-Gm-Message-State: AOJu0YxA/vgklyeEl4UObgWdTgD7bXpGgtedu9VHYtHsIIKxS2Zs26Ta
	Wipufddjb85TSCaHGTc3JxYYXeu7fFd6B7gOXrzsp16KVQxU3guQPQti99TsVLY=
X-Google-Smtp-Source: AGHT+IFiwNqMlPlJg4Gfiugg6co/pvD0T8l2vqAyIv5m8miJml11Mc7muKGURXRNyTFwD8hg/uXRHg==
X-Received: by 2002:a17:90a:4482:b0:2ac:23ec:6a54 with SMTP id t2-20020a17090a448200b002ac23ec6a54mr4152642pjg.38.1714756123566;
        Fri, 03 May 2024 10:08:43 -0700 (PDT)
Received: from ghost ([2601:647:5700:6860:f8a2:eea3:33:d368])
        by smtp.gmail.com with ESMTPSA id pq10-20020a17090b3d8a00b002af8056917csm5267863pjb.29.2024.05.03.10.08.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 May 2024 10:08:43 -0700 (PDT)
Date: Fri, 3 May 2024 10:08:40 -0700
From: Charlie Jenkins <charlie@rivosinc.com>
To: Evan Green <evan@rivosinc.com>
Cc: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Guo Ren <guoren@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Conor Dooley <conor.dooley@microchip.com>,
	=?iso-8859-1?Q?Cl=E9ment_L=E9ger?= <cleger@rivosinc.com>,
	Jonathan Corbet <corbet@lwn.net>, Shuah Khan <shuah@kernel.org>,
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, Palmer Dabbelt <palmer@rivosinc.com>,
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
	linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org
Subject: Re: [PATCH v5 05/17] riscv: Extend cpufeature.c to detect vendor
 extensions
Message-ID: <ZjUaGKhXaanBkHCY@ghost>
References: <20240502-dev-charlie-support_thead_vector_6_9-v5-0-d1b5c013a966@rivosinc.com>
 <20240502-dev-charlie-support_thead_vector_6_9-v5-5-d1b5c013a966@rivosinc.com>
 <CALs-Hsvt4f4hP--6Wb8QAYM20dPFegRj-GeaD7hoJiW1ZY+w4Q@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CALs-Hsvt4f4hP--6Wb8QAYM20dPFegRj-GeaD7hoJiW1ZY+w4Q@mail.gmail.com>

On Fri, May 03, 2024 at 09:28:24AM -0700, Evan Green wrote:
> On Thu, May 2, 2024 at 9:46 PM Charlie Jenkins <charlie@rivosinc.com> wrote:
> >
> > Separate vendor extensions out into one struct per vendor
> > instead of adding vendor extensions onto riscv_isa_ext.
> >
> > Add a hidden config RISCV_ISA_VENDOR_EXT to conditionally include this
> > code.
> >
> > The xtheadvector vendor extension is added using these changes.
> >
> > Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
> > ---
> >  arch/riscv/Kconfig                               |  2 +
> >  arch/riscv/Kconfig.vendor                        | 19 +++++
> >  arch/riscv/include/asm/cpufeature.h              | 18 +++++
> >  arch/riscv/include/asm/vendor_extensions.h       | 34 +++++++++
> >  arch/riscv/include/asm/vendor_extensions/thead.h | 16 ++++
> >  arch/riscv/kernel/Makefile                       |  2 +
> >  arch/riscv/kernel/cpufeature.c                   | 93 +++++++++++++++++++-----
> >  arch/riscv/kernel/vendor_extensions.c            | 18 +++++
> >  arch/riscv/kernel/vendor_extensions/Makefile     |  3 +
> >  arch/riscv/kernel/vendor_extensions/thead.c      | 18 +++++
> >  10 files changed, 203 insertions(+), 20 deletions(-)
> >
> > diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> > index be09c8836d56..fec86fba3acd 100644
> > --- a/arch/riscv/Kconfig
> > +++ b/arch/riscv/Kconfig
> > @@ -759,6 +759,8 @@ config RISCV_EFFICIENT_UNALIGNED_ACCESS
> >
> >  endchoice
> >
> > +source "arch/riscv/Kconfig.vendor"
> > +
> >  endmenu # "Platform type"
> >
> >  menu "Kernel features"
> > diff --git a/arch/riscv/Kconfig.vendor b/arch/riscv/Kconfig.vendor
> > new file mode 100644
> > index 000000000000..85ac30496b0e
> > --- /dev/null
> > +++ b/arch/riscv/Kconfig.vendor
> > @@ -0,0 +1,19 @@
> > +menu "Vendor extensions"
> > +
> > +config RISCV_ISA_VENDOR_EXT
> > +       bool
> > +
> > +menu "T-Head"
> > +config RISCV_ISA_VENDOR_EXT_THEAD
> > +       bool "T-Head vendor extension support"
> > +       select RISCV_ISA_VENDOR_EXT
> > +       default y
> > +       help
> > +         Say N here to disable detection of and support for all T-Head vendor
> > +         extensions. Without this option enabled, T-Head vendor extensions will
> > +         not be detected at boot and their presence not reported to userspace.
> > +
> > +         If you don't know what to do here, say Y.
> > +endmenu
> > +
> > +endmenu
> > diff --git a/arch/riscv/include/asm/cpufeature.h b/arch/riscv/include/asm/cpufeature.h
> > index 0c4f08577015..fedd479ccfd1 100644
> > --- a/arch/riscv/include/asm/cpufeature.h
> > +++ b/arch/riscv/include/asm/cpufeature.h
> > @@ -35,6 +35,24 @@ extern u32 riscv_vlenb_of;
> >
> >  void riscv_user_isa_enable(void);
> >
> > +#define _RISCV_ISA_EXT_DATA(_name, _id, _subset_exts, _subset_exts_size) {     \
> > +       .name = #_name,                                                         \
> > +       .property = #_name,                                                     \
> > +       .id = _id,                                                              \
> > +       .subset_ext_ids = _subset_exts,                                         \
> > +       .subset_ext_size = _subset_exts_size                                    \
> > +}
> > +
> > +#define __RISCV_ISA_EXT_DATA(_name, _id) _RISCV_ISA_EXT_DATA(_name, _id, NULL, 0)
> > +
> > +/* Used to declare pure "lasso" extension (Zk for instance) */
> > +#define __RISCV_ISA_EXT_BUNDLE(_name, _bundled_exts) \
> > +       _RISCV_ISA_EXT_DATA(_name, RISCV_ISA_EXT_INVALID, _bundled_exts, ARRAY_SIZE(_bundled_exts))
> > +
> > +/* Used to declare extensions that are a superset of other extensions (Zvbb for instance) */
> > +#define __RISCV_ISA_EXT_SUPERSET(_name, _id, _sub_exts) \
> > +       _RISCV_ISA_EXT_DATA(_name, _id, _sub_exts, ARRAY_SIZE(_sub_exts))
> > +
> >  #if defined(CONFIG_RISCV_MISALIGNED)
> >  bool check_unaligned_access_emulated_all_cpus(void);
> >  void unaligned_emulation_finish(void);
> > diff --git a/arch/riscv/include/asm/vendor_extensions.h b/arch/riscv/include/asm/vendor_extensions.h
> > new file mode 100644
> > index 000000000000..bf4dac66e6e6
> > --- /dev/null
> > +++ b/arch/riscv/include/asm/vendor_extensions.h
> > @@ -0,0 +1,34 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only */
> > +/*
> > + * Copyright 2024 Rivos, Inc
> > + */
> > +
> > +#ifndef _ASM_VENDOR_EXTENSIONS_H
> > +#define _ASM_VENDOR_EXTENSIONS_H
> > +
> > +#include <asm/cpufeature.h>
> > +
> > +#include <linux/array_size.h>
> > +#include <linux/types.h>
> > +
> > +/*
> > + * The extension keys of each vendor must be strictly less than this value.
> > + */
> > +#define RISCV_ISA_VENDOR_EXT_MAX 32
> > +
> > +struct riscv_isavendorinfo {
> > +       DECLARE_BITMAP(isa, RISCV_ISA_VENDOR_EXT_MAX);
> > +};
> 
> Nice, I think this was a good compromise: being honest with the
> compiler about the fixed array sizes, with the tradeoff that all
> vendors have to use the same ceiling for the number of bits. If one
> vendor raises this ceiling absurdly and starts creating huge amounts
> of waste we can revisit.
> 
> > +
> > +struct riscv_isa_vendor_ext_data_list {
> > +       const size_t ext_data_count;
> > +       const struct riscv_isa_ext_data *ext_data;
> > +       struct riscv_isavendorinfo per_hart_isa_bitmap[NR_CPUS];
> > +       struct riscv_isavendorinfo all_harts_isa_bitmap;
> > +};
> > +
> > +extern struct riscv_isa_vendor_ext_data_list *riscv_isa_vendor_ext_list[];
> > +
> > +extern const size_t riscv_isa_vendor_ext_list_size;
> > +
> > +#endif /* _ASM_VENDOR_EXTENSIONS_H */
> > diff --git a/arch/riscv/include/asm/vendor_extensions/thead.h b/arch/riscv/include/asm/vendor_extensions/thead.h
> > new file mode 100644
> > index 000000000000..48421d1553ad
> > --- /dev/null
> > +++ b/arch/riscv/include/asm/vendor_extensions/thead.h
> > @@ -0,0 +1,16 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +#ifndef _ASM_RISCV_VENDOR_EXTENSIONS_THEAD_H
> > +#define _ASM_RISCV_VENDOR_EXTENSIONS_THEAD_H
> > +
> > +#include <asm/vendor_extensions.h>
> > +
> > +#include <linux/types.h>
> > +
> > +/*
> > + * Extension keys must be strictly less than RISCV_ISA_VENDOR_EXT_MAX.
> > + */
> > +#define RISCV_ISA_VENDOR_EXT_XTHEADVECTOR              0
> > +
> > +extern struct riscv_isa_vendor_ext_data_list riscv_isa_vendor_ext_list_thead;
> > +
> > +#endif
> > diff --git a/arch/riscv/kernel/Makefile b/arch/riscv/kernel/Makefile
> > index 81d94a8ee10f..53361c50fb46 100644
> > --- a/arch/riscv/kernel/Makefile
> > +++ b/arch/riscv/kernel/Makefile
> > @@ -58,6 +58,8 @@ obj-y += riscv_ksyms.o
> >  obj-y  += stacktrace.o
> >  obj-y  += cacheinfo.o
> >  obj-y  += patch.o
> > +obj-y  += vendor_extensions.o
> > +obj-y  += vendor_extensions/
> >  obj-y  += probes/
> >  obj-y  += tests/
> >  obj-$(CONFIG_MMU) += vdso.o vdso/
> > diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
> > index 12c79db0b0bb..cc9ec393c8f6 100644
> > --- a/arch/riscv/kernel/cpufeature.c
> > +++ b/arch/riscv/kernel/cpufeature.c
> > @@ -24,6 +24,7 @@
> >  #include <asm/processor.h>
> >  #include <asm/sbi.h>
> >  #include <asm/vector.h>
> > +#include <asm/vendor_extensions.h>
> >
> >  #define NUM_ALPHA_EXTS ('z' - 'a' + 1)
> >
> > @@ -102,24 +103,6 @@ static bool riscv_isa_extension_check(int id)
> >         return true;
> >  }
> >
> > -#define _RISCV_ISA_EXT_DATA(_name, _id, _subset_exts, _subset_exts_size) {     \
> > -       .name = #_name,                                                         \
> > -       .property = #_name,                                                     \
> > -       .id = _id,                                                              \
> > -       .subset_ext_ids = _subset_exts,                                         \
> > -       .subset_ext_size = _subset_exts_size                                    \
> > -}
> > -
> > -#define __RISCV_ISA_EXT_DATA(_name, _id) _RISCV_ISA_EXT_DATA(_name, _id, NULL, 0)
> > -
> > -/* Used to declare pure "lasso" extension (Zk for instance) */
> > -#define __RISCV_ISA_EXT_BUNDLE(_name, _bundled_exts) \
> > -       _RISCV_ISA_EXT_DATA(_name, RISCV_ISA_EXT_INVALID, _bundled_exts, ARRAY_SIZE(_bundled_exts))
> > -
> > -/* Used to declare extensions that are a superset of other extensions (Zvbb for instance) */
> > -#define __RISCV_ISA_EXT_SUPERSET(_name, _id, _sub_exts) \
> > -       _RISCV_ISA_EXT_DATA(_name, _id, _sub_exts, ARRAY_SIZE(_sub_exts))
> > -
> >  static const unsigned int riscv_zk_bundled_exts[] = {
> >         RISCV_ISA_EXT_ZBKB,
> >         RISCV_ISA_EXT_ZBKC,
> > @@ -353,6 +336,21 @@ static void __init riscv_parse_isa_string(unsigned long *this_hwcap, struct risc
> >                 bool ext_long = false, ext_err = false;
> >
> >                 switch (*ext) {
> > +               case 'x':
> > +               case 'X':
> > +                       if (acpi_disabled)
> > +                               pr_warn_once("Vendor extensions are ignored in riscv,isa. Use riscv,isa-extensions instead.");
> > +                       /*
> > +                        * To skip an extension, we find its end.
> > +                        * As multi-letter extensions must be split from other multi-letter
> > +                        * extensions with an "_", the end of a multi-letter extension will
> > +                        * either be the null character or the "_" at the start of the next
> > +                        * multi-letter extension.
> > +                        */
> > +                       for (; *isa && *isa != '_'; ++isa)
> > +                               ;
> > +                       ext_err = true;
> > +                       break;
> >                 case 's':
> >                         /*
> >                          * Workaround for invalid single-letter 's' & 'u' (QEMU).
> > @@ -368,8 +366,6 @@ static void __init riscv_parse_isa_string(unsigned long *this_hwcap, struct risc
> >                         }
> >                         fallthrough;
> >                 case 'S':
> > -               case 'x':
> > -               case 'X':
> >                 case 'z':
> >                 case 'Z':
> >                         /*
> > @@ -572,6 +568,59 @@ static void __init riscv_fill_hwcap_from_isa_string(unsigned long *isa2hwcap)
> >                 acpi_put_table((struct acpi_table_header *)rhct);
> >  }
> >
> > +static void __init riscv_fill_cpu_vendor_ext(struct device_node *cpu_node, int cpu)
> > +{
> > +       if (!IS_ENABLED(CONFIG_RISCV_ISA_VENDOR_EXT))
> > +               return;
> > +
> > +       for (int i = 0; i < riscv_isa_vendor_ext_list_size; i++) {
> > +               struct riscv_isa_vendor_ext_data_list *ext_list = riscv_isa_vendor_ext_list[i];
> > +
> > +               for (int j = 0; j < ext_list->ext_data_count; j++) {
> > +                       const struct riscv_isa_ext_data ext = ext_list->ext_data[j];
> > +                       struct riscv_isavendorinfo *isavendorinfo = &ext_list->per_hart_isa_bitmap[cpu];
> > +
> > +                       if (of_property_match_string(cpu_node, "riscv,isa-extensions",
> > +                                                    ext.property) < 0)
> > +                               continue;
> > +
> > +                       /*
> > +                        * Assume that subset extensions are all members of the
> > +                        * same vendor.
> > +                        */
> > +                       if (ext.subset_ext_size)
> > +                               for (int k = 0; k < ext.subset_ext_size; k++)
> > +                                       set_bit(ext.subset_ext_ids[k], isavendorinfo->isa);
> > +
> > +                       set_bit(ext.id, isavendorinfo->isa);
> > +               }
> > +       }
> > +}
> > +
> > +static void __init riscv_fill_vendor_ext_list(int cpu)
> > +{
> > +       bool first = true;
> > +
> > +       if (!IS_ENABLED(CONFIG_RISCV_ISA_VENDOR_EXT))
> > +               return;
> > +
> > +       for (int i = 0; i < riscv_isa_vendor_ext_list_size; i++) {
> > +               struct riscv_isa_vendor_ext_data_list *ext_list = riscv_isa_vendor_ext_list[i];
> > +
> > +               if (first) {
> > +                       bitmap_copy(ext_list->all_harts_isa_bitmap.isa,
> > +                                   ext_list->per_hart_isa_bitmap[cpu].isa,
> > +                                   RISCV_ISA_VENDOR_EXT_MAX);
> > +                       first = false;
> 
> I think this is still not quite right. This behaves properly when
> called on the first cpu (let's say 0), but then we call it again with
> cpu 1, first gets set to true, and we clobber the old work we did for
> cpu 0. If we knew that cpu 0 was always called first (this looks true
> since both calls are within a for_each_possible_cpu() loop), and that
> this was only called once at boot for cpu 0 (looks true, and
> riscv_fill_hwcap() is __init), then it could be bool first = cpu == 0.

Assuming that the first cpu is 0 should be safe, but to eliminate that
assumption we can pass in a "first" parameter into this function that
will only be true the first time this function is called. We also keep
"first = false" in this function so the copy only happens on the first
iteration of the first cpu.

- Charlie


