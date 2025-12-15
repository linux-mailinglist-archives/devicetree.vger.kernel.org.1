Return-Path: <devicetree+bounces-246616-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A523CBE270
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 14:57:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0FAA0300180F
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 13:57:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 577632EC0AA;
	Mon, 15 Dec 2025 13:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="BbC6Z7lJ"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B086D2BD58C;
	Mon, 15 Dec 2025 13:57:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765807053; cv=none; b=SvHN7ElVflLmQ6grzhyLNG9tjICAlFLGobMCmPfbCZQvj7x7S0JUhhrc/UbJNPbHwadwsGAi2+nmEs9ncobAqUXO3CNjHyNkL1oadGEBCmFerJ8toenTxXvszNCTEwVuk3qLT5k1mAs9IAcMxyOEi8Z0JzlN6Cvvq3m+8JRjXcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765807053; c=relaxed/simple;
	bh=RMPa4XdSNNfHFkeVZpXnIE9qvQLVAohKBnUwkwiuXhM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ZW7YDoa5odxqaa70B54w/Bx5ZJX0ukdi4IWTWPEJM/YdvoYyH4OwFqquTYRpleGL6zn//RJhVomHvy/04sxn2uxMCCamGWa/ohW8pKPaU0tpL40BefCE5H1ckL0LlNRN96VUV8MsH65G/jsza7CptKFBQNsGEA86xrXPhOE5wGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=BbC6Z7lJ; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=WkV3ZYGagO+HflHRU/1YPFeSRHTuGtO52SiUwSKKXFA=; b=BbC6Z7lJ2XItOn0bfXcTYh28bz
	IZKwRg+T0kQqhWqbpfkDUH4ezLHE4P2yoE5FKsxECBBEduda6kKAAQhIPfWAE/Gw85DALaqPsRvFf
	tpkvPaDdhbO/z1juZdJXdJcr0F7mbwl3mVUJXiwt7V2lFIwDQCHequvzBl827mrXOC9DcRChIgk0h
	fqmhDs64qOjKSwxGlr0kVIJy1+GtNNrDsS0DjiP+wk5bxp/2LuWSRge53zvP2bG/32edtNdyFTcc6
	rbj45SkE4OtHtTJ6wloVS5QJLuB7akl9QDTaKHnuFtPzPEiG+fvAKz5vx0mMqiCJGzPznuwkNG5ec
	/94ExG+w==;
Received: from [192.76.154.229] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vV94f-0001YU-Sa; Mon, 15 Dec 2025 14:57:17 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Heiko Stuebner <heiko@sntech.de>
Cc: maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	quentin.schulz@cherry.de,
	andy.yan@rock-chips.com,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	cn.liweihao@gmail.com
Subject: Re: (subset) [PATCH v2 0/9] General RK3368 HDMI support and 2 outputs for RK3368-Lion
Date: Mon, 15 Dec 2025 14:57:15 +0100
Message-ID: <176580702585.1452104.11896620179705853130.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251021074254.87065-1-heiko@sntech.de>
References: <20251021074254.87065-1-heiko@sntech.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Tue, 21 Oct 2025 09:42:45 +0200, Heiko Stuebner wrote:
> This series adds the necessary bits for HDMI output on RK3368 and enables
> this on RK3368-Lion. At the same time, use the recently added DSI support
> to enable the generic Video-Demo-adapter as an overlay on Lion as well.
> 
> 
> The reason I'm shaving this Yak is that the recently added DSI support
> created DTC warnings about a single endpoint with an address.
> 
> [...]

Applied, thanks!

[1/9] dt-bindings: display: rockchip: dw-hdmi: Add compatible for RK3368 HDMI
      commit: 0edbd43e0c149152b917c0cde61e4bd34a5bd118
[2/9] drm/rockchip: hdmi: add RK3368 controller variant
      commit: e7a943f0824b584e42847ad9642d7fb751022cf6

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

