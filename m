Return-Path: <devicetree+bounces-5947-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BB907B9679
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 23:33:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 282CC281DAF
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 21:33:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DB05241FA;
	Wed,  4 Oct 2023 21:33:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC8F7241E5
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 21:32:56 +0000 (UTC)
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C342C4;
	Wed,  4 Oct 2023 14:32:55 -0700 (PDT)
Received: from i53875a3c.versanet.de ([83.135.90.60] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qo9UD-0005RF-08; Wed, 04 Oct 2023 23:32:53 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	kernel@collabora.com,
	Conor Dooley <conor+dt@kernel.org>,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 0/2] RK3588 EVB1 PCIe support
Date: Wed,  4 Oct 2023 23:32:46 +0200
Message-Id: <169645508389.141514.5769106389673512468.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230918141327.131108-1-sebastian.reichel@collabora.com>
References: <20230918141327.131108-1-sebastian.reichel@collabora.com>
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

On Mon, 18 Sep 2023 16:13:25 +0200, Sebastian Reichel wrote:
> This enables PCIe network card and the PCIe slot for the RK3588 EVB1.
> There is one more PCIe lane being used for a WLAN card, but I did not
> yet get that working.
> 
> -- Sebastian
> 
> Sebastian Reichel (2):
>   arm64: dts: rockchip: rk3588-evb1: add PCIe2 network controller
>   arm64: dts: rockchip: rk3588-evb1: add PCIe3 bus
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: rockchip: rk3588-evb1: add PCIe2 network controller
      commit: 86a2024d95e259c4309ced53242c0db6d993320b
[2/2] arm64: dts: rockchip: rk3588-evb1: add PCIe3 bus
      commit: 46bb398ea1d81302e3735087ceb4b5763d5afc29

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

