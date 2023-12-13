Return-Path: <devicetree+bounces-24810-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CEBCD8114A1
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 15:30:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6B9AA1F2125A
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 14:30:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9247C9468;
	Wed, 13 Dec 2023 14:30:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C129010A;
	Wed, 13 Dec 2023 06:30:35 -0800 (PST)
Received: from i53875b61.versanet.de ([83.135.91.97] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rDQFd-00008V-35; Wed, 13 Dec 2023 15:30:17 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	krzysztof.kozlowski+dt@linaro.org,
	chris.obbard@collabora.com,
	devicetree@vger.kernel.org,
	Andy Yan <andy.yan@rock-chips.com>,
	dri-devel@lists.freedesktop.org,
	hjc@rock-chips.com,
	kever.yang@rock-chips.com,
	sebastian.reichel@collabora.com,
	linux-rockchip@lists.infradead.org,
	robh+dt@kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH v5 00/16] Add VOP2 support on rk3588
Date: Wed, 13 Dec 2023 15:30:15 +0100
Message-Id: <170247779733.724099.13674557093099995192.b4-ty@sntech.de>
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

[01/16] drm/rockchip: move output interface related definition to rockchip_drm_drv.h
        commit: 8c8546546f256f834e9c7cab48e5946df340d1a8
[02/16] Revert "drm/rockchip: vop2: Use regcache_sync() to fix suspend/resume"
        commit: 81a06f1d02e588cfa14c5e5953d9dc50b1d404be
[03/16] drm/rockchip: vop2: set half_block_en bit in all mode
        commit: bebad6bd4fbdc448ad3b337ad281b813e68f6f53
[04/16] drm/rockchip: vop2: clear afbc en and transform bit for cluster window at linear mode
        commit: 20529a68307feed00dd3d431d3fff0572616b0f2
[05/16] drm/rockchip: vop2: Add write mask for VP config done
        commit: d1f8face0fc1298c88ef4a0479c3027b46ca2c77
[06/16] drm/rockchip: vop2: Set YUV/RGB overlay mode
        commit: dd49ee4614cfb0b1f627c4353b60cecfe998a374
[07/16] drm/rockchip: vop2: set bg dly and prescan dly at vop2_post_config
        commit: 075a5b3969becb1ebc2f1d4fa1a1fe9163679273
[08/16] drm/rockchip: vop2: rename grf to sys_grf
        commit: c408af1afc4b74ea6df69e0313be97f1f83e981a

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

