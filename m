Return-Path: <devicetree+bounces-19596-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EF6D7FB670
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 10:58:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1A7F228200C
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 09:58:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C66CC4BA9C;
	Tue, 28 Nov 2023 09:58:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E7D5EDD;
	Tue, 28 Nov 2023 01:58:36 -0800 (PST)
Received: from i53875bf8.versanet.de ([83.135.91.248] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r7urS-0002r7-9R; Tue, 28 Nov 2023 10:58:34 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Alex Bee <knaerzche@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] ARM: dts: rockchip: Fix sdmmc_pwren's pinmux setting for RK3128
Date: Tue, 28 Nov 2023 10:58:32 +0100
Message-Id: <170116550668.2181556.6293208825750972058.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231127184643.13314-2-knaerzche@gmail.com>
References: <20231127184643.13314-2-knaerzche@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Mon, 27 Nov 2023 19:46:44 +0100, Alex Bee wrote:
> RK3128's reference design uses sdmmc_pwren pincontrol as GPIO - see [0].
> 
> Let's change it in the SoC DT as well.
> 
> [0] https://github.com/rockchip-linux/kernel/commit/8c62deaf6025
> 
> 
> [...]

Applied, thanks!

[1/1] ARM: dts: rockchip: Fix sdmmc_pwren's pinmux setting for RK3128
      commit: 0c349b5001f8bdcead844484c15a0c4dfb341157

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

