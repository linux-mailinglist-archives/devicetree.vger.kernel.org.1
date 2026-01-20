Return-Path: <devicetree+bounces-257614-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mK7yDFXub2m+UQAAu9opvQ
	(envelope-from <devicetree+bounces-257614-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 22:06:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 992C34BF2A
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 22:06:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id CAF53AE25D4
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 20:42:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EDD73A4F5A;
	Tue, 20 Jan 2026 20:41:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="hBkg/u0d"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC4D036405E;
	Tue, 20 Jan 2026 20:41:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768941701; cv=none; b=pKkJ2Z1xRtBPpLHUMkt2eoB/obORI2GZePI2bqINk1nvpj6KppVhKTpiPZw8/rGAiPCZ4qPqB+WiKCgl6B8Nu1XOZT2AvLchvRVI+YqvEB//xUzzNYgm4IwdeMCbn0zz1yAC26x9yS9paz6CXI8l/9W4QTPiJ9at2CPUMz/nYWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768941701; c=relaxed/simple;
	bh=ZWfdevqTNbiZTckXQ6BXrXWjanD5Y4ab+Ef+eJx9Es8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gMd/ftA9HJ/Qfwe/E20k6MJpNbmiecdSruMuhv2iJkis8yEiePfEkJfjo1juH5UYKv8YPlKEoojYU79Q4SEx23sJiC0rRy4Y6FLzwbVq0b33VVOT/X+F7RWHj/EaBOQ2hDK01Co39zVTJlfgDQwJZ5iP3eKKqZ7JZs1/Jj+/k8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=hBkg/u0d; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Disposition:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:From:
	Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
	In-Reply-To:References; bh=YqoCEoGScXb2qskUTOfF9b2CQAOOiVd4gaLNwGWvgJY=; b=hB
	kg/u0dhM/724wh3XOQtS8EBwpbdjgjLsydQVhl9LgXH+98jKP+CDn45O3PMMCyGTsyOI69ZENlcdp
	ns/C4Z7Yt9zwqP37Ae7MCfd/y/lgembYDR04JGZepifzETU1oJ0jZufh46MPqbE7nh1pl56IOItIk
	OkdN5BEcG6RJygI=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1viIXX-003ikT-7c; Tue, 20 Jan 2026 21:41:27 +0100
Date: Tue, 20 Jan 2026 21:41:27 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Abdurrahman Hussain <abdurrahman@nexthop.ai>
Cc: Mark Brown <broonie@kernel.org>, Michal Simek <michal.simek@amd.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 3/3] spi: xilinx: use device property accessors.
Message-ID: <d5909def-1ce8-409e-a5cd-2405da89e5e2@lunn.ch>
References: <b9ad8ab8-7985-4c89-a82b-c7f31d32c167@sirena.org.uk>
 <a6d57890-89c1-445e-836c-d8239d20c621@amd.com>
 <b03307f7-93f6-4680-9241-cf28b5456fd0@sirena.org.uk>
 <a3fcef3a-d1e9-4b46-b114-3a82575e052e@amd.com>
 <980ad372-a2c7-417c-91f9-4958d3d1aaca@sirena.org.uk>
 <4831B269-DFC1-40E0-96B7-67981AC72562@nexthop.ai>
 <6e06696e-09a4-46e0-98fa-252690b888e0@sirena.org.uk>
 <BF71A04E-7FFB-42D1-8C8D-6FD13415EED5@nexthop.ai>
 <c3fc04a4-4b09-4c6a-a0f1-e5aa92a22976@sirena.org.uk>
 <80A8F67E-7A01-4F9F-9D84-29722678A2CE@nexthop.ai>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <80A8F67E-7A01-4F9F-9D84-29722678A2CE@nexthop.ai>
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lunn.ch:s=20171124];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_POLICY_ALLOW(0.00)[lunn.ch,none];
	TAGGED_FROM(0.00)[bounces-257614-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lunn.ch:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew@lunn.ch,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,lunn.ch:mid,lunn.ch:dkim]
X-Rspamd-Queue-Id: 992C34BF2A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> We could, but we don’t own the Xilinx IP blocks. Are we not justified in using PRP0001
> hack until the driver owner adds the HIDs? Wasn’t PRP0001 created as an escape hatch for
> these kind of scenarios?

I suspect your wording is wrong here. You probably have a license for
the Xilinx IP blocks, you are using in your synthesising for use in
your FPGA.

That i think you are trying to say is that you don't own the software
driver for the Xilinx IP blocks? But that should not matter. The Linux
community Maintains these drivers, and can make modifications to them.
You as part of this community can propose a patch which adds the
needed IDs to the driver.

The "escape hatch" is generally used when there is a mature DT
binding, but nothing for ACPI. Linux has a mature and complex set of
DT bindings around network device sub-components, where Linux drivers
all the sub-components. ACPI has nothing in this area, because network
devices used in the ACPI world tend to use firmware, not Linux to
drive the hardware. In such a case, using the escape hatch makes
sense. However, I2C, SPI, etc all have well established ACPI bindings
and are part of the basic ACPI standard. It makes no sense to use the
"escape hatch" hatch for such devices. Please follow the ACPI
standard.

       Andrew

