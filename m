Return-Path: <devicetree+bounces-295422-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mHWCAXmmAWrMhQEAu9opvQ
	(envelope-from <devicetree+bounces-295422-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 11:50:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B9B6350B528
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 11:50:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0542E306746C
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 09:36:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03EBC3C0610;
	Mon, 11 May 2026 09:36:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="TEsigOM2"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8655D3B9D9F;
	Mon, 11 May 2026 09:36:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778492201; cv=none; b=XZ9KQt7JqssRrsr+eTrMtFZsIoz7idyI9DhaTEOrFL2gM5nA6i6y/6GyEoaXwhBpCtB1Re+2O/tkSleyUhCXzAa3O40vZEuyf7OKORsHCURom5vFHb/stCxJLKjdjZvTiT+VZ0xrw/Gpdw4JU5/VhFiSUEo2vKTP6j8bwp+UsNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778492201; c=relaxed/simple;
	bh=p1144q5uGIWy4jprhL+Oqk7paSk0FQJqwCjykWivi20=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=jbbDdG3QqU2LdVE2hukgAMZFdkWU25lk3TA5He9lasnDxLU13Z4Gs1TdnDzV+WnZweiwoORouM0uFVaOyIfc6Ni4cDVYcFYMlgAsImWBWN8dWu3ArgD1JN1cyFw+lYTNA3IS62T+uvdnTh1kjhYWUf1k/bdIEdz0UleTaGcEWIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=TEsigOM2; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1778492197;
	bh=p1144q5uGIWy4jprhL+Oqk7paSk0FQJqwCjykWivi20=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=TEsigOM2GBpsAxpa1hfcmZuTtLMe1BsizvwXPFqWCMG0ESFomiYFSENGctOred0R9
	 sC0bqf/l7TkKPHoFzmuUA6iucfJ4bCR+vOyqpaP9/cUeZbKjymllgtfT76iGo2ZRAx
	 ySFsUv1b4QWz4cNprkyIHqaqvJ5Wa7517jl+LEA0gpRZ6K7/dWL0YT3mmOCCykTON9
	 /py+3s5PKHLQRQVAwh6LY9XG1T7sBEz/MTvgHcYNgv40mACl4tSGEAhxvI1oBGJE+/
	 5yFQBOiGJmr3A86ogsQvv+ZIs6nCdJkv3E630kfI+g33qbMX3XvrT17L/i5/26+QAk
	 MqHCkQSmihiDQ==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 7DACD17E12E5;
	Mon, 11 May 2026 11:36:37 +0200 (CEST)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Cc: kernel@collabora.com, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org
In-Reply-To: <20260414-mtk-g510-700-cpu-supplies-v1-0-3b8313e5ca8d@collabora.com>
References: <20260414-mtk-g510-700-cpu-supplies-v1-0-3b8313e5ca8d@collabora.com>
Subject: Re: [PATCH 0/3] Mediatek Genio 510/700-EVK: add CPU power supplies
Message-Id: <177849219746.115964.3278328697060309658.b4-ty@collabora.com>
Date: Mon, 11 May 2026 11:36:37 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-Rspamd-Queue-Id: B9B6350B528
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-295422-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,collabora.com];
	DKIM_TRACE(0.00)[collabora.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:mid,collabora.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Action: no action

On Tue, 14 Apr 2026 12:33:30 +0200, Louis-Alexis Eyraud wrote:
> This series adds for the Mediatek Genio 510-EVK (MT8370) and 700-EVK
> (MT8390) boards the CPU power supply definitions in their devicetree
> that are missing for all their CPU cores.
> 
> On the boards, the big core power is supplied by a MT6319 (sub PMIC)
> and little core power by a MT6365 (main PMIC).
> 
> [...]

Applied to v7.1-next/dts64, thanks!

[1/3] arm64: dts: mediatek: mt8390-genio-common: add MT6319 PMIC support
      commit: b049df10aea8222a42d42433b675b7b0d013c4dd
[2/3] arm64: dts: mediatek: mt8390-genio-common: add CPU power supplies
      commit: 728a38437d8268a9a43405d476fb678d37f86cd7
[3/3] arm64: dts: mediatek: mt8390-genio-700-evk: add specific CPU power supplies
      commit: e6bc454bb7ec547ccd371482b8692a87c5b58245

Cheers,
Angelo



