Return-Path: <devicetree+bounces-201476-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BC3D2B192A6
	for <lists+devicetree@lfdr.de>; Sun,  3 Aug 2025 06:10:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6569C7ADCC7
	for <lists+devicetree@lfdr.de>; Sun,  3 Aug 2025 04:09:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C416B1A9B46;
	Sun,  3 Aug 2025 04:05:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="dj5jaYhm"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F2481A08B8
	for <devicetree@vger.kernel.org>; Sun,  3 Aug 2025 04:05:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754193956; cv=none; b=up7ucqTjRVIe3oeIpdThEAGWzHVBG5WfWbVOsGvi2qBtwY1U8UoFkK4/FsQk5oNMxN++Ap9QNWTAmpYi1tQXTrEC4p1c76lLdhVf+EnwrtIzM53jD7ofnlkzgzQDrOuvNvzXyD5wTcsyQXgLO/Of3vryYfRAqAc4uMYWQ7gpMfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754193956; c=relaxed/simple;
	bh=h/k6ojZO8XiSn6OLsgC0yQY/fafYJVlLS5/4h77f/g0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KDuAGEpXAJfYuuSg6sXW4jf6sTnORJr1+3WjwNta3kpTgCxBplx9Mw6uULPRd0V/XG+FXYH1264Mf+AMX2J8wEz7bpEHvo8XWs4cY5w1SidxzWCEqP+Z5IVuNcJDRCGbNztgqpSxgM5//Wbq+eULoZNkCMu4+XcdjNveShPGIS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=dj5jaYhm; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1754193950;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=EoOkZOeOKNBWaDehCjjVCVpOpwcj59N5p8x5bREgwH8=;
	b=dj5jaYhmyK6BAYvOzHFz0pZPA7klbS/Rn2Be0S0hfsz7MU63ZJfC7dZFOGRKC75BJByDuX
	CLLj9qyzWEsTfEHShPUKeSLalJkFcqWUcI3UG6KFNmawXAh8RqPQPvMyXzf2XaEwGOtZe+
	Op4BUs5DzSqz2i01+0UYlWRerSMGtoc=
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-630-95tvEVS2PE-gfrSu9SPQRw-1; Sun,
 03 Aug 2025 00:05:43 -0400
X-MC-Unique: 95tvEVS2PE-gfrSu9SPQRw-1
X-Mimecast-MFC-AGG-ID: 95tvEVS2PE-gfrSu9SPQRw_1754193934
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 55423195609D;
	Sun,  3 Aug 2025 04:05:33 +0000 (UTC)
Received: from localhost (unknown [10.72.112.43])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 82EB63000199;
	Sun,  3 Aug 2025 04:05:30 +0000 (UTC)
Date: Sun, 3 Aug 2025 12:05:26 +0800
From: Baoquan He <bhe@redhat.com>
To: Brian Mak <makb@juniper.net>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	Dave Hansen <dave.hansen@linux.intel.com>,
	"H. Peter Anvin" <hpa@zytor.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@google.com>,
	"x86@kernel.org" <x86@kernel.org>,
	"kexec@lists.infradead.org" <kexec@lists.infradead.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH RESEND] x86/kexec: Carry forward the boot DTB on kexec
Message-ID: <aI7gBld/+yKQ2EXM@MiWiFi-R3L-srv>
References: <20250729182142.4875-1-makb@juniper.net>
 <aIwuSFKSUJDI6ULl@MiWiFi-R3L-srv>
 <5A9FE2FF-800A-4458-9929-124EB89FE1D9@juniper.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5A9FE2FF-800A-4458-9929-124EB89FE1D9@juniper.net>
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4

On 08/01/25 at 07:24pm, Brian Mak wrote:
> On Jul 31, 2025, at 8:02 PM, Baoquan He <bhe@redhat.com> wrote:
> 
> > On 07/29/25 at 11:21am, Brian Mak wrote:
> >> The kexec_file_load syscall on x86 currently does not support passing
> >> a device tree blob to the new kernel.
> >> 
> >> To add support for this, we copy the behavior of ARM64 and PowerPC and
> >> copy the current boot's device tree blob for use in the new kernel. We
> >> do this on x86 by passing the device tree blob as a setup_data entry in
> >> accordance with the x86 boot protocol.
> > 
> > I see how, but no why. Why do we need to add DTB for x86?
> 
> Hi Baoquan,
> 
> Thanks for your comment. Some embedded x86 systems, such as ours at
> Juniper, use device trees. Currently, the x86 kexec_file_load syscall
> has no support for passing the device tree to the new kernel, which is a
> problem for us since we use kexec for some software upgrade related
> features. Not passing a device tree to the new kernel would cause a boot
> failure here.

Thanks for the info. Please add these into patch log to let reviewers
know them. We don't add code w/o objective.


