Return-Path: <devicetree+bounces-24819-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CF5C81152E
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 15:47:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A84CF1F214D8
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 14:47:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A8072E85D;
	Wed, 13 Dec 2023 14:46:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A2DB118F;
	Wed, 13 Dec 2023 06:46:51 -0800 (PST)
Received: from i53875b61.versanet.de ([83.135.91.97] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rDQVN-0000JI-AG; Wed, 13 Dec 2023 15:46:33 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	sebastian.reichel@collabora.com,
	krzysztof.kozlowski+dt@linaro.org,
	chris.obbard@collabora.com,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	kever.yang@rock-chips.com,
	linux-rockchip@lists.infradead.org,
	hjc@rock-chips.com,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: Re: (subset) [PATCH v5 00/16] Add VOP2 support on rk3588
Date: Wed, 13 Dec 2023 15:46:31 +0100
Message-Id: <170247871959.753029.11166929824242336708.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231211115547.1784587-1-andyshrk@163.com>
References: <20231211115547.1784587-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Mon, 11 Dec 2023 19:55:47 +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> This patch sets aims at enable the VOP2 support on rk3588.
> 
> Main feature of VOP2 on rk3588:
> Four video ports:
> VP0 Max 4096x2160
> VP1 Max 4096x2160
> VP2 Max 4096x2160
> VP3 Max 2048x1080
> 
> [...]

Applied, thanks!

[10/16] dt-bindings: display: vop2: Add rk3588 support
        commit: 4ccdc92c1fea732fac8f3438d6288719055fa141
[11/16] dt-bindings: rockchip,vop2: Add more endpoint definition
        commit: dc7226acacc6502291446f9e33cf96246ec49a30
[12/16] drm/rockchip: vop2: Add support for rk3588
        commit: 5a028e8f062fc862f051f8e62a0d5a1abac91955
[13/16] drm/rockchip: vop2: rename VOP_FEATURE_OUTPUT_10BIT to VOP2_VP_FEATURE_OUTPUT_10BIT
        commit: 9d7fe7704d534c2d043aff2987f10671a8b4373d
[16/16] MAINTAINERS: Add myself as a reviewer for rockchip drm
        commit: 6c3ab21f37a97a868193ccbeb8a492e51210ff31


I skipped the debugfs patch for now, as I need to look at that separately
and of course the dts patch as that needs to wait for iommu maintainers
to pick up the binding addition.


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

