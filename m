Return-Path: <devicetree+bounces-7059-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B58D07BEF87
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 02:10:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E5B6028182D
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 00:10:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F37CF18D;
	Tue, 10 Oct 2023 00:10:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50E8C17E
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 00:10:44 +0000 (UTC)
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B24F8132;
	Mon,  9 Oct 2023 17:10:35 -0700 (PDT)
Received: from i53875a3c.versanet.de ([83.135.90.60] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qq0KV-0006dZ-M3; Tue, 10 Oct 2023 02:10:31 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	=?UTF-8?q?Ond=C5=99ej=20Jirman?= <megi@xff.cz>,
	Rob Herring <robh+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Chris Morgan <macromorgan@hotmail.com>,
	Jonas Karlman <jonas@kwiboo.se>
Subject: Re: [PATCH 0/4] Add support for Orange Pi 5 Plus
Date: Tue, 10 Oct 2023 02:10:30 +0200
Message-Id: <169689659830.206679.15041236943735063930.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231008130515.1155664-1-megi@xff.cz>
References: <20231008130515.1155664-1-megi@xff.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_PASS,T_SPF_HELO_TEMPERROR,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Sun, 8 Oct 2023 15:04:58 +0200, Ondřej Jirman wrote:
> From: Ondrej Jirman <megi@xff.cz>
> 
> This series adds an initial support for Orange Pi 5 Plus. The only
> thing missing that can be readily added is USB 3.0 support, because
> required patches were not yet merged. Support for USB 3.0 is available
> at https://xff.cz/git/linux/log/?h=opi5-6.6
> 
> [...]

Applied, thanks!

[1/4] arm64: dts: rockchip: rk3588s-pinctrl: Add I2S2 M0 pin definitions
      commit: bf012368bb0ab69167d49715789fac34dfcd457e
[2/4] arm64: dts: rockchip: rk3588s-pinctrl: Add UART9 M0 pin definitions
      commit: 3d77a3e51b0faed820a8db985dce5af1cc4eae32
[3/4] dt-bindings: arm: rockchip: Add Orange Pi 5 Plus
      commit: 0936188b7f2f6d3328f737a03cef7381f688a6cc
[4/4] arm64: dts: rk3588-orangepi-5-plus: Add board device tree
      commit: 236d225e1ee72a28aa7c2b1e39894e4390bbf51c

Also dropped the mem-supply stuff that is from the vendor-kernel and
reordered some stuff.


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

