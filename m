Return-Path: <devicetree+bounces-17176-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 243987F175D
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 16:32:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D02981F24F86
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 15:32:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4621A1DA30;
	Mon, 20 Nov 2023 15:32:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2E02ABE;
	Mon, 20 Nov 2023 07:32:06 -0800 (PST)
Received: from [194.95.143.137] (helo=phil.sntech)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r56Fn-0008VB-DT; Mon, 20 Nov 2023 16:32:03 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Alex Bee <knaerzche@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 0/3] Add Geniatech XPI-3128 board
Date: Mon, 20 Nov 2023 16:31:51 +0100
Message-Id: <170049419904.1671702.13668485809532460940.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231119130351.112261-2-knaerzche@gmail.com>
References: <20231119130351.112261-2-knaerzche@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Sun, 19 Nov 2023 14:03:49 +0100, Alex Bee wrote:
> This series adds RK3128 based Geniatech XPI-3128 SBC board.
> 
> Please see commit messages of the individual patches for details.
> 
> These patches have been part of the pretty huge RK3128 bring-up/fix-up
> series [0] which I've splitted-up now, as suggested.
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: arm: rockchip: Add Geniatech XPI-3128
      commit: e5fc1f038355634087f6a178454341dcfd50b89b
[2/3] ARM: dts: rockchip: Add sdmmc_det pinctrl for RK3128
      commit: cdc86eeebbd26c60bcee1c81598ecf684852a733
[3/3] ARM: dts: Add Geniatech XPI-3128 RK3128 board
      commit: 6135ac43309f5ef91ad60c688931027226779fed

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

