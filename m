Return-Path: <devicetree+bounces-296673-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +LF7BxYtBGo/FAIAu9opvQ
	(envelope-from <devicetree+bounces-296673-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 09:49:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9512452EF9C
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 09:49:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1F8E53068923
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 07:48:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AEB433859D2;
	Wed, 13 May 2026 07:48:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZT6ISFIz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A39437F8C1;
	Wed, 13 May 2026 07:48:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778658512; cv=none; b=g0gzF/HdDmtIeAAiWtJffenNEqaIQaXAaYXoMEXHupCEIvi+I4HPmKRV7jupAWTs72IFSKkl6yTRNRS91fTHPt+CiBdI0pKN7d4LvPIxJNfjPmp7YhDrh6+D3kxIRntg2n/xifB6MZw9iUzircgVj8QCqMfDp33s69zv6kDZFHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778658512; c=relaxed/simple;
	bh=r4IxZmFlVD6+qhE10Ci/nmAv6mfJj/vjrOXEkC9+www=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ke4xN7O3W71YXHlY3oB/6YE3vSHNV2O5c44dJpPqzvYfBeTTVWYo5swmtvJZBt6dP1r3eJ4si9BSMjEvKV446m+UABsWlzax9NiCcTpZOa8WGxPrpd27PFF3Le+baC9jyNFaWta4AR4IKxa810B/5oL8LIoH2eraCAPkk5CLgZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZT6ISFIz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C1816C2BCB7;
	Wed, 13 May 2026 07:48:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778658512;
	bh=r4IxZmFlVD6+qhE10Ci/nmAv6mfJj/vjrOXEkC9+www=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZT6ISFIzu+Vn4cYjVcrFExPJzjr5uartsU2ffXTYNxfWMkiznJ5VUCp1O7zxV2ujR
	 Q5QrVnMqYVS+Szcv10XqtNkE4eHEW1mlTZo/OfJVHGopvReozaAZ+CzupuXfPODnlW
	 GzqtA4fmyHKa8T1jlzMqoqtiv7sxAx7VX+QVKHP0/0kerfJH3uHLQwTxM4DhPVvKCp
	 meUwbkhFBEUwewBsZVAZ46ekPYnLwUzcuNQSOTYTdvPOMqU2nCJ4+tFXMAIOfwejXO
	 WKm12f1p/rOJjNpQGoaWjrX1Hdg2o/3bVjDCNBjQFPHOCyuwcnQChl6DPaoJsTbq8Q
	 lkvBhA8uK4+nA==
Date: Wed, 13 May 2026 07:48:28 +0000
From: Yixun Lan <dlan@kernel.org>
To: Andre Heider <a.heider@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Yixun Lan <dlan@gentoo.org>, devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/6] riscv: dts: spacemit: k1-musepi-pro: add PMIC and
 power infrastructure
Message-ID: <20260513074828-GKB3624092@kernel.org>
References: <20260513071958.29574-1-a.heider@gmail.com>
 <20260513071958.29574-2-a.heider@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260513071958.29574-2-a.heider@gmail.com>
X-Rspamd-Queue-Id: 9512452EF9C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-296673-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action

On 09:19 Wed 13 May     , Andre Heider wrote:
> Enable i2c8 and add the connected SpacemiT P1 PMIC with its related regulators
got a warning here, commit message should limit to 75 characters..

> for the board's power infrastructure and voltage regulation support.
> 
> Signed-off-by: Andre Heider <a.heider@gmail.com>

-- 
Yixun Lan (dlan)

