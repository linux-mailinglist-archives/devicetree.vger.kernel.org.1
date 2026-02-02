Return-Path: <devicetree+bounces-261693-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mPZFEoxrgGkd8AIAu9opvQ
	(envelope-from <devicetree+bounces-261693-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 10:17:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A23E3CA029
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 10:16:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7CE873023520
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 09:13:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F266D3559F2;
	Mon,  2 Feb 2026 09:13:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b="pPwsAU1q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail11.truemail.it (mail11.truemail.it [217.194.8.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 770CF33A9CC;
	Mon,  2 Feb 2026 09:13:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.194.8.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770023590; cv=none; b=ZSTcdsByfzIKuIuUKwevel5oayIG9YpbdsxwyPUIzkulO9fCv3gaAQKPZtVXMh1czOsdILUAnpIB4CqN/SGg6uKdUga9baofw2r6isQK25/ZA9c/ZYM2KRd327e4NnycV9F1e8RwbX57SN7bXKpg6gImZ4VdxPGd0Y7xrD1oqes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770023590; c=relaxed/simple;
	bh=Beuvh4Hl+zQIZCRt4z/cKr7A0eni4D+bGBEvsmBxeS4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mQf/XiOLerzO01nPQMK5a1nWsa74LIzADnbrJuk2wsWwA7DqQdc3dsBjY/tb3K6DoUTOa/0ghCOu4ufpK9KCjeASWQVUK2F72QWMyTEiQOb2d23N53tF60FCjD+lvz50nUEaxo9Ax7tIL2iMZjkSc6EZ2oaLCpou/8cqV3wnRxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it; spf=pass smtp.mailfrom=dolcini.it; dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b=pPwsAU1q; arc=none smtp.client-ip=217.194.8.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dolcini.it
Received: from francesco-nb (248.201.173.83.static.wline.lns.sme.cust.swisscom.ch [83.173.201.248])
	by mail11.truemail.it (Postfix) with ESMTPA id F1C9D1FB6B;
	Mon,  2 Feb 2026 10:12:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dolcini.it;
	s=default; t=1770023578;
	bh=5hX0PUbR+lxT7TRXS9Chm/elfU2/u8o9ggL96ibrGPc=; h=From:To:Subject;
	b=pPwsAU1qo9g6dq8d9QhFWcYNw5d8dY9JrAN7vBF3aVS0GevnJFM+aAVmUk0iCOaSi
	 Bm9C9iwSA7LR9mIuGda7Yvr/t62k8sg+V/8YuySnSxDZqhobVFweSMOHPypOBewE6G
	 Y7eEGLYZO60nrwtyrtKNk8eGTgrM2Em0EFGFXQsCCNDcAuIjKRJgT99U8MczTibYKb
	 8EKe5AV5U90SsbUjoAw+8qbOvYxhKPhNQzhzVmjTChjzEJj/i1PzTt9kfe65fXYiLv
	 eDZQ2s9zxKGKNEgUa3aooVFBPLj2Iu0CcbSoseZ6LZYYPQVNgw+pO8NoU7iLDn/Obo
	 Hjk/f3xbNaYKA==
Date: Mon, 2 Feb 2026 10:12:54 +0100
From: Francesco Dolcini <francesco@dolcini.it>
To: Franz Schnyder <fra.schnyder@gmail.com>
Cc: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Franz Schnyder <franz.schnyder@toradex.com>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 0/2] arm64: dts: ti: k3-am69-aquila: Fix DP enable GPIO
Message-ID: <20260202091254.GA33026@francesco-nb>
References: <20260202083604.325060-1-fra.schnyder@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260202083604.325060-1-fra.schnyder@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[dolcini.it,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[dolcini.it:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261693-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[francesco@dolcini.it,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[dolcini.it:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A23E3CA029
X-Rspamd-Action: no action

On Mon, Feb 02, 2026 at 09:35:59AM +0100, Franz Schnyder wrote:
> From: Franz Schnyder <franz.schnyder@toradex.com>
> 
> Correct the DP regulator enable GPIO to index 21 on Clover and Dev board.
> The 3.3V DP regulator was not being enabled by the assigned GPIO, as it
> is routed to GPIO index 21 and not 37, which was causing instability
> with displays connected over DP or via an active DP-to-HDMI adapter.

Reviewed-by: Francesco Dolcini <francesco.dolcini@toradex.com>



