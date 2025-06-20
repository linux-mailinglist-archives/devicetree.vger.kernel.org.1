Return-Path: <devicetree+bounces-188012-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 49A01AE2362
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 22:16:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C41A83AC626
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 20:16:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 644C5226CE1;
	Fri, 20 Jun 2025 20:16:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="g6WcKPak"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 362B51EB18E
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 20:16:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750450581; cv=none; b=SpXtlu3o0iEnIz83l2+tGU+dy5guSTYVxMVmMKW7Uuonc7NXkJvVta5XLA9rHfMWq97xy858cUoPXSwOw7u2vJG+Ju9fSg4j2nCuobDNYDbmAaKPJF1NL5DHE1ejFpGGFwn0XggybBHGAhrHGCWyWr4Hp+fV5CNWWwK8yZGUZ3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750450581; c=relaxed/simple;
	bh=0uv4lK/KC4QnLlnqcoKyAITERx3wYKjfQ6IJmRk1YCs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=reIsPOu/V9jAOVq0vnWHfjkjssHFheuVmV5kKkT1DvIdne5UwknXNw14SoquXwyVL7vH1199snwaHjYuc/+Rr8RwvFoyhJ2x5BMDGa/9z9fBtCIszwXboXcXQylKSX4ET35HP6jxU0U3tGdl7lCAhXCAPsGrJxBy4JQ2J58YNyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=g6WcKPak; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=5EjkAl0VuyPH4a8Z41Kx9iUxgGicQn2P0RYuSrndNqY=; b=g6WcKPakc4icPaibZXUctAKGHK
	UFU4loy9WCp3Nf11u3JwYAavj9yy3VomzxiNRqP6TnZTXmRlhThjwzHju8/9VwX7pDyd1DGICc/Zb
	XcOkCOcY43r+gLa6plk1fa8u8bo4sq7yJ8MqD4o5qMNUp+21GzUwQzWQdY7KweRWwXY7GuiA+G3Na
	gBKsEQ320EnLz3dZdp8UsuU5gYxPHLVDLxuOXvtPXHv2+/hhVRk4iE7RQaWOclu52zi4M+efuYP6C
	MGGCwQJlnjfqnrcrBgxiSsRW4hbJT6HWnIHs4SYDAlNEFIvaNNHI0Jp4ufcMjJ7lamjsWwbSVrVEm
	6+D4fbZw==;
Received: from 85-207-219-154.static.bluetone.cz ([85.207.219.154] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uSi9a-0005Nk-BA; Fri, 20 Jun 2025 22:16:02 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonas Karlman <jonas@kwiboo.se>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Yao Zi <ziyao@disroot.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: (subset) [PATCH 0/3] rockchip: Add GPU support for RK3528
Date: Fri, 20 Jun 2025 22:15:53 +0200
Message-ID: <175045054807.1572438.8910024255365917623.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250518225418.682182-1-jonas@kwiboo.se>
References: <20250518225418.682182-1-jonas@kwiboo.se>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Sun, 18 May 2025 22:54:10 +0000, Jonas Karlman wrote:
> This series adds support for the Mali-450 MP2 GPU in the RK3528 SoC.
> 
> The clock used for the GPU can use normal PLL to support a rate of 100,
> 300 or 500 MHz. Or it can use PVTPLL to reach rates up to 800 MHz.
> 
> The TF-A SCMI_CLK_GPU is used to switch use between normal PLL and
> PVTPLL. When a rate of up to 300 MHz is requested TF-A switch to use
> normal PLL, and for rates above 300 MHz the PVTPLL is used.
> 
> [...]

Applied, thanks!

[2/3] arm64: dts: rockchip: Add GPU node for RK3528
      commit: 6b88b8a640fa5d2169e0ce47b88dc30727fc1105
[3/3] arm64: dts: rockchip: Enable GPU on Radxa E20C
      commit: 669080eb7f7c4720aa4e640a49f7490cd928cfcc

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

