Return-Path: <devicetree+bounces-159486-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 499E8A6B1B0
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 00:30:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AB9657AF98F
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 23:29:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84D2B22A81D;
	Thu, 20 Mar 2025 23:30:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="NZ5o1/OB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f74.google.com (mail-pj1-f74.google.com [209.85.216.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A78221ABDC
	for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 23:30:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.74
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742513442; cv=none; b=IvWGLdj/f0c9exsJ0+U9u0N353bg6+RboO/1L9bvk/ASlrmxYjvWA0fl2tyiRUuHITWRcCnjKoWvgYOIGm4SbvUT5wfRufB12veGjxaoAgOgi4NYq8Qe/61DfrJu6813YMOijrHXNyzV0glvu+C4PciZGPaf2tnnfEt9URlsnf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742513442; c=relaxed/simple;
	bh=vU1k0Pwo0yGfw+XLBJ54G5KtBR0m8Nix50SWo7Z0ess=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=hrsvpuf1jTVahAQarabOVqi5isDWIebP8LbmNhHI3Bbsx74p5kVJ2ND6oMPVgG1MsyMswVWKzWWWdsL+KIQvH4dJRwkmTsgvEmCxumbeQqEtbds8c2qMO5nPGHenyNcmuiejBTNpE4Zg2Dz2WWSZKZ20HaJU3wNy2hpZ+aVO75Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--changyuanl.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=NZ5o1/OB; arc=none smtp.client-ip=209.85.216.74
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--changyuanl.bounces.google.com
Received: by mail-pj1-f74.google.com with SMTP id 98e67ed59e1d1-2ff581215f7so1690964a91.3
        for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 16:30:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1742513439; x=1743118239; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=xP/wBPgQrPgKUTmsFzSczlOv6V7nkKEHtL+ADvSLveg=;
        b=NZ5o1/OBOG+gp1UkFfm7k/pNhoZ7x6VXU2GNMWJA5EgXkXbjeTLVwx6DYSFLwgSJVe
         0mZy/kvQRRoUgCbIi9uyIVNkQtzMoyfcAbeh0yDTi5K1CqIWkwhRg0+qNrh7rE851YC1
         oulQO6bkLiERS0JTyWZ5n2VtZAafg+rXJgZ1KhXqvfyb0AB+USfBIYnHfEiO6AI+MKv2
         Hw4m4B17+bE9m1KHZnPYsNWmTHNN2ALN+mcXWviGOYU2p/pEYYoORiosiKZLLQOLu2gx
         BDGKeVtSSaJwNDosx9clRYVIwoTpYrD/W+2hUAsvgS66q1VnlFKdOuro4oLpMzlQ3jEv
         BW2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742513439; x=1743118239;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xP/wBPgQrPgKUTmsFzSczlOv6V7nkKEHtL+ADvSLveg=;
        b=iiHU9NLSVycx1GV0bPRZZ59Wzt4Lpyg7rAPfDiw0Qc5d6mwm0WghQ1BQ5wBGlpsL1P
         2BcVhpP7A/T3Y8qMa/zqMoHbTn5sJsLuclVSqkbuoeoGURbQWpKsYJQNBx8lpR31vtYF
         /QtUAXbvbVkxCtqv2EdFNM+nzRYSTG4jaiJ8YW7LDbNf8YApYwtZEqBO3zw8lLCjmb4L
         q6M81iV69DBEdwAV97I/yIdp3uYg2NDm3lGtt07d9ykpwc/2/fwo1z19Tt/HWgtfQXfI
         +xfWj2oEK6FerkreWSilMQ8f3BnVQkecN5rf7uIRzR+hib+MQj9qaQTKjXUIR+3ytr1r
         8Cmg==
X-Forwarded-Encrypted: i=1; AJvYcCW+KU5MJwrEFIxw33EpVPx/JLJcJzu1AfmiRH/bZ445/Rg1DrmIjZLcW9O7AhbQH9nLuToz5/lG/A90@vger.kernel.org
X-Gm-Message-State: AOJu0YxtTq5CqBzUcL4EGgGivQfZwtMC3HASXPzI7LUxZqz0sTOYbugs
	iXno6moxLhTzYxtL/DApuDUzAHuDRCLJ2DqfqEXW87ByuGCpywRfO2MF+BIuvf5gpkDoOELtcBr
	8tgkNkfQB6C6DuVSqHg==
X-Google-Smtp-Source: AGHT+IGbmtH1MERfzGXAl5vYkqkNbYTkv2EXQg2sVuptsp1X//5UG00UaPWxnKS/ywcODQ4038/Q7eALZzjdmIbU
X-Received: from pjbpw15.prod.google.com ([2002:a17:90b:278f:b0:2fc:11a0:c549])
 (user=changyuanl job=prod-delivery.src-stubby-dispatcher) by
 2002:a17:90b:384c:b0:2fe:7fea:ca34 with SMTP id 98e67ed59e1d1-3030fefe329mr1442133a91.32.1742513439279;
 Thu, 20 Mar 2025 16:30:39 -0700 (PDT)
Date: Thu, 20 Mar 2025 16:29:56 -0700
In-Reply-To: <55a5e3f3-1b3f-469b-bde0-69abfff826e4@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <55a5e3f3-1b3f-469b-bde0-69abfff826e4@kernel.org>
X-Mailer: git-send-email 2.49.0.395.g12beb8f557-goog
Message-ID: <20250320232956.327827-1-changyuanl@google.com>
Subject: Re: [PATCH v5 12/16] arm64: add KHO support
From: Changyuan Lyu <changyuanl@google.com>
To: krzk@kernel.org
Cc: akpm@linux-foundation.org, anthony.yznaga@oracle.com, arnd@arndb.de, 
	ashish.kalra@amd.com, benh@kernel.crashing.org, bp@alien8.de, 
	catalin.marinas@arm.com, changyuanl@google.com, corbet@lwn.net, 
	dave.hansen@linux.intel.com, devicetree@vger.kernel.org, dwmw2@infradead.org, 
	ebiederm@xmission.com, graf@amazon.com, hpa@zytor.com, jgowans@amazon.com, 
	kexec@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-mm@kvack.org, 
	luto@kernel.org, mark.rutland@arm.com, mingo@redhat.com, 
	pasha.tatashin@soleen.com, pbonzini@redhat.com, peterz@infradead.org, 
	ptyadav@amazon.de, robh+dt@kernel.org, robh@kernel.org, rostedt@goodmis.org, 
	rppt@kernel.org, saravanak@google.com, skinsburskii@linux.microsoft.com, 
	tglx@linutronix.de, thomas.lendacky@amd.com, will@kernel.org, x86@kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi, Krzysztof

On Thu, Mar 20, 2025 at 08:13:24 +0100, Krzysztof Kozlowski <krzk@kernel.org> wrote:
> On 20/03/2025 02:55, Changyuan Lyu wrote:
> >
> > +/**
> > + * early_init_dt_check_kho - Decode info required for kexec handover from DT
> > + */
> > +static void __init early_init_dt_check_kho(void)
> > +{
> > +	unsigned long node = chosen_node_offset;
> > +	u64 kho_start, scratch_start, scratch_size;
> > +	const __be32 *p;
> > +	int l;
> > +
> > +	if (!IS_ENABLED(CONFIG_KEXEC_HANDOVER) || (long)node < 0)
> > +		return;
> > +
> > +	p = of_get_flat_dt_prop(node, "linux,kho-fdt", &l);
>
>
> You are adding undocumented ABI for OF properties. That's not what was
> explained last time.

Thanks for the reminder! Sorry I missed [1].
I drafted a PR to add the documentation:
https://github.com/devicetree-org/dt-schema/pull/158 .

[1] https://lore.kernel.org/all/b1e59928-b2f4-47d4-87b8-424234c52f8d@kernel.org/

Best,
Changyuan

