Return-Path: <devicetree+bounces-324718-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id deCuE0esUWr9HAMAu9opvQ
	(envelope-from <devicetree+bounces-324718-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 04:36:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AD564740058
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 04:36:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="HRH/SuAr";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324718-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-324718-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F2C6D302206F
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 02:36:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 805C321CFE0;
	Sat, 11 Jul 2026 02:36:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6354541C72;
	Sat, 11 Jul 2026 02:36:51 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783737412; cv=none; b=tJLJIjM5XZDEIOeEt+3DIrm2uyRIEO0/X2ZLz+w0Mvlr7YHF7lsxbbztS/dAUP899GGhVjwq38chYTB9JeNlhBKbO9NDN5Anu8fLBd0ulfYu/c5M2bhrXtHCYos0ISVj9E51VCLyfR64Y/T9G0uyUR7kew9kdF6GDzwAKx+raXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783737412; c=relaxed/simple;
	bh=dpjtxq1s5UWAh7erVuNJEL2m0ijsm7BL9jBPsDKhrKI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JVwur/ousIYGpXgxaDeN/k5TqDSToGpnLsNOgOQBzH30m/sdaWNjC0gG1cIhti1Y2dmjYl34hiCkVRlu0lSkTO1UZ0FJ2mOAOawns7Cul3x6V7ADyruWic06J1QqYligUknRE6JKKcdAvW8fDpFXH+bCR2XCkAYdYgq9/vyTVio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HRH/SuAr; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 771B61F000E9;
	Sat, 11 Jul 2026 02:36:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783737411;
	bh=JvGQgD/zL+fNY2gX0aPOTLx88oeXax1vm26FJzg3PNY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=HRH/SuAr0s9ktamFAFNn0iIuDA5FkvUvLKxP9eLKw43mSTVOyTHVopp5CJ5F4oUof
	 f9RaQ622WSnCBsfrCxYPx6V80zVfYgFDuXAOPPsv+1lR0kLDymLGrl97Kfzu1hsbZm
	 p3LZrz0qNcCCHlOHYUgqH1zMdSZGoLWPDoEYN5ssNMqy7i9cU63E/ORNC9EHyJjCmj
	 Zuw7MvmvtB9UFadeCdLFR9eb/fumQ+d+bRk1oXHmt/SaW5d/iliG6NYxjYXZSW84oY
	 ZAYhcdpzRwM0zOOo5KBFAVXKjy7go2zD9s0H5VRLn9sMlkbJl54uNWVWCUNREwLcOK
	 yOq0PyHcbrbbA==
Date: Sat, 11 Jul 2026 02:36:48 +0000
From: Yixun Lan <dlan@kernel.org>
To: Zhengyu He <hezhy472013@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev, linux-kernel@vger.kernel.org,
	wefu@redhat.com, Aurelien Jarno <aurelien@aurel32.net>,
	Cody Kang <cody.kang.hk@outlook.com>
Subject: Re: [PATCH v3] riscv: dts: spacemit: k3: Add QSPI support for
 Pico-ITX board
Message-ID: <20260711023648-GKC106000@kernel.org>
References: <20260711-k3-pico-itx-qspi-v3-v3-1-d6b37fc86c39@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260711-k3-pico-itx-qspi-v3-v3-1-d6b37fc86c39@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-324718-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:hezhy472013@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:pjw@kernel.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:devicetree@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:spacemit@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:wefu@redhat.com,m:aurelien@aurel32.net,m:cody.kang.hk@outlook.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,dabbelt.com,eecs.berkeley.edu,ghiti.fr,vger.kernel.org,lists.infradead.org,lists.linux.dev,redhat.com,aurel32.net,outlook.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,outlook.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AD564740058

Hi Zhengyu,

On 09:38 Sat 11 Jul     , Zhengyu He wrote:
> Enable QSPI with proper pinmux on the Pico-ITX board, and describe the
> NOR flash wired to it.
> 
> Tested-by: Aurelien Jarno <aurelien@aurel32.net>
> Reviewed-by: Aurelien Jarno <aurelien@aurel32.net>
> Signed-off-by: Cody Kang <cody.kang.hk@outlook.com>
> Signed-off-by: Zhengyu He <hezhy472013@gmail.com>
> ---
Reviewed-by: Yixun Lan <dlan@kernel.org>

-- 
Yixun Lan (dlan)

