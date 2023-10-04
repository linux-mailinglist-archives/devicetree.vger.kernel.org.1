Return-Path: <devicetree+bounces-5946-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B99657B9677
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 23:33:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id CCB5F281CED
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 21:33:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D285241F7;
	Wed,  4 Oct 2023 21:33:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F3AA241F2
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 21:32:58 +0000 (UTC)
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA75E9E;
	Wed,  4 Oct 2023 14:32:55 -0700 (PDT)
Received: from i53875a3c.versanet.de ([83.135.90.60] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qo9UD-0005RF-Gf; Wed, 04 Oct 2023 23:32:53 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Conor Dooley <conor+dt@kernel.org>,
	kernel@collabora.com,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 0/3] RK3588 Rock 5B PCIe support
Date: Wed,  4 Oct 2023 23:32:47 +0200
Message-Id: <169645508389.141514.2717578509168602867.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230918141451.131247-1-sebastian.reichel@collabora.com>
References: <20230918141451.131247-1-sebastian.reichel@collabora.com>
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

On Mon, 18 Sep 2023 16:14:48 +0200, Sebastian Reichel wrote:
> This enables PCIe network card and PCIe for both M.2 ports the Rock 5B has.
> 
> -- Sebastian
> 
> Sebastian Reichel (3):
>   arm64: dts: rockchip: rock-5b: add PCIe network controller
>   arm64: dts: rockchip: rock-5b: add PCIe for M.2 M-key
>   arm64: dts: rockchip: rock-5b: add PCIe for M.2 E-Key
> 
> [...]

Applied, thanks!

[1/3] arm64: dts: rockchip: rock-5b: add PCIe network controller
      commit: 42145b7a823530f57983fb6e6897f40c0be278d5
[2/3] arm64: dts: rockchip: rock-5b: add PCIe for M.2 M-key
      commit: 199cbd5f195adbc0e70ad218cdba82f45750f11b
[3/3] arm64: dts: rockchip: rock-5b: add PCIe for M.2 E-Key
      commit: da447ec387800bdf2df1fb1d8c1522991d025952

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

