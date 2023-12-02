Return-Path: <devicetree+bounces-20982-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 81184801DCA
	for <lists+devicetree@lfdr.de>; Sat,  2 Dec 2023 17:36:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3A85228147B
	for <lists+devicetree@lfdr.de>; Sat,  2 Dec 2023 16:36:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 069E715495;
	Sat,  2 Dec 2023 16:36:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B68A129;
	Sat,  2 Dec 2023 08:36:36 -0800 (PST)
Received: from i53875b61.versanet.de ([83.135.91.97] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r9Syo-0002Wz-9J; Sat, 02 Dec 2023 17:36:34 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Alex Bee <knaerzche@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 0/2] Add GMAC for RK3128
Date: Sat,  2 Dec 2023 17:36:32 +0100
Message-Id: <170153497985.380580.2053954762522949902.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231202124158.65615-2-knaerzche@gmail.com>
References: <20231202124158.65615-2-knaerzche@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Sat, 2 Dec 2023 13:41:57 +0100, Alex Bee wrote:
> RK3128's GMAC is already supported by the Rockchip's glue for dwmac
> driver, so this series basically adds the respective nodes in the SoC DT
> and the enablements for XPI-3128 board.
> 
> Note: These patches are based on maintainers repo.
> 
> Changes in v2:
>  - use phy reset-timings according to the datasheet
>  - added rx-fifo-depth and rx-fifo-depth for gmac
> 
> [...]

Applied, thanks!

[1/2] ARM: dts: rockchip: Add gmac node for RK3128
      commit: 3d880c31d40d30328cb550523adadf1466e7c686
[2/2] ARM: dts: rockchip: Enable gmac for XPI-3128
      commit: b47c0b9ed3eb31c8efb8f8be3bca32d6ced5fd52

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

