Return-Path: <devicetree+bounces-14634-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BDE37E5C50
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 18:22:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D365BB20D04
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 17:22:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F80A31A9E;
	Wed,  8 Nov 2023 17:22:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A842A31A93
	for <devicetree@vger.kernel.org>; Wed,  8 Nov 2023 17:22:39 +0000 (UTC)
Received: from relmlie6.idc.renesas.com (relmlor2.renesas.com [210.160.252.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id A296FE8;
	Wed,  8 Nov 2023 09:22:38 -0800 (PST)
X-IronPort-AV: E=Sophos;i="6.03,286,1694703600"; 
   d="scan'208";a="186045090"
Received: from unknown (HELO relmlir5.idc.renesas.com) ([10.200.68.151])
  by relmlie6.idc.renesas.com with ESMTP; 09 Nov 2023 02:22:38 +0900
Received: from localhost.localdomain (unknown [10.226.92.247])
	by relmlir5.idc.renesas.com (Postfix) with ESMTP id 00BE8400294E;
	Thu,  9 Nov 2023 02:22:34 +0900 (JST)
From: Biju Das <biju.das.jz@bp.renesas.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH v4 0/2] Enable 4-bit tx support for RZ/{G2L,G2LC,V2L} SMARC EVKs
Date: Wed,  8 Nov 2023 17:22:30 +0000
Message-Id: <20231108172232.259301-1-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch series aims to enable 4-bit tx support for
RZ/{G2L,G2LC,V2L} SMARC EVKs.

Note:
 This patch series doesn't have any driver dependency as 4-bit tx mode
 works fine with the latest renesas-devel and linux-next.

=> ./test_rzg2l.sh
[   49.891815] spi-nor spi1.0: mt25qu512a (65536 Kbytes)
[   49.914237] 2 fixed-partitions partitions found on MTD device spi1.0
[   49.920756] Creating 2 MTD partitions on \"spi1.0\":
[   49.925561] 0x000000000000-0x000002000000 : \"boot\"
[   49.933242] 0x000002000000-0x000004000000 : \"user\"
EXIT|PASS|rpcif_t_001.sh|[00:02:57] ||

=>./test_rzg2lc.sh
[   48.126373] spi-nor spi0.0: mt25qu512a (65536 Kbytes)
[   48.146357] 2 fixed-partitions partitions found on MTD device spi0.0
[   48.152752] Creating 2 MTD partitions on \"spi0.0\":
[   48.158505] 0x000000000000-0x000002000000 : \"boot\"
[   48.168398] 0x000002000000-0x000004000000 : \"user\"
EXIT|PASS|rpcif_t_001.sh|[00:02:54] ||

=>./test_rzv2l.sh
[   48.104324] spi-nor spi1.0: mt25qu512a (65536 Kbytes)
[   48.127265] 2 fixed-partitions partitions found on MTD device spi1.0
[   48.133723] Creating 2 MTD partitions on \"spi1.0\":
[   48.138536] 0x000000000000-0x000002000000 : \"boot\"
[   48.147075] 0x000002000000-0x000004000000 : \"user\"
EXIT|PASS|rpcif_t_001.sh|[00:02:55] ||

v3->v4:
 * Rebased and tested with latest renesas-devel.
 * Remove RZ/G2UL patch from this series and will send later.
v2->v3:
 * Added Rb tag from Geert.
v1->v2:
 * Enabled 4-bit tx support.

Biju Das (2):
  arm64: dts: renesas: rzg2l-smarc-som: Enable 4-bit tx support
  arm64: dts: renesas: rzg2lc-smarc-som: Enable 4-bit tx support

 arch/arm64/boot/dts/renesas/rzg2l-smarc-som.dtsi  | 1 +
 arch/arm64/boot/dts/renesas/rzg2lc-smarc-som.dtsi | 1 +
 2 files changed, 2 insertions(+)

-- 
2.25.1


