Return-Path: <devicetree+bounces-238363-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D9DC8C5A791
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 00:08:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 6423B4F048C
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 23:04:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9D6B32826C;
	Thu, 13 Nov 2025 23:04:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="MRFU62MD"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D769327204;
	Thu, 13 Nov 2025 23:04:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763075082; cv=none; b=tQieKwBo3cVxbTi/NMmo67l6IXl0dVCR6jlOyJKUTw5UFao1wP4a5uugwJJceWWWfthREnHLZVZWRf3qnsscwGkMTXqwaVhKauDYioUkxDiA9GKWtwfgi2MQFIzn24pEuslg9AvFTSNPPUrtUw/yF+jG3JNx4atVJB7G0ucfD+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763075082; c=relaxed/simple;
	bh=ISSDuSJIiO3w9CDibsR79d9kBz0nbtn9dwtFHUhlTHw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=gy1NzMg4KeJyeunKar+jLIluc3dafyLpz3B1sfLgvORKw/NUGcPkneYBG03XQDKkBxuA7wY5O26HogYvyr47qtMcWK21ORmk4MS2VfLTZf/XgtZjOFCqYXkXq4AqGVzKezPNpJlF5hQADhyS0iLLIpBGYTS5qu0SQT1H2r9GcuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=MRFU62MD; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=IgBGZ2yZajVmZ1h/tTLg1uNgBwqZ+mIw9DPRp3zPgVc=; b=MRFU62MD/CRiWmtziqW1O4F97R
	PiNOFY1P3HVSABlmMcVFIKxVzWQYbh8jsGu09lTmEa9UqerxxoC5ljLnyueLaROa8nqCGKSdWoUrY
	B/rV89IIesGwt0WIFfHU1oDrGCxDl+UnApCF9DSK3c2XXrnxja3XNFesunaj3LmoIDZAROZ78OTJA
	v3M+p+O74GGSynrPkstVUXGWkaDsCWMouEStHxGRW7Barrh3Le21oI6x2QED+TmYuA7uHsiupUcZ3
	z3sVYEdlLPrHxaK3LXVDj7L8cE9dISCZa9WrkHy6SjENIPoQv97KeLttyIvuD8zgS+SG0Qdw3z2MR
	OhG+U/Cw==;
Received: from i53875a11.versanet.de ([83.135.90.17] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vJgMk-0005bo-Pv; Fri, 14 Nov 2025 00:04:34 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Jianfeng Liu <liujianfeng1994@gmail.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Torsten Duwe <duwe@lst.de>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] devicetree rk3588: enable HDMI audio on Rock 5 ITX
Date: Fri, 14 Nov 2025 00:04:23 +0100
Message-ID: <176307502898.495066.6660023173872091863.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251110181153.CC62B6732A@verein.lst.de>
References: <20251110181153.CC62B6732A@verein.lst.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Mon, 10 Nov 2025 19:11:53 +0100, Torsten Duwe wrote:
> The Rock 5 ITX only needs enablement for 2 nodes in order to send audio
> on HDMI1, the connector closer to the 12V barrel jack and farther from
> S/PDIF.  It is sufficient to declare the audio injection as okay, and
> to activate I2S6.
> 
> Note that for the other HDMI output it is not that trivial, as the video
> data there originates from the SoC's DisplayPort output DP1 and is only
> converted to HDMI in U7 (an RA620).
> 
> [...]

Applied, thanks!

[1/1] devicetree rk3588: enable HDMI audio on Rock 5 ITX
      commit: 3906f8558838841dad2bb96fc6ca10fe54a99f09

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

