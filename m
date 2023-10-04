Return-Path: <devicetree+bounces-5948-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 006157B967A
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 23:33:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 96128281E69
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 21:33:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB0EB241F2;
	Wed,  4 Oct 2023 21:33:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F3EF241F3
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 21:32:58 +0000 (UTC)
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A23DC6;
	Wed,  4 Oct 2023 14:32:56 -0700 (PDT)
Received: from i53875a3c.versanet.de ([83.135.90.60] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qo9UA-0005RF-Aq; Wed, 04 Oct 2023 23:32:50 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Conor Dooley <conor+dt@kernel.org>,
	linux-rockchip@lists.infradead.org,
	John Clark <inindev@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Thomas McKahan <tmckahan@singleboardsolutions.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Add NanoPC T6 PCIe e-key support
Date: Wed,  4 Oct 2023 23:32:41 +0200
Message-Id: <169645508392.141514.12518327886843465241.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230906012305.7113-1-inindev@gmail.com>
References: <20230906012305.7113-1-inindev@gmail.com>
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

On Wed, 6 Sep 2023 01:23:05 +0000, John Clark wrote:
> before
> ~~~~
> 0000:00:00.0 PCI bridge: Rockchip Electronics Co., Ltd RK3588 (rev 01)
> 0002:20:00.0 PCI bridge: Rockchip Electronics Co., Ltd RK3588 (rev 01)
> 0002:21:00.0 Ethernet controller: Realtek Semiconductor Co., Ltd. RTL8125 2.5GbE Controller (rev 05)
> 0004:40:00.0 PCI bridge: Rockchip Electronics Co., Ltd RK3588 (rev 01)
> 0004:41:00.0 Ethernet controller: Realtek Semiconductor Co., Ltd. RTL8125 2.5GbE Controller (rev 05)
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Add NanoPC T6 PCIe e-key support
      commit: ac76b786cc370b000c76f3115a5d2ee76ff05c08

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

