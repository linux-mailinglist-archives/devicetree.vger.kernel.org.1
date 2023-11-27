Return-Path: <devicetree+bounces-19431-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CE2F87FAE44
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 00:26:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F3ABA281CBF
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 23:26:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDE9D495F6;
	Mon, 27 Nov 2023 23:26:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F15801B8
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 15:26:12 -0800 (PST)
Received: from i53875bf8.versanet.de ([83.135.91.248] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r7kzO-0007MW-Dp; Tue, 28 Nov 2023 00:26:06 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Jagan Teki <jagan@edgeble.ai>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Update edgeble-neu6 bindings
Date: Tue, 28 Nov 2023 00:26:03 +0100
Message-Id: <170112754115.2134471.134877295882135358.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231125142914.57459-1-jagan@edgeble.ai>
References: <20231125142914.57459-1-jagan@edgeble.ai>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Sat, 25 Nov 2023 19:59:13 +0530, Jagan Teki wrote:
> Current binding has following compatible combination for SoM, IO board
> - NCM6A: edgeble,neural-compute-module-6a,
> 	 edgeble,neural-compute-module-6a-io
> - NCM6B: edgeble,neural-compute-module-6b,
> 	 edgeble,neural-compute-module-6b-io
> 
> This board topology now changes in final revisions, so a common
> compatible IO board, NCM6A-IO, is made available for both variants
> of SoM: NCM6A and NCM6B, produced by Edgeble AI.
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: arm: rockchip: Update edgeble-neu6 bindings
      commit: 02dbe73da5c4f6a8dc7c381b21c181006a06fb90
[2/2] arm64: dts: rockchip: Use NCM6A-IO board for edgeble-neu6b
      commit: ec31f0f98433f0edf456e2074301b76bdace5f3d

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

