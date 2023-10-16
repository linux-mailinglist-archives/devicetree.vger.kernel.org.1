Return-Path: <devicetree+bounces-9035-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F7EF7CB503
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 23:02:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D0F3B1C20921
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 21:02:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F2B1374FB;
	Mon, 16 Oct 2023 21:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0302329428
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 21:02:30 +0000 (UTC)
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3CB6BA2
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 14:02:28 -0700 (PDT)
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qsUj6-0000t6-Mb; Mon, 16 Oct 2023 23:02:12 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Chris Morgan <macroalpha82@gmail.com>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	jagan@edgeble.ai,
	kernel@puri.sm,
	sebastian.reichel@collabora.com,
	conor+dt@kernel.org,
	neil.armstrong@linaro.org,
	megous@megous.com,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	Chris Morgan <macromorgan@hotmail.com>,
	krzysztof.kozlowski+dt@linaro.org,
	dri-devel@lists.freedesktop.org,
	agx@sigxcpu.org,
	andyshrk@163.com,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH 0/5] Add Support for RK3566 Powkiddy RGB30
Date: Mon, 16 Oct 2023 23:02:11 +0200
Message-Id: <169749012381.1030145.4153782284294309362.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231013183918.225666-1-macroalpha82@gmail.com>
References: <20231013183918.225666-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_PASS,
	T_SPF_HELO_TEMPERROR autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Fri, 13 Oct 2023 13:39:13 -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add support for the Powkiddy RGB30 handheld gaming console.
> 
> Chris Morgan (5):
>   dt-bindings: vendor-prefixes: document Powkiddy
>   dt-bindings: panel: Add Powkiddy RGB30 panel compatible
>   drm/panel: st7703: Add Powkiddy RGB30 Panel Support
>   dt-bindings: arm64: rockchip: add Powkiddy RGB30
>   arm64: dts: rockchip: add support for Powkiddy RGB30
> 
> [...]

Applied, thanks!

[4/5] dt-bindings: arm64: rockchip: add Powkiddy RGB30
      commit: 64d0de4f65c2951ccdc7a7aebe8a7e3455946f5f
[5/5] arm64: dts: rockchip: add support for Powkiddy RGB30
      commit: 1e9ac3e8a6a9d4da9efbad2d8e95cc1140e0e23f

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

