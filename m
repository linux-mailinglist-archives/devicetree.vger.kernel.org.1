Return-Path: <devicetree+bounces-200999-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C433B16E97
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 11:26:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AD295188E0B0
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 09:27:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DDF72BDC01;
	Thu, 31 Jul 2025 09:26:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="IhJx622u"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B402721CC6D
	for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 09:26:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753954014; cv=none; b=fRGZSx4FOoYn4dOAlzdZpMWnr3oBd+aBQWBpFOF2OUdHPnlsS10IIX+0S7I+K/F2DKam+BHO3wqHURLT/dtYB1pXWTaSGD1JazynUmKVy+oGWPmrDAwjoOi5J5ZHLIF1v91C08+EosdEZTFT8X4rgB7dBAnVVwuxB9VjymEpNQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753954014; c=relaxed/simple;
	bh=HAE0M07kfmwm2bIgd0EFhrhI8SCbhCJBgk4/kTr52q0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kE1yFyZQP3lHZJxag/gXOcx+0XyprTOv9T+NTLY+hTz7Ylh4kTJJx3mYsHDTIh1DRKLBXFZdPpE1vodRSLJUE5gK6lEo9MfqeQpXcxKV31/CCn7Q/XXf97+DpNzwrNCE1k4GsJ0sNDy/66bJ1AwNwqwQ2vPjAAFzSYdSq21BxT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=IhJx622u; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1753954011;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=ibTg+SRgN11l3CBDii5Rlz1jYBOrGbR0x6FnQRT7AjU=;
	b=IhJx622uiDJ5x9EFzBWbkDFfbHbMqOGV45zFwH8/uNenlluI9+N1D8XhRDngV7coOo+N+m
	Jb052OLNDXnYu1kM1z12IkdA3mLbjDsJby/6nEuX16dtuj75YaqZxY6CuHGD/1OiJr6XmY
	kRWCqtNWjzSltJrizyG+cBrpnj/HjOg=
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com
 [209.85.167.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-336-nKJwzWMTMIe1QglwPHF4Lw-1; Thu, 31 Jul 2025 05:26:49 -0400
X-MC-Unique: nKJwzWMTMIe1QglwPHF4Lw-1
X-Mimecast-MFC-AGG-ID: nKJwzWMTMIe1QglwPHF4Lw_1753954008
Received: by mail-lf1-f72.google.com with SMTP id 2adb3069b0e04-5551b49f3c6so434653e87.1
        for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 02:26:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753954008; x=1754558808;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ibTg+SRgN11l3CBDii5Rlz1jYBOrGbR0x6FnQRT7AjU=;
        b=RJhBSxadNRbUD6AUET5jCQDZSGRc0reAU1Qp09lWjvPV/qCeSIJmXRUkjEBGA28WA7
         tiersh4gIyMUWJ03hSQXu648zZZlnvZP1SVR4CNZsLeE4fOx1aTq08oFoZfjg8v95/do
         k7Aq+q+NeiXbZvD61FCaWbSpJtgiES8jLk6uODEG1YSJIeMiCYAfbXhFzR2fE5cl1QAt
         JhDpHKbRhJsgeFQ0wgWs9Xmf2czPk7kdygRfJCH5wgzxfSVPZnIgRYPX4HG5AYUgFeUo
         b1tePcdqGA7M50oeWg5Hqh6qr+uy0/SG0EId+yDXUnx1nBScEjSD29CNoRwczmj4Tg0N
         8hwA==
X-Forwarded-Encrypted: i=1; AJvYcCVGLLz/jqr6HXQ2XBvwyYwg8p6oeMu8JeUZkKSLR5lJUAW/JEzAZueQSDt9K5ICM4VpGQW3cDDPae8i@vger.kernel.org
X-Gm-Message-State: AOJu0YyLvog/CJ5DpVmop/Lsg1Q8DEsDYdzmk1/R4g9PhbXexddflreV
	v3aLTyM/RmO9xST57BpPp5KOB/JGhN4dMAA3W6ZLCFMc9CHYJW2xoJSg4H3qpFBic8Z4Gr2QLYd
	tc7sxaHBU40juDEMPeLZ1xEMLkPSnVPsJEzpGBV4iyTARoUC0lt8zJMSvc5mHwMIk60oIiImWqw
	rkAWlfiPimO/xv8JBnODim/bM6Z6WHPySUPtqncg==
X-Gm-Gg: ASbGncv+Ry4F7vyit93LLjtf6UxS/eeztwbSXPpSYl9s/XmbXXit3SKbZPQwTfLanqu
	8hgaX73Aw9dZv0ION32qVTBTgcDGxsz7P3QiM0oH1EqCdp3r0oCvt5OdMUh41M2LzmcSviFxUV2
	RcFc8IblPHK9PMJgC6p/F5ow==
X-Received: by 2002:a05:6512:ac6:b0:553:34b7:5731 with SMTP id 2adb3069b0e04-55b7c01c215mr2392888e87.3.1753954008188;
        Thu, 31 Jul 2025 02:26:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHE6w2XDOCOmK9k6ZYQLq7cJeDiihFurFL/7bI1T0/78yuOQamPsKrbCnQYFIzjpGMXgWrAJFuIIpVjZd5I+aM=
X-Received: by 2002:a05:6512:ac6:b0:553:34b7:5731 with SMTP id
 2adb3069b0e04-55b7c01c215mr2392869e87.3.1753954007682; Thu, 31 Jul 2025
 02:26:47 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250729182142.4875-1-makb@juniper.net> <aInKb8qr689ytM41@darkstar.users.ipa.redhat.com>
 <14D2606C-3492-4A32-A55D-428F1ADA9327@juniper.net>
In-Reply-To: <14D2606C-3492-4A32-A55D-428F1ADA9327@juniper.net>
From: Dave Young <dyoung@redhat.com>
Date: Thu, 31 Jul 2025 17:27:27 +0800
X-Gm-Features: Ac12FXwS3FbJHa6wq7k1KIlDvA_sJjQJcjFuKheLdux5xeNdmmqeCSyBgT_ih2o
Message-ID: <CALu+AoQzQGypYRWXLiu1zfipL+H++x2H3pnL1uZgXPCFvumDiw@mail.gmail.com>
Subject: Re: [PATCH RESEND] x86/kexec: Carry forward the boot DTB on kexec
To: Brian Mak <makb@juniper.net>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	Dave Hansen <dave.hansen@linux.intel.com>, "H. Peter Anvin" <hpa@zytor.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Baoquan He <bhe@redhat.com>, 
	Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
	"x86@kernel.org" <x86@kernel.org>, "kexec@lists.infradead.org" <kexec@lists.infradead.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"

Hi Brian,

On Thu, 31 Jul 2025 at 01:02, Brian Mak <makb@juniper.net> wrote:
>
> On Jul 30, 2025, at 12:31 AM, Dave Young <dyoung@redhat.com> wrote
>
> >> +#ifdef CONFIG_OF_FLATTREE
> >> +     if (initial_boot_params) {
> >> +             setup_dtb(params, params_load_addr, setup_data_offset);
> >> +             setup_data_offset += sizeof(struct setup_data) +
> >> +                                  fdt_totalsize(initial_boot_params);
> >
> > I suppose current boot dtb should be valid for the current runnning
> > kernel, if you use kexec to load another kernel the next kexec reboot
> > could fail due to unmatching dtb.
> >
> > Make this unconditionally could break the previous working kexec?
>
> Hi Dave,
>
> Thanks for taking the time to look at this change!
>
> The behavior on ARM64 for carrying over the current boot DTB is
> unconditional, which is why I've made it unconditional here as well. I'm
> open to suggestions on this though. Realistically, would there be a case
> where having no DTB wouldn't break, but carrying over the current DTB
> would?

I worry about it since dtb is for providing boot related information,
weird things could happen if the kernel versions are different.

About arm64 and powerpc I think maybe just nobody noticed this
problem.  IMO it is wrong as kexec is designed to load different
kernels not limited to current running kernels.

Otherwise the current kexec_file_load syscall only supports passing
kernel_fd, initrd_fd and cmdline,  no extra param designed for dtb,  I
don't know if there are other ways via attaching dtb to kernel or
initrd.

Probably you can try to add a new flag to the kexec_file_load syscall,
 when this flag is set 1 then use the current dtb, otherwise do
nothing.  For arm64 and power,  ideally doing the same is better,  but
I'm not sure if we should change the old behavior, maybe they can go
with  default to load the dtb, but users can choose not to do that.


Thanks
Dave


