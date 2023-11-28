Return-Path: <devicetree+bounces-19621-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 882FD7FB7FF
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 11:36:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C30551C212AC
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 10:36:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2440E156F6;
	Tue, 28 Nov 2023 10:36:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5DDD92D62;
	Tue, 28 Nov 2023 02:36:16 -0800 (PST)
Received: from i53875bf8.versanet.de ([83.135.91.248] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r7vRr-0003E0-50; Tue, 28 Nov 2023 11:36:11 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	kernel@collabora.com,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v1 1/2] arm64: dts: rockchip: add USB3 host to rock-5b
Date: Tue, 28 Nov 2023 11:36:09 +0100
Message-Id: <170116776016.2189213.11963461092677000892.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231106155934.80838-1-sebastian.reichel@collabora.com>
References: <20231106155934.80838-1-sebastian.reichel@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Mon, 6 Nov 2023 16:54:31 +0100, Sebastian Reichel wrote:
> Enable USB3 host controller for the Radxa ROCK 5 Model B. This adds
> USB3 for the upper USB3 port (the one further away from the PCB).
> 
> The lower USB3 and the USB-C ports use the RK3588 USB TypeC host
> controller, which use a different PHY without upstream support.
> 
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: rockchip: add USB3 host to rock-5b
      commit: 3585766438c4c24dcc6cc93e26e9eccccce50a13
[2/2] arm64: dts: rockchip: add USB3 host to rock-5a
      commit: bbda1bf9586f0f0745ab1097df6975a9354a03ff

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

