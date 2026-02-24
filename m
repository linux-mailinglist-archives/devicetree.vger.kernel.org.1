Return-Path: <devicetree+bounces-267788-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6Na8AaZwnWk9QAQAu9opvQ
	(envelope-from <devicetree+bounces-267788-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 10:34:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 93F9F184AC2
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 10:34:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CD09430BB71C
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 09:34:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 139C536CE17;
	Tue, 24 Feb 2026 09:34:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="DLI/UIIs"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D21DB36C0BA;
	Tue, 24 Feb 2026 09:34:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771925644; cv=none; b=NQZAwzTLMbyBFEEjwWNoR3F1xlAt7Us3gaLkIXY2up7kklvRrpPyBWuTSvkkOWBKxM9T6PlDp9IE8ltw6hum6vk/XYPrYgbk56vC+D7eXFH7ZzYKKczSmnDFRRy2y0GVccGZ+Ivc6+vWNIZHXhe2fauBeD6RjADZJLKXl87tBfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771925644; c=relaxed/simple;
	bh=T2apQorXFL/CfNepfTu/gWcSREoPjaSTYbtBLt0lHhI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=WmRhywFEHxXWjcWrHLUaNL0udaQP7zVurMmgrwZ2N/Ic9w8JWKasN7aikBHclnLBI/ePSX+3bBO2XwBdf4+qlpmRyY9EKSkVCfMEY5II/RToPvjLKiRibP6gvLC7z7Q1eP45k8xG/vWPaKC5sHt0fndBDINyIQPS1JfXCl87s4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=DLI/UIIs; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1771925641;
	bh=T2apQorXFL/CfNepfTu/gWcSREoPjaSTYbtBLt0lHhI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=DLI/UIIs+DtIpri6X+c1kaUkaN1DMnlbHxpNEuLr0rrZSLLk1PdZmjCmbaSd9AjcQ
	 Ktpmmg61L/PaH/Bmm2Geh0HlPbbnXPFLoDkUlpAPxVFkchnuOcRsiYuz456qUv/4Oo
	 T5QLfVsXNXsph1Le8DoN+lJM49h4oB2Pbr+yJkE7PcI+2a399OZ99wF3MBtFh0iOVT
	 h4IbhuWiNF6CunLgltV7rZyCN7aTl4+3xZtBrVAHDtNrVf5V8jc2BExBKDwbUhsYSz
	 AsL/riic+/gjY6nz6/LVBKAvEz7HWhduscRd8pd5PcjKWjGGurlEQ6WaJckgObvcCf
	 DyeT8cNSiD9tA==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 037AC17E0C21;
	Tue, 24 Feb 2026 10:34:00 +0100 (CET)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>, 
 David Lechner <dlechner@baylibre.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
In-Reply-To: <20260219-mtk-mt6359-fix-regulator-names-v1-0-ee0fcebfe1d9@baylibre.com>
References: <20260219-mtk-mt6359-fix-regulator-names-v1-0-ee0fcebfe1d9@baylibre.com>
Subject: Re: (subset) [PATCH 0/2] arm64: dts: mediatek: mt6359: give
 regulators unique names
Message-Id: <177192564097.11826.16624284759603222093.b4-ty@collabora.com>
Date: Tue, 24 Feb 2026 10:34:00 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267788-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,mediatek.com,baylibre.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[collabora.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,collabora.com:mid,collabora.com:dkim]
X-Rspamd-Queue-Id: 93F9F184AC2
X-Rspamd-Action: no action

On Thu, 19 Feb 2026 16:55:28 -0600, David Lechner wrote:
> While working on this regulator in U-Boot, I noticed that the regulator
> names were not unique. This is considered an error in U-Boot and we get
> the following error messages:
> 
> mt6359_regulator ldo_vrfck_1: 'regulator-name' has nonunique value: 'vrfck
> mt6359_regulator ldo_vemc_1: 'regulator-name' has nonunique value: 'vemc
> 
> [...]

Applied to v7.0-next/dts64, thanks!

[1/2] arm64: dts: mediatek: mt6359: give regulators unique names
      commit: d91639d0ab3223b61c00442021dc639c9ddc2b76

Cheers,
Angelo



