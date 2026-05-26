Return-Path: <devicetree+bounces-302959-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AJBHBV5rFWoBVAcAu9opvQ
	(envelope-from <devicetree+bounces-302959-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 11:43:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BCDC45D393A
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 11:43:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 055A9306C120
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 09:40:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 740063DA7D3;
	Tue, 26 May 2026 09:39:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CWTfIFkO"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46BAC3D9038;
	Tue, 26 May 2026 09:39:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779788399; cv=none; b=YFm8dMKE+EP0ommLO1g9PTviFyIwMIh/e1n3sYLBga5vALetv4tdm4NJowVLNcYvXgWgio2yDDfNaMV0EatSO5mxpInSYI05QKgACoCJ4tIIUL2OiAhQJYEJ7UkmESK+chhId7T9K2slIqD5hA43m3G52RVoc0nbxX2d+XQt6RA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779788399; c=relaxed/simple;
	bh=UXbdSYzqrPIL8fR9OYJJ8ftg6yrA2mzucyXTW6JX2vQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hn2Te5dl7RJhXaihfNiCNg6QOFFo1XtoPUmLQVLNTuIw+DO5toSHEsHxA4Gyuo2gJtq9ASuC6Gnv9Eld9FJzRicMlgnA3psY0TCm8oSLDKxEzPH6dH3rVxAdYPQ6SYUW/OouN9VT4r4DXCuZ+o1imMkZ8YRP5nCPmm8rRiJ/mCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CWTfIFkO; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 44FAE1F00A3A;
	Tue, 26 May 2026 09:39:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779788397;
	bh=ylZe4wIhoLq4ovPy5L8iqxxTFZIH9aKPjWByP79AvDw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=CWTfIFkOTK/auAr0j6DSph+9n2ex8p35F7gAV1pUZ2x5oDcPM/wdE6gepD2xQrDlj
	 AHo5pIh0Whm/l8P/PwRXpc8QcDsTNtdT2vklcbgd08uTM++CEzQqs727ib3KpiLfec
	 7E0A/i3bjEb6KKTITUx+wbyKxz0nP4GM4+QV20MyAcimEiaaAA1oanV8biRgxPg23Q
	 WVtT4nYVkCTIJdZqzY1jRXZjq3c91ptXX0Oi/4lnrnyt8+kz0Lz/vz/tDMdC6Yo+cv
	 qbwAQlBZ9CN3llJ4N8DUd0AMAYRsZkldn8MZNQ1hAQh4FCTOZfGr+3syReZqgdYkRT
	 Ukd67vPu+YUuQ==
Date: Tue, 26 May 2026 11:39:55 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Tudor Ambarus <tudor.ambarus@linaro.org>
Cc: sashiko-reviews@lists.linux.dev, conor+dt@kernel.org, robh@kernel.org, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH v5 1/5] dt-bindings: thermal: Add Google GS101 TMU
Message-ID: <20260526-uptight-bustard-from-jupiter-291e59@quoll>
References: <20260525-acpm-tmu-v5-1-85fde739752e@linaro.org>
 <20260525125455.AF31A1F000E9@smtp.kernel.org>
 <4832a220-ace5-40ba-b85b-7c69b3aed869@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <4832a220-ace5-40ba-b85b-7c69b3aed869@linaro.org>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-302959-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.998];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Queue-Id: BCDC45D393A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, May 25, 2026 at 04:06:40PM +0300, Tudor Ambarus wrote:
> > 
> > [Severity: Medium]
> > Since the commit message and binding description indicate that the
> > Application Processor relies entirely on the ACPM firmware for all
> > functional TMU tasks, shouldn't samsung,acpm-ipc be included in this
> > required list?
> > 
> 
> I disagree. The property remains optional because the ACPM firmware
> can be bypassed entirely. The TMU IP is capable of handling thermal
> management directly without IPC intervention, so the phandle is not
> a strict hardware requirement.

I see your driver will fail probe without it, so something is not
matching here.

Best regards,
Krzysztof


