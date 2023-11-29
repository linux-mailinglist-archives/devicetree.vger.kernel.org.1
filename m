Return-Path: <devicetree+bounces-20003-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FB6C7FD810
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 14:28:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EAA221F21002
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 13:28:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D723320335;
	Wed, 29 Nov 2023 13:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="EBFCLegw"
X-Original-To: devicetree@vger.kernel.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 599B7CA;
	Wed, 29 Nov 2023 05:28:31 -0800 (PST)
Received: from IcarusMOD.eternityproject.eu (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 1644D6606F5E;
	Wed, 29 Nov 2023 13:28:29 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1701264510;
	bh=4usmAEazxjJcK1yS+bx4LByLPrRqrN3n8pR4Vwqt66M=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=EBFCLegwWw6vrecTHfGfBfMknsuUlBoP8Yo4UA6nCfYv0okD345ZaPnvZj5ZKmQCA
	 4dJXwmvwOInjJ3LStbKL6HK7qrNbRPXrpH4zhuW9OwWNar6mcVC+JzdmjU9NFn8cLZ
	 06jbxh24j+JvANDGgYHHkmClDW/kkDHMBl8OFJ/loxZgTyGRR9XtOcirMDQhDOqwTA
	 WiQd8HgA3McaPBsHpFdhYzAtoAqz8XYktG96luiJuxwhX5UZ3C3Vs+y+pVvpKC8VLs
	 wROgdU94+cfZAfI02Ki5ffpymaG2kJy1nPE032XKPtmPlgIoTMUjaJLtrRc9kDkXG+
	 stJzBA623c6Hw==
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: linux-mediatek@lists.infradead.org,
	Eugen Hristev <eugen.hristev@collabora.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Hsin-Yi Wang <hsinyi@chromium.org>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	kernel@collabora.com,
	Rob Herring <robh+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	=?UTF-8?q?N=C3=ADcolas=20F=20=2E=20R=20=2E=20A=20=2E=20Prado?= <nfraprado@collabora.com>,
	=?UTF-8?q?Bernhard=20Rosenkr=C3=A4nzer?= <bero@baylibre.com>,
	Macpaul Lin <macpaul.lin@mediatek.com>,
	Sean Wang <sean.wang@mediatek.com>
Subject: Re: [PATCH v4 1/7] arm64: dts: mt8183: kukui: Fix underscores in node names
Date: Wed, 29 Nov 2023 14:27:36 +0100
Message-ID: <170126437823.153055.1015143470789500363.b4-ty@collabora.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231026191343.3345279-2-hsinyi@chromium.org>
References: <20231026191343.3345279-1-hsinyi@chromium.org> <20231026191343.3345279-2-hsinyi@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Thu, 26 Oct 2023 12:09:10 -0700, Hsin-Yi Wang wrote:
> Replace underscores with hyphens in pinctrl node names both for consistency
> and to adhere to the bindings.
> 
> 

Applied, thanks!

[1/7] arm64: dts: mt8183: kukui: Fix underscores in node names
      (no commit info)

Best regards,
-- 
AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

