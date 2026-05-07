Return-Path: <devicetree+bounces-293982-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UFfPH95+/GnXQgAAu9opvQ
	(envelope-from <devicetree+bounces-293982-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 07 May 2026 14:00:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F3004E7E50
	for <lists+devicetree@lfdr.de>; Thu, 07 May 2026 14:00:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F3DEB3013254
	for <lists+devicetree@lfdr.de>; Thu,  7 May 2026 12:00:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86C6E3AEF3D;
	Thu,  7 May 2026 12:00:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dj6NZvVv"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBB3E3B8BD4;
	Thu,  7 May 2026 12:00:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778155213; cv=none; b=G4nzyOvoWMPsR0/StIYlyOcTIM9d3aUqf9s+wOxFGSQl+SiZ5X1adYrrrf402bokKizgnjd61qvEER+4j9YhTQz7I3BoKNx/zA6UUuEHdhD+60zgn5JDEXrFj/Fz5luVoNHo5rghIoBc7L6q0PzWBMEMpjQFGyNKsF8+Sf6Xb4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778155213; c=relaxed/simple;
	bh=4P63+pMF5hPGAISna7ea2oO0XmA+Gl8rd2gi9zdqbEc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WXv5Xa60GIb9zwQur1chqEheD35P/XHGxHU5TZR4qADj5PvmVgppc+jJ8ztxjv7JqcG0g7m/05kWTf0bnoboeehDBZmGjqxJS48A0+BQw5fAkJDrPN0d9Y911Lq+SmgGWPtRGk7lxoS11hKxfs2EXJKS6LC/lK+xmWXuR1Rbflo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dj6NZvVv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2F70AC2BCB8;
	Thu,  7 May 2026 12:00:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778155211;
	bh=4P63+pMF5hPGAISna7ea2oO0XmA+Gl8rd2gi9zdqbEc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dj6NZvVvVdOgDw+LjcXmghm4lgzB0yLDuhWRWp6+T1Ab+ZYzJKC2uAEiWaO1m8cmY
	 6fFESU1DwxI99LL4EouzKOWCzyS2GGh9n5dErai0qC1ZuojTipZeVZEbk1Q94thy4d
	 P0VP9ZdJ2RiUYT2vfZ31Gr2SVPLgg5n9ba0LinPQ4w8HC8ywZ764RI8QLKbVhBFDno
	 36OuvxzmLV7EDgAIy6A9MdahCwYHddaXy+bLHpaCkPBW4GLNaKzCV2gGN2zzCeJT1v
	 jh8ToM18pipZRbdpWWSgbSr3cU2OHxam70kBlSkRnXAUGiRxib+9on4Q4WWMvjhu2n
	 jdKoP6EWKNK3g==
Date: Thu, 7 May 2026 13:00:03 +0100
From: Lee Jones <lee@kernel.org>
To: Tudor Ambarus <tudor.ambarus@linaro.org>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Bartlomiej Zolnierkiewicz <bzolnier@gmail.com>,
	Kees Cook <kees@kernel.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Peter Griffin <peter.griffin@linaro.org>,
	=?iso-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>,
	Daniel Lezcano <daniel.lezcano@kernel.org>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, willmcvicker@google.com,
	jyescas@google.com, shin.son@samsung.com,
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-hardening@vger.kernel.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH v3 03/10] firmware: samsung: acpm: Drop redundant _ops
 suffix in acpm_ops members
Message-ID: <20260507120003.GG305027@google.com>
References: <20260420-acpm-tmu-v3-0-3dc8e93f0b26@linaro.org>
 <20260420-acpm-tmu-v3-3-3dc8e93f0b26@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260420-acpm-tmu-v3-3-3dc8e93f0b26@linaro.org>
X-Rspamd-Queue-Id: 0F3004E7E50
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-293982-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,intel.com,arm.com,samsung.com,gmail.com,linaro.org,baylibre.com,google.com,vger.kernel.org,lists.infradead.org];
	RCPT_COUNT_TWELVE(0.00)[29];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lee@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action

On Mon, 20 Apr 2026, Tudor Ambarus wrote:

> Rename the `dvfs_ops` and `pmic_ops` members of `struct acpm_ops` to
> `dvfs` and `pmic` respectively.
> 
> Since these members are housed within the `acpm_ops` structure and
> utilize the `acpm_*_ops` types, the `_ops` suffix on the variable names
> creates unnecessary redundancy (e.g., `handle.ops.dvfs_ops`).
> 
> This cleanup removes the stuttering, leading to cleaner consumer code.
> 
> Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
> ---
>  drivers/clk/samsung/clk-acpm.c                        | 8 ++++----
>  drivers/firmware/samsung/exynos-acpm.c                | 4 ++--
>  drivers/mfd/sec-acpm.c                                | 6 +++---

Acked-by: Lee Jones <lee@kernel.org>

>  include/linux/firmware/samsung/exynos-acpm-protocol.h | 4 ++--
>  4 files changed, 11 insertions(+), 11 deletions(-)

-- 
Lee Jones

