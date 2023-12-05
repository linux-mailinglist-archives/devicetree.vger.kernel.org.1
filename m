Return-Path: <devicetree+bounces-21551-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A877804311
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 01:06:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C3770281362
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 00:06:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E50437E;
	Tue,  5 Dec 2023 00:06:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B5826F0;
	Mon,  4 Dec 2023 16:06:09 -0800 (PST)
Received: from i53875b61.versanet.de ([83.135.91.97] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rAIwt-0001qb-Dh; Tue, 05 Dec 2023 01:06:03 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Alex Bee <knaerzche@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v3 0/3] Add power-controller and gpu for RK3128
Date: Tue,  5 Dec 2023 01:05:59 +0100
Message-Id: <170173468933.501889.16032345540267173122.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231204153547.97877-1-knaerzche@gmail.com>
References: <20231204153547.97877-1-knaerzche@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Mon, 4 Dec 2023 16:35:44 +0100, Alex Bee wrote:
> This series adds the power-controller and the gpu to RK3128's SoC
> devicetree - both are already supported by the respective drivers.
> Patch 3 enables the gpu for XPI-3128 board.
> 
> changes in v3:
>  - dropped patches for not-yet needed power domains
>  - dropped dt-bindings patches which was already merged
> 
> [...]

Applied, thanks!

[1/3] ARM: dts: rockchip: Add power-controller for RK3128
      commit: 5e806176a3a57a530d0220242141b30056a70918
[2/3] ARM: dts: rockchip: Add GPU node for RK3128
      commit: 2cc98b5080f693d718cc17c136180732cc32f73b
[3/3] ARM: dts: rockchip: Enable GPU for XPI-3128
      commit: d892a562110ebe7935c60548a1a3924fb36eca5c

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

