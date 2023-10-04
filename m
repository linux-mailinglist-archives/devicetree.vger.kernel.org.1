Return-Path: <devicetree+bounces-5944-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 59A797B9675
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 23:33:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 7FF271C208C5
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 21:33:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9AB24241EB;
	Wed,  4 Oct 2023 21:32:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A24FE2377D
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 21:32:56 +0000 (UTC)
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B69C8C0;
	Wed,  4 Oct 2023 14:32:54 -0700 (PDT)
Received: from i53875a3c.versanet.de ([83.135.90.60] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qo9UB-0005RF-08; Wed, 04 Oct 2023 23:32:51 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Conor Dooley <conor+dt@kernel.org>,
	Jakob Unterwurzacher <jakob.unterwurzacher@theobroma-systems.com>,
	Rob Herring <robh+dt@kernel.org>,
	Jakob Unterwurzacher <jakobunt@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Ermin Sunj <ermin.sunj@theobroma-systems.com>,
	Quentin Schulz <quentin.schulz@theobroma-systems.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	stable@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 1/2] arm64: dts: rockchip: use codec as clock master on px30-ringneck-haikou
Date: Wed,  4 Oct 2023 23:32:42 +0200
Message-Id: <169645508392.141514.933069936235927740.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230907151725.198347-1-jakob.unterwurzacher@theobroma-systems.com>
References: <20230907151725.198347-1-jakob.unterwurzacher@theobroma-systems.com>
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

On Thu, 7 Sep 2023 17:17:15 +0200, Jakob Unterwurzacher wrote:
> From: Ermin Sunj <ermin.sunj@theobroma-systems.com>
> 
> If the codec is not the clock master, the MCLK needs to be
> synchronous to both I2S_SCL ans I2S_LRCLK. We do not have that
> on Haikou, causing distorted audio.
> 
> Before:
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: rockchip: use codec as clock master on px30-ringneck-haikou
      commit: 84fa1865edbb3800f3344e2a5bc73c187adf42d0
[2/2] arm64: dts: rockchip: set codec system-clock-fixed on px30-ringneck-haikou
      commit: 1e585cd0aad3d491938230318d6d479f09589fd8

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

