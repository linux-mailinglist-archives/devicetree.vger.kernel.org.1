Return-Path: <devicetree+bounces-5949-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3089D7B9678
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 23:33:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 110A2B209C3
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 21:33:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E032C241F1;
	Wed,  4 Oct 2023 21:33:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6236241E4
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 21:32:56 +0000 (UTC)
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6049EBF
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 14:32:54 -0700 (PDT)
Received: from i53875a3c.versanet.de ([83.135.90.60] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qo9UC-0005RF-Fq; Wed, 04 Oct 2023 23:32:52 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Chris Morgan <macroalpha82@gmail.com>,
	devicetree@vger.kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	krzysztof.kozlowski+dt@linaro.org,
	Chris Morgan <macromorgan@hotmail.com>,
	linux-rockchip@lists.infradead.org,
	jagan@edgeble.ai,
	conor+dt@kernel.org,
	robh+dt@kernel.org
Subject: Re: [PATCH V2 0/3] Add Additional Functionality to Indiedroid Nova
Date: Wed,  4 Oct 2023 23:32:45 +0200
Message-Id: <169645508388.141514.14578991143413617261.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230918173255.1325-1-macroalpha82@gmail.com>
References: <20230918173255.1325-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_PASS,
	T_SPF_HELO_TEMPERROR autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, 18 Sep 2023 12:32:52 -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Update the Indiedroid Nova device tree to benefit from hardware that
> has recently been enabled in the mainline kernel. This includes
> enabling the PCI Express bus to activate the RTL8111 ethernet
> controller, the USB-A 2.0 ports (USB 3.0 still pending), and the ADC
> controller with the boot and recovery buttons.
> 
> [...]

Applied, thanks!

[1/3] arm64: dts: rockchip: add PCIe to rk3588s-indiedroid-nova
      commit: f5fb02c7125e3564aa773f54add37655d09e64f1
[2/3] arm64: dts: rockchip: add USB2 to rk3588s-indiedroid
      commit: aee432b50f6e15886bddcb6f92028265db4b254e
[3/3] arm64: dts: rockchip: Add saradc node to Indiedroid Nova
      commit: f48a288a4a65bc8c3830b4295afb98101f234412

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

