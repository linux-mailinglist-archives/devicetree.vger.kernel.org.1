Return-Path: <devicetree+bounces-24532-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EE5C80F7A3
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 21:16:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 538D01F21772
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 20:16:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CD5263BF1;
	Tue, 12 Dec 2023 20:16:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B116998
	for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 12:16:23 -0800 (PST)
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rD9Az-0006LK-C5; Tue, 12 Dec 2023 21:16:21 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Dragan Simic <dsimic@manjaro.org>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	krzysztof.kozlowski+dt@linaro.org,
	devicetree@vger.kernel.org,
	robh+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	conor+dt@kernel.org
Subject: Re: [PATCH 0/2] arm64: dts: rockchip: Add ethernet0 aliases to the dts files for RK3566 and RK3588(S) boards
Date: Tue, 12 Dec 2023 21:16:16 +0100
Message-Id: <170241214697.534713.13455667285782606746.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1702368023.git.dsimic@manjaro.org>
References: <cover.1702368023.git.dsimic@manjaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Tue, 12 Dec 2023 09:01:38 +0100, Dragan Simic wrote:
> To complete the process started with the migration of the ethernet0 aliases
> from the SoC dtsi files to the board/device dts(i) files, started in [1],
> let's add ethernet0 aliases to the board dts files that had it missing.
> See also [2] for a related discussion.
> 
> At the same time, let's remove the ethernet0 alias from one SoM dtsi file,
> which doesn't enable the GMAC, and add the same alias back to the dependent
> board dts files, which actually enable the GMAC.
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: rockchip: Add ethernet0 alias to the dts for RK3566 boards
      commit: 8a5f97b061432f72002b8aa158e372f1b10a079e
[2/2] arm64: dts: rockchip: Add ethernet0 alias to the dts for RK3588(S) boards
      commit: a40d30460dda56c6ad308cb338e240bc4a625faa

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

