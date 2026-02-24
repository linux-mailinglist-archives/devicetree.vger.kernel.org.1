Return-Path: <devicetree+bounces-267787-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WE+/OcBxnWmAQAQAu9opvQ
	(envelope-from <devicetree+bounces-267787-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 10:39:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C6D9184C25
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 10:39:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 403D23043D8D
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 09:34:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C713C36CDF4;
	Tue, 24 Feb 2026 09:34:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="FpyIrnpC"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96B1D36C594;
	Tue, 24 Feb 2026 09:34:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771925643; cv=none; b=f8u4o9uyRjIT75hMoGTzSPuWMBvxwxD1udPI/L1BqfZl6bdsTbbtU1FP/kksgO7ffB9zSlf//9znDf+XrKb8i3+j5oah/pgrhBMzJ4TxfSDURlDjvnOwFoNuaajD7npE55EqXuLEz2dkfBZ2Ggyg8uX+fBJC27bwyLF1bcawiOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771925643; c=relaxed/simple;
	bh=rwBqGNstFp5t0Kn3FUGpCZ0lCjGXdvzm7ehoHB93r2k=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=SVPubXsbEzxIUmHDDHZCN4PWgKRMYPHf3B5f6jZBVlkO/sR9xf4yazzaQlj935rU7XyxOmlbm+CeCzYinFHZLx+aVXjDEZhDw/0Nwoa/99SiJ0/jxIjfEQUO7ODy6ipXPwPLfxweTbT5NoI5fGr+pM/HxyNxlnIxtmGGKJSREGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=FpyIrnpC; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1771925640;
	bh=rwBqGNstFp5t0Kn3FUGpCZ0lCjGXdvzm7ehoHB93r2k=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=FpyIrnpC5DC/hFyJdF1Ehd500yaAu7RL5MiJI0ozk/SUT0tYrmWh/O1ttk27iZ8B2
	 xi2e2XfRCeeDTcBfXE0nxIuFbeFpqYxr7oEoG3J8MCepdTl7h+Pc8OGbRVxt5nkJNz
	 qI+ZR3ZEoJ0gjkzLH+M4DLjrAgDByWjsOt4Ye7d4u7ypFlS6mOhdglPfPnCypUTpQG
	 ZXI7yYqylvDXEBX5m2BBOVHqv0q92vcJdRf/y9Maf0WGbxe3I6464HuGUErVivslbL
	 HgkVEbk+rLhZmyAGAlBMw8xv6nG+YSRQAcxlkDK09lj82kGFHIeYzuw8Ul/lrEz01K
	 rCdkTbazxDajA==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 5336917E0BA2;
	Tue, 24 Feb 2026 10:34:00 +0100 (CET)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 Alexandre Mergnat <amergnat@baylibre.com>, 
 Amjad Ouled-Ameur <aouledameur@baylibre.com>, 
 =?utf-8?q?Bernhard_Rosenkr=C3=A4nzer?= <bero@baylibre.com>, 
 Fabien Parent <fparent@baylibre.com>, 
 =?utf-8?q?N=C3=ADcolas_F=2E_R=2E_A=2E_Prado?= <nfraprado@collabora.com>
Cc: kernel@collabora.com, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org
In-Reply-To: <20250502-mt8365-infracfg-nao-compatible-v1-0-e40394573f98@collabora.com>
References: <20250502-mt8365-infracfg-nao-compatible-v1-0-e40394573f98@collabora.com>
Subject: Re: (subset) [PATCH 0/2] Correct MT8365's infracfg-nao DT node
 description as a pure syscon
Message-Id: <177192564029.11826.9934120449874433312.b4-ty@collabora.com>
Date: Tue, 24 Feb 2026 10:34:00 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,baylibre.com,collabora.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267787-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[collabora.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:mid,collabora.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 1C6D9184C25
X-Rspamd-Action: no action

On Fri, 02 May 2025 12:43:20 -0400, Nícolas F. R. A. Prado wrote:
> Introduce a new compatible to the binding and use it in the infracfg-nao
> node in the mt8365.dtsi to correctly describe the node and prevent probe
> errors.
> 
> 

Applied to v7.0-next/dts64, thanks!

[2/2] arm64: dts: mediatek: mt8365: Describe infracfg-nao as a pure syscon
      commit: 0651c24658360706c30588cec0a12c05edb03e9a

Cheers,
Angelo



