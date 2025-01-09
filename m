Return-Path: <devicetree+bounces-137021-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C4F7A0745A
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 12:13:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9A4E5168CF8
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 11:12:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1AB62216E0C;
	Thu,  9 Jan 2025 11:12:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="R6eXMt5S"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254DD2165ED;
	Thu,  9 Jan 2025 11:12:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736421167; cv=none; b=klQMxTxfy7n4GCpVldFBbvaFpmB5mjM2lrMFTPjPJjUvAldl2t24RhQ1iP14URMzWo7PhxRwyi1vNGJbmCO3M8k/gzhkXVkSU3OKmBzVdTfD6QtPDgd+sN9g2LaS/HkBV5KzKwVNSnrZBp8J2STAkodVmYkdOZlxKO9CDWe+04A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736421167; c=relaxed/simple;
	bh=wj/WEZ7nYGvdYQsrY4pb5UsSsCFzsxlWe/W89R9Au6s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lOicm02tdrouAiL+AcuKgRdntr/3ucrXNqTiPvnzsw/OTLfczN6xhzJeTegOf5uGK5CseeLNW9cwvIHVMmZm+RfCVn5n/XflU89YpO+Oyjsi1WEDdw6uAlWFeR9flwEikGsFJtgtrFIpThoFzVOlMHAnDeC4rCmzHT0oMoFD2QM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=R6eXMt5S; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1736421163;
	bh=wj/WEZ7nYGvdYQsrY4pb5UsSsCFzsxlWe/W89R9Au6s=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=R6eXMt5Ss5OxKm/L/cgQTBVSozuc958UZELoxIjxwTvnmIZg5K8gw5FJ96Wig9c6m
	 XxUNJAJkq2O82/JwQVOn0jO31J65FkOWJHhVexHxusX5+bR9H3lhsEPaXGgqJxtW5P
	 CWEaOmWT9HKa8xlmoMlqilaJLCmWenVbx1FQuJgBhJv3dAsE9dwOE2gBYVNHUoq4W3
	 WyeBAzVwCRUXRePTINi1nOEf4wncNl8jLY2S5jI++n4BaTh1C+Txy0vLCUFOkb3h+z
	 lOs4p2lMuz4yzaIu1X9QG7rE+WGC1k+FGJdSFiBlmam6HWxLRhcauO1o5zwEwk3ozV
	 rHiZEHsLhVTmg==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id BCEC517E156B;
	Thu,  9 Jan 2025 12:12:42 +0100 (CET)
Message-ID: <c140449f-8572-4a8f-9e79-5269cc0115e9@collabora.com>
Date: Thu, 9 Jan 2025 12:12:42 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] arm64: dts: mediatek: mt8173-elm: Drop pmic's
 #address-cells and #size-cells
To: Chen-Yu Tsai <wenst@chromium.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 kernel test robot <lkp@intel.com>
References: <20250108083424.2732375-1-wenst@chromium.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20250108083424.2732375-1-wenst@chromium.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 08/01/25 09:34, Chen-Yu Tsai ha scritto:
> The PMIC has child nodes for each of its functions. It is not an actual
> bus and no addressing is involved.
> 
> Dropping the bogus properties fixes a DT validation error:
> 
>      arch/arm64/boot/dts/mediatek/mt8173-elm.dtb: pmic: '#address-cells', '#size-cells' do not match any of the regexes: 'pinctrl-[0-9]+'
>              from schema $id: http://devicetree.org/schemas/mfd/mediatek,mt6397.yaml#
> 
> Reported-by: kernel test robot <lkp@intel.com>
> Closes: https://lore.kernel.org/oe-kbuild-all/202412212322.JTFpRD7X-lkp@intel.com/
> Fixes: 689b937bedde ("arm64: dts: mediatek: add mt8173 elm and hana board")
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



