Return-Path: <devicetree+bounces-263788-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AExpHWRWiWlQ7AQAu9opvQ
	(envelope-from <devicetree+bounces-263788-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 04:37:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A26BF10B653
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 04:37:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CD54B3002F89
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 03:36:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87A3B236A73;
	Mon,  9 Feb 2026 03:36:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bytedance.com header.i=@bytedance.com header.b="ANV6cLDv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F04E51F9F70
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 03:36:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.54
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770608189; cv=pass; b=TDkPgvTjWBFm4rPQ2endS6gJ3pywPkpk3zBEkqD+78UEHJxkNOzNvKYNG5Ga+kJ+TcAIhye2EPh/hCqRX3STZRhWcZqey8xbjGWJiR74to01Uh/FahkX2YvEteNpZRFChb8pX+K0GtiDSgJ+PbsN5UbwpYxSYPyY6WWe/T33Drg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770608189; c=relaxed/simple;
	bh=2F/jK64bec8jgwPV36b7Law8rG2yJcwj4/Qs/wreGxI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mopRO2I3s/9g5wlovHnhFUKwZzZnKGAHlnrRgZ0Tolste8+nLPvMKfbff9GrmcH+LC7Af++yXRHJ5E1HkJl2PF9Fr0gbXwGh90+AZoh5RABGVE0xdjuzjEihIZiPwrsALGyc8aNimf27voMo9FdiWisxhiHxn3ExexACspzA4i4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bytedance.com; spf=pass smtp.mailfrom=bytedance.com; dkim=pass (2048-bit key) header.d=bytedance.com header.i=@bytedance.com header.b=ANV6cLDv; arc=pass smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bytedance.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bytedance.com
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-6594382a264so4724169a12.1
        for <devicetree@vger.kernel.org>; Sun, 08 Feb 2026 19:36:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770608187; cv=none;
        d=google.com; s=arc-20240605;
        b=JHxvZxFwDDiwRQU3hKcLL43epAaceXQRZfxrLIVEVBfF3eHg9u/enZls/up+Oojrj4
         1m8agWm7F4unV3+uYHHCYor/4MgTPflZW4KUVkRA/9oWmnxfH5l344TN6K/EiIbdt49Z
         S/4U23to66wQjnHl1yF4ziK18BgcNg4guO/5+Gqo1XDSMMjDe+Ca2boWDCUEf/pE8M6/
         DApq6hCmINIcRJ63R8czpREXK4bugFxY5QwGkpp/5i35gKbIAWQvXQukYa3aGNvPNp32
         tMIC+RknxqjTllaGzkl4aR7K6+5UZHmv9WVlFDZJZbdm7gg4CUv6zlm1IrauqSbENI8g
         F3Ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=dgf3bFVZrp6swEDkel5fmNbp8R9hFafE4rfJYRWPjoA=;
        fh=snqanUtgCYcuaIsOfxdT206pfyeC0CK5vUvwALsE1J8=;
        b=DHhFy0L7agyCiVJXpWbgo4y9uQK6vuEVci6EUHBQtB85sdOaoxt6yqAOHR3RlT+bxC
         AqljppcuxjKp8KVkuHOvVol3HOuLGeju+JMJ1mKhOCh4gfqGGNXQM25kh80RRvWf6xn2
         3QWkrX4+jWQ8yEAB/euj8f5a41/p8Xa0nWIUsMUTVcb8WMkvJmmGWCBlOb/Pyd24QHC0
         Q4P0KZtCoUrdtwTj7f/8NQcfwCdPd6iIQNoAG3y3UyPNEo7bJi1ckM0pMouJ++AiVb56
         4wbayrj72Vt7WJhrILQYodmUQtMoLF98LLTqU5YfqyeGrHRXS4++U7Gpj8ucJ8eY9vlx
         3Bcw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bytedance.com; s=google; t=1770608187; x=1771212987; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dgf3bFVZrp6swEDkel5fmNbp8R9hFafE4rfJYRWPjoA=;
        b=ANV6cLDvyl9uZvESer9fGgwQopb2/MhgJszPzEdp5FuwfGP5B/gteR22RaWqs+9dzU
         QU9jxAq7nnUIY4vFjNwLCU03e0lfWKOWt3hUALdUtAVhJEleSXcSDtycNEJQMHkAwAns
         b1Qvk7+Qr4FSZve5Bke05MJb5PG5A064NFvxREYE1TJfFhPLgJ3YwivceldIkAglEe7H
         dGfN+t7Wv6AyEcaZbZurfnZs1Mn0oYW1y8TymAnpaDWDb4ovE74qOqjqrZd9Swy6y5Ai
         HcF6Ei3OusYwsAwRuwGZfSpSS31IX0lZDfGC7Ze3OLrt/ani0zcWoBHVZkp0IAt3GnwV
         fHPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770608187; x=1771212987;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=dgf3bFVZrp6swEDkel5fmNbp8R9hFafE4rfJYRWPjoA=;
        b=xD+9j1atuRayye18sFcKKN8d/ccNUTSq9jNau6dJZJMui20/+L8Wx3bdSCJ0ZSUFyZ
         grxuraPdy0vQkUEW6MyXrgvgM4OshjW8j4TlTbJr/v1V1xOyqgM8DI5cCLIWvJzljVXr
         0jGAHHpxwKHdJ3SbTpEH8KK9oevf3eIZACuXMOPwY8MQyr1cuqX0+PNBrLQhnTtwL3Tn
         jVOOgM8X8W05FI0KJSmmwtX6lO0M4MpqwLJ0r7WXQJhcy8VY0NpZgMQaRbvN9tgVY2bb
         j0S2G5XEsEqFYwTzm0/icZZLwsFcLWtsoGhFcMClGJfyBmjdu33gxmLtevXRkrGTRDRz
         z/cw==
X-Forwarded-Encrypted: i=1; AJvYcCUsiaYOV2KphAcpB/bFvUJdsKOx+fP/o31YjLQCQdbpQt4/dk9RBfMLlSXxKa63D95PvcTVu58vB6QO@vger.kernel.org
X-Gm-Message-State: AOJu0Yxfkem4laBXbIz+p9ZHtlhbp5V5dL27JY4xMoKaTnP+kMW659JG
	18XWOKftENCce3n9l1rn2SWodYojwwap9AqoHMKdpa18inFD+BnYYEz730gbIiyFNYJEgNkDnom
	bIwPpJU23WATc9v5SVWuF9Ahg5woTMVF3Iz+wFnu3sA==
X-Gm-Gg: AZuq6aL758zSDxX3jjJ3v1UmCrJ4w2ZBgWafTGji2cWpmiHF/2rYZ0xbldgFoyA70+Y
	vdWqn4M06zI3sqNLkp88clCEQL45nkGBrGaDGpDuiW2sTleoYydYZIoXhL5yrBHuvX8bvW9XdLf
	d3dRMIuxvE0j4I8gZ4NXC2HAGBPMS/f1lcVc2/BZ44yJHH/wH53erMIZyeWlaRJhQtinCkiFZKz
	zROi0w0tS+3fGZGmT/vEQe05bHVWmQZkA02nmfCIPizeIEsv85C4mLHoe0B+dXwOVF72Dd4WE3H
	qJ7O
X-Received: by 2002:a05:6402:5188:b0:658:cc59:1624 with SMTP id
 4fb4d7f45d1cf-65984116e20mr4771993a12.5.1770608187211; Sun, 08 Feb 2026
 19:36:27 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260128-ssqosid-cbqri-v2-0-dca586b091b9@kernel.org>
 <20260128-ssqosid-cbqri-v2-3-dca586b091b9@kernel.org> <CAEEQ3wkqC4jFf1LGgh2c6dgGwT=tuvpFV+D4fiw40P3LZ7_8hg@mail.gmail.com>
 <aYfnbc3T81RRxz5r@gen8>
In-Reply-To: <aYfnbc3T81RRxz5r@gen8>
From: yunhui cui <cuiyunhui@bytedance.com>
Date: Mon, 9 Feb 2026 11:36:16 +0800
X-Gm-Features: AZwV_QgwWHnA5m1kxr57YAvjsSYdUx_1aHt2EEPh2W2BDaodUZAsXnYDqE8xcQ8
Message-ID: <CAEEQ3wntQWi_itwA716qjaFBMd18FR3nb6rMz5STw+DGtYjp+A@mail.gmail.com>
Subject: Re: [External] [PATCH RFC v2 03/17] RISC-V: Add support for srmcfg
 CSR from Ssqosid ext
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[bytedance.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263788-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[41];
	FREEMAIL_CC(0.00)[kernel.org,dabbelt.com,eecs.berkeley.edu,ghiti.fr,ventanamicro.com,sifive.com,baylibre.com,semihalf.com,linux.dev,rivosinc.com,linux.alibaba.com,gmail.com,zte.com.cn,intel.com,amd.com,google.com,arm.com,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[cuiyunhui@bytedance.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[bytedance.com:+];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bytedance.com:dkim,mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,arm.com:url,semihalf.com:email]
X-Rspamd-Queue-Id: A26BF10B653
X-Rspamd-Action: no action

Hi Drew,

On Sun, Feb 8, 2026 at 9:31=E2=80=AFAM Drew Fustini <fustini@kernel.org> wr=
ote:
>
> On Mon, Feb 02, 2026 at 11:17:52AM +0800, yunhui cui wrote:
> > Hi Drew,
> >
> > On Thu, Jan 29, 2026 at 4:28=E2=80=AFAM Drew Fustini <fustini@kernel.or=
g> wrote:
> > >
> > > Add support for the srmcfg CSR defined in the Ssqosid ISA extension
> > > (Supervisor-mode Quality of Service ID). The CSR contains two fields:
> > >
> > >   - Resource Control ID (RCID) used determine resource allocation
> > >   - Monitoring Counter ID (MCID) used to track resource usage
> > >
> > > Requests from a hart to shared resources like cache will be tagged wi=
th
> > > these IDs. This allows the usage of shared resources to be associated
> > > with the task currently running on the hart.
> > >
> > > A srmcfg field is added to thread_struct and has the same format as t=
he
> > > srmcfg CSR. This allows the scheduler to set the hart's srmcfg CSR to
> > > contain the RCID and MCID for the task that is being scheduled in. Th=
e
> > > srmcfg CSR is only written to if the thread_struct.srmcfg is differen=
t
> > > than the current value of the CSR.
> > >
> > > A per-cpu variable cpu_srmcfg is used to mirror that state of the CSR=
.
> > > This is because access to L1D hot memory should be several times fast=
er
> > > than a CSR read. Also, in the case of virtualization, accesses to thi=
s
> > > CSR are trapped in the hypervisor.
> > >
> > > Link: https://github.com/riscv/riscv-ssqosid/releases/tag/v1.0
> > > Co-developed-by: Kornel Dul=C4=99ba <mindal@semihalf.com>
> > > Signed-off-by: Kornel Dul=C4=99ba <mindal@semihalf.com>
> > > [fustini: rename csr, refactor switch_to, rebase on upstream]
> > > Signed-off-by: Drew Fustini <fustini@kernel.org>
> [..]
> > > diff --git a/arch/riscv/include/asm/qos.h b/arch/riscv/include/asm/qo=
s.h
> > > new file mode 100644
> > > index 000000000000..84830d7c6dc4
> > > --- /dev/null
> > > +++ b/arch/riscv/include/asm/qos.h
> > > @@ -0,0 +1,41 @@
> > > +/* SPDX-License-Identifier: GPL-2.0 */
> > > +#ifndef _ASM_RISCV_QOS_H
> > > +#define _ASM_RISCV_QOS_H
> > > +
> > > +#ifdef CONFIG_RISCV_ISA_SSQOSID
> > > +
> > > +#include <linux/sched.h>
> > > +#include <linux/jump_label.h>
> > > +
> > > +#include <asm/barrier.h>
> > > +#include <asm/csr.h>
> > > +#include <asm/hwcap.h>
> > > +
> > > +/* cached value of srmcfg csr for each cpu */
> > > +DECLARE_PER_CPU(u32, cpu_srmcfg);
> > > +
> > > +static inline void __switch_to_srmcfg(struct task_struct *next)
> > > +{
> > > +       u32 *cpu_srmcfg_ptr =3D this_cpu_ptr(&cpu_srmcfg);
> > > +       u32 thread_srmcfg;
> > > +
> > > +       thread_srmcfg =3D READ_ONCE(next->thread.srmcfg);
> >
> >
> > First set the cpu_list, and then the condition thread_srmcfg !=3D
> > *cpu_srmcfg_ptr will not be satisfied. Is a default value required
> > here? Both code paths for cpu_list and tasks are compared against the
> > default value; you may refer to the implementation of mpam.
>
> I'm having trouble finding cpu_list but I think that it does make sense
> to set the initial value.
>
> Were you thinking I should look at mpam_set_cpu_defaults() in
> the mpam_resctrl_glue_v4 [1] branch?

To be exact, it's "cpus_list".  yep, we need logic similar to that of
arm64_mpam_default.

>
> Thanks,
> Drew
>
> [1] https://gitlab.arm.com/linux-arm/linux-bh.git

Thanks,
Yunhui

