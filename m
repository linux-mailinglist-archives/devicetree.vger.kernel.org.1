Return-Path: <devicetree+bounces-295742-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yGyRAkgdAmocoAEAu9opvQ
	(envelope-from <devicetree+bounces-295742-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 20:17:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E7C9514352
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 20:17:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 572663020FD5
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 18:17:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 557ED47AF6E;
	Mon, 11 May 2026 18:17:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fYoeCKof"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 318AC426699;
	Mon, 11 May 2026 18:17:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778523461; cv=none; b=TtMOlWXyx5THNwhnpC9O/iVXPkk9dAOQJ0XYDC1fTIKn9f+o6l37R7EcHLTpznD8rRuzGYxuFpk/KGvx633epElLifT9firbhiz3vqXF2nocljoIQyDgu9ulyhof2MQ+uuuR/WJlW9AIVrdQKQbPy5DfkVqxMhahD7TvbQ5t/7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778523461; c=relaxed/simple;
	bh=lbURAKti2CzpwsVQhG3cs4u+CeZLlfqHQLKrPBlxm0A=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=RlyoL2z6xpJF8exjv9JMlXbZ7EmU2EHOYe/DQUv2WhHbmUSolqdUpdIpc8B9WG7Be71r8gDgh7TjqYrFV5TTOixgIKFaIBPjz1RGCd6hiT64p/dIyl8033aRMD3Q+v0WYGrbn3n0l9JGz/AYZbWVYp4hS4IEqINzG4QLPBjb78o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fYoeCKof; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 14EBEC2BCB0;
	Mon, 11 May 2026 18:17:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778523460;
	bh=lbURAKti2CzpwsVQhG3cs4u+CeZLlfqHQLKrPBlxm0A=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=fYoeCKofqFa1PyhhiAlSmCaF6Ac+bBHg9sH8kfm7lIk6BK0OtQJq0r+EiWfPAkeHr
	 AVtlO/keiy8D+jl0Oa40NQUF2qYMFcK6ahne5MNJeX/2rqYQlBGk2bZ36wZkCjUnpa
	 CPVhKgH3HvM7gzuTbdJNY+D1amMprHPv5MBnBs+poQJEoM1o9DKYe/291RNjJSPEl0
	 xKGTjkf2njxEUMaTIPX3W0tG9UTNoboNj+eCyD74X10hHMktexCoGGU4DRITBTQbrU
	 qU47SgK2fZtMVe/BCnRJalmSL9aQGPzyM2TXF4w9ZCvOtybm6cxPI7OLPWLSxOxTYq
	 vyuOHG4t+i9kg==
Date: Mon, 11 May 2026 19:17:33 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
 dlechner@baylibre.com, jean-baptiste.maneyrol@tdk.com,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 andriy.shevchenko@intel.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V5 06/11] iio: imu: inv_icm42607: Add Buffer support for
 icm42607
Message-ID: <20260511191733.1c53e757@jic23-huawei>
In-Reply-To: <20260509191907.24734-7-macroalpha82@gmail.com>
References: <20260509191907.24734-1-macroalpha82@gmail.com>
	<20260509191907.24734-7-macroalpha82@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 6E7C9514352
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-295742-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,analog.com,baylibre.com,tdk.com,lists.infradead.org,sntech.de,intel.com,hotmail.com];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Action: no action

On Sat,  9 May 2026 14:19:00 -0500
Chris Morgan <macroalpha82@gmail.com> wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add all FIFO parsing and reading functions to support
> inv_icm42607 hardware.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Sashiko was busy on this one as well.

Not all necessary valid but at least some are.
Given I'm way behind with reviews and it's getting late I'm going to
stop look at this series for now. Please take a close look at:
https://sashiko.dev/#/patchset/20260509191907.24734-1-macroalpha82%40gmail.com

If there are things you disagree with that's  fine but it
has a bunch of things in there that are definitely correct.

Thanks

J

