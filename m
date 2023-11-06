Return-Path: <devicetree+bounces-13986-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AFE57E1BE9
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 09:25:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4C0B61C20952
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 08:25:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2677A111BB;
	Mon,  6 Nov 2023 08:25:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="jqOcc47z"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC6BC12B81
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 08:25:36 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E321BB;
	Mon,  6 Nov 2023 00:25:35 -0800 (PST)
Received: from [100.107.97.3] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 38CA46605769;
	Mon,  6 Nov 2023 08:25:33 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699259134;
	bh=Ut/U5kOAxO6gxFFmg+MrU8i15HKJJa8WFBDlN6E2YQc=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=jqOcc47zUCAnvPPGcHa3h+8Zy0KttpeazmkhFA1tK9/zMneD54wNl36JBclLgaqqh
	 uUJkZsBAacSI0TjhgSIT2hLExGFJVkNvhQOnRNhXZVsk2p9fW4KbvXCZMj86C7g4eP
	 jzeV9aDfOMmnvPKf95y/16+NNV4rVs21wuYXeIjM7ERYCr0GIt6a6Gk96I9Itudnbg
	 GPiQT0tAcI6i46R6Sw5bVZ2iFUYMNMeu571W1LC91mdZoU4dx7Vz5rtAWOsMfY9Dhk
	 smOy6JgIz+SlMhLe590OFdSkhCXIHVTccuJartFaQ320dAynVSxc7uA7hOvDZ5PRGI
	 ftdftbTeLzl+g==
Message-ID: <a504e6f6-8bd0-4f23-9dd7-98b6a4722e95@collabora.com>
Date: Mon, 6 Nov 2023 09:25:33 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] dt-bindings: PCI: mediatek-gen3: Add support for
 controlling power and reset
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
 <20231106061220.21485-2-jian.yang@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20231106061220.21485-2-jian.yang@mediatek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 06/11/23 07:12, Jian Yang ha scritto:
> From: "jian.yang" <jian.yang@mediatek.com>
> 
> Add new properties to support control power supplies and reset pin of
> a downstream component.
> 
> Signed-off-by: jian.yang <jian.yang@mediatek.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



