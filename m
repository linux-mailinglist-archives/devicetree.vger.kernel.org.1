Return-Path: <devicetree+bounces-9034-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7599B7CB4F2
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 22:58:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2F28B28149D
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 20:58:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B4A137159;
	Mon, 16 Oct 2023 20:58:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EFC12B779
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 20:58:26 +0000 (UTC)
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B40295
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 13:58:22 -0700 (PDT)
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qsUfI-0000rE-9d; Mon, 16 Oct 2023 22:58:16 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Chris Morgan <macroalpha82@gmail.com>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	daniel@ffwll.ch,
	Chris Morgan <macromorgan@hotmail.com>,
	megous@megous.com,
	neil.armstrong@linaro.org,
	airlied@gmail.com,
	jagan@edgeble.ai,
	krzysztof.kozlowski+dt@linaro.org,
	sebastian.reichel@collabora.com,
	dri-devel@lists.freedesktop.org,
	agx@sigxcpu.org,
	robh+dt@kernel.org,
	sam@ravnborg.org,
	kernel@puri.sm,
	andyshrk@163.com,
	conor+dt@kernel.org
Subject: Re: (subset) [PATCH 0/5] Add Support for RK3566 Powkiddy RGB30
Date: Mon, 16 Oct 2023 22:58:14 +0200
Message-Id: <169748877589.1000955.1759474739059635121.b4-ty@sntech.de>
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

[1/5] dt-bindings: vendor-prefixes: document Powkiddy
      commit: 00e395c8edf7fb6fa0830125d91c2b4bc381eefd
[2/5] dt-bindings: panel: Add Powkiddy RGB30 panel compatible
      commit: daee0320a13724e5a584726b693eee87bbd96172
[3/5] drm/panel: st7703: Add Powkiddy RGB30 Panel Support
      commit: 636a989eb4d022e1756009592445aedaaf7424d8

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

