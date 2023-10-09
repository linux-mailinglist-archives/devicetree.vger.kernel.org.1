Return-Path: <devicetree+bounces-7058-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 929457BEF54
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 01:48:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 918C81C20A17
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 23:48:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A33124736C;
	Mon,  9 Oct 2023 23:48:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CAF228E6
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 23:48:29 +0000 (UTC)
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE4BE9D;
	Mon,  9 Oct 2023 16:48:25 -0700 (PDT)
Received: from i53875a3c.versanet.de ([83.135.90.60] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qpzz1-0006TR-1E; Tue, 10 Oct 2023 01:48:19 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Muhammed Efe Cetin <efectn@6tel.net>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-kernel@vger.kernel.org,
	conor+dt@kernel.org,
	d-gole@ti.com,
	megi@xff.cz,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	jonas@kwiboo.se,
	robh+dt@kernel.org,
	sebastian.reichel@collabora.com
Subject: Re: [PATCH v4 0/3] Add Support for Orange Pi 5
Date: Tue, 10 Oct 2023 01:48:17 +0200
Message-Id: <169689524286.203772.4910357852010517555.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1696878787.git.efectn@6tel.net>
References: <cover.1696878787.git.efectn@6tel.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_PASS,T_SPF_HELO_TEMPERROR autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, 9 Oct 2023 22:27:24 +0300, Muhammed Efe Cetin wrote:
> These series add initial support for Orange Pi 5 and SFC node for RK3588S.
> 
> Changes in v4:
> * Update SFC patch commit description.
> * Add Reviewed-by tags from Dhruva Gole <d-gole@ti.com>.
> 
> Changes in v3:
> * Remove cap-mmc-highspeed property from sdmmc.
> * Make vcc_1v1_nldo_s3 an alias of dcdc-reg6 and add regulator-max-microvolt, regulator-min-microvolt properties.
> * Make press-threshold-microvolt 1800 for recovery button.
> * Remove assigned-clocks from sfc node.
> * Drop some properties from sfc node in orangepi5 devicetree.
> * Move snps reset properties to rgmii_phy1.
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: arm: rockchip: Add Orange Pi 5 board
      commit: ce9d927720d642e20296988b6c1c0f877209be8d
[2/3] arm64: dts: rockchip: Add sfc node to rk3588s
      commit: 3eaf2abd11aa7f3b2fb04d60c64b2c756fe030eb
[3/3] arm64: dts: rockchip: Add Orange Pi 5
      commit: f20a420e21644a0f79e0f8108a50b9836306cf23

I've dropped the vendor mem-supply stuff and resorted some properties
and nodes.


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

