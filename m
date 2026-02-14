Return-Path: <devicetree+bounces-265587-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QILkNejckGnVdQEAu9opvQ
	(envelope-from <devicetree+bounces-265587-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 21:36:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 6878013D251
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 21:36:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B2C6A300232B
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 20:36:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C50F230B521;
	Sat, 14 Feb 2026 20:36:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iVqCYLeM"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1EAE303A07;
	Sat, 14 Feb 2026 20:36:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771101411; cv=none; b=g8D7AC913F13nSjEtG9p+wqp5YV5+2g2z2+TRryDbAIfBReoaey9rQ3GzWIoJ7O8smAWrMTWDnGBxVc8TFCFafnu7r12tcmwn6do5PV6FPod6bZGjhxkg03xabxIP5SBynqv3Kv/mgyqC2dSIQGeqxcjgsvFexHOwXnMhAXyR0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771101411; c=relaxed/simple;
	bh=QDdd2+1ycl3mmYqGRk4XVRj+dso5vvrnBiAxu6oBwO4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rLL2EdZpddk3gZORI/O60tsvpk8o7ZX2GYDzSQBGXDlRkC7aMDYq66k40OQJn/o9rzowbCyh0fa2VXyS/mzM3kQcTgCNqlDMntd1T0SXl2FDuaRgrNPQls8wDkfzi3wnSanpgyHhzGMpJVL49ums7d0j9V4arkDMSMjDNeO+A+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iVqCYLeM; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C7E81C16AAE;
	Sat, 14 Feb 2026 20:36:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771101411;
	bh=QDdd2+1ycl3mmYqGRk4XVRj+dso5vvrnBiAxu6oBwO4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iVqCYLeMHW6BQIMgVL0MXYWVe9087z9fJjE7H8JcjAvmD8k+ixowoiHvND+mgBYwM
	 0nGTEhU+zpgTRqlZVutlHgnJEfCv5P4C7uZ+k3xUV7RVovLEi+N7ALdcTFkvAZdPpP
	 bdOuyus1xvB8eXC9Q3it2RbZ3FBm0qeMw0LCuxncUSdoVnhvXL/9F1ec9Ehbre8xF2
	 vadK1qNWtKtoDQzyWFpaTAiEbHq5s/1PIqS5Nm0RMRNO8SLYznbyMCOrXc19JpQnjJ
	 8WJ3HsR4bSZ6Gz4/165ShQQ0RBNyry3uSj83z7czNQ/B3l3fz5mq+jXOcr+40sOujb
	 BhRoQSP3m1j1w==
Date: Sat, 14 Feb 2026 21:36:48 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Xukai Wang <kingxukai@zohomail.com>
Cc: Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Conor Dooley <conor@kernel.org>, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	Samuel Holland <samuel.holland@sifive.com>, Troy Mitchell <TroyMitchell988@gmail.com>, 
	jiayu.riscv@isrc.iscas.ac.cn
Subject: Re: [PATCH v11 1/3] dt-bindings: clock: Add bindings for Canaan K230
 clock controller
Message-ID: <20260214-lyrical-rabbit-from-camelot-2e1195@quoll>
References: <20260214-b4-k230-clk-v11-0-6de365489b89@zohomail.com>
 <20260214-b4-k230-clk-v11-1-6de365489b89@zohomail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260214-b4-k230-clk-v11-1-6de365489b89@zohomail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265587-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[17];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[baylibre.com,kernel.org,sifive.com,dabbelt.com,eecs.berkeley.edu,vger.kernel.org,lists.infradead.org,gmail.com,isrc.iscas.ac.cn];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 6878013D251
X-Rspamd-Action: no action

On Sat, Feb 14, 2026 at 08:54:37PM +0800, Xukai Wang wrote:
> This patch adds the Device Tree binding for the clock controller
> on Canaan k230. The binding defines the clocks and the required
> properties to configure them correctly.
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

This review and the patchset has one year already... so I am afraid it
will be resend and resend, thus please also implement below:

A nit, subject: drop second/last, redundant "bindings for". The
"dt-bindings" prefix is already stating that these are bindings.
See also:
https://elixir.bootlin.com/linux/v6.17-rc3/source/Documentation/devicetree/bindings/submitting-patches.rst#L18

Best regards,
Krzysztof


