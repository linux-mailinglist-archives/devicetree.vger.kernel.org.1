Return-Path: <devicetree+bounces-293565-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WMFtBVZU+2n+ZQMAu9opvQ
	(envelope-from <devicetree+bounces-293565-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 06 May 2026 16:46:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A67F44DC853
	for <lists+devicetree@lfdr.de>; Wed, 06 May 2026 16:46:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E0C5F30C178B
	for <lists+devicetree@lfdr.de>; Wed,  6 May 2026 14:32:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27AA1480DCA;
	Wed,  6 May 2026 14:32:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XeMZZyp8"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00D53472798;
	Wed,  6 May 2026 14:32:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778077965; cv=none; b=VXa6weMKqxteFxT4u8iwPlT3etHBgcjSFbiaXX/FP6Jmv+utYvNMBKOyzaBK7pZfV/l0clIq2fAMaQU0xM+0/xt/fw8gMtsUMgi+sop3RLHzRjqvqYm91yt0lwQuL3vahQ7j/9NIvEGavH5bdTHbigw2ugPPRJBFsnyrB9oAnb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778077965; c=relaxed/simple;
	bh=M4Op3MU8U7qnFirwJEpwL6TP+LDf5NNBUxWnDHHh+ew=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qO+TGO4KochL4moZd+OlsPn7VDTnsH+Ps2cKnqdR+1OzkmiByEGF5+4Q2qqbQ6ZfY0TG4JsMlq+yKmU8iKnflNCyDmsJWl/RUe3hIAU0pKpqKk+7DGyzgXCNuC+MN5/JpIlN0osD7MZ5gK2TOO1BlXZ1WVSjI5Rx3vruetEbGB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XeMZZyp8; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1DD95C2BCC7;
	Wed,  6 May 2026 14:32:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778077964;
	bh=M4Op3MU8U7qnFirwJEpwL6TP+LDf5NNBUxWnDHHh+ew=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XeMZZyp8ExfOaWggSUq1pd6kDO03pFpo+gCgb8xbicGas9fdGsFXtK325XqXKS0cb
	 TCfRe2GdYDmnGvdmJbSo1SEv0UbHebmojCXfG9pEFLDrxF2OHzWJvhA/ioc12ZUQMu
	 s0KHBIWMjBsLHzrr5Q+SCQKSX075RA0TOC0WoGj4bMs3QjgZmi50cnEbe33lQaqnm2
	 GU5QVVFNdOJW7qFwpJ1nTGAy2BX5C3lYp9lt/EKdzv70lagu1KDG3U2YWp/cJUH/tQ
	 D4GUMexjSTCRQ8n1A63coMyxFXXvkekHcBAKl2LVI+m7DI1IUzpKj45SsL3I8Te8D6
	 eznSX3yLHKyrw==
Date: Wed, 6 May 2026 07:32:41 -0700
From: Drew Fustini <fustini@kernel.org>
To: yunhui cui <cuiyunhui@bytedance.com>
Cc: Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Radim =?utf-8?B?S3LEjW3DocWZ?= <rkrcmar@ventanamicro.com>,
	Samuel Holland <samuel.holland@sifive.com>,
	Adrien Ricciardi <aricciardi@baylibre.com>,
	Nicolas Pitre <npitre@baylibre.com>,
	Kornel =?utf-8?Q?Dul=C4=99ba?= <mindal@semihalf.com>,
	Atish Patra <atish.patra@linux.dev>,
	Atish Kumar Patra <atishp@rivosinc.com>,
	Vasudevan Srinivasan <vasu@rivosinc.com>,
	Ved Shanbhogue <ved@rivosinc.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	Chen Pei <cp0613@linux.alibaba.com>,
	Liu Zhiwei <zhiwei_liu@linux.alibaba.com>,
	Weiwei Li <liwei1518@gmail.com>, guo.wenjia23@zte.com.cn,
	Gong Shuai <gong.shuai@sanechips.com.cn>,
	Gong Shuai <gsh517@gmail.com>, liu.qingtao2@zte.com.cn,
	Reinette Chatre <reinette.chatre@intel.com>,
	Tony Luck <tony.luck@intel.com>, Babu Moger <babu.moger@amd.com>,
	Peter Newman <peternewman@google.com>,
	Fenghua Yu <fenghua.yu@intel.com>,
	James Morse <james.morse@arm.com>, Ben Horgan <ben.horgan@arm.com>,
	Dave Martin <Dave.Martin@arm.com>, Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Len Brown <lenb@kernel.org>, Robert Moore <robert.moore@intel.com>,
	Sunil V L <sunilvl@ventanamicro.com>, linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org, x86@kernel.org,
	linux-acpi@vger.kernel.org, acpica-devel@lists.linux.dev,
	devicetree@vger.kernel.org,
	Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: [External] [PATCH RFC v3 00/11] RISC-V: QoS: add CBQRI resctrl
 interface
Message-ID: <aftRCQhRc585Jski@x1>
References: <20260414-ssqosid-cbqri-rqsc-v7-0-v3-0-b3b2e7e9847a@kernel.org>
 <CAEEQ3wn3F-Wg-Wi+d5znpcgt5pfJVuRQCPvi4W7q4an+SLrOdQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAEEQ3wn3F-Wg-Wi+d5znpcgt5pfJVuRQCPvi4W7q4an+SLrOdQ@mail.gmail.com>
X-Rspamd-Queue-Id: A67F44DC853
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-293565-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,dabbelt.com,eecs.berkeley.edu,ghiti.fr,ventanamicro.com,sifive.com,baylibre.com,semihalf.com,linux.dev,rivosinc.com,microchip.com,linux.alibaba.com,gmail.com,zte.com.cn,sanechips.com.cn,intel.com,amd.com,google.com,arm.com,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[44];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[fustini@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[]

On Tue, May 05, 2026 at 12:46:14PM +0800, yunhui cui wrote:
> Hi Drew,
> 
> On Wed, Apr 15, 2026 at 9:57 AM Drew Fustini <fustini@kernel.org> wrote:
> > Changelog
> > ---------
> > Changes in v3:
> 
> Thanks for posting the series. Once the remaining issues are
> addressed, are you considering moving this out of RFC in the next
> revision?

I do intend to post as a real non-RFC patch series eventually but the
two main open issues are:

  - refactor support for bandwithd reservation and bandwidth weight on
    Reinette's proof-of-concept once that is posted.

  - ACPI RQSC headers added to Linux through the standard ACPICA process
    once the RQSC spec is ratified.

Thanks,
Drew

