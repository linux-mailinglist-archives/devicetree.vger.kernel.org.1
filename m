Return-Path: <devicetree+bounces-20644-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 087C680067C
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 10:03:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9E9711F20F1C
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 09:03:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 281AA1CA8C;
	Fri,  1 Dec 2023 09:03:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="iHgq5kfz"
X-Original-To: devicetree@vger.kernel.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 85BEA10A;
	Fri,  1 Dec 2023 01:03:30 -0800 (PST)
Received: from [100.107.97.3] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id BB6816607355;
	Fri,  1 Dec 2023 09:03:28 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1701421409;
	bh=Gj9rw14US1N62TlR7bkVl3va+Y5iopHKH+jD5td5RB8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=iHgq5kfzLC6WFvV56C6MLEo88pVB3IRTw8DsPyFeI0GmGC/r7n3YnIgOlaaKCFOH0
	 qjLO0UEEFzcFroQqywP2tef/wTCvdPOjuXpgc3d7jaTa3kG8Dtda1Q+K29y0KioS3h
	 KjY+mTok/5dmstXHBL6uPMzKAL1uwGNp3TZLs9jTD6N9aJNmo0D/IlhOF3QXqOJhbB
	 Sdp/WhhI/wIBDhDht3ln0PjtlW8heA7SHYJm3wUD1oFvj5cK/UbOJczBLJkv8SmUFD
	 cSUkGul+nwK3u5OvvsEriqqH3jEYk9YDh97G8pr5nj2RGaw8g7qAIF6ltkzUvP0q0q
	 QWJxC+99TZFhA==
Message-ID: <62810181-cfa8-4e2e-b2be-c3c9bf9e3bf9@collabora.com>
Date: Fri, 1 Dec 2023 10:03:28 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] arm64: dts: mt6358: Drop bogus "regulator-fixed"
 compatible properties
Content-Language: en-US
To: Chen-Yu Tsai <wenst@chromium.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org
References: <20231130074032.913511-1-wenst@chromium.org>
 <20231130074032.913511-3-wenst@chromium.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20231130074032.913511-3-wenst@chromium.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 30/11/23 08:40, Chen-Yu Tsai ha scritto:
> Whether a regulator under the MT6358 PMIC is a fixed regulator or not is
> derived from the node name. Compatible string properties are not used.
> This causes validation errors after the regulator binding is converted
> to DT schema.
> 
> Drop the bogus "regulator-fixed" compatible properties from the PMIC's
> regulator sub-nodes.
> 
> Fixes: 9f8872221674 ("arm64: dts: mt6358: add PMIC MT6358 related nodes")
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



