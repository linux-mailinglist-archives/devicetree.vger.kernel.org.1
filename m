Return-Path: <devicetree+bounces-307056-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id p/W1HOPmIWqLQQEAu9opvQ
	(envelope-from <devicetree+bounces-307056-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 22:58:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CEAFE6437F8
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 22:58:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="I/kbX5+M";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307056-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307056-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6B63E301FAB7
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 20:57:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56A6E3D9023;
	Thu,  4 Jun 2026 20:57:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61AB13C584D;
	Thu,  4 Jun 2026 20:57:36 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780606657; cv=none; b=tSXSeDi+cZi4KXTAopmPBzyQMekDASLfa/yNjQlZy+5zY/1VPXNNmU9EbmsjQBxsOYFZJryy2WYBu3BWlunT3eftmhON/M+AbsCN1KofMqgeOQryYnm6ykmbWIExoANmDMR2O4T9njStwKnB2D9euuEGzlwf7SqAfRKmoVZgtHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780606657; c=relaxed/simple;
	bh=vbSGhmwU0diNggF8I68fmvmB5jVCQoRh0RAw4t1b65M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dqwCFXd9DxIWDqAtjBKtbPZgLJTz2TTW47nQDjwH8pHB3BPwDQNjy93vkpJpc9RpJiKaOkRm8uYwRqJbnex9luHeUZdAK8FNs/nYatUK/kQO4Pbe4RKDaj/yXX1tJJ+itF9T57/jBLJHdCoqkYhdD8PawCdsHzYtqgk6J4Js+fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I/kbX5+M; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B539B1F00893;
	Thu,  4 Jun 2026 20:57:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780606656;
	bh=tc8kKyhH3H2zCZNScLf6HQ5I1o056QsaSn+BN0X2LV4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=I/kbX5+MLJEmjJxCt2qQHRtCJyVEw6Zm6+jK5Fr9/Porpi9q2uHrqdSFo48U351jr
	 jJG37L5TV/PVUj8N/QaHTpUKRrpAVhrmDTDcLfHgf09XVn3r/EiCJExJTU++g5ZzZ0
	 YTq5H+0l/jNoNOxcA1PfJE/e5sP5VwtF+7emEMioSPa1XZsbtwg0SRs3rOOv6+lWf9
	 vQgbD7bosy1MUypO4kC4Vwc3dIsm9SKWZxxFKBMoh8LEMXtZAuZRFkVb6Yl1sEnVan
	 GyEUCyXR3CL97CXtj8y6ubUhILrTAuYQVa3uLobqRc6BDy2ECfbFowIMyOCekf13gh
	 Dgw3ch0j3F4hQ==
Date: Thu, 4 Jun 2026 15:57:34 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Ninad Naik <ninadnaik07@gmail.com>
Cc: broonie@kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, conor+dt@kernel.org,
	krzk+dt@kernel.org, matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com, me@brighamcampbell.com,
	linux-kernel-mentees@lists.linux.dev, skhan@linuxfoundation.org,
	linux-mediatek@lists.infradead.org, lgirdwood@gmail.com,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] regulator: dt-bindings: mt6311: Convert to DT schema
Message-ID: <178060665412.1220107.5361933646396949784.robh@kernel.org>
References: <20260604162624.644241-1-ninadnaik07@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260604162624.644241-1-ninadnaik07@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-307056-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:ninadnaik07@gmail.com,m:broonie@kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:conor+dt@kernel.org,m:krzk+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:me@brighamcampbell.com,m:linux-kernel-mentees@lists.linux.dev,m:skhan@linuxfoundation.org,m:linux-mediatek@lists.infradead.org,m:lgirdwood@gmail.com,m:linux-kernel@vger.kernel.org,m:conor@kernel.org,m:krzk@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,lists.infradead.org,gmail.com,collabora.com,brighamcampbell.com,lists.linux.dev,linuxfoundation.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CEAFE6437F8


On Thu, 04 Jun 2026 21:56:24 +0530, Ninad Naik wrote:
> Convert mediatek,mt6311 to DT schema.
> 
> Signed-off-by: Ninad Naik <ninadnaik07@gmail.com>
> ---
> Changes in v2:
> - Correct "MediaTek" in the title.
> - Drop "|" in the top-level description.
> - Remove unnecessary regulator node description.
> - Remove unused labels from example.
> 
>  .../regulator/mediatek,mt6311-regulator.yaml  | 70 +++++++++++++++++++
>  .../bindings/regulator/mt6311-regulator.txt   | 35 ----------
>  2 files changed, 70 insertions(+), 35 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/regulator/mediatek,mt6311-regulator.yaml
>  delete mode 100644 Documentation/devicetree/bindings/regulator/mt6311-regulator.txt
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


