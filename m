Return-Path: <devicetree+bounces-262828-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eCmYIF38g2kXwgMAu9opvQ
	(envelope-from <devicetree+bounces-262828-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 03:11:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F28E6EDE39
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 03:11:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C863430143D3
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 02:11:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA0E22773EC;
	Thu,  5 Feb 2026 02:11:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="VpqndtIB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 392B326E6F8
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 02:11:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.218.54
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770257498; cv=pass; b=rMbmx2igoi1SXgCV5iJSN0B7EBRD+XlduMDc32khlS3mThCAmx11/NQBY4fUxbB9gMq5b4yy5/TsycQTl9CBRTh+Mw9oR7kX/KhtrS/HHsuNjI5xMdzfkCwzTm+QvnEo7dJAG6Yo+madMYDLMsTaZdLEg0oLa5ND8apcGVEK4uQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770257498; c=relaxed/simple;
	bh=LzenXCyNDGAV2/s4Mt5xg7gtxO2w2kJ2SKaLgFjq5Hg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Ll5t7LvnB2UjvIZK1+bFxaO6ncfo6rw9Wo/EM7Vr7DzBJ4nOTrbtiHshDppVitcDUysssAuWiVVDv6LJ54s2CEMuuN+k+dzHwz8hfbGHlNh1fpwbe3uGnuuXYbQMqP/XgXKGiC8cqA3NLrHHgN+MXg5Dsxm8DMHxnVtshqeS/UQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=VpqndtIB; arc=pass smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-b8e9c8ada38so60199766b.0
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 18:11:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770257496; cv=none;
        d=google.com; s=arc-20240605;
        b=K/JnSbdRPKoD/yu0y0qAFWzcnIG3nZd+UihShLdwvhuX6M6vIQjOjGP5FCMr99Vdwi
         elTWZS23kev/vc7yjs9ZeaJzQVGlPtJMAWAL1WKu5G4T9fyKDMQrE9jbuaYnOoGnAyWX
         um42B5WShJlgBwJ8walQyEWRsFsOhQpPWYED7w2rOVaNxnKPSi4glNsDNNa9CixyoH6X
         jhjHJQVUtLlsW9yPF1m+cfjm91aiTJitJly3YGr0n2kNiHruUOl1uom9qY8rBqvktuMy
         txfE8j3Z1JSybZq5ncYt7c8CX0Okm+WPbDv7bJLtWKK3imlal48r12Vjdz5Qg/04x0D0
         67Zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=oXfwfxqJ3Ud1a18EjbgGs6RmrKLEcJt2awiaooMVBjk=;
        fh=2DEdWd1mRGAVVVwOO0WmmX6XgFzUR8v3G843qRlAmTU=;
        b=IKyOkFNjslk2u1nKaNCtHiIVW5t9wbNqtVpjhj9cES42NKpqCfrLqJGM8U/InkfWEa
         XHsPVg3KAwnfcWG8YZe6xT3CP59vOM7+ZyR5hjZ8hpYI4ElpBGTt3lDaYyw2h1lDlM6I
         0M223fR3giKt2JihdBQ+2k6pQcw2HQDwRHzKJbb3klwWS6j1YJBpYP3quCDfBfvbQ0Oj
         aFXQGZy8NV2kCxRuvfTP/7uthVMuSj5LmwXy+pUw33UwY3FoUjrw898FM7JNOq6CtYZS
         tIZWp4mWNmiaml0xqEE/ycgTppwycPaEUTFJBMO3tiiMX+wsze1lDBV+zO8CrZzuIF7B
         d6sQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1770257496; x=1770862296; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oXfwfxqJ3Ud1a18EjbgGs6RmrKLEcJt2awiaooMVBjk=;
        b=VpqndtIBXgU0SG+aS6q7loT1IUfX1bDa9Y+L0UOEfh/utyPvXZp71jg92Xf4FwFZjr
         RtvqWzeHTMoqKPKP+cbu06sL263lJSuq06xRjmF+suFgPk+EcBvvCnoPkTrg/S+fKjUO
         wl8IM1zWj6llTjkyFIJB3rm6Fz1JfupYHuQ5g2emOAiy6RGVSs2sCR3MnUIBzXp5pdIb
         nMSUCLSjj+6/WzHT/z59OOKUAwjWWe3yoyCj6Nl6gYmDuJMxa+qAjnz4ZlxgoeMB7Tn/
         0Pes7Fijj1CCTPWiRXA8Cwlq+YvSyfOe04UhHBu6ili5n+mHozeJ/2ADUn6k68QcrWrg
         5tZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770257496; x=1770862296;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=oXfwfxqJ3Ud1a18EjbgGs6RmrKLEcJt2awiaooMVBjk=;
        b=daPp2UeD6hHpwblKLCw0Vw9hFfutr6F/EEF/gNGDkzBCqolxVExWECKABTI9svQGpy
         TJTXx9qrh5i0/cJ+m2g7CX28map6tOnEAaLlC/WNJR226LePL58efyj+2TWPeVBIQqS2
         qHYzobRcUcwhzvcP/4ZwdHia/Jn8ZII3cKa8Bx6FhwfzDFlhl1PNYvepJqOIN7E6KSCx
         ja0OKmeEgHKmAmWw4HkGfI3wOoHk/gHzvsDX4aPFv/VJ6Tm87WqqFlsT4qwvE6UNl0A9
         fEd3Ho5wrbU+pDGnc/iLxjPZDpprh8hV8xBiStx045NlLoQk47zj5LsYrt6PD5kmm5Gh
         A0ZA==
X-Forwarded-Encrypted: i=1; AJvYcCVY9fc7ad2Av4K1RC13BQmcBvQ7jseOg7RwUssxfORDfhdwOdayhjrCgB7B6AkhmFk+K89R5RLbv1aW@vger.kernel.org
X-Gm-Message-State: AOJu0YwUgR1IIrG2+8OoMxZWGqdNBFfagXixP1cLASK+/+HIIJguST98
	SKmeUkcK+r1M0sQY9na/IYy2JNTRotyVqpP2I4g6One0eHRjh66xge1UBduxe6kOuZGEUq4IuUH
	hgHa423rrOY9gJqTKsLL/HiLn7vG7v3P0CwO67iLuVA==
X-Gm-Gg: AZuq6aKm99ugprldselUbjeTGMnu16vjOpwiHS73uCG9TTDNewF5JJb/+Qfsydvqn8J
	Br8PdKmZ7DjNmcm7nFLldYUqNiMITpEKuQY/o7YQTFq7eDNoGPJ0oh0zbDSZ7YaN+GXO/MKSF7y
	Jf02qbhPlH+RFb/QpmMYmV+HjTn5o5golQaA269vVSznb0eY74IOleL+qOs6iUclz7h3CnsrmNA
	4oiWpt03rWJSe+VLZGVZSw2+recc7Fw1qYf7eyMVUPYVMZfJfAgZOpzfxzuwzSZV7vXdIM+rA==
X-Received: by 2002:a17:907:26c9:b0:b87:892:f43b with SMTP id
 a640c23a62f3a-b8e9f196585mr325916866b.42.1770257496389; Wed, 04 Feb 2026
 18:11:36 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1769562575.git.lv.zheng@spacemit.com> <cover.1770195980.git.lv.zheng@linux.spacemit.com>
 <9C0A2AD4850D179B+524146e74e808db90d5f28fcb6ee791cf1d1bfaa.1770195980.git.lv.zheng@linux.spacemit.com>
 <p74snip7yykhogvzqld4gyjlygmd2z4kqnat7w3qj63fwebnmm@dlz6tloevgbs>
In-Reply-To: <p74snip7yykhogvzqld4gyjlygmd2z4kqnat7w3qj63fwebnmm@dlz6tloevgbs>
From: Zong Li <zong.li@sifive.com>
Date: Thu, 5 Feb 2026 10:11:26 +0800
X-Gm-Features: AZwV_QhMZOXglwbGVqgOIj-KY2N0eLcLOg3n2x9z4Uh395TNa1CEOvBa9sxLG3g
Message-ID: <CANXhq0oi9nE7ffLGsz5j8GnC1UDTD-4bE4cantRjW2fXHYrjHA@mail.gmail.com>
Subject: Re: [PATCH v3 3/8] iommu/riscv: Add HPM support for performance monitoring
To: Andrew Jones <andrew.jones@oss.qualcomm.com>
Cc: Lv Zheng <lv.zheng@linux.spacemit.com>, Tomasz Jeznach <tjeznach@rivosinc.com>, 
	Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Jingyu Li <joey.li@spacemit.com>, 
	Zhijian Chen <zhijian@spacemit.com>, iommu@lists.linux.dev, 
	linux-perf-users@vger.kernel.org, linux-riscv@lists.infradead.org, 
	spacemit@lists.linux.dev, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[sifive.com,reject];
	R_DKIM_ALLOW(-0.20)[sifive.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262828-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zong.li@sifive.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[sifive.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: F28E6EDE39
X-Rspamd-Action: no action

On Thu, Feb 5, 2026 at 2:39=E2=80=AFAM Andrew Jones
<andrew.jones@oss.qualcomm.com> wrote:
>
> How does this relate to
>
> https://lore.kernel.org/all/20250115030306.29735-1-zong.li@sifive.com/
>
> From a quick skim it looks like there's plenty of overlap.
>
> Thanks,
> drew
>

Hi all,

Thanks Andrew for bringing me here, and sorry for the long delay on
the IOMMU PMU driver series.

I=E2=80=99m currently working on the next version to incorporate the feedba=
ck
from my earlier series. The main goals are to decouple the IOMMU perf
driver from the IOMMU driver itself, and to make it easier to add
custom events.
The implementation is almost done, but I=E2=80=99m still working on binding=
  a
name between the PMU driver with the IOMMU driver on PCIe and ACPI
cases. This part is related to how custom events should be added.
That said, I=E2=80=99m thinking that I could submit the current implementat=
ion
first, and then send a separate patch series later to handle the
custom event support.

Also, I=E2=80=99d like to mention that Yaxing has a similar implementation.=
 We
had some discussion about this last month.
https://lore.kernel.org/linux-iommu/2ce9d8be-10b3-48dd-b99e-7358347fc171@bo=
sc.ac.cn/

I think I should be able to submit this next week.

Thanks,


>
> On Wed, Feb 04, 2026 at 05:09:01PM +0800, Lv Zheng wrote:
> > From: Jingyu Li <joey.li@spacemit.com>
> >
> > Introduces perf-based HPM driver for RISC-V IOMMU, enabling performance
> > monitoring capabilities.
> >
> > Note that the RISC-V IOMMU HPM module uses COUNTER_MAX-1 as a static
> > counter index of HPMCYCLES, and 0~COUNTER_MAX-2 as the dynamic counter
> > indexes of other HPMEVENTS in order to correctly index into IOHPMEVT an=
d
> > IOHPMCTR registers that have already been defined in the iommu-bits.h.
> > However the users treat 0 as the index of HPMCYCLES and 1~COUNTER_MAX-1=
 as
> > the indexes of other HPMEVENTS, thus care should be taken in dealing wi=
th
> > counter indexes between userspace and kernel space.
> >
> > Signed-off-by: Jingyu Li <joey.li@spacemit.com>
> > Signed-off-by: Lv Zheng <lv.zheng@linux.spacemit.com>
> > Link: https://github.com/riscv-non-isa/riscv-iommu
> > ---
> >  drivers/iommu/riscv/Kconfig          |   9 +
> >  drivers/iommu/riscv/Makefile         |   1 +
> >  drivers/iommu/riscv/iommu-bits.h     |   6 +
> >  drivers/iommu/riscv/iommu-hpm.c      | 843 +++++++++++++++++++++++++++
> >  drivers/iommu/riscv/iommu-pci.c      |  13 +-
> >  drivers/iommu/riscv/iommu-platform.c |   8 +-
> >  drivers/iommu/riscv/iommu.h          |  42 ++
> >  7 files changed, 919 insertions(+), 3 deletions(-)
> >  create mode 100644 drivers/iommu/riscv/iommu-hpm.c
> >

