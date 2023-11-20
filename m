Return-Path: <devicetree+bounces-17173-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E42B57F1759
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 16:32:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7F26E1F24F31
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 15:32:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23A911D55A;
	Mon, 20 Nov 2023 15:32:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC50EA7
	for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 07:32:08 -0800 (PST)
Received: from [194.95.143.137] (helo=phil.sntech)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r56Fo-0008VB-0z; Mon, 20 Nov 2023 16:32:04 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Chris Morgan <macroalpha82@gmail.com>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	daniel@ffwll.ch,
	Chris Morgan <macromorgan@hotmail.com>,
	devicetree@vger.kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	dri-devel@lists.freedesktop.org,
	conor+dt@kernel.org,
	neil.armstrong@linaro.org,
	sebastian.reichel@collabora.com,
	sam@ravnborg.org,
	airlied@gmail.com,
	robh+dt@kernel.org
Subject: Re: (subset) [PATCH V4 0/6] rockchip: Add Powkiddy RK2023
Date: Mon, 20 Nov 2023 16:31:53 +0100
Message-Id: <170049419903.1671702.16288351074631545361.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231117202536.1387815-1-macroalpha82@gmail.com>
References: <20231117202536.1387815-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Fri, 17 Nov 2023 14:25:30 -0600, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add support for the Powkiddy RK2023, which is extremely similar to
> existing Powkiddy RGB30 device.
> 
> Changes since V3:
>  - Corrected commit subject lines.
> 
> [...]

Applied, thanks!

[4/6] dt-bindings: arm: rockchip: Add Powkiddy RK2023
      commit: 213615d742f0c039ab73f8946ae18000cf2c7b65
[5/6] arm64: dts: rockchip: Update powkiddy,rgb30 include to rk2023 DTSI
      commit: 46d84ceb7eec85b60e8a5eb0dfb2fae6a1bf4166
[6/6] arm64: dts: rockchip: Add Powkiddy RK2023
      commit: e926380ea2a2b10d01069917e6d678ca818f6ad8

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

