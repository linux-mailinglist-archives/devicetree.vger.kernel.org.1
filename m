Return-Path: <devicetree+bounces-20308-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 10FC57FEC4A
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 10:54:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C11C02820E7
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 09:54:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34B7E3AC03;
	Thu, 30 Nov 2023 09:54:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from rtits2.realtek.com.tw (rtits2.realtek.com [211.75.126.72])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B10D10EA;
	Thu, 30 Nov 2023 01:54:34 -0800 (PST)
X-SpamFilter-By: ArmorX SpamTrap 5.78 with qID 3AU9rk7lB3442301, This message is accepted by code: ctloc85258
Received: from mail.realtek.com (rtexh36506.realtek.com.tw[172.21.6.27])
	by rtits2.realtek.com.tw (8.15.2/2.95/5.92) with ESMTPS id 3AU9rk7lB3442301
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 30 Nov 2023 17:53:46 +0800
Received: from RTEXDAG01.realtek.com.tw (172.21.6.100) by
 RTEXH36506.realtek.com.tw (172.21.6.27) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.17; Thu, 30 Nov 2023 17:53:47 +0800
Received: from RTEXH36505.realtek.com.tw (172.21.6.25) by
 RTEXDAG01.realtek.com.tw (172.21.6.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.7; Thu, 30 Nov 2023 17:53:45 +0800
Received: from localhost.localdomain (172.21.252.101) by
 RTEXH36505.realtek.com.tw (172.21.6.25) with Microsoft SMTP Server id
 15.1.2375.32 via Frontend Transport; Thu, 30 Nov 2023 17:53:45 +0800
From: "cy.huang" <cy.huang@realtek.com>
To: <cy.huang@realtek.com>
CC: Rob Herring <robh+dt@kernel.org>, James Tai <james.tai@realtek.com>,
        =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-realtek-soc@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 0/3] Initial RTD1319 SoC and Realtek PymParticle EVB support
Date: Thu, 30 Nov 2023 17:53:34 +0800
Message-ID: <20231130095345.24524-3-cy.huang@realtek.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231130095345.24524-1-cy.huang@realtek.com>
References: <20231130095345.24524-1-cy.huang@realtek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-KSE-ServerInfo: RTEXDAG01.realtek.com.tw, 9
X-KSE-AntiSpam-Interceptor-Info: fallback
X-KSE-Antivirus-Interceptor-Info: fallback
X-KSE-AntiSpam-Interceptor-Info: fallback

Hi Andreas,

This series adds Device Trees for the Realtek RTD1319 SoC and Realtek's
PymParticle EVB.

v2:
* RTD1319 SoC and Realtek PymParticle EVB

Cc: Rob Herring <robh+dt@kernel.org>
Cc: James Tai <james.tai@realtek.com>
Cc: Andreas Färber <afaerber@suse.de>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-kernel@lists.infradead.org
Cc: devicetree@vger.kernel.org
Cc: linux-realtek-soc@lists.infradead.org
Cc: linux-kernel@vger.kernel.org

Wei Chen (1):
  i2c: xgene-slimpro: Fix out-of-bounds bug in xgene_slimpro_i2c_xfer()

cy.huang (2):
  dt-bindings: arm: realtek: Add Realtek Pym Particles EVB
  arm64: dts: realtek: Add RTD1319 SoC and Realtek Pym Particles EVB

-- 
2.39.0


