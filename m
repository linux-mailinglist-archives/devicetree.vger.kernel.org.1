Return-Path: <devicetree+bounces-297699-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eNx2ObrvBWpWdgIAu9opvQ
	(envelope-from <devicetree+bounces-297699-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 17:52:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E4AB5444E2
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 17:52:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8B641300B185
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 15:52:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B40B33290C7;
	Thu, 14 May 2026 15:51:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AF6s2tuO"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B34BB322DB7;
	Thu, 14 May 2026 15:51:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778773910; cv=none; b=WTAjmnJ+dsf+LBVqL2CuRhGEwG1A8FJZXn0iM41ohx8ADPf4Tn0Rfk5fwujYGCjE7O25KBGaSpMIWyOPg/EsCbAknAFiWwvtc88a7Gi3r/A/VLTvugIcjDNzEVwuRE/DWcwklGJcfrli+siCQPhP5KuCfYXdNyoxl6XvGxpCQSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778773910; c=relaxed/simple;
	bh=CK5dy8dc4DrPGToMdCJE0mzXLluSsBycMp8vs+xX8fc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZQA+dS4Zp+abF8LHR4xzer2uTg4bNbcRPWeWBk1ZL2yScu+19nLAzu2Jwi8heRvqKZOCwlZMf9IeSrUUt75d7nZlsUwiYl3XToLrskBm1n9AGf7nblKlxrfaI/URzMgpInl3NpuhecNXISPw/GxxgJQ6p0hhDSF2GNkZWdjwrPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AF6s2tuO; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BA1CCC2BCB3;
	Thu, 14 May 2026 15:51:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778773910;
	bh=CK5dy8dc4DrPGToMdCJE0mzXLluSsBycMp8vs+xX8fc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AF6s2tuOMR72IlL44Rk/T5know+vXIaYBTxKwt+TsxVT0ySdnjGUpiwlXZbZT/O4I
	 gibmDM+ZId+gZ2ssfmfXkOo9eV6xLiUewi62k9OKbEBHJHWG/4ItV04RY8eHQD8Bzl
	 Z9JSjDh5J+xk5GoDY00vmQ1GeqfMKw3etcPaAN5ck3BvAVRuIoVwqHMd3nqW0/nh+Z
	 60C8U9j4DrXUXrCpIQy8mya5XXl6L+IFAaHKYxpIxJp8vpguz597qvqVfBDwjWO+/r
	 CokrA15RzXU8iduHS6qE960BKpv3uMVg1cGZ87Z0ZxmBjspxdJkHxFg0391cxRi0E5
	 D3R3cpS889I5w==
Date: Thu, 14 May 2026 10:51:47 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Roman Vivchar <rva333@protonmail.com>
Cc: Macpaul Lin <macpaul.lin@mediatek.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	linux-kernel@vger.kernel.org, Lukasz Luba <lukasz.luba@arm.com>,
	linux-pm@vger.kernel.org, linux-mediatek@lists.infradead.org,
	David Lechner <dlechner@baylibre.com>, devicetree@vger.kernel.org,
	Andy Shevchenko <andy@kernel.org>, linux-iio@vger.kernel.org,
	Zhang Rui <rui.zhang@intel.com>, Conor Dooley <conor+dt@kernel.org>,
	Sen Chu <sen.chu@mediatek.com>,
	Srinivas Kandagatla <srini@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	Jonathan Cameron <jic23@kernel.org>,
	Ben Grisdale <bengris32@protonmail.ch>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Lee Jones <lee@kernel.org>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Daniel Lezcano <daniel.lezcano@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Sean Wang <sean.wang@mediatek.com>
Subject: Re: [PATCH v2 03/16] dt-bindings: mfd: mediatek: mt6397: add mt6323
 PMIC EFUSE
Message-ID: <177877390655.824406.15693208127712747845.robh@kernel.org>
References: <20260512-mt6323-v2-0-3efcba579e88@protonmail.com>
 <20260512-mt6323-v2-3-3efcba579e88@protonmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260512-mt6323-v2-3-3efcba579e88@protonmail.com>
X-Rspamd-Queue-Id: 8E4AB5444E2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-297699-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[protonmail.com];
	RCPT_COUNT_TWELVE(0.00)[25];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[mediatek.com,kernel.org,vger.kernel.org,arm.com,lists.infradead.org,baylibre.com,intel.com,protonmail.ch,collabora.com,analog.com,gmail.com];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[protonmail.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Action: no action


On Tue, 12 May 2026 08:18:17 +0300, Roman Vivchar wrote:
> The MediaTek mt6323 PMIC includes an EFUSE used for storing calibration
> data.
> 
> Add the devicetree binding documentation for the MediaTek mt6323 EFUSE.
> 
> Signed-off-by: Roman Vivchar <rva333@protonmail.com>
> ---
>  .../devicetree/bindings/mfd/mediatek,mt6397.yaml    | 21 +++++++++++++++++++++
>  1 file changed, 21 insertions(+)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


