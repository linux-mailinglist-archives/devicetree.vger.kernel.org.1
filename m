Return-Path: <devicetree+bounces-267778-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id dQTuJIptnWk9QAQAu9opvQ
	(envelope-from <devicetree+bounces-267778-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 10:21:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id B6BDE184763
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 10:21:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6D93D304BE90
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 09:19:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13A7E36A030;
	Tue, 24 Feb 2026 09:19:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="fuOtpKqc"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B91C036B061
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 09:19:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771924761; cv=none; b=Wt7vBBHAyoAUoVJf/L3CO80Kfe0euxkJqmPbMx/UX2uiRecmfw+dLp0b8rE7QmRl6Q0W0aOAwc/F0cXH0saEFEWfH1UmXgMpT7P0t/hzf2K95jXA/WrUlhOffu2Ffuk0kIGN9k3yVTOATW3enbHVY/AbZGyorqQcLcUzpunvab4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771924761; c=relaxed/simple;
	bh=4jfgNAYSPdVmBpZEJ/Qh6Bm1tYNGC8vVa7akOnj86tk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BcZk1kF+KXFsTqtTlcJrxTIX9fNyvGw+SYFWhebIA+jWE+/AIPzcKq4RCA8TW/26CjNgKNXFt+toM+461Y/4r2J+ouN5IuoIT2XgBpJeirIoSPE6G/QgMoEUf4Q1fPNqOGTnkw1xdF9p0JWKQypVHJqQPIfKerLmjYJ9r0uNgFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=fuOtpKqc; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1771924758;
	bh=4jfgNAYSPdVmBpZEJ/Qh6Bm1tYNGC8vVa7akOnj86tk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=fuOtpKqcKtQze0aqPhdKJ1aO3dH91tarK49NZ1DoU2aI+tyV9yYdklsUzIuCdike/
	 sBLPvlviBHCFAwB6EnI55JdQpfIM4rfn3d8Cab7Ig6Tligt+Vpz5wWj3aLqoPKUmEX
	 Wqw0Xzb0Q8GjKwhN8qrBo6+b7wu+MUfYMvnMX+Z5FRrlbntfS7auUxHJyEGVij1SOn
	 Kt+JZyqmLG2JkfK8l4nxEg+v6OjstlnTl77RtKutxLgpqnC4V64JtosmZ8k2lTcajO
	 V+ybZic19m3xEmZyjSkPQnt7z3D1DgiHbTgGsqDyMc3MZjDiLA92J1MvY7JfjYY3ri
	 m2V/YPVcDSDwQ==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id C99D217E03E6;
	Tue, 24 Feb 2026 10:19:17 +0100 (CET)
Message-ID: <d52ecbed-1129-4aa8-b9c5-d9294e7d6cbf@collabora.com>
Date: Tue, 24 Feb 2026 10:19:17 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: mediatek: mt8195-cherry: Disable xhci1
 completely
To: Chen-Yu Tsai <wenst@chromium.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
Cc: linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20260224070306.2650182-1-wenst@chromium.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20260224070306.2650182-1-wenst@chromium.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267778-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[chromium.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.998];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[collabora.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:mid,collabora.com:dkim,collabora.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: B6BDE184763
X-Rspamd-Action: no action

Il 24/02/26 08:03, Chen-Yu Tsai ha scritto:
> There is nothing connected to xhci1 in this design, nor in the actual
> end devices.
> 
> Disable xhci1. Keep the USB PHY enabled, as it is a shared PHY and used
> for pcie1.
> 
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



