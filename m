Return-Path: <devicetree+bounces-21382-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D20338036AF
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 15:30:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0E4701C20B83
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 14:30:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 043ED28DC4;
	Mon,  4 Dec 2023 14:30:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="cC+jH2DF"
X-Original-To: devicetree@vger.kernel.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5DB281BCF;
	Mon,  4 Dec 2023 06:30:11 -0800 (PST)
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id C1AC966017A0;
	Mon,  4 Dec 2023 14:30:09 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1701700210;
	bh=7jQDv+XsVYeliRgZOmOs/y/FeB21IThRZTlKgn3mYkU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=cC+jH2DF63vx0pce1B9b19079v3nc+IP2wSnxHXG/H/PifBHyBV5rr0CdkyG1Gm4O
	 QycvYR0LVzRKFjGHQo4DKQ7Ik9khuvaPkc5bsVND72ETX57GWeAvk1CMnafh72hnJx
	 WQpzcruJiLX2bfxSpviwxDbz92fBQhDB+kZuAlozceXVHcwIDnC5uWCU3U9n+p9JoA
	 ZIaVoWBwZnMHXQq1CyeoZZMyB0fqbxbD9DE4hndgnS3Lf3nvH4chXjy9DP+GLRI+Os
	 gZWCHWYSSUgv1aeIF4c1keIHm0/4iY4YQEGct491v8K6txjfzy+EgLWAWftysFHdse
	 zJJhUEvuXPGWA==
Message-ID: <1d4432c3-c929-4521-991d-22c92fc74a53@collabora.com>
Date: Mon, 4 Dec 2023 15:30:06 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: mediatek: mt8186: fix address warning for
 ADSP mailboxes
Content-Language: en-US
To: Eugen Hristev <eugen.hristev@collabora.com>,
 linux-mediatek@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, matthias.bgg@gmail.com
References: <20231204135533.21327-1-eugen.hristev@collabora.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20231204135533.21327-1-eugen.hristev@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 04/12/23 14:55, Eugen Hristev ha scritto:
> Fix warnings reported by dtbs_check :
> 
> arch/arm64/boot/dts/mediatek/mt8186.dtsi:1163.35-1168.5: Warning (simple_bus_reg):
>   /soc/mailbox@10686000: simple-bus unit address format error, expected "10686100"
> arch/arm64/boot/dts/mediatek/mt8186.dtsi:1170.35-1175.5: Warning (simple_bus_reg):
>   /soc/mailbox@10687000: simple-bus unit address format error, expected "10687100"
> 
> by having the right bus address as node name.
> 
> Fixes: 379cf0e639ae ("arm64: dts: mediatek: mt8186: Add ADSP mailbox nodes")
> Signed-off-by: Eugen Hristev <eugen.hristev@collabora.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



