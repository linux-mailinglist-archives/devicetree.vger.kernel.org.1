Return-Path: <devicetree+bounces-281408-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8EaHHuazxWnEAwUAu9opvQ
	(envelope-from <devicetree+bounces-281408-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 23:32:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C802A33C75B
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 23:32:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6CE0630F5E46
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 22:26:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAF58379EDF;
	Thu, 26 Mar 2026 22:24:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X2iLVf4T"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C345379987;
	Thu, 26 Mar 2026 22:24:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774563890; cv=none; b=nIWDhEw7nEntkyvSo5qGAMzUsPulOIv80g8g4bg7J4IagEbuYLpRQ64mOomBAs5hhqzmTlw2BD2Q22b4kt7NoX0SWfGJTMTnrLiqyulTE7ZC2ZOqA1/gNU2hvIjYPtW9GkuIdMM3PQIkjnjB+jzXmGxlwwMndfoQ5S4WRkRUmos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774563890; c=relaxed/simple;
	bh=vXuZILi71R68LcfYH5ZVtFEJI1fOBMAeL2azpItnV38=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JRE1fkR1UMAhZowqxOQxOyFHnWuSZjywpD7SGh/QecSW9+vFkiFVk3qYE1C+do0op3wXwPpV5ew5XxrnpKsRMktZQTQ0S7U8GlE6sizBq+yLS2QyaU9cBUS6fV4YUW0jTBgYlGRdvRq4V0ZTzPDn+mBQ9udzlgzxnQ4Kkh/NLc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X2iLVf4T; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5274FC4AF11;
	Thu, 26 Mar 2026 22:24:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774563890;
	bh=vXuZILi71R68LcfYH5ZVtFEJI1fOBMAeL2azpItnV38=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=X2iLVf4Tpjd7p1ZSPkG5AUk1EyB0jDrUVuaqqZhpeym2Eh5ODVnN46NA2Iw0BGcwq
	 /Y9KXrhYIqTwBGYWpEbhoMkaa8B0HY1VEOxGn8cvMDn5vNlLNO1N0z4O8bp3Uo0MZo
	 rh/1YukX9BqVYG7qDCW9qm9ng0XIikbZxtzhdddm8sW8emc6ELg4jYegR9mXG9bPz6
	 qjESwrjhBkXCG7yV+0YucrABtn4kJLKLP6krPJCXofasuixxaqRI4RN4evTnuOhnp2
	 lF+c87aVcSaBq2w/8z1sgPTSBDuBKl9tOCtC+2ljFevbkUUMJOCHkSg3nVVpghgpuT
	 lO7vu3LtSX4qg==
Date: Thu, 26 Mar 2026 23:24:45 +0100
From: Andi Shyti <andi.shyti@kernel.org>
To: Yixun Lan <dlan@kernel.org>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
	Troy Mitchell <troy.mitchell@linux.spacemit.com>, linux-i2c@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] dts: riscv: spacemit: k3: Add i2c nodes
Message-ID: <acWx_31uT2ffcaSN@zenone.zhora.eu>
References: <20260325-02-k3-i2c-v1-0-78f29c83d9ac@kernel.org>
 <20260325-02-k3-i2c-v1-2-78f29c83d9ac@kernel.org>
 <acWxJNK_vZca_xCZ@zenone.zhora.eu>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <acWxJNK_vZca_xCZ@zenone.zhora.eu>
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-281408-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andi.shyti@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[zenone.zhora.eu:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C802A33C75B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi agagin,

On Thu, Mar 26, 2026 at 11:22:31PM +0100, Andi Shyti wrote:
> On Wed, Mar 25, 2026 at 09:49:25AM +0000, Yixun Lan wrote:
> > Populate all I2C devicetree nodes for SpacemiT K3 SoC.
> > 
> > Signed-off-by: Yixun Lan <dlan@kernel.org>
> 
> this second patch does not apply on my i2c branch. I'm missing
> some other patches on k3.
> 
> Can you please rebase it on top of my i2c/i2c-host branch,
> otherwise I will need to wait for the merge window to open in
> order to take this.

sorry, this has to go through some other path, I'm going to take
patch 1.

Andi

