Return-Path: <devicetree+bounces-137019-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AC907A0745B
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 12:13:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DFF2C3A1325
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 11:12:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D09E02163BF;
	Thu,  9 Jan 2025 11:12:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="hex7CfuW"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4E452163B7;
	Thu,  9 Jan 2025 11:12:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736421164; cv=none; b=YG9Ao4NOB7IOyEfn+Wc44wpBXrm2jAasD+ld7QB2iuIRC1W1ia/bukzsUYqnP3Kpim/CM7mlBdVaGBsbEOHyo+al4TV3vvJE6tS9sEcsvqwvVTyS5Ubq6oF4O5IzwFxzc7lIZX23fpbSBTDfBqQmw2hd966FTLEoEz9xg1XVjzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736421164; c=relaxed/simple;
	bh=rADA9hzCxvUrpUJJKstmnYVcdIugZAWBRdnGgvRIFcA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PGhnA/Iv/LEX6LXXZ3nOTPrjO1JN6vQAuEcrPBXijr4qQrxHdG6UNDBYxcVd9fGIf98h0sykq0HI7ZBHInYwalIPDzkKHsdZr1StXwlGOiwbrUOeP0eZ6ALj8UdHx+ZZRN83P4borPHtGqWadqZvPMeXAzf7/9EeIVeU74QGU8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=hex7CfuW; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1736421160;
	bh=rADA9hzCxvUrpUJJKstmnYVcdIugZAWBRdnGgvRIFcA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=hex7CfuWZ6Qt6xawm2soL46ZFsFnPw0i4ztSNOuou2/PxWwpeexuBcbPNKUAK1WTB
	 7To7fIV9f3nXqJ7V43+Q7y9IUumSiTHnL7PfoZKSB5m4uyCB9FbXBrWolmdTuOQaFf
	 E9qQzhP3xjWoA8OL8qoko3Aj85oSQoZHE661/kKrg/FTDefdmmcNd1Ywh532M09bR2
	 Asgz4enaHr0GKWU4x4TqlbvZC3aTKGbtztgLnPfo0AZegfa2BJ6BSUrp6iHD1612dL
	 dJ7kWy+8HyMUXRpT0+2IBpfr+nOmuUqgcK/kav1X1FQwgDwhQBKnrj84u0NeyJmhFQ
	 j9dmEKxYlKHYQ==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 9644E17E1564;
	Thu,  9 Jan 2025 12:12:39 +0100 (CET)
Message-ID: <10ec0c42-cc71-4664-9307-1206d74e67af@collabora.com>
Date: Thu, 9 Jan 2025 12:12:39 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: mediatek: mt8173: Fix some node names
To: Chen-Yu Tsai <wenst@chromium.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 Eddie Huang <eddie.huang@mediatek.com>, Sascha Hauer <s.hauer@pengutronix.de>
References: <20250108083424.2732375-1-wenst@chromium.org>
 <20250108083424.2732375-3-wenst@chromium.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20250108083424.2732375-3-wenst@chromium.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 08/01/25 09:34, Chen-Yu Tsai ha scritto:
> Some node names are incorrect, causing DT validations due to mismatches.
> 
> Fixes: b3a372484157 ("arm64: dts: Add mediatek MT8173 SoC and evaluation board dts and Makefile")
> Fixes: f2ce70149568 ("arm64: dts: mt8173: Add clock controller device nodes")
> Cc: Eddie Huang <eddie.huang@mediatek.com>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>


