Return-Path: <devicetree+bounces-259192-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SdgrHacIdWk3AAEAu9opvQ
	(envelope-from <devicetree+bounces-259192-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 19:00:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BC23A7E695
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 19:00:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3006F3011118
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 18:00:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA54E25FA05;
	Sat, 24 Jan 2026 18:00:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IrbkHLQw"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97A5E21CC64;
	Sat, 24 Jan 2026 18:00:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769277604; cv=none; b=ddsFSfglKMhImIiZPDfdW+QtUVS9Lz2vlatQDWRQgsbT7S7jZFuAZa89jueZ6LSWi5sW7eo3/ZCDaYx2XcZ0SxSYVSh4RVxgfb4c7ldNQZUtd2NPl2bKEMw7SZcFjjCe51V9xhwTox4rZDRCpBYIrW32rjn2ZO1pIEGsXbbisPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769277604; c=relaxed/simple;
	bh=ZEuUe0fii9zeTFf3nGMbuhhNCbG/kSLNmWTlO1fl/hA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FIPpSLPgMb0Wc3sbK0RePz0XlidUI+cpf75vCA7dwSfWvDTBMPdrObrqmS3lYz8HUM1VREGa1irzB8OcJdWeTu1p+yFjkjUUAo6fH9oDUTB9E7rdFLTxShgh9RCkHd3XCxklgojF1xxnQAZvqGVAyn1tftcGrDnH8Y0pRxGUMts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IrbkHLQw; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 73711C116D0;
	Sat, 24 Jan 2026 18:00:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769277603;
	bh=ZEuUe0fii9zeTFf3nGMbuhhNCbG/kSLNmWTlO1fl/hA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IrbkHLQwKIoPQvs4AEvMoM6AWVrTZwsWeB3m0BN/Ce2DyZ7a18JIdmwRocKhHjZQm
	 TiSZKjvgSuEC8nWS4u9hH72wxYz28OJAvW0a5A49+V+CtQS0/JEKfQeBh7kypa/jrE
	 vD22p33UgtzN0XgrPds2fFxXgPaSYS1sdldFighoTXoCVDLak9spgf7AWImTOHUD7B
	 7AhZ2Q1dzXUaDX5GFneKkjcNFnZ/fIBm+yH7ZV6XQ0hR4uin6T+CNIkhzWAWOkmajb
	 7wE9bLwrJx7ij92mgiiTjabPsG7w1LPY868N7PHMEHkWTmzI4aVvSV7/xDuhT1rp2O
	 z7Q9UPBPfsp1g==
Date: Sat, 24 Jan 2026 10:00:01 -0800
From: Drew Fustini <fustini@kernel.org>
To: Reinette Chatre <reinette.chatre@intel.com>
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
	yunhui cui <cuiyunhui@bytedance.com>,
	Chen Pei <cp0613@linux.alibaba.com>,
	Liu Zhiwei <zhiwei_liu@linux.alibaba.com>,
	Weiwei Li <liwei1518@gmail.com>, guo.wenjia23@zte.com.cn,
	liu.qingtao2@zte.com.cn, Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh+dt@kernel.org>, Tony Luck <tony.luck@intel.com>,
	Babu Moger <babu.moger@amd.com>,
	Peter Newman <peternewman@google.com>,
	Fenghua Yu <fenghua.yu@intel.com>,
	James Morse <james.morse@arm.com>, Ben Horgan <ben.horgan@arm.com>,
	Dave Martin <Dave.Martin@arm.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
	x86@kernel.org, Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH RFC 00/19] RISC-V: QoS: add CBQRI resctrl interface
Message-ID: <aXUIoSSL2hZPKf0p@x1>
References: <20260119-ssqosid-cbqri-v1-0-aa2a75153832@kernel.org>
 <1c9b21e3-f64b-4a0c-9e1b-cc90d981159c@intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1c9b21e3-f64b-4a0c-9e1b-cc90d981159c@intel.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259192-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[35];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,dabbelt.com,eecs.berkeley.edu,ghiti.fr,ventanamicro.com,sifive.com,baylibre.com,semihalf.com,linux.dev,rivosinc.com,bytedance.com,linux.alibaba.com,gmail.com,zte.com.cn,intel.com,amd.com,google.com,arm.com,vger.kernel.org,lists.infradead.org,microchip.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[fustini@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: BC23A7E695
X-Rspamd-Action: no action

On Thu, Jan 22, 2026 at 02:31:06PM -0800, Reinette Chatre wrote:
> Hi Drew,
> 
> On 1/19/26 8:14 PM, Drew Fustini wrote:
> >  - No MBM (bandwidth monitoring)
> >    - MBA schema works ok for the CBQRI-enabled memory controllers, but
> >      resctrl does not currently have solution for representing MBM for
> >      bandwidth resources that are not associated with a L3 cache.
> >    - For the old CBQRI proof-of-concept RFC, two separate domains were
> >      created for each memory controller: one for MB (allocation) and one
> >      for MBM (monitoring).
> >    - The monitoring domains had to pretend that these memory controllers
> >      were L3 caches which is not the case. I have removed this as it was
> >      too complicated and not the right solution.
> >    - Fenghua Yu talked about a similar problem last month at LPC in the
> >      resctrl BoF during the "MBA/MBM on CPU-less Memory Node" topic:
> >      https://lpc.events/event/19/contributions/2093/
> >    - I hope to work with resctrl developers on finding a solution.
> 
> Specific to this open, could you please consider [1] that proposes a way for
> resctrl to handle allocation and monitoring of resources at different scope?

Thank you for pointing that out. I think that the different scope for
bandwidth monitoring would fit CBQRI well. I will reply in that other
thread.

-Drew

