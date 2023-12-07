Return-Path: <devicetree+bounces-22900-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5232F8092D8
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 21:57:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CA707B20B3A
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 20:57:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 110554F60D;
	Thu,  7 Dec 2023 20:57:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D852E11D;
	Thu,  7 Dec 2023 12:57:37 -0800 (PST)
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rBLR5-000692-NB; Thu, 07 Dec 2023 21:57:31 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	robh+dt@kernel.org,
	jay.xu@rock-chips.com,
	krzysztof.kozlowski+dt@linaro.org,
	devicetree@vger.kernel.org,
	conor+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v1 1/2] ARM: dts: rockchip: add gpio alias for gpio dt nodes
Date: Thu,  7 Dec 2023 21:57:30 +0100
Message-Id: <170198261663.24767.3042454537755741300.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <89f2a229-9f14-d43f-c53d-5d4688e70456@gmail.com>
References: <89f2a229-9f14-d43f-c53d-5d4688e70456@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Sat, 2 Dec 2023 19:22:01 +0100, Johan Jonker wrote:
> Rockchip SoC TRM, SoC datasheet and board schematics always refer to
> the same gpio numbers - even if not all are used for a specific board.
> In order to not have to re-define them for every board add the
> aliases to SoC dtsi files.
> 
> 

Applied, thanks!

[1/2] ARM: dts: rockchip: add gpio alias for gpio dt nodes
      commit: 04c521c3bec1fa0ccb97a1fbf74f0faeda3f4a53
[2/2] arm64: dts: rockchip: add gpio alias for gpio dt nodes
      commit: cfb0264f3654e357bcdfe27c2f7240241c2ac6c5

Added the Co-developed-by for Jianqun before applying.

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

