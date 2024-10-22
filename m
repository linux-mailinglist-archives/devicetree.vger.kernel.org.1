Return-Path: <devicetree+bounces-114149-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 77AAB9A9ECA
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 11:43:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 072871F230B8
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 09:43:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A625C1990BD;
	Tue, 22 Oct 2024 09:43:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="g9IcweMe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D6A015E5D3
	for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 09:43:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729590189; cv=none; b=tVZ5pCVglLLc/YMP16AM132anWGvCvsSq4ZxKcS4zHQk9IpnLXH+Fbl71vQjcWjWSYnT1YohQSlWilay7ft5kCICduOIEHzUQJwpSXXIag3VWepz6GStmvvOsajGWHloRvoUEFEN6gAoUGSWnrzp7qIDvqi6+vr6egdLjyiQLFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729590189; c=relaxed/simple;
	bh=txLmdoUiONWARjyb+xS29dOQW460D+29Y344vzBTqjk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JKX/ZM2iOMKhv/pyRPAMdfg2qBfmPGln8HkxmFHKEJ4vbPF3TnYV8oiCn6/2TVc6htdu5jnkww8M09ffmhaCyqO11IdW9Cd8+KeIfUytluKZ+4DovsyvXGio5Q32lRBOHVNZ3jzACUcKBbei0hMC42QyypC+9zCeg1oUQ2Bft+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=g9IcweMe; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-71e7086c231so4084915b3a.0
        for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 02:43:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729590187; x=1730194987; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=zxOy3qEZmNmzEIEfvB5ENTndkOfPjJCJyxw+GSRQOl4=;
        b=g9IcweMezJn1fkYpV6mjYNhhdIgERqvjQ79FOqoytNefvz8LcnY9miln4MAImF925c
         buOiF3BPBJ9IqIhclRUG8aRpxXv5OdjVkd/zztPv5fNIrI7BS7cCETcukIYUMfN271yc
         F/3oXwtfbLuG0/j87y/ELMEBYCZID9W6lLD+0him9YVtFx6Pua66c0NLiq7jD2Mq4QGC
         2SUT43xY4FEutMw/686UmNLn+lrJ8quLMhTicV9Nda6OWcRgDvb+xvQ2amquaE+Gq56V
         5jHJR1JpoSMNBwMTuXp96mhuLnv+fiIlEWj9XLp5QC17oOvCT4u0zrEKmP5VKhiy2Fu7
         eDXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729590187; x=1730194987;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zxOy3qEZmNmzEIEfvB5ENTndkOfPjJCJyxw+GSRQOl4=;
        b=q+1hRuoya9YLHUT+gtA+ms3UmbIa00lI9qqGgEkrC3h8KWPiye5Na2WBUnJJmMTQb6
         05CsQL2rME+VwgfVjUDNXlIhlJnDYIap4sckHNdXn2Xa9WV2eJJp0hjsJg7Se4xCVPS9
         n9VVAgJaiQLKy1lYizuo4BGSPsA+g2mk1Io9bHIny5GFPzMRnLGPlPj1sBPeBChQh1Kr
         N7TAVF9yBqLf3wJTA27C7+Z9W2gq9ozO9TUz/istXj5vHDJU2maEDSQTWKJG5m3BnXrr
         h7LB3uN8MXPySWPVu6wgSdCkXBg0k4dr4/snmvgKt+9WbhdOv3o4DqvfJHnVlqI7qnmY
         ZZMg==
X-Forwarded-Encrypted: i=1; AJvYcCVbdfIs2ebC3bwLahoW5utwEVog5OJ8FKtM4gjHi5OgdYQbpJoLgwVazmPEC/AosMnNZKq4j3JxpZs+@vger.kernel.org
X-Gm-Message-State: AOJu0YyeYWxKrnYf3Q9MjWHUHMNciHMY3326MFpgf4uCeOf76DireG5w
	EZqI2Gf/T/4lMcWjofbosYZXelHPgEs66BBPom0y/gmrmVe+HXPeVFEhNsSIyucr1bIuT+Hzsj4
	GdkyOP7KuUe7g6YmXintUpnxXyBuxrHOG8fjZ8g==
X-Google-Smtp-Source: AGHT+IFdXUreEdJhziP1OnEoJXuklLvbUzxlw97rEbob80jvpkWF7XJJEIxe2lR8vhorr1LLwwJbbOM4Ijvm/xlVlVQ=
X-Received: by 2002:a05:6a00:1995:b0:71e:5997:9d06 with SMTP id
 d2e1a72fcca58-71ea31b0cdamr16566052b3a.11.1729590187217; Tue, 22 Oct 2024
 02:43:07 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241018032217.39728-1-quic_jinlmao@quicinc.com>
 <20241018032217.39728-3-quic_jinlmao@quicinc.com> <67ff561d-cc24-47d7-b983-3cd20bdf289b@arm.com>
In-Reply-To: <67ff561d-cc24-47d7-b983-3cd20bdf289b@arm.com>
From: Mike Leach <mike.leach@linaro.org>
Date: Tue, 22 Oct 2024 10:42:55 +0100
Message-ID: <CAJ9a7VgQX0ZGxLyVDtBrymi0tpqS_r1TKx3k4Wo1Ea35j9k+dA@mail.gmail.com>
Subject: Re: [PATCH v5 2/3] coresight: Add support to get static id for system
 trace sources
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Cc: Mao Jinlong <quic_jinlmao@quicinc.com>, James Clark <james.clark@arm.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, coresight@lists.linaro.org, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 21 Oct 2024 at 13:09, Suzuki K Poulose <suzuki.poulose@arm.com> wrote:
>
> On 18/10/2024 04:22, Mao Jinlong wrote:
> > Dynamic trace id was introduced in coresight subsystem, so trace id is
> > allocated dynamically. However, some hardware ATB source has static trace
> > id and it cannot be changed via software programming. For such source,
> > it can call coresight_get_static_trace_id to get the fixed trace id from
> > device node and pass id to coresight_trace_id_get_static_system_id to
> > reserve the id.
> >
> > Signed-off-by: Mao Jinlong <quic_jinlmao@quicinc.com>
> > ---
> >   .../hwtracing/coresight/coresight-platform.c  |  9 +++++
> >   .../hwtracing/coresight/coresight-trace-id.c  | 38 ++++++++++++++-----
> >   .../hwtracing/coresight/coresight-trace-id.h  |  9 +++++
> >   include/linux/coresight.h                     |  1 +
> >   4 files changed, 47 insertions(+), 10 deletions(-)
> >
> > diff --git a/drivers/hwtracing/coresight/coresight-platform.c b/drivers/hwtracing/coresight/coresight-platform.c
> > index 64e171eaad82..b03aa43d3cba 100644
> > --- a/drivers/hwtracing/coresight/coresight-platform.c
> > +++ b/drivers/hwtracing/coresight/coresight-platform.c
> > @@ -796,6 +796,15 @@ int coresight_get_cpu(struct device *dev)
> >   }
> >   EXPORT_SYMBOL_GPL(coresight_get_cpu);
> >
> > +int coresight_get_static_trace_id(struct device *dev, u32 *id)
> > +{
> > +     if (!is_of_node(dev->fwnode))
> > +             return -EINVAL;
> > +
>
> You don't need this check, with the fwnode_property_read(). Rest looks
> fine to me.
>
> Suzuki
>
>
>
> > +     return fwnode_property_read_u32(dev_fwnode(dev), "arm,static-trace-id", id);
> > +}
> > +EXPORT_SYMBOL_GPL(coresight_get_static_trace_id);
> > +
> >   struct coresight_platform_data *
> >   coresight_get_platform_data(struct device *dev)
> >   {
> > diff --git a/drivers/hwtracing/coresight/coresight-trace-id.c b/drivers/hwtracing/coresight/coresight-trace-id.c
> > index d98e12cb30ec..269a5f7b279f 100644
> > --- a/drivers/hwtracing/coresight/coresight-trace-id.c
> > +++ b/drivers/hwtracing/coresight/coresight-trace-id.c
> > @@ -12,6 +12,12 @@
> >
> >   #include "coresight-trace-id.h"
> >
> > +enum trace_id_flags {
> > +     TRACE_ID_ANY = 0x0,
> > +     TRACE_ID_PREFER_ODD = 0x1,
> > +     TRACE_ID_REQ_STATIC = 0x2,
> > +};
> > +
> >   /* Default trace ID map. Used in sysfs mode and for system sources */
> >   static DEFINE_PER_CPU(atomic_t, id_map_default_cpu_ids) = ATOMIC_INIT(0);
> >   static struct coresight_trace_id_map id_map_default = {
> > @@ -74,16 +80,19 @@ static int coresight_trace_id_find_odd_id(struct coresight_trace_id_map *id_map)
> >    * Otherwise allocate next available ID.
> >    */
> >   static int coresight_trace_id_alloc_new_id(struct coresight_trace_id_map *id_map,
> > -                                        int preferred_id, bool prefer_odd_id)
> > +                                        int preferred_id, unsigned int flags)
> >   {
> >       int id = 0;
> >
> >       /* for backwards compatibility, cpu IDs may use preferred value */
> > -     if (IS_VALID_CS_TRACE_ID(preferred_id) &&
> > -         !test_bit(preferred_id, id_map->used_ids)) {
> > -             id = preferred_id;
> > -             goto trace_id_allocated;
> > -     } else if (prefer_odd_id) {
> > +     if (IS_VALID_CS_TRACE_ID(preferred_id)) {
> > +             if (!test_bit(preferred_id, id_map->used_ids)) {
> > +                     id = preferred_id;
> > +                     goto trace_id_allocated;
> > +             } else if (WARN((flags & TRACE_ID_REQ_STATIC), "Trace ID %d is used.\n",

If another version of this set is done, then consider making this
message more specific - e.g.  "Requested Static Trace ID %d is not
available"

> > +                                     preferred_id))
> > +                     return -EINVAL;
> > +     } else if (flags & TRACE_ID_PREFER_ODD) {
> >       /* may use odd ids to avoid preferred legacy cpu IDs */
> >               id = coresight_trace_id_find_odd_id(id_map);
> >               if (id)
> > @@ -153,7 +162,7 @@ static int _coresight_trace_id_get_cpu_id(int cpu, struct coresight_trace_id_map
> >        */
> >       id = coresight_trace_id_alloc_new_id(id_map,
> >                                            CORESIGHT_LEGACY_CPU_TRACE_ID(cpu),
> > -                                          false);
> > +                                          TRACE_ID_ANY);
> >       if (!IS_VALID_CS_TRACE_ID(id))
> >               goto get_cpu_id_out_unlock;
> >
> > @@ -188,14 +197,15 @@ static void _coresight_trace_id_put_cpu_id(int cpu, struct coresight_trace_id_ma
> >       DUMP_ID_MAP(id_map);
> >   }
> >
> > -static int coresight_trace_id_map_get_system_id(struct coresight_trace_id_map *id_map)
> > +static int coresight_trace_id_map_get_system_id(struct coresight_trace_id_map *id_map,
> > +                                     int preferred_id, unsigned int traceid_flags)
> >   {
> >       unsigned long flags;
> >       int id;
> >
> >       spin_lock_irqsave(&id_map->lock, flags);
> >       /* prefer odd IDs for system components to avoid legacy CPU IDS */

This comment now belongs in coresight_trace_id_get_system_id()

> > -     id = coresight_trace_id_alloc_new_id(id_map, 0, true);
> > +     id = coresight_trace_id_alloc_new_id(id_map, preferred_id, traceid_flags);
> >       spin_unlock_irqrestore(&id_map->lock, flags);
> >
> >       DUMP_ID(id);
> > @@ -255,10 +265,18 @@ EXPORT_SYMBOL_GPL(coresight_trace_id_read_cpu_id_map);
> >
> >   int coresight_trace_id_get_system_id(void)
> >   {
> > -     return coresight_trace_id_map_get_system_id(&id_map_default);
> > +     return coresight_trace_id_map_get_system_id(&id_map_default, 0,
> > +                     TRACE_ID_PREFER_ODD);
> >   }
> >   EXPORT_SYMBOL_GPL(coresight_trace_id_get_system_id);
> >
> > +int coresight_trace_id_get_static_system_id(int trace_id)
> > +{
> > +     return coresight_trace_id_map_get_system_id(&id_map_default,
> > +                     trace_id, TRACE_ID_REQ_STATIC);
> > +}
> > +EXPORT_SYMBOL_GPL(coresight_trace_id_get_static_system_id);
> > +
> >   void coresight_trace_id_put_system_id(int id)
> >   {
> >       coresight_trace_id_map_put_system_id(&id_map_default, id);
> > diff --git a/drivers/hwtracing/coresight/coresight-trace-id.h b/drivers/hwtracing/coresight/coresight-trace-id.h
> > index 9aae50a553ca..db68e1ec56b6 100644
> > --- a/drivers/hwtracing/coresight/coresight-trace-id.h
> > +++ b/drivers/hwtracing/coresight/coresight-trace-id.h
> > @@ -116,6 +116,15 @@ int coresight_trace_id_read_cpu_id_map(int cpu, struct coresight_trace_id_map *i
> >    */
> >   int coresight_trace_id_get_system_id(void);
> >
> > +/**
> > + * Allocate a CoreSight static trace ID for a system component.
> > + *
> > + * Used to allocate static IDs for system trace sources such as dummy source.
> > + *
> > + * return: Trace ID or -EINVAL if allocation is impossible.
> > + */
> > +int coresight_trace_id_get_static_system_id(int id);
> > +
> >   /**
> >    * Release an allocated system trace ID.
> >    *
> > diff --git a/include/linux/coresight.h b/include/linux/coresight.h
> > index c13342594278..129795873072 100644
> > --- a/include/linux/coresight.h
> > +++ b/include/linux/coresight.h
> > @@ -662,6 +662,7 @@ void coresight_relaxed_write64(struct coresight_device *csdev,
> >   void coresight_write64(struct coresight_device *csdev, u64 val, u32 offset);
> >
> >   extern int coresight_get_cpu(struct device *dev);
> > +extern int coresight_get_static_trace_id(struct device *dev, u32 *id);
> >
> >   struct coresight_platform_data *coresight_get_platform_data(struct device *dev);
> >   struct coresight_connection *
>

Other than minor issues above...

Reviewed-by: Mike Leach <mike.leach@linaro.org>

-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

