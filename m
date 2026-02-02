Return-Path: <devicetree+bounces-261777-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oExoKEWGgGnE8wIAu9opvQ
	(envelope-from <devicetree+bounces-261777-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 12:11:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 16E4ECB83F
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 12:11:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D2E8830386CB
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 11:09:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F84535C1AB;
	Mon,  2 Feb 2026 11:09:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bytedance.com header.i=@bytedance.com header.b="IC2CZLC/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D823135FF67
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 11:09:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.218.49
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770030545; cv=pass; b=ibPUEJGD8iw5go78TeMsSmCrsmcdLVXXMGFiDcbrcVHTYL3UeYGhr2U1Z1fPM88BNua9AuN/v9cP1WvwQ3diGoO435/qK7AnPxnOOwOdg0kciUkwNTwTUjE6KMSSMho5V8/SsG1r+C2Gu98SXGL2dZc+JaOQVVwcoPWhhgCyj88=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770030545; c=relaxed/simple;
	bh=yX2BFHpOk9prwEk0tuLWfmquAHMWjjQf84eyNI+WYFI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WsQ7oU6u/jNZqzVEL6ueEaXyphvLE5u83+diu45dEIkewOublph5vYZTVZMjJyW1uoli/njXHXHmDQmI9h04NYapbuGmEk3O7Zv78ggoWbfqEdoAetkwDy0uAn4bQh6yw8IxlR8Sg2NDZZF5O/n1tBu1gPFsc+lA3YsSh6f0Pjc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bytedance.com; spf=pass smtp.mailfrom=bytedance.com; dkim=pass (2048-bit key) header.d=bytedance.com header.i=@bytedance.com header.b=IC2CZLC/; arc=pass smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bytedance.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bytedance.com
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-b884ad1026cso692076866b.2
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 03:09:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770030540; cv=none;
        d=google.com; s=arc-20240605;
        b=OWOx7mCMrDIxVEQM2i4uMVlq7jfmNZWWV/NfSVbC/Ig7sAppKJSpZkkl0oaSmQR4D+
         x7NSGdNDs1YCGDeefv87ls/KCm0TSAXHp5viirrT9n9/1f78dga5ax3yPRwOLd5fKpVo
         doz3AgiezoJy+JTz/UQc4KfYQyPlWSvw3ZCAJ4cGIW/MaBatt2VUs+8d9Q7b5xcQ6TZY
         8HfLyJap7t3HKXP4wgZZl7LkpUXkbj3qrB+5iGMkcbN3/CSOgd3a1Dn5Y6nrFIINuQbs
         4dlXI9fl7FQjzFzGW8iWvpM0TtzmBKc/mDXnmgrw7tYm7ITAP6giDkKzNRQ8vttBqTf/
         mWGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=MoxmKC3AEBhB/kOsYxXfyqRCe6TK6YEU6RcRE5k82eE=;
        fh=xLuu1vHcAHkSrbhpbol1EPsR6ndUdwMgcV8tU3/GaaI=;
        b=Cu5h8FuHspYG1Asb/p2qA3U74AJPBPElIWIC0BgAipvCD8N2K+lPgCb3pcH1fqGuWq
         DG31Wn6eYjh7KoZihu/loLYl8aHZePnxbEYw35BVDE7qNgHCub2Ue1lvjfjRVEAxaPZi
         OghGgL9szomc3X4JGL2DSy76x/qiIq3/Hm+yKDuR/f+I1NyoGa63zUIE8D4uax1fIBsf
         9j3rAwqF/iJEM+z2DyD49b4iJtFdlGGURVlpCnY4I3bcY1DVN7oUHKIkafXl5ZXzmUOv
         dYKAz27CFInS1mGFb8L4TvYJ6ZFb71a1E1cgn/A/LnZ46nUHVYFAHOBOoT3TIAcx33oO
         ZlPA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bytedance.com; s=google; t=1770030540; x=1770635340; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MoxmKC3AEBhB/kOsYxXfyqRCe6TK6YEU6RcRE5k82eE=;
        b=IC2CZLC/swfQL3luwYeU1uVXREwp8BZ3pya4e0Vx1CXxFfUK5+GGBdD+/csyifbplO
         9x7Bhvb1tPYGRiv/gBolWIN8NWeDVZbQ0Wj4AoAMT3b39Rr8mU9OW90aJgGIgvlmhsgK
         pVb9T18wqUhY2rARIJM//bJaohgp8peKF7U5+TUIWorhS2m4s7CYOXi3g5QSu4RYvSRx
         tBsR4nQB66Y7jTG438pQ+fLdoAIIdiRmyDuWhuRYOYmyTnuQ5PRJz05pLkeNtuCc16p7
         CDQVazD3I8oPky00QMp2lxbE6eTpwSRo2qiODOXs/iH6sAcAdjplCePaZWZX6eaA5IId
         RYEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770030540; x=1770635340;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=MoxmKC3AEBhB/kOsYxXfyqRCe6TK6YEU6RcRE5k82eE=;
        b=LNLGLFmUdRQsMgb+YB7MWbjRjR9I36hMUm28yXaVq2PLjC6Ot/osFCZtEFw/c0SMfM
         VtQ/2zQ2es5r0BJMVd72H3W2BIbrxm0e0PKN8qVru9O872d13SHGcZHA08vMcmz8I5kR
         DBhOvkGU2+jRvzozTZkATkelEFfo77DxSEatBmoW3kabcN7qPG9DWdBq79dQk/LdtKlp
         CODemd5OtdtAShbZ4wOpuPeOX0+MLZP9F0iDBYOixXCnel124j9knj62jxY9/WhqwquE
         YQBkzQi8lG2VCzg8H2jiMO3+zgfBcEeh/FzU5FiuFmkbbro4bGmQH0DB68lPMjSPW0NE
         0+vA==
X-Forwarded-Encrypted: i=1; AJvYcCXfwHxlUX7SP2ZJ9AWfrdr54d+fP0F1kDPxAe6i2mAeNN8/nQY8vM7c7zQjCSVtcGUINEQftBGkuUGc@vger.kernel.org
X-Gm-Message-State: AOJu0YwofBr3P4YXw1IShdYIOqGuX3lGHDxKwcQe5HD/Otl9Ux6IWAeC
	g8LKgUJluwCm06MvAlv12KsQrQGf+xuKShh3SRQLOSLJQ9YXlomTsCjtmcDd6vtm4UScQlXgIx5
	0KSejebOHg3PYF3rPhaf/DGeJr6gV9L4HK8Ybgq7ebg==
X-Gm-Gg: AZuq6aKMt5lCl7H9hEXg2ts+vtlLObvtjbiRTiHvIDcPsSX9l5umz3/imMMPyBRoOyk
	w7JMuU/o4019Ut9Og3cNl+lT29nPcjiBO0wA/DTHORzpE2H1IMY6e+1LPT139MCSWvIQzpOuoko
	8GPFCb8J7g5d7dpht2MVB0XeaMxE8fBv50pzrGwXAZtfM+V+lPvDm4o5RBO+QJ7Q2zrDvzpO5wo
	jbSdkSvw9OaShV1TTo4dsjJQC9vsW/sGGGbpXNr3z50pPymreOYA0U0jcXrRR1xRbxLADsgNwA2
	XA==
X-Received: by 2002:a17:906:6a29:b0:b88:6c85:6284 with SMTP id
 a640c23a62f3a-b8dff5488d5mr604091766b.15.1770030539874; Mon, 02 Feb 2026
 03:08:59 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260128-ssqosid-cbqri-v2-0-dca586b091b9@kernel.org> <20260128-ssqosid-cbqri-v2-16-dca586b091b9@kernel.org>
In-Reply-To: <20260128-ssqosid-cbqri-v2-16-dca586b091b9@kernel.org>
From: yunhui cui <cuiyunhui@bytedance.com>
Date: Mon, 2 Feb 2026 19:08:48 +0800
X-Gm-Features: AZwV_QhzRM-HhD39oxnkszZgHj-oBq0usZXp2z8CIfC66bnYNgWIMZ8r9zOmvVI
Message-ID: <CAEEQ3wnAqSFUhezyUmJQut8eXThGJ1zxtdNTbFtJusyDstgVUg@mail.gmail.com>
Subject: Re: [External] [PATCH RFC v2 16/17] acpi: riscv: Parse RISC-V Quality
 of Service Controller (RQSC) table
To: Drew Fustini <fustini@kernel.org>
Cc: Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
	=?UTF-8?B?UmFkaW0gS3LEjW3DocWZ?= <rkrcmar@ventanamicro.com>, 
	Samuel Holland <samuel.holland@sifive.com>, Adrien Ricciardi <aricciardi@baylibre.com>, 
	Nicolas Pitre <npitre@baylibre.com>, =?UTF-8?Q?Kornel_Dul=C4=99ba?= <mindal@semihalf.com>, 
	Atish Patra <atish.patra@linux.dev>, Atish Kumar Patra <atishp@rivosinc.com>, 
	Vasudevan Srinivasan <vasu@rivosinc.com>, Ved Shanbhogue <ved@rivosinc.com>, 
	Chen Pei <cp0613@linux.alibaba.com>, Liu Zhiwei <zhiwei_liu@linux.alibaba.com>, 
	Weiwei Li <liwei1518@gmail.com>, guo.wenjia23@zte.com.cn, liu.qingtao2@zte.com.cn, 
	Reinette Chatre <reinette.chatre@intel.com>, Tony Luck <tony.luck@intel.com>, 
	Babu Moger <babu.moger@amd.com>, Peter Newman <peternewman@google.com>, 
	Fenghua Yu <fenghua.yu@intel.com>, James Morse <james.morse@arm.com>, 
	Ben Horgan <ben.horgan@arm.com>, Dave Martin <Dave.Martin@arm.com>, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org, x86@kernel.org, 
	Rob Herring <robh@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>, Len Brown <lenb@kernel.org>, 
	Robert Moore <robert.moore@intel.com>, Sunil V L <sunilvl@ventanamicro.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, linux-acpi@vger.kernel.org, 
	acpica-devel@lists.linux.dev, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[bytedance.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[bytedance.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261777-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_CC(0.00)[kernel.org,dabbelt.com,eecs.berkeley.edu,ghiti.fr,ventanamicro.com,sifive.com,baylibre.com,semihalf.com,linux.dev,rivosinc.com,linux.alibaba.com,gmail.com,zte.com.cn,intel.com,amd.com,google.com,arm.com,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[41];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[cuiyunhui@bytedance.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[bytedance.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 16E4ECB83F
X-Rspamd-Action: no action

Hi Drew,

On Thu, Jan 29, 2026 at 4:28=E2=80=AFAM Drew Fustini <fustini@kernel.org> w=
rote:
>
> Add driver to parse the ACPI RISC-V Quality of Service Controller (RQSC)
> table which describes the capacity and bandwidth QoS controllers in a
> system. The QoS controllers implement the RISC-V Capacity and Bandwidth
> Controller QoS Register Interface (CBQRI) specification.
>
> Link: https://github.com/riscv-non-isa/riscv-cbqri/releases/tag/v1.0
> Link: https://github.com/riscv-non-isa/riscv-rqsc/blob/main/src/
> Signed-off-by: Drew Fustini <fustini@kernel.org>
> ---
>  MAINTAINERS                   |   1 +
>  arch/riscv/include/asm/acpi.h |  10 ++++
>  drivers/acpi/riscv/Makefile   |   2 +-
>  drivers/acpi/riscv/rqsc.c     | 112 ++++++++++++++++++++++++++++++++++++=
++++++
>  4 files changed, 124 insertions(+), 1 deletion(-)
>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 96ead357a634..e96a83dc9a02 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -22512,6 +22512,7 @@ S:      Supported
>  F:     arch/riscv/include/asm/qos.h
>  F:     arch/riscv/include/asm/resctrl.h
>  F:     arch/riscv/kernel/qos/
> +F:     drivers/acpi/riscv/rqsc.c
>  F:     include/linux/riscv_qos.h
>
>  RISC-V RPMI AND MPXY DRIVERS
> diff --git a/arch/riscv/include/asm/acpi.h b/arch/riscv/include/asm/acpi.=
h
> index 6e13695120bc..16c6e25eed1e 100644
> --- a/arch/riscv/include/asm/acpi.h
> +++ b/arch/riscv/include/asm/acpi.h
> @@ -71,6 +71,16 @@ int acpi_get_riscv_isa(struct acpi_table_header *table=
,
>
>  void acpi_get_cbo_block_size(struct acpi_table_header *table, u32 *cbom_=
size,
>                              u32 *cboz_size, u32 *cbop_size);
> +
> +#ifdef CONFIG_RISCV_ISA_SSQOSID
> +int acpi_parse_rqsc(struct acpi_table_header *table);
> +#else
> +static inline int acpi_parse_rqsc(struct acpi_table_header *table)
> +{
> +       return -EINVAL;
> +}
> +#endif /* CONFIG_RISCV_ISA_SSQOSID */
> +
>  #else
>  static inline void acpi_init_rintc_map(void) { }
>  static inline struct acpi_madt_rintc *acpi_cpu_get_madt_rintc(int cpu)
> diff --git a/drivers/acpi/riscv/Makefile b/drivers/acpi/riscv/Makefile
> index 1284a076fa88..cf0f38c93a9f 100644
> --- a/drivers/acpi/riscv/Makefile
> +++ b/drivers/acpi/riscv/Makefile
> @@ -1,5 +1,5 @@
>  # SPDX-License-Identifier: GPL-2.0-only
> -obj-y                                  +=3D rhct.o init.o irq.o
> +obj-y                                  +=3D rhct.o rqsc.o init.o irq.o
>  obj-$(CONFIG_ACPI_PROCESSOR_IDLE)      +=3D cpuidle.o
>  obj-$(CONFIG_ACPI_CPPC_LIB)            +=3D cppc.o
>  obj-$(CONFIG_ACPI_RIMT)                        +=3D rimt.o
> diff --git a/drivers/acpi/riscv/rqsc.c b/drivers/acpi/riscv/rqsc.c
> new file mode 100644
> index 000000000000..a86ddb39fae4
> --- /dev/null
> +++ b/drivers/acpi/riscv/rqsc.c
> @@ -0,0 +1,112 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (C) 2025 Tenstorrent
> + *     Author: Drew Fustini <fustini@kernel.org>
> + *
> + */
> +
> +#define pr_fmt(fmt) "ACPI: RQSC: " fmt
> +
> +#include <linux/acpi.h>
> +#include <linux/bits.h>
> +#include <linux/riscv_qos.h>
> +
> +#ifdef CONFIG_RISCV_ISA_SSQOSID
> +
> +#define CBQRI_CTRL_SIZE 0x1000
> +
> +static struct acpi_table_rqsc *acpi_get_rqsc(void)
> +{
> +       static struct acpi_table_header *rqsc;
> +       acpi_status status;
> +
> +       /*
> +        * RQSC will be used at runtime on every CPU, so we
> +        * don't need to call acpi_put_table() to release the table mappi=
ng.
> +        */
> +       if (!rqsc) {
> +               status =3D acpi_get_table(ACPI_SIG_RQSC, 0, &rqsc);
> +               if (ACPI_FAILURE(status)) {
> +                       pr_warn_once("No RQSC table found\n");
> +                       return NULL;
> +               }
> +       }
> +
> +       return (struct acpi_table_rqsc *)rqsc;
> +}
> +
> +int acpi_parse_rqsc(struct acpi_table_header *table)
> +{
> +       struct acpi_table_rqsc *rqsc;
> +       int err;
> +
> +       BUG_ON(acpi_disabled);
> +       if (!table) {
> +               rqsc =3D acpi_get_rqsc();
> +               if (!rqsc)
> +                       return -ENOENT;
> +       } else {
> +               rqsc =3D (struct acpi_table_rqsc *)table;
> +       }
> +
> +       for (int i =3D 0; i < rqsc->num; i++) {
> +               struct cbqri_controller_info *ctrl_info;
> +
> +               ctrl_info =3D kzalloc(sizeof(*ctrl_info), GFP_KERNEL);
> +               if (!ctrl_info)
> +                       return -ENOMEM;
> +
> +               ctrl_info->type =3D rqsc->f[i].type;
> +               ctrl_info->addr =3D rqsc->f[i].reg[1];
> +               ctrl_info->size =3D CBQRI_CTRL_SIZE;
> +               ctrl_info->rcid_count =3D rqsc->f[i].rcid;
> +               ctrl_info->mcid_count =3D rqsc->f[i].mcid;
> +
> +               pr_info("Found controller with type %u addr 0x%lx size  %=
lu rcid  %u mcid  %u",
> +                       ctrl_info->type, ctrl_info->addr, ctrl_info->size=
,
> +                       ctrl_info->rcid_count, ctrl_info->mcid_count);
> +
> +               if (ctrl_info->type =3D=3D CBQRI_CONTROLLER_TYPE_CAPACITY=
) {
> +                       ctrl_info->cache.cache_id =3D rqsc->f[i].res.id1;
> +                       ctrl_info->cache.cache_level =3D
> +                               find_acpi_cache_level_from_id(ctrl_info->=
cache.cache_id);
> +
> +                       struct acpi_pptt_cache *cache;
> +
> +                       cache =3D find_acpi_cache_from_id(ctrl_info->cach=
e.cache_id);
> +                       if (cache) {
> +                               ctrl_info->cache.cache_size =3D cache->si=
ze;
> +                       } else {
> +                               pr_warn("%s(): failed to determine size f=
or cache id 0x%x",
> +                                       __func__, ctrl_info->cache.cache_=
id);
> +                               ctrl_info->cache.cache_size =3D 0;
> +                       }
> +
> +                       pr_info("Cache controller has ID 0x%x level %u si=
ze %u ",
> +                               ctrl_info->cache.cache_id, ctrl_info->cac=
he.cache_level,
> +                               ctrl_info->cache.cache_size);
> +
> +                       /*
> +                        * For CBQRI, any cpu (technically a hart in RISC=
-V terms)
> +                        * can access the memory-mapped registers of any =
CBQRI
> +                        * controller in the system.
> +                        */
> +                       err =3D cpumask_parse("FF", &ctrl_info->cache.cpu=
_mask);

Hardcode? acpi_pptt_get_cpumask_from_cache_id(ctrl_info->cache.cache_id,
&ctrl_info->cache.cpu_mask); ?

> +                       if (err)
> +                               pr_err("Failed to convert cores mask stri=
ng to cpumask (%d)", err);
> +
> +               } else if (ctrl_info->type =3D=3D CBQRI_CONTROLLER_TYPE_B=
ANDWIDTH) {
> +                       ctrl_info->mem.prox_dom =3D rqsc->f[i].res.id1;
> +                       pr_info("Memory controller with proximity domain =
%u",
> +                               ctrl_info->mem.prox_dom);
> +               }
> +
> +               /* Fill the list shared with RISC-V QoS resctrl */
> +               INIT_LIST_HEAD(&ctrl_info->list);
> +               list_add_tail(&ctrl_info->list, &cbqri_controllers);
> +       }
> +
> +       return 0;
> +}
> +
> +#endif /* CONFIG_RISCV_ISA_SSQOSID */
>
> --
> 2.43.0
>

Thanks,
Yunhui

