Return-Path: <devicetree+bounces-14013-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BC7CD7E1C66
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 09:36:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 76BD22810DB
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 08:36:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5F8F20EA;
	Mon,  6 Nov 2023 08:36:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="auPm4ffs"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5300315B7
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 08:36:26 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 90472B0;
	Mon,  6 Nov 2023 00:36:24 -0800 (PST)
Received: from [100.107.97.3] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 1CE706602023;
	Mon,  6 Nov 2023 08:36:22 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699259783;
	bh=yhrYWrO64Humr9tDTRaT+au5y0p7PisxvedT+I6fH8I=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=auPm4ffsj3/zRhW7qWUzPp/9Xsb1OWvcfx5I6O9asz4fBYa4Xh0EXC5N6p5Ncfxlx
	 nJ1AXSEmjE1VZIakvP+ed+Cpklz0ZlYM+HBVr/LrINeH1NrIDDCNHlMsTu8usIrq2B
	 kcc0Xc0EflrEhTeuMYBVnzsBT8eoCAOMetHELUiKSelV1xaLFKAQ7UNbbbBaSwyZQU
	 zU6YOOna6NqVcy0cerpBq8UePvkcI4P0a0EKlHYKAXdegj0+7CwINKDH1B8+BM603X
	 yYe1ZJwb0jmMeiC6QVhl8bkEKvS52rQ8r/aN2SdduJxasi4g51LuzytdmmyB/LDaHQ
	 Kx+Vpsc8w0Rwg==
Message-ID: <74e491ce-24c6-4d7a-a1b3-708857f03887@collabora.com>
Date: Mon, 6 Nov 2023 09:36:19 +0100
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
To: Krzysztof Kozlowski <krzk@kernel.org>, Jian Yang
 <jian.yang@mediatek.com>, Bjorn Helgaas <bhelgaas@google.com>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh@kernel.org>,
 Jianjun Wang <jianjun.wang@mediatek.com>
Cc: linux-pci@vger.kernel.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Project_Global_Chrome_Upstream_Group@mediatek.com,
 Chuanjia.Liu@mediatek.com, Jieyy.Yang@mediatek.com,
 Qizhong.Cheng@mediatek.com, Jianguo.Zhang@mediatek.com,
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
 Abel Vesa <abel.vesa@linaro.org>
References: <20231106061220.21485-1-jian.yang@mediatek.com>
 <20231106061220.21485-3-jian.yang@mediatek.com>
 <ce2c96f9-7895-41fc-a5f9-617b79f64f96@kernel.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <ce2c96f9-7895-41fc-a5f9-617b79f64f96@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 06/11/23 08:53, Krzysztof Kozlowski ha scritto:
> On 06/11/2023 07:12, Jian Yang wrote:
>> From: "jian.yang" <jian.yang@mediatek.com>
>>
>> Make MediaTek's controller driver capable of controlling power
>> supplies and reset pin of a downstream component in power-on and
>> power-off process.
>>
>> Some downstream components (e.g., a WIFI chip) may need an extra
>> reset other than PERST# and their power supplies, depending on
>> the requirements of platform, may need to controlled by their
>> parent's driver. To meet the requirements described above, I add this
>> feature to MediaTek's PCIe controller driver as an optional feature.
> 
> NAK, strong NAK. This should be done in a generic way because nothing
> here is specific to Mediatek.
> 
> You just implement power sequencing of devices through quirks specific
> to one controller.
> 
> Work with others to provide common solution.
> https://lpc.events/event/17/contributions/1507/
> 

I agree that working with everyone else by adding pwrseq is a must, but other
other PCIe controllers are doing the exact same as this patch: if the supply
and gpio names are aligned with the others, why shouldn't we let this in and
then convert this driver, along with the others, to the new pwrseq subsystem
when it's ready?

That, because I expect the pwrseq to require a bit more time before being
ready to get upstream.

P.S.: Check Tegra, Broadcom, RockChip DW, IMX6Q-pcie.

Cheers,
Angelo


