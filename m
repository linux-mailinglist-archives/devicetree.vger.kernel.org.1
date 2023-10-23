Return-Path: <devicetree+bounces-10834-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 791907D2DB8
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 11:10:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 31B1E281367
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 09:10:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6308712B7D;
	Mon, 23 Oct 2023 09:10:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="iWSOlNSo"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEA661FDB
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 09:10:52 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 92C17D65;
	Mon, 23 Oct 2023 02:10:51 -0700 (PDT)
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 85ED466071F8;
	Mon, 23 Oct 2023 10:10:49 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1698052250;
	bh=8SSRPDD/rI9f9UmV2sEinNETdurqi1qZJq4soIW88dA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=iWSOlNSoKuvlmYYB4BVYaS85Z70Rh3VSe8E4r+uFawpyXQh5e0QqGbrz0TCJK0M6w
	 WNVhyUMFtnRX4fyiwp/pAY4Nf4Bh6Giodd854idOTHdeLh5cksRAnN3Jh79iGqZD4/
	 V1bivnZuPO9xYtUv/tF6wUStf/Uj7TbSd0hZTw3gNsvzQmXrHC9koxlK6kUnzvR0xR
	 vQv+5Wuk4I08myMwaH37dQC3xSqRtP9CNZ1+dUjgOA6hwZfBPCqOPmjuV8YWWfyiqb
	 tEih+HBTZmpVTIshJtP5EziO3dHC2YE1yenbm+K0MpVy1Newzs5POICY458AjNWVYK
	 GRO3yp4QjlKTg==
Message-ID: <5f9acc87-399f-48c2-82b3-ae17534e7c6e@collabora.com>
Date: Mon, 23 Oct 2023 11:10:47 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 4/4] arm64: dts: Add MediaTek MT8188 dts and evaluation
 board and Makefile
Content-Language: en-US
To: Jason-ch Chen <jason-ch.chen@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Eugen Hristev <eugen.hristev@collabora.com>,
 Bartosz Golaszewski <brgl@bgdev.pl>,
 Alexandre Mergnat <amergnat@baylibre.com>
Cc: =?UTF-8?Q?N=C3=ADcolas_F_=2E_R_=2E_A_=2E_Prado?=
 <nfraprado@collabora.com>, Chen-Yu Tsai <wenst@chromium.org>,
 Project_Global_Chrome_Upstream_Group@mediatek.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org
References: <20231023083839.24453-1-jason-ch.chen@mediatek.com>
 <20231023083839.24453-5-jason-ch.chen@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20231023083839.24453-5-jason-ch.chen@mediatek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 23/10/23 10:38, Jason-ch Chen ha scritto:
> From: jason-ch chen <Jason-ch.Chen@mediatek.com>
> 
> MT8188 is a SoC based on 64bit ARMv8 architecture. It contains 6 CA55
> and 2 CA78 cores. MT8188 share many HW IP with MT65xx series.
> 
> We add basic chip support for MediaTek MT8188 on evaluation board.
> 
> Signed-off-by: jason-ch chen <Jason-ch.Chen@mediatek.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>


