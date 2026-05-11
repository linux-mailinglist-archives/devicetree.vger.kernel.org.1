Return-Path: <devicetree+bounces-295425-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YP5OKjOmAWpDhQEAu9opvQ
	(envelope-from <devicetree+bounces-295425-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 11:49:39 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id C99EC50B4BD
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 11:49:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 59E81303ABE5
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 09:37:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7808C3BED5A;
	Mon, 11 May 2026 09:36:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="e4zaLhlE"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202B0377019;
	Mon, 11 May 2026 09:36:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778492205; cv=none; b=gutk5J6DJxl88lW5bVYGbHKCGdHxtc4Tsyo9bR7CpXBSL6DTKlriy0uSF3XFGtXzVAhcfT+j0n1l7kbxHvquxjnRnDlebMa7BVfVdU/fK/JyES3ONKbXmaRfxMh+HQ7jfAR8BFWUzuMca0nGRCXqcjBLpkyWfxFztltibm/YuZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778492205; c=relaxed/simple;
	bh=24y8Yk+6S4aEezTTwMP1/h8UK3CpDNuHCkyaph+CGPk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=aS2k8BCjDiY896jIaEULaZxmTiXQxj4RTyTTGvvI/Aa4giqg3HqBHE1QsoKrBzIqwgd93OgCn8of3i2oZ6/G4eBXXn0AlDuNw+DJm1PVDxQwkBfAOog9Yzm4HsQRuHAymtuQrRSf5aC2+tOR+AkmJITJcUpcQo1MkGE5SqlzPIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=e4zaLhlE; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1778492199;
	bh=24y8Yk+6S4aEezTTwMP1/h8UK3CpDNuHCkyaph+CGPk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=e4zaLhlE0T6OinxvwmvScVoSGJWEvZqxl4ZTQvUS+hRwqgmzn1xeaZvpi44cMJ26l
	 zweHhIjYRQwuUhnrgyGm9V/VvDXxW+lLiSCI2ThwsXbkUShQtAVtZQwfZ7mfCct/1Q
	 dBatf4zS6Im8vT2cYydey4HTbXdWRcWocBrZL65We7KwYyZsDhA5g6/m+J5pvSUCSZ
	 +XS87GbLLPX8BlkFtR1uMB1WwPuk8Eb4HNs+gDctoYzZBK5e2zBYvG/w4bmIQz/vnc
	 8ksxPMgdH20boNz2PA0eX60be/4XuydqUGuaH4l24a2g1JLlwRnY9esB+HpgtqXLIs
	 jfgOAV1JulKfA==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 56A9917E1537;
	Mon, 11 May 2026 11:36:39 +0200 (CEST)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, 
 Chen-Yu Tsai <wenst@chromium.org>
Cc: linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20260430120725.241779-1-wenst@chromium.org>
References: <20260430120725.241779-1-wenst@chromium.org>
Subject: Re: [PATCH] arm64: dts: mediatek: mt8192-asurada: Move PCIe DMA
 bounce buffer to host
Message-Id: <177849219930.115964.12285046748812181326.b4-ty@collabora.com>
Date: Mon, 11 May 2026 11:36:39 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-Rspamd-Queue-Id: C99EC50B4BD
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com,chromium.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-295425-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[collabora.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_FIVE(0.00)[6];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,collabora.com:mid,collabora.com:dkim]
X-Rspamd-Action: no action

On Thu, 30 Apr 2026 20:07:24 +0800, Chen-Yu Tsai wrote:
> The DMA bounce buffer is attached to the PCIe host controller, i.e. all
> PCIe DMA transfers should use it.
> 
> Move it from the PCIe (WiFi) device node down to the PCIe host
> controller node.
> 
> 
> [...]

Applied to v7.1-next/dts64, thanks!

[1/1] arm64: dts: mediatek: mt8192-asurada: Move PCIe DMA bounce buffer to host
      commit: 0f91911b61d06fc02a058ff7fb0a27e53f7b1136

Cheers,
Angelo



