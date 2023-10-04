Return-Path: <devicetree+bounces-5950-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BD4387B967B
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 23:33:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 43757B20855
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 21:33:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37826241E0;
	Wed,  4 Oct 2023 21:33:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8461A241E4
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 21:33:06 +0000 (UTC)
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F1E51D8;
	Wed,  4 Oct 2023 14:33:04 -0700 (PDT)
Received: from i53875a3c.versanet.de ([83.135.90.60] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qo9UE-0005RF-7v; Wed, 04 Oct 2023 23:32:54 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Conor Dooley <conor+dt@kernel.org>,
	=?UTF-8?q?Tam=C3=A1s=20Sz=C5=B1cs?= <tszucs@protonmail.ch>,
	Shreeya Patel <shreeya.patel@collabora.com>,
	linux-kernel@vger.kernel.org,
	FUKAUMI Naoki <naoki@radxa.com>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	linux-rockchip@lists.infradead.org,
	Rob Herring <robh+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Christopher Obbard <chris.obbard@collabora.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Jagan Teki <jagan@edgeble.ai>,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] arm64: dts: rockchip: Add sdio node to rock-5b
Date: Wed,  4 Oct 2023 23:32:48 +0200
Message-Id: <169645508390.141514.13803865232611146322.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230924203740.65744-1-tszucs@protonmail.ch>
References: <20230924203740.65744-1-tszucs@protonmail.ch>
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

On Sun, 24 Sep 2023 20:37:45 +0000, Tamás Szűcs wrote:
> Enable SDIO on Radxa ROCK 5 Model B M.2 Key E. Add sdio node and alias as mmc2.
> Add regulator for the 3.3 V rail bringing it up during boot. Make sure EKEY_EN
> is muxed as GPIO.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Add sdio node to rock-5b
      commit: 1c9a53ff7ece056eb995332f0d9523ca43fdcb5a

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

