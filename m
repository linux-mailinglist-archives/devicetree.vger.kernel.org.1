Return-Path: <devicetree+bounces-24533-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B1FC80F7A4
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 21:16:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 071A1281B3D
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 20:16:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D25563BF3;
	Tue, 12 Dec 2023 20:16:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5BA9BD2
	for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 12:16:24 -0800 (PST)
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rD9B0-0006LK-C1; Tue, 12 Dec 2023 21:16:22 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Chris Morgan <macroalpha82@gmail.com>,
	devicetree@vger.kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	krzysztof.kozlowski+dt@linaro.org,
	maccraft123mc@gmail.com,
	sebastian.reichel@collabora.com,
	Chris Morgan <macromorgan@hotmail.com>,
	robh+dt@kernel.org,
	conor+dt@kernel.org
Subject: Re: [PATCH 0/3] Add Support for Anbernic RG351V
Date: Tue, 12 Dec 2023 21:16:19 +0100
Message-Id: <170241214699.534713.2376141445523333040.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231120230131.57705-1-macroalpha82@gmail.com>
References: <20231120230131.57705-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Mon, 20 Nov 2023 17:01:28 -0600, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add support for the Anbernic RG351V handheld gaming console.
> 
> Chris Morgan (3):
>   dt-bindings: arm: rockchip: Add Anbernic RG351V
>   arm64: dts: rockchip: Split RG351M from Odroid Go Advance
>   arm64: dts: rockchip: Add Anbernic RG351V
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: arm: rockchip: Add Anbernic RG351V
      commit: cc9f1f36f114e5aa67b0cefa8807c83afd5da323
[2/3] arm64: dts: rockchip: Split RG351M from Odroid Go Advance
      commit: 488a3a537fe7f638a7e4e6c738f52b9266cbb0e9
[3/3] arm64: dts: rockchip: Add Anbernic RG351V
      commit: dc6886afad610788d611782d3e87eebda66f7134

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

