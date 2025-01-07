Return-Path: <devicetree+bounces-136116-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F35D7A03EC6
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 13:10:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 695B63A1FA1
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 12:10:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F1561EE7D3;
	Tue,  7 Jan 2025 12:10:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="c/7/NjPz"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2FC11F0E36;
	Tue,  7 Jan 2025 12:09:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736251816; cv=none; b=aDCyFF4QS32QhjUS54RQLEslsHwZi2yBNCoqAJJEE03uOi5sn5pxHmd59l2EAD+S/4WaGLq6i4M6rujgMtyfiMEzGEwWVIq44YPR9getoD4Lp9OOJHMd+utY6sO/TtWRw0mKjFjDnAc73pGMDUStQyFC2ZvoPZyGekTTb37VsNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736251816; c=relaxed/simple;
	bh=rxEU0EmD30MR/FIV1bxTNYLADb5PwBd/rv+n0VlZH2I=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=hPu75RnPTAkot6Mb6MAYidvHPerdJbYeCcSMuHyNp+SX3xx2kVKEpO5oGXofPK22H3/ltKpSJD8khMOoUjqQNIaVU7tbu/L/4+gsgAR5jYuV+AmrraksgBk8IKT1EVD+vfolmR4qNX6d7fPCWb1MRjo43cU2ao53SYsDd0ABF0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=c/7/NjPz; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1736251783;
	bh=rxEU0EmD30MR/FIV1bxTNYLADb5PwBd/rv+n0VlZH2I=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=c/7/NjPzBAMHqGPBtHgBQDCWaWuO1s0uhJ9QMx28kWIHbtWb4c7Ij+IWfyaPN82vo
	 B5TWvGSPEmI6athSe4aF5/w9VkPj04+c0YK9ieNZ1KOa4Ae1nhj2rq5S23cRtZJcSN
	 h5bg0Lhs0c1XyYtcKNPUDvjFWCRMv6FdF2nf8Hx5dUWplcPhYijfuG7F3FycbXRcac
	 tw1tn75aQKHwCKrK/3G9a3eHtkkieO3ScxIEGJ+gZp4q/K4q1jT2Oa5SLPCuyGzIlk
	 yRtfLClN2QkySk4/3Qdj1uBUvpNVIm8Gr3/T+joc+gR6WPj/XHbX8uu1Fxgoms1zxX
	 uzlp+cuI+/AGg==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 9603217E1567;
	Tue,  7 Jan 2025 13:09:42 +0100 (CET)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: linux-mediatek@lists.infradead.org, 
 Sjoerd Simons <sjoerd@collabora.com>
Cc: kernel@collabora.com, Conor Dooley <conor+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh@kernel.org>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20250106085737.227622-1-sjoerd@collabora.com>
References: <20250106085737.227622-1-sjoerd@collabora.com>
Subject: Re: [PATCH v2] arm64: dts: mediatek: mt8365-evk: Set ethernet
 alias
Message-Id: <173625178253.57526.8389123974774174107.b4-ty@collabora.com>
Date: Tue, 07 Jan 2025 13:09:42 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2

On Mon, 06 Jan 2025 09:57:31 +0100, Sjoerd Simons wrote:
> Configure an the ethernet alias to match the ethernet controller (even
> if it's off by default). This allows e.g. u-boot to configure the mac
> address on boot properly
> 
> 

Applied to v6.13-next/dts64, thanks!

[1/1] arm64: dts: mediatek: mt8365-evk: Set ethernet alias
      commit: 70584fa8db2ea4cd402ac9093fbb4f6cb4f2a2c2

Cheers,
Angelo



