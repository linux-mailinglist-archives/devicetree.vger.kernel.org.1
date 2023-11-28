Return-Path: <devicetree+bounces-19615-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9006F7FB70F
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 11:23:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C15241C2124C
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 10:23:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61A044E1D5;
	Tue, 28 Nov 2023 10:23:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 55AD512C;
	Tue, 28 Nov 2023 02:23:35 -0800 (PST)
Received: from i53875bf8.versanet.de ([83.135.91.248] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r7vFd-00030f-06; Tue, 28 Nov 2023 11:23:33 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-kernel@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Trevor Woerner <twoerner@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: rockchip: dts: rk3308-rock-pi-s add gpio-line-names
Date: Tue, 28 Nov 2023 11:23:31 +0100
Message-Id: <170116700275.2183789.12263120893522806404.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231120162232.27653-1-twoerner@gmail.com>
References: <20231120162232.27653-1-twoerner@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Mon, 20 Nov 2023 11:22:32 -0500, Trevor Woerner wrote:
> Add names to the pins of the general-purpose expansion header as given in the
> Radxa GPIO page[1] following the conventions in the kernel documentation[2] to
> make it easier for users to correlate the pins with functions when using
> utilities such as gpioinfo.
> 
> [1] https://wiki.radxa.com/RockpiS/hardware/gpio
> [2] Documentation/devicetree/bindings/gpio/gpio.txt
> 
> [...]

Applied, thanks!

[1/1] arm64: rockchip: dts: rk3308-rock-pi-s add gpio-line-names
      commit: 6204c84c196889c54ce5c4d44d69472c93e56c39

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

