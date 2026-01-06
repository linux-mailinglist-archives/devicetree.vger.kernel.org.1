Return-Path: <devicetree+bounces-252079-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E5513CFA7B1
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 20:06:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3207B304C64E
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 19:06:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C88D83587D3;
	Tue,  6 Jan 2026 18:42:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="yVkmSm93"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F2CA3587A1;
	Tue,  6 Jan 2026 18:42:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767724940; cv=none; b=Q8t07prqIPjAFvu/+ZBAfiag+ovJxpepo+AP29VkF1/9awGHT6a+vqUbLNB3m04JUlwPDgSFIo/CgR4ncRImgY3bb+Y1vI3hethdx+Myu3DIVFuwdLN+bs83TUjxYnc2Z08oJyb5UdybVz5IvB7mPjYfLLdQ2vypKnnSKxdOquM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767724940; c=relaxed/simple;
	bh=eyW/yH4vcmJfWbvWKvPlzyNBxC3SQhJxwlekm5bB254=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=L/qj+Rvcwry1zdh01QjxwFfXnDX2pMLDAiJZFRksoip1tsU9sMHp4x3HftmBOCcILks1/sZPfukawu+w2h04pWzRO28+a/kenXLDTokJ8arSKlGEkduNE+5j2J0rxiYC62EgiXkf/r0lScZx3tjDeLXTvL4Ch7PCtLyqzUDsVVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=yVkmSm93; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=jNJKOe7dZBqtB2Q11qCQuBBieA0ZJeo2d+TUinZp+gU=; b=yVkmSm93YESmFzbN4kw9wIEc3i
	vBCyeNE+ohLBBF3aBXTuDEKySq6SQuMWEujZqHob+W2eAkt+BR9nNbYT4KjichlYJW9FPSwLR5Pon
	alqbiOLDSLkUYUW+3iy9EtaerN3/r+yHLrEHcWr7HRs55sSozd0zu578BpuyHeqiq80Sif8S2T0Zn
	ElyizRyh8NZy237eYR7zbFeb71I7msHFp68xQcjTSbTMPz7TJ+xeHx7bpD8JvvrT0rlVapit0+1O1
	6BWNjxFzQbfzSm8DpmD4ibfNM1NibLaqD15jWhSKiMNcI6Bn7ITHZ219jTlUUcL7LcC55HlPlkm9e
	rXL1GtUA==;
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vdC0O-001Hfs-2Z; Tue, 06 Jan 2026 19:42:08 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Frank Wang <frank.wang@rock-chips.com>,
	Alexey Charkov <alchark@gmail.com>,
	Liang Chen <cl@rock-chips.com>,
	Finley Xiao <finley.xiao@rock-chips.com>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	Yifeng Zhao <yifeng.zhao@rock-chips.com>,
	Chaoyi Chen <kernel@airkyi.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: Fix wrong register range of rk3576 gpu
Date: Tue,  6 Jan 2026 19:42:00 +0100
Message-ID: <176772487179.3029798.9845347740107350561.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20260106071513.209-1-kernel@airkyi.com>
References: <20260106071513.209-1-kernel@airkyi.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Tue, 06 Jan 2026 15:15:13 +0800, Chaoyi Chen wrote:
> According to RK3576 TRM part1 Table 1-1 Address Mapping, the size of
> the GPU registers is 128 KB.
> 
> The current mapping incorrectly includes the addresses of multiple
> following IP like the eInk interface at 0x27900000. This has not
> been detected by the DT tooling as none of the extra mapped IP is
> described in the upstream RK3576 DT so far.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Fix wrong register range of rk3576 gpu
      commit: 955b263c421c6fe5075369c52199f278289ec8c4

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

