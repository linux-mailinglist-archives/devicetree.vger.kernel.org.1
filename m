Return-Path: <devicetree+bounces-13985-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 836B67E1BE5
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 09:24:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AC4681C20918
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 08:24:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 394CF111BB;
	Mon,  6 Nov 2023 08:24:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="D/QFoBxd"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8AEAFBF7
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 08:24:02 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 266CBB0;
	Mon,  6 Nov 2023 00:24:01 -0800 (PST)
Received: from [100.107.97.3] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id C0EAC660746C;
	Mon,  6 Nov 2023 08:23:58 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699259039;
	bh=xO8B0RTmTlne22NX2ar9sHfGqtBP8hpPG2QaQgD8NXc=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=D/QFoBxdbIiGmwc50U0NKIBIQc3PG7WMxvICc5qFMMRoQmeA4501FUrmVpanBsjKs
	 hfAQsfXraDHMCI5uiWB7ai/tIta/dauK9oG4R9SgAyeRFWkUgsmu0hvRP64MHwPD6V
	 ajc1ddAL0AfvKAKEILTQrl5zjz+kQT2wN97ylQZ2+yb9bCsqECPk3fPrCWulXCGouo
	 vr8h+mocO4sf0sPPozh3fG9PXYcKeK39iXxEnvzo5uirI5zN2VX96i21V9SIIJOMIv
	 IuAn/+Rfn/DY9t0mW2Qx9VWOWRwhrAqAGVTbKHAZnXuhrflNXZEzTo6P9dkTtiP0dJ
	 CDqlzAImtPI+A==
Message-ID: <f22e773c-4ec4-4b46-93c5-2f0818123c21@collabora.com>
Date: Mon, 6 Nov 2023 09:23:55 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] PCI: mediatek-gen3: Add power and reset control
 feature for downstream component
Content-Language: en-US
To: Jian Yang <jian.yang@mediatek.com>, Bjorn Helgaas <bhelgaas@google.com>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh@kernel.org>,
 Jianjun Wang <jianjun.wang@mediatek.com>
Cc: linux-pci@vger.kernel.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Project_Global_Chrome_Upstream_Group@mediatek.com,
 Chuanjia.Liu@mediatek.com, Jieyy.Yang@mediatek.com,
 Qizhong.Cheng@mediatek.com, Jianguo.Zhang@mediatek.com
References: <20231106061220.21485-1-jian.yang@mediatek.com>
 <20231106061220.21485-3-jian.yang@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20231106061220.21485-3-jian.yang@mediatek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 06/11/23 07:12, Jian Yang ha scritto:
> From: "jian.yang" <jian.yang@mediatek.com>
> 
> Make MediaTek's controller driver capable of controlling power
> supplies and reset pin of a downstream component in power-on and
> power-off process.
> 
> Some downstream components (e.g., a WIFI chip) may need an extra
> reset other than PERST# and their power supplies, depending on
> the requirements of platform, may need to controlled by their
> parent's driver. To meet the requirements described above, I add this
> feature to MediaTek's PCIe controller driver as an optional feature.
> 
> Signed-off-by: jian.yang <jian.yang@mediatek.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



