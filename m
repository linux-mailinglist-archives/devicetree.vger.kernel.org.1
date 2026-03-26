Return-Path: <devicetree+bounces-281406-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6L8QBgmyxWmpAwUAu9opvQ
	(envelope-from <devicetree+bounces-281406-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 23:24:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E63333C528
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 23:24:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A88C330459C4
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 22:22:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94C5D326939;
	Thu, 26 Mar 2026 22:22:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YQBepmYf"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FB983016EB;
	Thu, 26 Mar 2026 22:22:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774563751; cv=none; b=sHQOFO8Q21Yrsu/6uiU9S4E11A/qvoXcleWSVCHbOPmZEOsBvbXTwHjZQsDeD4diDd9Gm6fMtUUAUptweeLWfON19TucoQ7qyQiAXr2JVz8WTCnA/I17LiS8s3FvF1UPlNrQmSQ0+8PO6Ma2kWT56KEyYo+Yu23W42g/w3TsJgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774563751; c=relaxed/simple;
	bh=QFvbS0GhFnRlo+56h6KYVqI4hNKBx9LjI/HgLWKtYxc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tLxcTAjnoaxhWRXGWcpPv9La0t3XO9EVmyurWEG+piyt1wvkxyu5KOj6xjYdIbZLUIBVFHl8m42ewayu9LUqJTMOdLo5nST4UpPV5jT0EpumKNnV7wpbMyTHe6L13Ng7KEEI/Ux8ts9qzviLZXsBBbn+MSRWtCegOO25gJxCvnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YQBepmYf; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81441C2BC87;
	Thu, 26 Mar 2026 22:22:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774563751;
	bh=QFvbS0GhFnRlo+56h6KYVqI4hNKBx9LjI/HgLWKtYxc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YQBepmYfZMV5yL7Sh4QV7gumKup40c8mFrfl+1n6NpvgQvcctZVNa5Ntt6lk5EbvF
	 bvGmDlsWBHCQM1xndpWifoWWcQ0gIMYn+C4jNeythO3zJEpGS3G7Tt/G3EfrMA1ZsO
	 afuwMqKvlhxMNNUzw4WkV72eMNtLyK6ux3LFsmKQ6y1zs1U/Z+S2UtLCie1ryn9FIU
	 ZPUTlq8AaTqPufMsL2wXPVWE0ekM17D3yDOy1syUlRqxXSQou5ZNLBi7Wsa9SgsTfT
	 JOteDq9En2aG/C6XTUwMPJm9iNEtOWjKKfHhJ8zzDpeCs92z0pqsRK3hRNky6qRiLU
	 J12HHeapLDoAQ==
Date: Thu, 26 Mar 2026 23:22:26 +0100
From: Andi Shyti <andi.shyti@kernel.org>
To: Yixun Lan <dlan@kernel.org>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
	Troy Mitchell <troy.mitchell@linux.spacemit.com>, linux-i2c@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] dts: riscv: spacemit: k3: Add i2c nodes
Message-ID: <acWxJNK_vZca_xCZ@zenone.zhora.eu>
References: <20260325-02-k3-i2c-v1-0-78f29c83d9ac@kernel.org>
 <20260325-02-k3-i2c-v1-2-78f29c83d9ac@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260325-02-k3-i2c-v1-2-78f29c83d9ac@kernel.org>
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
	TAGGED_FROM(0.00)[bounces-281406-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 9E63333C528
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Yixun,

On Wed, Mar 25, 2026 at 09:49:25AM +0000, Yixun Lan wrote:
> Populate all I2C devicetree nodes for SpacemiT K3 SoC.
> 
> Signed-off-by: Yixun Lan <dlan@kernel.org>

this second patch does not apply on my i2c branch. I'm missing
some other patches on k3.

Can you please rebase it on top of my i2c/i2c-host branch,
otherwise I will need to wait for the merge window to open in
order to take this.

Andi

