Return-Path: <devicetree+bounces-269506-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AEpiOt+womkC5AQAu9opvQ
	(envelope-from <devicetree+bounces-269506-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 10:09:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DD3A1C1994
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 10:09:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 16FE730398EF
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 09:09:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 451CF3EF0DA;
	Sat, 28 Feb 2026 09:09:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8102D2749C1;
	Sat, 28 Feb 2026 09:09:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772269788; cv=none; b=fgvb4ZRLDzJJOOGM+3Orr8JPIF8adXM6XcRT2Kbr6rEhLh/nOOUt3B6F9bul6H+797+sYJDfMzjR+JTJ9TXpNW150Nb+DfDxUULxNnyh2NeRGJLlzG8apHohtU6YMV11ODLun98Qi+CTGHfBDWFqYvc1YW+JWnlbGChtEpzwwHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772269788; c=relaxed/simple;
	bh=7ZFpYep6aV/YCf44FSP53Ao9kuQMPkzoPVsuqTfi6pI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jEPqilRPEwn+ptushTmDpjvbOtaLJNmfjR8F0dT9HQnho8FvOX4Au4jmw5D8lLQnp1gcuzsjOncgY0OqI2zm0kiKEKEyxH0qYhwqNrbg5uw9+2nEtzs5hLFL71ca0TZ+lSjO7LV5N4IR1YPIO0Bsdf6hfzf6qzoUhK+Qb9WcRvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0BAC91516;
	Sat, 28 Feb 2026 01:09:33 -0800 (PST)
Received: from pluto (usa-sjc-mx-foss1.foss.arm.com [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 49CA33F73B;
	Sat, 28 Feb 2026 01:09:36 -0800 (PST)
Date: Sat, 28 Feb 2026 09:09:28 +0000
From: Cristian Marussi <cristian.marussi@arm.com>
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Cristian Marussi <cristian.marussi@arm.com>,
	Sebin Francis <sebin.francis@ti.com>,
	Brian Masney <bmasney@redhat.com>, linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
	arm-scmi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH v7 5/6] clk: scmi: Introduce common header for SCMI clock
 interface
Message-ID: <aaKwyDXtqdx-ysRy@pluto>
References: <20251231-clk-ssc-v7-1-v7-0-380e8b58f9e3@nxp.com>
 <20251231-clk-ssc-v7-1-v7-5-380e8b58f9e3@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251231-clk-ssc-v7-1-v7-5-380e8b58f9e3@nxp.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.64 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[arm.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269506-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[cristian.marussi@arm.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.872];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ti.com:email,nxp.com:email]
X-Rspamd-Queue-Id: 8DD3A1C1994
X-Rspamd-Action: no action

On Wed, Dec 31, 2025 at 06:12:52PM +0800, Peng Fan (OSS) wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Added a new header file 'clk-scmi.h' to define common structures and
> interfaces for the SCMI clock driver. This header will also be used by
> OEM-specific extensions to ensure consistency and reusability.

Hi,

> 
> Moved relevant structure definitions from the driver implementation to
> 'clk-scmi.h' to facilitate shared usage.
> 
> Reviewed-by: Sebin Francis <sebin.francis@ti.com>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>


LGTM.

Reviewed-by: Cristian Marussi <cristian.marussi@arm.com>

Thanks,
Cristian

