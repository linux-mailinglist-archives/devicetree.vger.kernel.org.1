Return-Path: <devicetree+bounces-271309-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GL/aNP3GqGlaxAAAu9opvQ
	(envelope-from <devicetree+bounces-271309-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 00:57:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B4C220943F
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 00:57:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BF414301CCDC
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 23:57:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13744382391;
	Wed,  4 Mar 2026 23:57:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="Wgo5VNoT"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 266BE388364;
	Wed,  4 Mar 2026 23:57:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772668665; cv=none; b=PMVvaZAFod1m9dJulmBcLzXXLGQPGQhpuakTJ9jr+ckQ40geX7Z+X0mcjn3Yfye0L1/TjD7smWZgfLueCfc8n7Y6d/mV5MAE2rCRAMC5ETpZB4dFCVlqfe2eigPBmNorPUr2sZrbeQeZbttqEOa4l3bHDBT7L4C8R3Yyva4jeFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772668665; c=relaxed/simple;
	bh=gIGwrCqPlTvk8g05dxZBjXzxv9TdKNafDRbPwLq0ZSI=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=f6+Je9Q54gkSS9YWOcS/rVXzh5wUX8wFn3O9+H9HOSyFdwRx8gqnghWeSfOBCCqdgGdE45mPiER2clfSdMzATjDNn/D56wwiE9SP8PBWjgEV59bJoRb7y36UfeNbe2CEsSTTps7ELhu6dMA85hqUo2738dk2SsaH/pAkovvM398=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=Wgo5VNoT; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1772668660;
	bh=gIGwrCqPlTvk8g05dxZBjXzxv9TdKNafDRbPwLq0ZSI=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=Wgo5VNoTLL2efzHKlpFefxV+cqSmR3SHo2mShMBZS50s4ZhhSnQ3SRU+9WhDd5KzM
	 cF39e6AqZ34dIkPctLlSnC5QqGjWIp85FJmu5FI4oYMrT6/IvnDgY74CsUrSNCX8P9
	 SXZJnv+gIQaud0xbHfY3J+hVsu5IDgjN9apWk7VmygQgzMUeb9sTSvqjzfhrjM8YrS
	 OIgZlmtOYchjPpLU60OcWtRsCZqoWJIE+IDTtn645bJ2yE4J9wotU1clhEc3EewXxc
	 chO3xZYQljCx/CtvjZZ0s+5p1m+V8sEhs1hEcUHZqkWpkLUxtTXbEuQIEalsqBoJi3
	 BAGuBAXUjix3g==
Received: from [192.168.68.117] (unknown [180.150.112.60])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 46F0760C90;
	Thu,  5 Mar 2026 07:57:39 +0800 (AWST)
Message-ID: <3e9d0b356ad2871de0b3a47194726d3503ef136e.camel@codeconstruct.com.au>
Subject: Re: [PATCH v2] ARM: dts: aspeed: anacapa: update SGPIO and PCA9555
 settings for DFT
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Colin Huang <u8813345@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski
	 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Joel Stanley
	 <joel@jms.id.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
	Colin.Huang2@amd.com, Carl.Lee@amd.com, Peter.Shen@amd.com
Date: Thu, 05 Mar 2026 10:27:38 +1030
In-Reply-To: <20260226-anacapa-dts-sgpio-v2-1-fd76828616b8@gmail.com>
References: <20260226-anacapa-dts-sgpio-v2-1-fd76828616b8@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Queue-Id: 2B4C220943F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[codeconstruct.com.au,none];
	R_DKIM_ALLOW(-0.20)[codeconstruct.com.au:s=2022a];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271309-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,jms.id.au];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew@codeconstruct.com.au,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[codeconstruct.com.au:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

Hi Colin,

On Thu, 2026-02-26 at 22:08 +0800, Colin Huang wrote:
> This update adjusts SGPIO mappings and enables interrupt support for the
> PCA9555 GPIO expanders. These changes are required as part of the DFT
> (Design For Tooling) integration and are aligned with the SGPIO signal
> definitions provided in Helios_SGPIO_BIT_MAP.xlsx (rev: 2026-02-16).

Where can I access Helios_SGPIO_IT_MAP.xslx?

My suspicion is I can't, in which case this doesn't have any business
being the commit message.

>=20
> Updates include:
> - Add interrupt-parent and interrupts properties to PCA9555 nodes to
> =C2=A0 enable proper interrupt handling required by phosphor-gpio-monitor=
.
> - Correct placement of LEAK_DETECT_RMC_N.
> - Update SGPIO line-name mappings per the latest Helios SGPIO bit map to
> =C2=A0 reflect leakage channels, presence pins, module power-good, and ot=
her
> =C2=A0 DFT-related monitoring signals.

Please take some time to read through the documentation on separating
your changes:

https://docs.kernel.org/process/submitting-patches.html#separate-your-chang=
es

If you haven't already, please also take the time to read the rest of
the document.

Andrew

