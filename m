Return-Path: <devicetree+bounces-277599-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2PqHJ6qtu2k8mgIAu9opvQ
	(envelope-from <devicetree+bounces-277599-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 09:02:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B427C2C79CD
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 09:02:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id CFC0630089AB
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 08:02:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 330BD3A0E80;
	Thu, 19 Mar 2026 08:02:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b="kNnY/Y50"
X-Original-To: devicetree@vger.kernel.org
Received: from mail11.truemail.it (mail11.truemail.it [217.194.8.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 446A930EF97;
	Thu, 19 Mar 2026 08:02:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.194.8.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773907365; cv=none; b=JO9Zk3HF6BnAvlXRxh3Lk0zHzShHYZ74QHse7ejShBCoStaisCS/rRy3CvgRv4Lzei+ExU/Hbvj5A1wuelDGJj115rpuKWKWu2bQ7iy9mmwpHMvCyEMjkQjvmmMuAg2Bx/yYCkhmWnt8W+8cbJyI3l+qbrD3E0Zt9Te5RdlXAkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773907365; c=relaxed/simple;
	bh=h0yD8IH+wK2AwJtBvP6hcdTAqqLEEeROY22oW47UUj8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kRI/HZkr+9vmsgpksCrD7Zxr7nO1mFv3cbTBQRydh+ockLZfKoWptrTlZeac6D4NKZPhPqbJiMlcXa4nwS7/M1oxL32jmnQ6iUUUcL6lVGOYekmOwKAU0vzUrJo2epFQmA+2MjIhAqMhDgExuroZ1p1k9pwA816v2X8Z6qG+GZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it; spf=pass smtp.mailfrom=dolcini.it; dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b=kNnY/Y50; arc=none smtp.client-ip=217.194.8.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dolcini.it
Received: from francesco-nb (93-49-2-63.ip317.fastwebnet.it [93.49.2.63])
	by mail11.truemail.it (Postfix) with ESMTPA id A93231F94A;
	Thu, 19 Mar 2026 09:02:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dolcini.it;
	s=default; t=1773907353;
	bh=h0yD8IH+wK2AwJtBvP6hcdTAqqLEEeROY22oW47UUj8=; h=From:To:Subject;
	b=kNnY/Y50A8rFL63mhjwBf0svsePueD2Fg8iR7BnGe8XFetqWnNHnWwPRgLEsDvY/F
	 eb5H7eA6rmjKwnbXeJ0XFYkYQSlZvmv9laXtzMZdsWDMplGtaOAhdJHhcOVL3Qs6XY
	 ANdM0D6Cs38oqT1SDrv8kx17rQkHwTLIixm9XzQvT+8X/ycBF1exWilnMQoAhwZCsc
	 KHRvkAdWbgrP0vC64ZlgaSndfYHrcFYRBLKU7dvKE7/79sSuekt8JQahOP0bRI5yzP
	 eMr7IR0MVjgc29t1Sli7a3aoXRuJW4n9JDHNNsmO2UquzpFTuN0K4rU2YVsR1i00KO
	 I+0/6ehcEILCw==
Date: Thu, 19 Mar 2026 09:02:28 +0100
From: Francesco Dolcini <francesco@dolcini.it>
To: Judith Mendez <jm@ti.com>
Cc: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, Moteen Shah <m-shah@ti.com>,
	Andrew Davis <afd@ti.com>
Subject: Re: [PATCH v2 0/3] Fix MMC pin pull configurations
Message-ID: <20260319080228.GA6079@francesco-nb>
References: <20260223233731.2690472-1-jm@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260223233731.2690472-1-jm@ti.com>
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[dolcini.it,none];
	R_DKIM_ALLOW(-0.20)[dolcini.it:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277599-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[francesco@dolcini.it,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[dolcini.it:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,dolcini.it:dkim]
X-Rspamd-Queue-Id: B427C2C79CD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hello Judith,

On Mon, Feb 23, 2026 at 05:37:28PM -0600, Judith Mendez wrote:
> This series corrects MMC pin pull-up/pull-down configurations across
> TI AM62L EVM, AM62P SK, & AM62 LP SK boards to properly match their
> hardware design.

On AM62P the first mmc controller has no pinctrl, how is the situation
on this specific interface?

Francesco



