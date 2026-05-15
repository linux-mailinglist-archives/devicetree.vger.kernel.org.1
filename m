Return-Path: <devicetree+bounces-297959-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id Z0eeGWHOBmp7oAIAu9opvQ
	(envelope-from <devicetree+bounces-297959-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 09:42:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 25C1F54AC20
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 09:42:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9AD65300383D
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 07:42:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B7183DEAC5;
	Fri, 15 May 2026 07:42:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zrg/95qw"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED1DC37EFF7;
	Fri, 15 May 2026 07:42:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778830938; cv=none; b=jYzIKVawnwxFt2dajgmVOERV8TauUGh9GXroxhGLuiub+JDv0Cfx4ts/R2TN8wAYHZYv3uYBmDMIcsn2fU399wMRCwEYPVKF54fterlnJRfht/ArID7Y3i0ObTev/XtARFnvzZPaYPRcTietUhzLWuXjKBZJPh0tzxKHJpMq5Xg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778830938; c=relaxed/simple;
	bh=xRYVtVgQPLJ8x5jZ8eWU7cuVDLV6bkK8AXCkt+j9x0k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BuZWqxm9pVmdxWTI3Vdj0LxLU/yhbaC2hlWTakANpJEbr3EH9NtrMB5vEnkjJNTMWvTuUJkc+P9dscQF2PT+Oo6e1dS4TufwHZZ0DBoFujd2Bmz/lllwZ4204mSsuDNUHH/styuUhSuojwMyvfIj+afVHYGxJ9yddZedc6HB0cw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zrg/95qw; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 44D90C2BCB0;
	Fri, 15 May 2026 07:42:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778830937;
	bh=xRYVtVgQPLJ8x5jZ8eWU7cuVDLV6bkK8AXCkt+j9x0k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Zrg/95qws17BanAeNWrmp5I1aRw7ojZ05mBCWMAybEkOr/cQ4lzvbBqWfbyXreRix
	 JwmA/ZHGiuJIs2m7hjEmXa2NxPhmy2tFtPSNe7t81jCcCmu2byDL5xDDEI16OjYVNV
	 f7oeSQ3wLfAIUs+RKAi574/RVHEi7l9L1Ggq+kTZBlk30Tc4UxNUyalp/tdAguPQ5V
	 KyOfmN0V2HUsyP916/tfIl0J/z6TVEqVJHassdOWOZbtLIjQfP/kEFZUZLjG0fhTSm
	 ZUr3msXEDADxS0IYCdfSTMT1FeYNU+aYT2hR1FAZNvcwHf5K/qr6g3+dx4pAj84617
	 p4y1bp2qlP1tg==
Date: Fri, 15 May 2026 09:42:15 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Kartik Nair <contact.kartikn@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	jacobsfeder@gmail.com, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: misc: add documentation for Xilinx
 AXI-Stream FIFO IP core
Message-ID: <20260515-stalwart-deer-of-drama-0fcca4@quoll>
References: <20260510190908.400-1-contact.kartikn@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260510190908.400-1-contact.kartikn@gmail.com>
X-Rspamd-Queue-Id: 25C1F54AC20
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-297959-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Action: no action

On Mon, May 11, 2026 at 12:39:08AM +0530, Kartik Nair wrote:
> Add device tree binding documentation for the Xilinx AXI-Stream FIFO
> IP core (PG080). This documents the compatible strings used in
> drivers/staging/axis-fifo/axis-fifo.c which were previously flagged
> as undocumented by checkpatch.
> 
> Documented compatible strings:
> - xlnx,axi-fifo-mm-s-4.1
> - xlnx,axi-fifo-mm-s-4.2
> - xlnx,axi-fifo-mm-s-4.3
> 
> Signed-off-by: Kartik Nair <contact.kartikn@gmail.com>

How many times this binding is going to be sent? This is like fifth
time!

Please use search on lore before you start working on something.

Best regards,
Krzysztof


