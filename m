Return-Path: <devicetree+bounces-7901-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 818DF7C6062
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 00:37:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B17DC1C20D3A
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 22:37:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF06139C;
	Wed, 11 Oct 2023 22:37:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E06438F
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 22:37:05 +0000 (UTC)
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF6D6A4;
	Wed, 11 Oct 2023 15:37:03 -0700 (PDT)
Received: from i53875b94.versanet.de ([83.135.91.148] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qqhou-0005Ma-RZ; Thu, 12 Oct 2023 00:36:48 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: =?UTF-8?q?Ond=C5=99ej=20Jirman?= <megi@xff.cz>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	linux-arm-kernel@lists.infradead.org,
	Kever Yang <kever.yang@rock-chips.com>,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 0/2] Add support for Pine64 QuartzPro64
Date: Thu, 12 Oct 2023 00:36:45 +0200
Message-Id: <169706370544.498990.15767954270891425478.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231011215856.2082241-1-megi@xff.cz>
References: <20231011215856.2082241-1-megi@xff.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_PASS,T_SPF_HELO_TEMPERROR autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Wed, 11 Oct 2023 23:58:43 +0200, Ondřej Jirman wrote:
> From: Ondrej Jirman <megi@xff.cz>
> 
> This series adds an initial support for Pine64 QuartzPro64 SBC.
> 
> The series was tested against Linux 6.6-rc4.
> 
> Please take a look.
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: arm: rockchip: Add Pine64 QuarzPro64
      commit: a6fa0d4a704d7af51a5d02f76c73046cf957c1b5
[2/2] arm64: dts: rk3588-quartzpro64: Add QuartzPro64 SBC device tree
      commit: 8152d3d070a9ca4f48020d11925718f1707db4f1

Thanks a lot for following along my changes.

While I did plan on doing the same for the original QuartzPro64
series, I hadn't found the time yet and this makes everything
so much easier :-) .


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

