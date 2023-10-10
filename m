Return-Path: <devicetree+bounces-7365-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B70F57C02E0
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 19:41:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E94701C20CF8
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 17:41:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C44753FB2B;
	Tue, 10 Oct 2023 17:41:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=xff.cz header.i=@xff.cz header.b="Qv9h4wFk"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06E5E2FE22
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 17:41:47 +0000 (UTC)
Received: from vps.xff.cz (vps.xff.cz [195.181.215.36])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 676BF97;
	Tue, 10 Oct 2023 10:41:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1696959703; bh=/8eyXVZVo+6H0ggSI00a2syb+M4L/ZVwCYosxg3zmWQ=;
	h=From:To:Cc:Subject:Date:From;
	b=Qv9h4wFkkQoOkxA6OUuw7tHRH83UZdo5Acc+vtpPfjaJk2f8W7Z6Lg+9TyQZGonum
	 Z83zRVzLwFPL01Xi8WxcjLNpry/gl97iiBCn2fXOJN8sInAucDipfmekMUhH+OuBR7
	 ve5xuaTq7nnhCcRLQQrbI6fl8kNaAbqgMFmITPsA=
From: =?UTF-8?q?Ond=C5=99ej=20Jirman?= <megi@xff.cz>
To: Lee Jones <lee@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Ondrej Jirman <megi@xff.cz>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/4] Add support for poweroff via RK806 PMIC
Date: Tue, 10 Oct 2023 19:41:15 +0200
Message-ID: <20231010174138.1888396-1-megi@xff.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Ondrej Jirman <megi@xff.cz>

The PMIC supports powering off by twiddling some bits in a register. Add support
for it via pre-existing rockchip,system-power-controller DT property.

The series was tested against Linux 6.6-rc4.

Please take a look.

Thank you,
	Ondřej Jirman

v3:
- use system-power-controller
- deprecate rockchip,system-power-controller
v2:
- add a missing driver patch

Ondrej Jirman (4):
  dt-bindings: mfd: rk8xx: Deprecate rockchip,system-power-controller
  dt-bindings: mfd: rk806: Allow system-power-controller property
  mfd: rk8xx: Add support for standard system-power-controller property
  mfd: rk8xx: Add support for RK806 power off

 Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml | 3 +++
 Documentation/devicetree/bindings/mfd/rockchip,rk806.yaml | 2 ++
 Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml | 3 +++
 Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml | 3 +++
 Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml | 3 +++
 Documentation/devicetree/bindings/mfd/rockchip,rk818.yaml | 3 +++
 drivers/mfd/rk8xx-core.c                                  | 7 ++++++-
 7 files changed, 23 insertions(+), 1 deletion(-)

-- 
2.42.0


