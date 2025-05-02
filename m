Return-Path: <devicetree+bounces-173145-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A5A2BAA794E
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 20:38:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 101149C4713
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 18:37:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F7C225DD09;
	Fri,  2 May 2025 18:38:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="dRb2ybyM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 992D022FACA
	for <devicetree@vger.kernel.org>; Fri,  2 May 2025 18:37:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746211081; cv=none; b=ULDa94xEshlT2nFbLCG0eWP/SbqRw/UM4WIhsAvSX3cO//Fi/MrIJOuyQycCsBGY1wEtpBBgZeSaSap/fMIbfBC1Z78kWm0iJWqFfIogSFIO8VcN0J7o1V/IRAvmg/ukN8RZCsaZVEmF2OI2m8xXHRB+YcvbSDggPFfJsMdarx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746211081; c=relaxed/simple;
	bh=evz0UL5GViJbQYOeXoB2+mBdr/LLmySfQf4mosHPGw0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BE7DEmHzQXJ4IBk+xWOsYqqM8t+GALm7SjPd13uf34epfWRRZ2edDuqVv55Kf1DsGDYCk5pCRfizQn6AkfGAyp3q1/jjdC1BX+bTQw9HV2RRdCJ5lZHGhWh9Ji3nlq64+lZzfG2xx7bk0NMMgFz+vrhfxLEFojeCUfWXr2T04hs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=dRb2ybyM; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-acec5b99052so393615966b.1
        for <devicetree@vger.kernel.org>; Fri, 02 May 2025 11:37:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1746211078; x=1746815878; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Szvh9FDiAeZV5KMXY9XpVOO+pU/TH0kKZBG6xbyHs1E=;
        b=dRb2ybyM9EToZlc9rRPDDaJFSph9bO2+zPF+OGTf3OTyX7p7aVGlPWIMJl9+OwrXnt
         Y6v3AC5oD5ubzWTPTDMssf15VOeCPSjZ+SPlFhsH286iYmHGp59r2SQfXCEI85/258a1
         /0V6NF7ef0FgPuZpYFfE/JbYCapbpTd+YBK+EGBP+j6M0eIpuH9C5K6ucBWY9uF0IOhH
         Ngk3Y9u8R+Sv56fVyoLjoBD9LauE6ur0SRb7nyx7SCXmTDM3Zhpd/DgdqZHq+RejkFdN
         +jphJy/dK5xLJYAwoWtp16fTelAuoHBFSqnr0r69M77QS+7mtzoU443KMrqi9p10Oxwr
         yJXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746211078; x=1746815878;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Szvh9FDiAeZV5KMXY9XpVOO+pU/TH0kKZBG6xbyHs1E=;
        b=a4qCIUXZepre26b1xeRZxpFwqr+Ky78K62e7NQ0Exau4lHQ0XpZUljlFOt7yPQnfLi
         XWDw34A1vhT3SgcHojshPgmGM4S5tQRrlkeUaeD32hPNdd7SN3HfUTJ+JKa58TDWbHdW
         vKNo2KG2Pgw4OdzkCi8RlUtPa53wZlwqPl7BKv5vg0Cn143/5uGMEPecyf3JOubK5y/4
         po3IqoMeF0ZyUcQwsbrKqEvzZjBHWmRr4Srqge7FRLiJ7ZEcgD44O2RGRCNeKTasd/bq
         pykmN3JPv/EVyVD8uJmpgJncTUHgqq1+tUp/63nNXUm57bRL0o/hMlPdnMSBdlbzxvMm
         7XMw==
X-Forwarded-Encrypted: i=1; AJvYcCXb9WbCmLRE+v83GQ5ETetW4rEsKMcJsbqWzKKjxRDV8NN9Feffi8TgisG+jm3fy4WtDOzE9RC34BqT@vger.kernel.org
X-Gm-Message-State: AOJu0YwfHW01qI5F2PxIis4K/thCnGDSZrcsotAG6biwH4qfBMJJhucA
	0/81/8TUqK8UwCLNqF09eDUwv5Fq5ttDwp+VnkV/P1939Dtu5Uf4i3HLAxjUbHoMRX8iCPNGUpW
	wfbZotzpar0bsgvbC0NpD+iocawDKOKwpNKO9
X-Gm-Gg: ASbGncu3xbIEilrr+LX+EQ1bfrAsfsv8znu2LyvYAzKT7KOD6dB2ujcdPRGaH6CYEzD
	hRFJ5FD58JBXuPRuOGvzSPOaKx+L604NCu2wXFZnmoilhGmG/2moI2sjVBADjxyxdDeqCptPtDi
	ltiVfKaJhtcci4oZ+E0NrxeNSsJv/vquN9aK/SlUboBRbRkvGUDw==
X-Google-Smtp-Source: AGHT+IGwGEcGt7qt4y6UtHsVIeUZAmZUDbWtJ+Ey7gGLeSPt9gI0iA5XJZYC4rzHLcT2CmY4/egmqxuj7aqEk5l5ENE=
X-Received: by 2002:a17:907:9812:b0:acb:94d6:a841 with SMTP id
 a640c23a62f3a-ad17ad8096cmr430432366b.16.1746211077663; Fri, 02 May 2025
 11:37:57 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250501225425.635167-1-changyuanl@google.com>
 <20250501225425.635167-7-changyuanl@google.com> <20250501173557.1880f3aa8694352e0eb153b4@linux-foundation.org>
In-Reply-To: <20250501173557.1880f3aa8694352e0eb153b4@linux-foundation.org>
From: Changyuan Lyu <changyuanl@google.com>
Date: Fri, 2 May 2025 11:37:20 -0700
X-Gm-Features: ATxdqUHZQf1uwj7X5bskxFA1vT8WH6Uhw3YyifuFYUsYAjHkndnVOqhZb4vCKaQ
Message-ID: <CAGzOjspvbMkr8b4-xy3EfGLE4nmLC8B9EPx0QYCdpoFQD-FESA@mail.gmail.com>
Subject: Re: [PATCH v7 06/18] kexec: include asm/early_ioremap.h
To: Andrew Morton <akpm@linux-foundation.org>
Cc: linux-kernel@vger.kernel.org, anthony.yznaga@oracle.com, arnd@arndb.de, 
	ashish.kalra@amd.com, benh@kernel.crashing.org, bp@alien8.de, 
	catalin.marinas@arm.com, corbet@lwn.net, dave.hansen@linux.intel.com, 
	devicetree@vger.kernel.org, dwmw2@infradead.org, ebiederm@xmission.com, 
	graf@amazon.com, hpa@zytor.com, jgowans@amazon.com, kexec@lists.infradead.org, 
	krzk@kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-doc@vger.kernel.org, linux-mm@kvack.org, luto@kernel.org, 
	mark.rutland@arm.com, mingo@redhat.com, pasha.tatashin@soleen.com, 
	pbonzini@redhat.com, peterz@infradead.org, ptyadav@amazon.de, robh@kernel.org, 
	rostedt@goodmis.org, rppt@kernel.org, saravanak@google.com, 
	skinsburskii@linux.microsoft.com, tglx@linutronix.de, thomas.lendacky@amd.com, 
	will@kernel.org, x86@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, May 1, 2025 at 5:36=E2=80=AFPM Andrew Morton <akpm@linux-foundation=
.org> wrote:
>
> On Thu,  1 May 2025 15:54:13 -0700 Changyuan Lyu <changyuanl@google.com> =
wrote:
>
> > From: Arnd Bergmann <arnd@arndb.de>
> >
> > The early_memremap() function is decleared in a header that is only ind=
irectly
> > included here:
> >
> > kernel/kexec_handover.c:1116:8: error: call to undeclared function 'ear=
ly_memremap'; ISO C99 and later do not support implicit function declaratio=
ns [-Wimplicit-function-declaration]
> >  1116 |         fdt =3D early_memremap(fdt_phys, fdt_len);
> >       |               ^
> >
> > ...
> >
> > --- a/kernel/kexec_handover.c
> > +++ b/kernel/kexec_handover.c
> > @@ -17,6 +17,9 @@
> >  #include <linux/memblock.h>
> >  #include <linux/notifier.h>
> >  #include <linux/page-isolation.h>
> > +
> > +#include <asm/early_ioremap.h>
> > +
> >  /*
> >   * KHO is tightly coupled with mm init and needs access to some of mm
> >   * internal APIs.
>
> When resending, it's best to fold little fixes like this into the base
> patch, along with a little note and the author's signed-off-by.

Thanks for the suggestion Andrew! I will follow it next time.

> I shall queue this as a fix to be folded into "kexec: add KHO parsing
> support", thanks.


Best,
Changyuan

