Return-Path: <devicetree+bounces-5426-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AE1CD7B650E
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 11:12:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id DBAB12816A0
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 09:12:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D701BDF47;
	Tue,  3 Oct 2023 09:12:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A164DDD3
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 09:12:10 +0000 (UTC)
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 073A39E;
	Tue,  3 Oct 2023 02:12:07 -0700 (PDT)
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3939BpKn023068;
	Tue, 3 Oct 2023 04:11:51 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1696324311;
	bh=Cg7DT8ln9TJjE5CRUv3uGyQwdTEo56UtERpBKDIvvgI=;
	h=From:Subject:Date:To:CC;
	b=vzwH2PcUDgzSMMBrtpwCqQ35EO1CqAH2Wv87LumubX+4k8+ppWFME4bQZvN0XQmZj
	 At4od2PCyyqYUT0C2+MHxukfUY5VHauMgVlDfHz94/XieJNX8bCtr87nZZYaCMP/kS
	 cNnMHrUAL/qvVbxhxFjk6N2fimQ+HQTNAGlMvuq4=
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3939BpQf034676
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 3 Oct 2023 04:11:51 -0500
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Tue, 3
 Oct 2023 04:11:51 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Tue, 3 Oct 2023 04:11:51 -0500
Received: from localhost (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3939BowH019159;
	Tue, 3 Oct 2023 04:11:50 -0500
From: Jai Luthra <j-luthra@ti.com>
Subject: [PATCH v3 0/6] arm64: ti: Enable audio on AM62A
Date: Tue, 3 Oct 2023 14:41:29 +0530
Message-ID: <20231003-mcasp_am62a-v3-0-2b631ff319ca@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMHaG2UC/23MywrCMBCF4VcpWRtJJpK2rnwPEZmmEzuLXkhKU
 Erf3bQLRXB5Dnz/IiIFpijOxSICJY48DnmYQyFch8ODJLd5C1BgVGm07B3G6Y69BZTotbXKwsn
 XpchiCuT5udeut7w7jvMYXns86e3930laKlk1rTal91h5fZn56MZebJEEX1hD9QshQ0e1V6QbB
 Gg+cF3XN2V5RtLcAAAA
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
        Tero
 Kristo <kristo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon
	<will@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <devarsht@ti.com>, <a-bhatia1@ti.com>,
        Jai
 Luthra <j-luthra@ti.com>, Jayesh Choudhary <j-choudhary@ti.com>,
        Julien Panis
	<jpanis@baylibre.com>,
        Esteban Blanc <eblanc@baylibre.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1517; i=j-luthra@ti.com;
 h=from:subject:message-id; bh=smsj/lq+tZbmsGHZBLqMjtgta5PFDiLSddmPTUv51H8=;
 b=owEBbQKS/ZANAwAIAUPekfkkmnFFAcsmYgBlG9rN9SU04IQJXWGOOZOKYwJip7op/Ac/XXDQH
 FRE0SHGz+GJAjMEAAEIAB0WIQRN4NgY5dV16NRar8VD3pH5JJpxRQUCZRvazQAKCRBD3pH5JJpx
 RREhD/0ZuK3NUjvduE4sxoAVyishxZdyZMYpJ6S/dBxNt7Zt6IOZXqx6iNgzXCJtvTUzgZNdJ2N
 C0j7jgjsgI7ewvO3z3eyACnS2/+SdVKIj2MsU4uDvccd2LVJsPfNL/WbsVS4oTgZ6lFZ1uIatNo
 hImab2C+xyMW1U3dBbz/DytgtE/NPQN7Y5fHRYP7kLCAq6YuL1xr4NgmwQ9icRQZln2HKPJ0deh
 oCc/MDMjvU4ZZ1dRa8oXA0jA1Mc+5X353QswItnLJwLHi7BK6iB59seAxdox3eapzu028QhNnm8
 nqoyiY3dG4mC+Nc8HXRl5UlpHbIpRz5bnkamekOMTcbpKQAmrncpHi9YYe0uSiL+IBvlQyAE6un
 +g3wRkI+s1LRRFb7CmdxE2FPptmZ8MrRpOU+WLiKXmqsTHpjn7h17bo7g6PWRSKHmx9URI/frH3
 Lg8WIphUsR0OJ+xAZuR2ztGOx0MErCH0L05x+0dhpRgpRk1toOKM+/hD7P0Usjl9YVZtnUe7s0Q
 5vlzkZjKWg2/4grxBNpN/iv4y2zU/ZOgFn74Qf8t7L3jjHHQ3Sn45EAEgeWpWirGTH25cYCEJkZ
 ehhlF2OxnkL09uV5Im/rjQ8nZLrNEVnuNSbce3wftbug5NfvFU6dM7YuGb1LlBJUmWweA7y4ly2
 rz1cpyOHqg3UCeQ==
X-Developer-Key: i=j-luthra@ti.com; a=openpgp;
 fpr=4DE0D818E5D575E8D45AAFC543DE91F9249A7145
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

This patch series adds support for audio via headphone jack on
SK-AM62A-LP. The jack is wired to TLV320AIC3106 (codec), which is
connected to McASP1 (serializer) on the SoC.

The TRRS 3.5mm jack can be used for simultaneous playback and recording.

Signed-off-by: Jai Luthra <j-luthra@ti.com>
---
Changes in v3:
- Add Fixes tag in PATCH [3/6], along with Aradhya's R-by
- Fix node names for mcasp1 pins (should end with -pins to match regex)
- Link to v2: https://lore.kernel.org/r/20230928-mcasp_am62a-v2-0-ce9f0e1ba22b@ti.com

Changes in v2:
- Move the patch that enables TPS6593 PMIC to this series
- Link to v1: https://lore.kernel.org/r/20230731-mcasp_am62a-v1-0-8bd137ffa8f1@ti.com

---
Jai Luthra (5):
      arm64: dts: ti: k3-am62a-main: Add nodes for McASP
      arm64: dts: ti: k3-am62a7-sk: Split vcc_3v3 regulators
      arm64: dts: ti: k3-am62a7-sk: Drop i2c-1 to 100Khz
      arm64: dts: ti: k3-am62a7-sk: Enable audio on AM62A
      arm64: defconfig: Enable TPS6593 PMIC for SK-AM62A

Julien Panis (1):
      arm64: dts: ti: k3-am62a7-sk: Add support for TPS6593 PMIC

 arch/arm64/boot/dts/ti/k3-am62a-main.dtsi |  60 ++++++++++
 arch/arm64/boot/dts/ti/k3-am62a7-sk.dts   | 189 +++++++++++++++++++++++++++++-
 arch/arm64/configs/defconfig              |   1 +
 3 files changed, 247 insertions(+), 3 deletions(-)
---
base-commit: c9f2baaa18b5ea8f006a2b3a616da9597c71d15e
change-id: 20230731-mcasp_am62a-af1660624f97

Best regards,
-- 
Jai Luthra <j-luthra@ti.com>


