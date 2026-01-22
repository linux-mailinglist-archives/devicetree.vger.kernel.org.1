Return-Path: <devicetree+bounces-258287-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QOrlK/b4cWmvZwAAu9opvQ
	(envelope-from <devicetree+bounces-258287-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 11:16:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 24B29651C4
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 11:16:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 2F5464FEEF8
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 10:11:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 193823A9DB8;
	Thu, 22 Jan 2026 10:11:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.gentoo.org (woodpecker.gentoo.org [140.211.166.183])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53AD4366579;
	Thu, 22 Jan 2026 10:11:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.183
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769076697; cv=none; b=LlFHf8wVq/JhuYj9u5MxhXTFrdwJsC+TzqsZmyH4hj9YPCRe3/un/nTMCSv7wmU614/6rKV1SjPWHFBC1NQJo60YlvdGLWMWyUXeqyn+P1wuRp/au2LH5Jw+8ko75b4EtTHmCnUnQdisEf8YKFF7mh6GhMY9Y0RsN8LrACNtKNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769076697; c=relaxed/simple;
	bh=6R4gG9+TiV1zEt9QzN6VdOfwqXjtMSM/z3VQOQTcCII=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WZgwTxC/JD53EV/JBrGCKgZecgzra02lMbXVWiWybwc8lGZWsQsQKHwhfG9qQjEGtuKwVeeFA3xeC6kkBRfSeAtzIceG7v7z7WHj0i3W2L0yx9SXbSRnH95/4i7e0h1/hEefmAOuWVyRx34JTPMWxyIIdAyxVoyG1L5eXKSA5zc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gentoo.org; spf=pass smtp.mailfrom=gentoo.org; arc=none smtp.client-ip=140.211.166.183
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gentoo.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gentoo.org
Received: from localhost (unknown [116.232.27.242])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange secp256r1 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dlan)
	by smtp.gentoo.org (Postfix) with ESMTPSA id 603E0341E75;
	Thu, 22 Jan 2026 10:11:34 +0000 (UTC)
Date: Thu, 22 Jan 2026 18:11:22 +0800
From: Yixun Lan <dlan@gentoo.org>
To: Guodong Xu <guodong@riscstar.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
	Alex Elder <elder@riscstar.com>, Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Troy Mitchell <troy.mitchell@linux.spacemit.com>,
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev, devicetree@vger.kernel.org
Subject: Re: [PATCH 0/4] regulator: spacemit-p1: Fix voltage ranges and
 support board power tree
Message-ID: <20260122101122-GYA63789@gentoo.org>
References: <20260122-spacemit-p1-v1-0-309be27fbff9@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260122-spacemit-p1-v1-0-309be27fbff9@riscstar.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gentoo.org : No valid SPF, No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-258287-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,riscstar.com,linux.spacemit.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlan@gentoo.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:helo,dfw.mirrors.kernel.org:rdns]
X-Rspamd-Queue-Id: 24B29651C4
X-Rspamd-Action: no action

Hi Guodong,

On 17:43 Thu 22 Jan     , Guodong Xu wrote:
> This series fixes hardware voltage constraints and enables flexible power
> tree configurations for the SpacemiT P1 PMIC.
> 
> Patch 1, n_voltages is corrected to match hardware register widths, as the
> previous values prevented regulators from reaching higher operational
> voltages (e.g., 3.3V on LDOs).
> 
> Patch 2-4, hardcoded supply assumptions are replaced with explicit
> devicetree properties. PMIC supply connections are board-design decisions.
> Moving this to DT allows supporting varied topologies without driver
> modifications.
> 
> Note: Patch 3 introduces a bisect breakage by transitioning to
> pin-specific supply names. Probe failures will occur on existing board
> (K1 Bananapi F3) until Patch 4 updates the corresponding DTS file.
This patch bring system-wide change that not only affect Bananapi F3..

Please also provide fix for other boards, I think you may not be able
to test all boards, but make sure the patches are available, so people
who interested can test, P.S I can help on milkv jupiter board

> 
> Signed-off-by: Guodong Xu <guodong@riscstar.com>
> ---
> Guodong Xu (4):
>       regulator: spacemit-p1: Fix n_voltages for BUCK and LDO regulators
>       dt-bindings: mfd: spacemit,p1: Add individual regulator supply properties
>       regulator: spacemit-p1: Update supply names
>       riscv: dts: spacemit: k1-bananapi-f3: Update PMIC supply properties
> 
>  .../devicetree/bindings/mfd/spacemit,p1.yaml       | 58 +++++++++++++++++++++-
>  arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts    | 12 ++++-
>  drivers/regulator/spacemit-p1.c                    | 25 ++++++----
>  3 files changed, 80 insertions(+), 15 deletions(-)
> ---
> base-commit: c8a4a774a9b0d2c86593492625874e27e9cbc9a9
> change-id: 20260122-spacemit-p1-ae596efe885f
> 
> Best regards,
> -- 
> Guodong Xu <guodong@riscstar.com>
> 

-- 
Yixun Lan (dlan)

