Return-Path: <devicetree+bounces-5509-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D6AB7B678F
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 13:14:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 4BC9C1C20842
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 11:14:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9997921349;
	Tue,  3 Oct 2023 11:14:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A8F3210EA
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 11:14:32 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3CB45193;
	Tue,  3 Oct 2023 04:14:13 -0700 (PDT)
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 290616607330;
	Tue,  3 Oct 2023 12:13:57 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1696331638;
	bh=hIZCBWOdq56nnFmuMw8Yfx0EaOSNWmye+u5MsaxkvMk=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=LGlEBYbuY63Hchodh7bTyq5hzODdZChQ/OdstXwzcxqLmt0ucGXdNpEzV6TIUZf9u
	 ki6CZXIR1uAvPAV50mM5Ooqd6A5rjlLWqUpkF99k10n7UFrbrbfftrVibulI8qzVh3
	 sEaz3sAGneEL9Ck3aSHOvAtnyxtfxc1WNPFwYR+EwrFrw6XJO4DHjxsWyyPfVPICQq
	 DNuG1kZd1iMzb/FfdOQ/Oq7jHxVhT5bBLtlg7S1inH814KXZpfSFbHIuNMSAb9ZPGj
	 bagR0BpDdi3FErFpd8gsvAflzNo8bOATDPl1xL5Sa+zFIxawFJjwDlVA1FE9Olm1Ea
	 j8HZFvL/FDw9g==
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Date: Tue, 03 Oct 2023 13:13:47 +0200
Subject: [PATCH 5/5] arm64: dts: mediatek: mt8195: Set DSU PMU status to
 fail
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20231003-mediatek-fixes-v6-7-v1-5-dad7cd62a8ff@collabora.com>
References: <20231003-mediatek-fixes-v6-7-v1-0-dad7cd62a8ff@collabora.com>
In-Reply-To: <20231003-mediatek-fixes-v6-7-v1-0-dad7cd62a8ff@collabora.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Fabien Parent <fparent@baylibre.com>, 
 Miles Chen <miles.chen@mediatek.com>, 
 Macpaul Lin <macpaul.lin@mediatek.com>, 
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Sam Shih <sam.shih@mediatek.com>, 
 Frank Wunderlich <frank-w@public-files.de>, 
 Jieyy Yang <jieyy.yang@mediatek.com>, 
 Tinghan Shen <tinghan.shen@mediatek.com>, 
 Seiya Wang <seiya.wang@mediatek.com>, soc@kernel.org
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, 
 =?utf-8?q?N=C3=ADcolas_F=2E_R=2E_A=2E_Prado?= <nfraprado@collabora.com>
X-Mailer: b4 0.12.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=1870;
 i=angelogioacchino.delregno@collabora.com; h=from:subject:message-id;
 bh=IZfn1ZaZiDCR69psn2/IYKM29jkr+w6U1WIz4R61yqQ=;
 b=owGbwMvMwCU2y4zl/NrpLRWMp9WSGFKlv+eXcT7jOS70uXRLdu9Lf9VuMcYHfR8OFWz/mDznn9/H
 wxrHOkpZGMS4GGTFFFnU79ZkP1+zkvFI+9kSmDmsTCBDGLg4BWAircaMDG84zh3bGHmkhNlz+4uQz8
 9XxLzluLWr5p1g6leLrrNtlUIMf6VOWSr9EV1fsM48WLKz8PiyZ61Nrz+t6FxjOOVwolS1JTsA
X-Developer-Key: i=angelogioacchino.delregno@collabora.com; a=openpgp;
 fpr=57152E620CAF29C5DBE574766833ABB5BEBAF7B7
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: "Nícolas F. R. A. Prado" <nfraprado@collabora.com>

The DSU PMU allows monitoring performance events in the DSU cluster,
which is done by configuring and reading back values from the DSU PMU
system registers. However, for write-access to be allowed by ELs lower
than EL3, the EL3 firmware needs to update the setting on the ACTLR3_EL3
register, as it is disallowed by default.

That configuration is not done on the firmware used by the MT8195 SoC,
as a consequence, booting a MT8195-based machine like
mt8195-cherry-tomato-r2 with CONFIG_ARM_DSU_PMU enabled hangs the kernel
just as it writes to the CLUSTERPMOVSCLR_EL1 register, since the
instruction faults to EL3, and BL31 apparently just re-runs the
instruction over and over.

Mark the DSU PMU node in the Devicetree with status "fail", as the
machine doesn't have a suitable firmware to make use of it from the
kernel, and allowing its driver to probe would hang the kernel.

Fixes: 37f2582883be ("arm64: dts: Add mediatek SoC mt8195 and evaluation board")
Signed-off-by: Nícolas F. R. A. Prado <nfraprado@collabora.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Link: https://lore.kernel.org/r/20230720200753.322133-1-nfraprado@collabora.com
---
 arch/arm64/boot/dts/mediatek/mt8195.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8195.dtsi b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
index 4dbbf8fdab75..43011bc41da7 100644
--- a/arch/arm64/boot/dts/mediatek/mt8195.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
@@ -313,6 +313,7 @@ dsu-pmu {
 		interrupts = <GIC_SPI 18 IRQ_TYPE_LEVEL_HIGH 0>;
 		cpus = <&cpu0>, <&cpu1>, <&cpu2>, <&cpu3>,
 		       <&cpu4>, <&cpu5>, <&cpu6>, <&cpu7>;
+		status = "fail";
 	};
 
 	dmic_codec: dmic-codec {

-- 
2.42.0


