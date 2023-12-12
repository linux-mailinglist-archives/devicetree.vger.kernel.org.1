Return-Path: <devicetree+bounces-24534-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id CDB1780F7A8
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 21:16:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5DD36B20EB3
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 20:16:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 777B863BF8;
	Tue, 12 Dec 2023 20:16:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5CF9DB
	for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 12:16:23 -0800 (PST)
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rD9Az-0006LK-Kb; Tue, 12 Dec 2023 21:16:21 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Dragan Simic <dsimic@manjaro.org>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	krzysztof.kozlowski+dt@linaro.org,
	devicetree@vger.kernel.org,
	robh+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	conor+dt@kernel.org
Subject: Re: [PATCH 0/4] Remove ethernetX aliases from the SoC dtsi for RK3399, RK3368, RK3328 and PX30
Date: Tue, 12 Dec 2023 21:16:17 +0100
Message-Id: <170241214697.534713.17361998299651815805.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1702366958.git.dsimic@manjaro.org>
References: <cover.1702366958.git.dsimic@manjaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Tue, 12 Dec 2023 08:53:47 +0100, Dragan Simic wrote:
> Unlike for the I2C buses, GPIO lines and UARTs, the Rockchip SoC TRMs and
> datasheets define no numbering for the built-in GMAC(s) or MAC(s), if there
> are more than one found in the particular Rockchip SoC.
> 
> Moreover, not all boards or devices based on these SoCs actually use the
> built-in GMAC(s) or MAC(s).  Thus, let's remove the ethernetX aliases from
> the SoC dtsi files and add them back to the appropriate board and device
> dts(i) files.  See also [1] for the initial discussion.
> 
> [...]

Applied, thanks!

[1/4] arm64: dts: rockchip: Remove ethernet0 alias from the SoC dtsi for RK3399
      commit: 8030063ca9b019f9dfb90a654f557d8bb15a97a5
[2/4] arm64: dts: rockchip: Remove ethernet0 alias from the SoC dtsi for RK3368
      commit: 7aab60df473c70f74880267500884b12151b160b
[3/4] arm64: dts: rockchip: Remove ethernetX aliases from the SoC dtsi for RK3328
      commit: 20a9a7667af6b11b7369073d0186d9c92e52db04
[4/4] arm64: dts: rockchip: Remove ethernet0 alias from the SoC dtsi for PX30
      commit: a69907a915e4c15bf7e632cd324ec5c3e38c3afc

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

