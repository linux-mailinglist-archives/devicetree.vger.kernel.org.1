Return-Path: <devicetree+bounces-268128-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AHseAmOTnmmXWQQAu9opvQ
	(envelope-from <devicetree+bounces-268128-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 07:14:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DC05192494
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 07:14:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 50E19302A1AE
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 06:14:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC5002F5313;
	Wed, 25 Feb 2026 06:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xqr9MBms"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99A08199FD3;
	Wed, 25 Feb 2026 06:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772000094; cv=none; b=Ja5B1XmYS+pYXc5GdG2CvrIIDXOZvdjVUGOFtjpGlyf6nwk2NWvRP41ZYQpckp6ID5ZcgLEIeJIRhQagfJNiqRmf6kJBECDDiwhEz826W8EKiDR5Mi7LOylfDHKxRWLjr+1YTPZVNIBfMFaAvv2mpeL2R65f3YBWX8VMCzw1Uq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772000094; c=relaxed/simple;
	bh=DLPtLXT7/D2mwloLKBtsuLD/HE5Hc8/ygvw8Ey+ctH4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=H2e3biQtzUQrCzLaBP2qdkUgbC/fgtnCN9N/hQtOMHdoNiNSjQdn76talOtSFH8TNXqsCD/3RZXDQF71wjUP9CETYARaJeXVFWEG1rm42UOemsqb8mznaNMhvyh0VORzi/Hbyw4Cxat3NQWARPZhQ6qX7fTTJy+ajTE4AopI0hU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xqr9MBms; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 95A9DC116D0;
	Wed, 25 Feb 2026 06:14:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772000094;
	bh=DLPtLXT7/D2mwloLKBtsuLD/HE5Hc8/ygvw8Ey+ctH4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Xqr9MBmsgFBoDBafI9+z4z5HSi9ylwFkBRDQ8vwOCa3v4N1V6nHUcy1ENiTbKkMT8
	 VOS3XeWyx30sRktya+p7kstadEYzfpapdatyyfMKGtt8wSl9nycC8ndmMVEqVe6V3s
	 sBx27JotLFOviSMhzYPGxoX/S58uUcKKDKfQQFg7Fece5HCyZxNBgwMXELkJDffG8O
	 AAGJdljAmnSiYRTskJpW57husBHM3CUJfYhrdN0Ukul/iLILnL3psi2w6mpT/7h4RK
	 ZEbzAUY4LZA5AWDYljrhSa4pgl3vxKOXJI/XijzTdAEwLVyCYB5UrrxT1QWzvKgBr0
	 iG2kiYp+g3x0w==
Date: Wed, 25 Feb 2026 07:14:48 +0100
From: Niklas Cassel <cassel@kernel.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Damien Le Moal <dlemoal@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
	linux-ide@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v2 1/1] ata: ahci-dwc: Remove not-going-to-be-supported
 code for Baikal SoC
Message-ID: <aZ6TEvkaGlVMF3Zh@ryzen>
References: <20260220133613.2392906-1-andriy.shevchenko@linux.intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260220133613.2392906-1-andriy.shevchenko@linux.intel.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268128-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[cassel@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 8DC05192494
X-Rspamd-Action: no action

On Fri, Feb 20, 2026 at 02:35:46PM +0100, Andy Shevchenko wrote:
> As noticed in the discussion [1] the Baikal SoC and platforms
> are not going to be finalized, hence remove stale code.
> 
> 

Applied to libata/linux.git (for-7.1), thanks!

[1/1] ata: ahci-dwc: Remove not-going-to-be-supported code for Baikal SoC
      https://git.kernel.org/libata/linux/c/db1d3cfa

Kind regards,
Niklas

