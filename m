Return-Path: <devicetree+bounces-21379-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EE1480369C
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 15:28:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 58F97280FBC
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 14:28:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9791628DC0;
	Mon,  4 Dec 2023 14:28:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="XF6HkePq"
X-Original-To: devicetree@vger.kernel.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF1693A92;
	Mon,  4 Dec 2023 06:27:58 -0800 (PST)
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 18DD5660715D;
	Mon,  4 Dec 2023 14:27:57 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1701700077;
	bh=9P+rE/4yWgZyXVvt5DhwufQMuHM9oRtBwguFmMMLv6M=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=XF6HkePqNHg5LpD6fa6rIu54nZAvfDGtCbFHqoXXEBTLXXCwX3hlSnty5GzulDZRk
	 Na31c+BbIzRWdCdMt51og6GmLEjbSZGfhYP6Vb57rcMCUb8yqTfq2RgmrlgmA+wuWI
	 WmPqljZuGxlLUZ2CF7AZTfqvs9R+1ZLGRAohez6++k1h+ygCVBpAVwPnCFBDDE1L4a
	 DlOY1bRf/f0L/xh7XhCT25A1ZbU0b/nbhW+2bVU0DcAIhZ430FsUl82XoM0O84tLaV
	 uPsRQehEBXDM9xSFm5KyV/67kq2zEzIST5ePhkSuXPvcrXuWKCjAowlbVMfNL8ojRN
	 H+iNQ88c6d+QQ==
Message-ID: <a05e75ec-a175-4662-9612-b88cf6529a75@collabora.com>
Date: Mon, 4 Dec 2023 15:27:57 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/9] dt-bindings: arm: mediatek: Add MT8186 Steelix
 Chromebook
Content-Language: en-US
To: Chen-Yu Tsai <wenst@chromium.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, Conor Dooley <conor.dooley@microchip.com>
References: <20231204084012.2281292-1-wenst@chromium.org>
 <20231204084012.2281292-4-wenst@chromium.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20231204084012.2281292-4-wenst@chromium.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 04/12/23 09:40, Chen-Yu Tsai ha scritto:
> Add an entry for the MT8186 based Steelix Chromebook, also known as the
> Lenovo 300e Yoga Chromebook Gen 4.
> 
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



