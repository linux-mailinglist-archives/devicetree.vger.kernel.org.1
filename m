Return-Path: <devicetree+bounces-259636-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wE5vImfKd2nelAEAu9opvQ
	(envelope-from <devicetree+bounces-259636-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 21:11:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E062D8CEA4
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 21:11:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 90DC43014125
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 20:11:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C16662C027C;
	Mon, 26 Jan 2026 20:11:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jXq2dXHp"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D3A929B204;
	Mon, 26 Jan 2026 20:11:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769458276; cv=none; b=uw0b95N5ChpDzVynt5iL0IuUhSQiM59nyo199pFwnv+Xdo2BqcAK8aneF34Ij8kFEGxqQGTid/2m9u6WaqkTQ4IviW7XS2zv+xpye+r+Y3S9LGskhGY0u0esHoAXy/BT+p6jxzYrva+4sk9m1Ld9HhQbmqgFOr2XBX4MCq/yAyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769458276; c=relaxed/simple;
	bh=uQdtHTO2bngOoIZ/QTpWxDdrifho0WobVr5Fo3+MEG8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bXE28GeBdYMUhWQ4kpwpwQA+s8Kwp56DtBahZG/dRqakypr55CATZ5x3eqGkVGKjhRzxa1qelrKS3E6qNGf5r2P+TMvrrWJe6ZSFAFhV2GfSlhtKEnyZNq+mzI0L/4p/y3WwVQ39dY6U6C/NoZhIOiwW7+VtlYtIFJVnpf8thPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jXq2dXHp; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 12647C116C6;
	Mon, 26 Jan 2026 20:11:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769458276;
	bh=uQdtHTO2bngOoIZ/QTpWxDdrifho0WobVr5Fo3+MEG8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jXq2dXHp+ME2Br7BBX8lbp8BsdySiX96KfmwRcxUercTnjIcRAi0bEA93lVjYWOlg
	 qjdVKnJLdJ56cSx2NMXOKUFqVAPrt2bJvbEZZaKYs/JhBL3Le0+0q7AZCkt4Bw0ccR
	 FTHEFqKUuzZcYS8yAeR9ma3pceQSf31rjIN9j5WRMWhpMRMu6TWZ3h7qbmUcsUNLY/
	 ByoRXscdizWQcFGCP3qru6sBCaeNCz1mAHcGwUcseYjOigO4i1PEnoxajLR4wzmgNi
	 XxvXaT3kyGz/6sFrB23N+Z1NSCBFk4PPEpl6oE/O5tMVL+MMD7kQkeDKzex0fIh4pN
	 1wJ0Hz4qvhdbw==
Date: Mon, 26 Jan 2026 12:11:14 -0800
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
	Chen Pei <cp0613@linux.alibaba.com>,
	Liu Zhiwei <zhiwei_liu@linux.alibaba.com>,
	Weiwei Li <liwei1518@gmail.com>, guo.wenjia23@zte.com.cn,
	liu.qingtao2@zte.com.cn, Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Reinette Chatre <reinette.chatre@intel.com>,
	Tony Luck <tony.luck@intel.com>, Babu Moger <babu.moger@amd.com>,
	Peter Newman <peternewman@google.com>,
	Fenghua Yu <fenghua.yu@intel.com>,
	James Morse <james.morse@arm.com>, Ben Horgan <ben.horgan@arm.com>,
	Dave Martin <Dave.Martin@arm.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
	x86@kernel.org, Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [External] [PATCH RFC 00/19] RISC-V: QoS: add CBQRI resctrl
 interface
Message-ID: <aXfKYokyKJ8oassV@x1>
References: <20260119-ssqosid-cbqri-v1-0-aa2a75153832@kernel.org>
 <CAEEQ3w=0_JvE0nuJ=F_RHsBE=tbV5j0ycgT_k3kYPLE_ixOExw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAEEQ3w=0_JvE0nuJ=F_RHsBE=tbV5j0ycgT_k3kYPLE_ixOExw@mail.gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259636-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[35];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,dabbelt.com,eecs.berkeley.edu,ghiti.fr,ventanamicro.com,sifive.com,baylibre.com,semihalf.com,linux.dev,rivosinc.com,linux.alibaba.com,gmail.com,zte.com.cn,intel.com,amd.com,google.com,arm.com,vger.kernel.org,lists.infradead.org,microchip.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[fustini@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E062D8CEA4
X-Rspamd-Action: no action

On Mon, Jan 26, 2026 at 09:14:24PM +0800, yunhui cui wrote:
> 1. What about the relevant logic for mweight?

My intention for this series is to just add support for functionality
that matches the existing resctrl schemata. I think mweight could be
added later. There is active discussion [1] about how to expand schemas
in resctrl.

> 2. What is the support plan for IOMMU?

Similarly, I wanted to land the basic resctrl support before expanding
to other resource types.

> 3. Can we also add the patches that support RQSC to this patchset?

I'm about to send it as part of v2 of this series. I removed the
platform drivers and use to ACPI to boot the system. I will finish
editing the cover letter and send today. The b4/ssqosid-cbqri branch
contains what will be the v2 series.

Thanks,
Drew

[1] https://lore.kernel.org/all/aXUK7XFsHl+gnwA%2F@x1/
[2] https://github.com/tt-fustini/linux/commits/b4/ssqosid-cbqri/

