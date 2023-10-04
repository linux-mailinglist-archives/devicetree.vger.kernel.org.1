Return-Path: <devicetree+bounces-5945-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A0E0C7B9676
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 23:33:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 67AE1281BD0
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 21:33:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCAA22377D;
	Wed,  4 Oct 2023 21:33:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A51FD241E0
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 21:32:56 +0000 (UTC)
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C015890;
	Wed,  4 Oct 2023 14:32:53 -0700 (PDT)
Received: from i53875a3c.versanet.de ([83.135.90.60] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qo9UB-0005RF-FU; Wed, 04 Oct 2023 23:32:51 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Alex Bee <knaerzche@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 0/4] Enable SMP bring-up and cpu frequency-scaling for RK3128
Date: Wed,  4 Oct 2023 23:32:43 +0200
Message-Id: <169645508393.141514.11315793390523179139.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230829214004.314932-2-knaerzche@gmail.com>
References: <20230829214004.314932-2-knaerzche@gmail.com>
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

On Tue, 29 Aug 2023 23:40:01 +0200, Alex Bee wrote:
> This series aims to enable bring-up of the non-boot cpu-cores by the
> Rockchip platsmp driver and enables cpu frequency-scaling by defining
> appropriate operating points.
> Please see commit messages of the individual patches for details.
> 
> These patches have been part of the pretty huge RK3128 bring-up/fix-up
> series [0] which I've splitted-up now, as suggested.
> 
> [...]

Applied, thanks!

[1/4] ARM: dts: rockchip: Add SRAM node for RK3128
      commit: 9107283badc7d058e34ef3b60a52afe6a5e0acfb
[2/4] ARM: dts: rockchip: Add CPU resets for RK3128
      commit: 02941bc2a1bc8ea82617ba1fd4d2c0643399a9ea
[3/4] ARM: dts: rockchip: Enable SMP bring-up for RK3128
      commit: da8b973957ca03f05f78384f2bf6d79a3fce9fb0
[4/4] ARM: dts: rockchip: Switch to operating-points-v2 for RK3128's CPU
      commit: c96b13d7c0e494e1072648301e61e13a2a85a362

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

