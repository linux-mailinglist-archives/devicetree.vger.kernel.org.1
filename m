Return-Path: <devicetree+bounces-22159-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 23BE3806AED
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 10:42:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9BA5DB20CEE
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 09:42:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C82C1B27F;
	Wed,  6 Dec 2023 09:42:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 717F3B9
	for <devicetree@vger.kernel.org>; Wed,  6 Dec 2023 01:42:12 -0800 (PST)
Received: from i53875b61.versanet.de ([83.135.91.97] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rAoPw-000077-2k; Wed, 06 Dec 2023 10:42:08 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	quentin.schulz@theobroma-systems.com,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 0/2] Theobroma-Systems Jaguar single board computer
Date: Wed,  6 Dec 2023 10:42:05 +0100
Message-Id: <170185570322.596796.12623208720682445135.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231201191103.343097-1-heiko@sntech.de>
References: <20231201191103.343097-1-heiko@sntech.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Fri, 1 Dec 2023 20:11:01 +0100, Heiko Stuebner wrote:
> This adds the Jaguar SBC from Theobroma Systems.
> 
> 
> Heiko Stuebner (2):
>   dt-bindings: arm: rockchip: Add Theobroma-Systems Jaguar SBC
>   arm64: dts: rockchip: add Theobroma Jaguar SBC
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: arm: rockchip: Add Theobroma-Systems Jaguar SBC
      commit: 9aeb5f0321f8eb24c26b98b7dc416e21a765d499
[2/2] arm64: dts: rockchip: add Theobroma Jaguar SBC
      commit: e4e8169830b36e30ad5eec080762154e659f6eb4

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

