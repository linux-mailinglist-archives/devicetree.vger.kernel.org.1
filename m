Return-Path: <devicetree+bounces-319183-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id WNArAl03Rmq1LwsAu9opvQ
	(envelope-from <devicetree+bounces-319183-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 12:03:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 569DC6F59B6
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 12:03:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=QBLkTgtY;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319183-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319183-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id DF1C730318D9
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 09:22:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A627747A0C3;
	Thu,  2 Jul 2026 09:22:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40117478E45;
	Thu,  2 Jul 2026 09:22:13 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782984134; cv=none; b=q/SY/JazZecpU2lebhOyQ1JJw7nsnd/7kwGu6N1WqciRQrEvd18yv9P89OqT8Pugw55gMk4Mu1nkGoxwrEnC7sv7fMaU44a7UpiZ/aTwoQkR/WNrbFPy74/RdT4zRJmZjZrdzOLYOtS58tKC3rG63dwHyQSERt8uk81jp2rFQJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782984134; c=relaxed/simple;
	bh=PMD/aF8FkZeWoqSItJsVZlgmCIdDh61HmixCB3obWYU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=e57B1siHgCjHfYRe0ti7Zm4KhMrQS2KFxwZZA4uH3MTs6N551j7cfrPwvGjqKjpLMKMPF24uHAAOnmzfwX6Wb/GGy537U4EzXyh5j5rLeuGtgVN72STVhj3YLwbSwX9Al9+DAUcjPP/E7tWf0en02Upk/h9ob6ekCDTw7Sz/7NE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=QBLkTgtY; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1782984131;
	bh=PMD/aF8FkZeWoqSItJsVZlgmCIdDh61HmixCB3obWYU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=QBLkTgtYdOAR/cBJ+SbwMPp5bjzj7dZK1mSiPfvHrVTgvvWB+0+Mssy3njTU1V3m1
	 4oUzYXr8iDBoQmmBbVCbN7+mUXfcTaBd9l3EYGoj1NpCfh+1gDOlgS7EyHcjXcyGBz
	 w8+HWI79PKv7Vpi0uMIivIiybTFc3egXhDAmSmhSKKsKNbdQ/5h48mYBveGesDu606
	 6TNIVybK8HYHf6tm/6bOGJ9mkMJGStSf8JtefUeySE14cc+fct6+ayUpzWc9AiBSR4
	 vMmAyne10jyuEeIRkNy70ryXCaHlF9Noe+qThO+yAnsoyou8gZTMzxOSQnv5lRyZHB
	 euSIWy5LXZFEQ==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 80C1117E0E9E;
	Thu,  2 Jul 2026 11:22:11 +0200 (CEST)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, 
 Chen-Yu Tsai <wenst@chromium.org>
Cc: linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20260702083746.578461-1-wenst@chromium.org>
References: <20260702083746.578461-1-wenst@chromium.org>
Subject: Re: [PATCH] arm64: dts: mediatek: mt8183-kukui: Add supply for SPI
 NOR flash
Message-Id: <178298413147.12161.8178749419830343248.b4-ty@b4>
Date: Thu, 02 Jul 2026 11:22:11 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.15.2
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:matthias.bgg@gmail.com,m:wenst@chromium.org,m:linux-mediatek@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,chromium.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-319183-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,collabora.com:dkim,collabora.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 569DC6F59B6

On Thu, 02 Jul 2026 16:37:45 +0800, Chen-Yu Tsai wrote:
> The SPI NOR flash is powered from the always on 1.8V power rail through
> a load switch that is controlled by the security chip.

Applied to v7.2-next/dts64, thanks!

[1/1] arm64: dts: mediatek: mt8183-kukui: Add supply for SPI NOR flash
      commit: 1f16e99cd8361b33758205eba587dbe40a82975a

Cheers,
Angelo



