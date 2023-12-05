Return-Path: <devicetree+bounces-21552-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 38E79804312
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 01:06:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A85112813D0
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 00:06:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A977389;
	Tue,  5 Dec 2023 00:06:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D72D5FA;
	Mon,  4 Dec 2023 16:06:09 -0800 (PST)
Received: from i53875b61.versanet.de ([83.135.91.97] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rAIwt-0001qb-Qe; Tue, 05 Dec 2023 01:06:03 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: rk3399-gru: Fix PCI node addresses
Date: Tue,  5 Dec 2023 01:06:00 +0100
Message-Id: <170173468936.501889.14178301756278206830.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231130191830.2424361-1-robh@kernel.org>
References: <20231130191830.2424361-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Thu, 30 Nov 2023 13:18:29 -0600, Rob Herring wrote:
> The rk3399-gru PCI node addresses are wrong.
> 
> In rk3399-gru-scarlet, the bus number in the address should be 0. This is
> because bus number assignment is dynamic and not known up front. For FDT,
> the bus number is simply ignored.
> 
> In rk3399-gru-chromebook, the addresses are simply invalid. The first
> "reg" entry must be the configuration space for the device. The entry
> should be all 0s except for device/slot and function numbers. The existing
> 64-bit memory space (0x83000000) entries are not valid because they must
> have the BAR address in the lower byte of the first cell.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: rk3399-gru: Fix PCI node addresses
      commit: c13c823a78b77ea0e5f1f73112d910e259911101

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

