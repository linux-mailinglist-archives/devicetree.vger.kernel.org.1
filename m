Return-Path: <devicetree+bounces-15822-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EF9C7EBFBD
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 10:52:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5372C1C20621
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 09:52:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2FD99467;
	Wed, 15 Nov 2023 09:52:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="Af4LcLhL"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C4037E
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 09:52:25 +0000 (UTC)
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3FC6711C;
	Wed, 15 Nov 2023 01:52:24 -0800 (PST)
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3AF9q92b104991;
	Wed, 15 Nov 2023 03:52:09 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1700041929;
	bh=LLGGCOQ7unGDSmJmEvT2dCwuXArAIgSDeOPgzN9Q4Ec=;
	h=From:Date:Subject:References:In-Reply-To:To:CC;
	b=Af4LcLhLLJaAvc5OGBYF2ljSURLSPbirtXj15P5eoVxQDs7gUirl1XdLH1hfKsEK3
	 UkanFSUVM37mlyo7XRkI836Ou53UGScDTTVWEcnhJIcJcqYr4RNOkVoJJ+1FPk+1u0
	 pVEib10FGJYKktcXyEmNu3BkiPwVOgbR4/qniRYU=
Received: from DLEE110.ent.ti.com (dlee110.ent.ti.com [157.170.170.21])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3AF9q9bs109154
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 15 Nov 2023 03:52:09 -0600
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 15
 Nov 2023 03:52:09 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 15 Nov 2023 03:52:09 -0600
Received: from localhost (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3AF9q8gA009683;
	Wed, 15 Nov 2023 03:52:08 -0600
From: Jai Luthra <j-luthra@ti.com>
Date: Wed, 15 Nov 2023 15:21:09 +0530
Subject: [PATCH 1/8] arm64: defconfig: Enable AM62 CSI2RX
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20231115-csi_dts-v1-1-99fc535b2bde@ti.com>
References: <20231115-csi_dts-v1-0-99fc535b2bde@ti.com>
In-Reply-To: <20231115-csi_dts-v1-0-99fc535b2bde@ti.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
        Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
        Tero
 Kristo <kristo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <devicetree@vger.kernel.org>, Aradhya Bhatia <a-bhatia1@ti.com>,
        Devarsh
 Thakkar <devarsht@ti.com>,
        Vaishnav Achath <vaishnav.a@ti.com>,
        Julien Massot
	<julien.massot@collabora.com>,
        Martyn Welch <martyn.welch@collabora.com>,
        Jai
 Luthra <j-luthra@ti.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1229; i=j-luthra@ti.com;
 h=from:subject:message-id; bh=8U3EQOnnnQs+YWq5bKXi7ppSCeJNZ30pVpHqlXgkXMA=;
 b=owEBbQKS/ZANAwAIAUPekfkkmnFFAcsmYgBlVJS5ClHbIj0PBE9t2b/G0B5Dhzy9g7A5MYJcm
 tCTl4pBhJmJAjMEAAEIAB0WIQRN4NgY5dV16NRar8VD3pH5JJpxRQUCZVSUuQAKCRBD3pH5JJpx
 RXC/D/45/M7qdoBGBRU7UODDT0uKAMafjqTYos26JFwLBx0via4aA1DvTFzE/r/Q5lgDnZY7CJH
 LFGDJv1AtRQAC4ZRCqT6Bx/nuFhj6w5hR/ac8Hi6YEPiX8IoGo0Lg+nkb81rN1yyV0VMa+5oA+M
 IaN5F9kPQohyeQk4yFWbmPB8DxMb7Y9EdNrV0GAQSty49XtMqNAZ7wMi1L3OjJl4mtUuKDh1m7f
 WjLarCc0DKjltP3dC7zRyf8vqEroh16+1K4dW2U4jqK2tsIwaBOqOLrhLaigxCuQ3e+q1JxMSyj
 g01XlNmI4O7GVXAooQugG7XYncnzaEmqIgL8vlQykvNYeoU6fTozPvYCSj/IWoCfexdS6JVYNzW
 6ymcPCeZBMrz9QcQrsEKeSLDKi89w/jHE+Z5MN578PWI5FhCpyvN5OeZKkQO2aa/c5L+/mDWZe1
 PDegbnR6EYYOftTRCjYBg8NN2/g/3znXAKa3oslrvXWcP+FDzrxp1C2yYHJC4JQQmxDfrW06B5e
 J/v99C24yEo1Bu6+jKu3jLMnPFJMNMJgUSTf5iiyV+6LyFH3tEmEdF+2dJn1ajlpIoZF41cb/q4
 yZpW9Cwr/RgcO/RvRtkxDmrfaSYA/qXcDCBTAz2zvc4TC37MpXCYI1jdewMuJY5jJRAFzXHuQlK
 IhctqwmWIOyhRlg==
X-Developer-Key: i=j-luthra@ti.com; a=openpgp;
 fpr=4DE0D818E5D575E8D45AAFC543DE91F9249A7145
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

AM62 and other K3 based SoCs use Cadence DPHY and CSI-RX bridge drivers,
along with a DMA wrapper CSI IP for the camera pipeline.

Signed-off-by: Jai Luthra <j-luthra@ti.com>
---
 arch/arm64/configs/defconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index b60aa1f89343..aa2df39d072e 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -783,6 +783,7 @@ CONFIG_USB_VIDEO_CLASS=m
 CONFIG_V4L_PLATFORM_DRIVERS=y
 CONFIG_SDR_PLATFORM_DRIVERS=y
 CONFIG_V4L_MEM2MEM_DRIVERS=y
+CONFIG_VIDEO_CADENCE_CSI2RX=m
 CONFIG_VIDEO_MEDIATEK_JPEG=m
 CONFIG_VIDEO_MEDIATEK_VCODEC=m
 CONFIG_VIDEO_IMX7_CSI=m
@@ -804,6 +805,7 @@ CONFIG_VIDEO_SAMSUNG_EXYNOS_GSC=m
 CONFIG_VIDEO_SAMSUNG_S5P_JPEG=m
 CONFIG_VIDEO_SAMSUNG_S5P_MFC=m
 CONFIG_VIDEO_SUN6I_CSI=m
+CONFIG_VIDEO_TI_J721E_CSI2RX=m
 CONFIG_VIDEO_HANTRO=m
 CONFIG_VIDEO_IMX219=m
 CONFIG_VIDEO_IMX412=m
@@ -1421,6 +1423,7 @@ CONFIG_PHY_XGENE=y
 CONFIG_PHY_CAN_TRANSCEIVER=m
 CONFIG_PHY_SUN4I_USB=y
 CONFIG_PHY_CADENCE_TORRENT=m
+CONFIG_PHY_CADENCE_DPHY_RX=m
 CONFIG_PHY_CADENCE_SIERRA=m
 CONFIG_PHY_MIXEL_MIPI_DPHY=m
 CONFIG_PHY_FSL_IMX8M_PCIE=y

-- 
2.42.1


