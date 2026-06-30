Return-Path: <devicetree+bounces-317678-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3djyHc6mQ2o7eQoAu9opvQ
	(envelope-from <devicetree+bounces-317678-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 13:21:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B9D6F6E3865
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 13:21:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=sifive.com header.s=google header.b=NuKvFB0m;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317678-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-317678-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=sifive.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E0C2E31AE6A1
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 11:12:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3466C40860E;
	Tue, 30 Jun 2026 11:11:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8948840911C
	for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 11:11:35 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782817897; cv=none; b=awuW50VS6Dreqhh+tcXycmHFoPPHN7FZ8n3ICupSeVIYVQXB6nFntNfZp257+DADQ/vW6R0vr50UVDzn4SDe25VTyigApS2kGCvyKfBT4VE5YkB1UFwQqPweug62l8WMNn4TNbwzGhsWdQwV9pRPLrVpTsN+QQqrpRl6/ebFjCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782817897; c=relaxed/simple;
	bh=n7yPUbpx5g8ya6hfBoGvxIOGxXHtDRZjiNJe6BNhahc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=h8HBwMIJjIpk9F5CK+yrwZ2gMffY65AUO//k4actUOfA7bA69RX6SyX7Ccm/8cHWY9OplKsWDMnRikQAdF7Av86XxiDZKEogSu/Tx8bH+4MERqjtqqXpHNajhyBEj9MS6jq9x4R9rv+Rn6T3kcQ7vRf0gO+UTCq+g+vx4v4rgdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=NuKvFB0m; arc=none smtp.client-ip=209.85.216.42
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-37d70036426so1965112a91.3
        for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 04:11:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1782817895; x=1783422695; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=5p9T28h2OslDKUeqoDWHYyojw+H9eXM0OlnWy+86/Ec=;
        b=NuKvFB0mTthmzHhOSW2blsuEC8vBJZxo6ef8/ZlcCLZS11P7rYlbyIoBHaYTGKrWM0
         vRgPyZbEDknZH/1tf83bHQS+VFERyDDfNEqugpbRy2i8+8pFXz4ZsXEuDLIk2LawJJKC
         MkyORFJV94LXJavnJT4zXA2FDaLnW1SCcIcYY6cVGU3A8WMdIBM3yaTdx1ikQEA/3bIz
         yEcOaOm2VXa04fpmAZ2DNQQhtiyNoHmgHLk80eWlVZVE6cZYwiiaN9FuzwsE1Bre6eEy
         u+Ijh7A0ncCuSiHseI2w1qcpeL9X7DYvAd8afS7bw4QTvYgxcKUNRkFLu6NSOG8WmLNQ
         Vjog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782817895; x=1783422695;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=5p9T28h2OslDKUeqoDWHYyojw+H9eXM0OlnWy+86/Ec=;
        b=MX2l8tNicxxQeaH+U65hNqtog6u+G5IOO3cyQqWm8mGsJvVgfYUIGa9vli0cq9rUTr
         YBokaHCCOSPh5sRK7tl9/H82k2C2sIpeuyx0tkrK2C8mCboqn6W/UTJVdgAq/tZAs5lz
         zm5dRC4u5uV4MsYcepbPdkizwfmpKPWGRGdLn2Rioqpd+Z0tp9WoDczWWTZAauSXenim
         7WaqarQlUCGlMGBm0zFlj5P2V4pwv3Ou2rH+tJ5rx4sYqITNA1GfVbNfQPnK2S2YTT9b
         0O9RrNS7WyJvUFl0XYgYm2IoXPCIH94JiashSequUyyNOJ02PjQAnD2OoyzoxWYZBoPr
         Nr1Q==
X-Gm-Message-State: AOJu0YxR/wzX0gXrq7S7eJC9/mBw9OS7qm3lySjekmAXfJBKnW7aGRoP
	J7vnvNJbhywVO5SHmcHxKtEI4NVyf+uEtuA3u2K0QPGykgbDaP/BsCjAcPCtMskH5Qk=
X-Gm-Gg: AfdE7cm1Q2HkxAYgLyTE1QhfVjsClzpivLW5HtIgVDwOSJs5/D9I1uPtW56aSwx6cN0
	vliHVT49fKrMNGIbosQRmSLkmDbaOcRWA0/XIv8mGsMeCdI1x9SXdzwLAAiUDv2y77c1AEFC1/p
	63DPnGj8oJiRYuHAQQcalJusVlYOLKz1t5NTjOp2mzY7GEaq2Ko39yQCYTAHYA5X4jYd/eHUEQB
	ZE9W8wiAumBNVBrMMWVUzfQw5SIzqtltePvJDc12oFQK5cfgZBeUaKCIU45bATAwVQ8KsK8xzDT
	iZ/seI6w9xMhtHCgHjpKtgcnmOI3etfazYzq9PKrI13RhYpH4pxUr/+kgn5xC5hflHMw16bS09l
	XbEsEekpMRVz3ZgIfn5AYeoq88GY5Hf6XZmbUtPh5/xgW5+xmoe1q0c9qNfi8R8wQ8+F72JU5TU
	6jjh8WEgnIh2k=
X-Received: by 2002:a17:90b:55c6:b0:37e:608:4b75 with SMTP id 98e67ed59e1d1-38052538a64mr2532163a91.11.1782817894698;
        Tue, 30 Jun 2026 04:11:34 -0700 (PDT)
Received: from plin-1878 ([136.226.240.191])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-38052f47a3dsm1541965a91.13.2026.06.30.04.11.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jun 2026 04:11:34 -0700 (PDT)
Date: Tue, 30 Jun 2026 19:11:26 +0800
From: Yu-Chien Peter Lin <peter.lin@sifive.com>
To: Conor Dooley <conor@kernel.org>
Cc: devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, pjw@kernel.org, palmer@dabbelt.com,
	aou@eecs.berkeley.edu, alex@ghiti.fr, samuel.holland@sifive.com,
	dlan@kernel.org, guodong@riscstar.com, dfustini@oss.tenstorrent.com,
	michal.simek@amd.com, junhui.liu@pigmoral.tech,
	darshan.prajapati@einfochips.com, akpm@linux-foundation.org,
	zhangchunyan@iscas.ac.cn, luxu.kernel@bytedance.com,
	pincheng.plct@isrc.iscas.ac.cn, nick.hu@sifive.com,
	jim.shu@sifive.com, zong.li@sifive.com, greentime.hu@sifive.com,
	robin.randhawa@sifive.com, scott@riscstar.com,
	dave.patel@riscstar.com, raymond.mao@riscstar.com
Subject: Re: [RFC PATCH 2/3] dt-bindings: riscv: Add Worlds per-hart
 properties
Message-ID: <akOkXpPi46LBHuIA@plin-1878>
References: <20260619105834.1277302-1-peter.lin@sifive.com>
 <20260619105834.1277302-3-peter.lin@sifive.com>
 <20260622-profanity-herbs-1cc1bcf6206f@spud>
 <aj5m00m4KxRAPAnB@plin-1878>
 <20260626-chitchat-purity-33af51f88380@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260626-chitchat-purity-33af51f88380@spud>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[sifive.com,reject];
	R_DKIM_ALLOW(-0.20)[sifive.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-317678-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[30];
	FORGED_SENDER(0.00)[peter.lin@sifive.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:conor@kernel.org,m:devicetree@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:pjw@kernel.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:samuel.holland@sifive.com,m:dlan@kernel.org,m:guodong@riscstar.com,m:dfustini@oss.tenstorrent.com,m:michal.simek@amd.com,m:junhui.liu@pigmoral.tech,m:darshan.prajapati@einfochips.com,m:akpm@linux-foundation.org,m:zhangchunyan@iscas.ac.cn,m:luxu.kernel@bytedance.com,m:pincheng.plct@isrc.iscas.ac.cn,m:nick.hu@sifive.com,m:jim.shu@sifive.com,m:zong.li@sifive.com,m:greentime.hu@sifive.com,m:robin.randhawa@sifive.com,m:scott@riscstar.com,m:dave.patel@riscstar.com,m:raymond.mao@riscstar.com,m:krzk@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[peter.lin@sifive.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[sifive.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,infradead.org:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B9D6F6E3865

Hi Conor,

On Fri, Jun 26, 2026 at 03:36:38PM +0100, Conor Dooley wrote:
> On Fri, Jun 26, 2026 at 07:47:31PM +0800, Yu-Chien Peter Lin wrote:
> > Hi Conor,
> > 
> > On Mon, Jun 22, 2026 at 06:12:47PM +0100, Conor Dooley wrote:
> > > On Fri, Jun 19, 2026 at 06:58:33PM +0800, Yu-Chien Peter Lin wrote:
> > > > Add per-hart DT properties for RISC-V Worlds architecture:
> > > > riscv,pmwid, riscv,pmwidlist, and riscv,pmlwidlist. These
> > > > platform-defined values are primarily used by M-mode firmware
> > > > to configure World ID CSRs and restrict WID usage across
> > > > privilege levels.
> > > > 
> > > > Signed-off-by: Yu-Chien Peter Lin <peter.lin@sifive.com>
> > > > ---
> > > >  .../devicetree/bindings/riscv/cpus.yaml       | 21 +++++
> > > >  .../devicetree/bindings/riscv/worlds.yaml     | 77 +++++++++++++++++++
> > > >  2 files changed, 98 insertions(+)
> > > >  create mode 100644 Documentation/devicetree/bindings/riscv/worlds.yaml
> > > > 
> > > > diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
> > > > index 5feeb2203050..4b5778b6d3e7 100644
> > > > --- a/Documentation/devicetree/bindings/riscv/cpus.yaml
> > > > +++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
> > > > @@ -26,6 +26,7 @@ description: |
> > > >  allOf:
> > > >    - $ref: /schemas/cpu.yaml#
> > > >    - $ref: extensions.yaml
> > > > +  - $ref: worlds.yaml
> > > >    - if:
> > > >        not:
> > > >          properties:
> > > > @@ -120,11 +121,31 @@ properties:
> > > >        thead systems where the vector register length is not identical on all harts, or
> > > >        the vlenb CSR is not available.
> > > >  
> > > > +  riscv,pmwid:
> > > > +    $ref: /schemas/types.yaml#/definitions/uint32
> > > > +    description:
> > > > +      Platform-defined M-mode World ID (WID) assigned to this hart.
> > > > +    minimum: 0
> > > > +    maximum: 63
> > > > +
> > > > +  riscv,pmwidlist:
> > > > +    $ref: /schemas/types.yaml#/definitions/uint64
> > > > +    description:
> > > > +      Platform-defined bitmap of M-mode World IDs (WIDs) that this hart may use.
> > > 
> > > I don't understand what the difference is between this property and the
> > > one before it are.
> > > Is this one meant to be used by m-mode software to then select one which
> > > will appear in riscv,pmwid?
> > 
> > pmwid (single value) is the reset default, while pmwidlist (bitmap)
> > defines the allowed set. The root-of-trust M-mode software may select
> > an allowed value from the pmwidlist and write it to the mwid CSR.
> 
> I don't understand the point of the property then. If it is the reset
> default, just read it out of the register?
> Unless I am missing something, it's useless to s-mode because it may
> not be what m-mode chose and useless to m-mode that has access to
> the csr.

Smwid is optional. In the no-Smwid case:
- M-mode's WID is fixed to pmwid (hardware-defined via fuse/pinstrap/SoC
  registers, exposed to software via riscv,pmwid DT property)
- S/U-mode's WID depends on opensbi-domain configuration [1]:
  - If next-wid is specified: S/U use that WID (via mlwid CSR)
  - If next-wid is absent   : S/U fall back to pmwid (M/S/U in same
    world)

So riscv,pmwid serves two purpose:
1. Source of truth for M-mode's WID when mwid CSR doesn't exist
2. Fallback value for OpenSBI to write to mlwid when domain config is
   absent.

[1] https://lists.infradead.org/pipermail/opensbi/2026-June/010090.html

Best regards,
Peter Lin

> 
> Cheers,
> Conor.



