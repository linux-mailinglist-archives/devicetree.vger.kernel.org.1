Return-Path: <devicetree+bounces-10699-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 79F947D2856
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 04:12:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 23E6BB20CA8
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 02:12:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E48B1390;
	Mon, 23 Oct 2023 02:12:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6C6A2A
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 02:12:30 +0000 (UTC)
Received: from mx.socionext.com (mx.socionext.com [202.248.49.38])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 533B0112;
	Sun, 22 Oct 2023 19:12:28 -0700 (PDT)
Received: from unknown (HELO iyokan2-ex.css.socionext.com) ([172.31.9.54])
  by mx.socionext.com with ESMTP; 23 Oct 2023 11:12:27 +0900
Received: from mail.mfilter.local (mail-arc01.css.socionext.com [10.213.46.36])
	by iyokan2-ex.css.socionext.com (Postfix) with ESMTP id 969B12059053;
	Mon, 23 Oct 2023 11:12:27 +0900 (JST)
Received: from kinkan2.css.socionext.com ([172.31.9.51]) by m-FILTER with ESMTP; Mon, 23 Oct 2023 11:12:27 +0900
Received: from plum.e01.socionext.com (unknown [10.212.243.119])
	by kinkan2.css.socionext.com (Postfix) with ESMTP id DF4A7B1D40;
	Mon, 23 Oct 2023 11:12:26 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: soc@kernel.org,
	Arnd Bergmann <arnd@arndb.de>
Cc: Pierre Gondois <pierre.gondois@arm.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: [PATCH 0/2] Update UniPhier armv8 devicetree
Date: Mon, 23 Oct 2023 11:12:19 +0900
Message-Id: <20231023021221.2884828-1-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Update devicetree sources for UniPhier armv8 SoCs to add
missing cache properties.

This series combines the following patches:
- https://lore.kernel.org/r/20221107155825.1644604-21-pierre.gondois@arm.com
- https://lore.kernel.org/all/f9a2c0d7-a78d-9368-f9bb-e8aba11e7d81@socionext.com/

Krzysztof Kozlowski (1):
  arm64: dts: socionext: add missing cache properties

Pierre Gondois (1):
  arm64: dts: Update cache properties for socionext

 arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi | 2 ++
 arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi | 4 ++++
 arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi | 2 ++
 3 files changed, 8 insertions(+)

-- 
2.25.1


