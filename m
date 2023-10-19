Return-Path: <devicetree+bounces-10207-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6301D7D0162
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 20:26:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 561DEB21270
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 18:26:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF83E38DE5;
	Thu, 19 Oct 2023 18:26:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48C7D225B5
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 18:26:18 +0000 (UTC)
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0DF6AB;
	Thu, 19 Oct 2023 11:26:14 -0700 (PDT)
Received: from i5e861907.versanet.de ([94.134.25.7] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qtXim-0006n2-UV; Thu, 19 Oct 2023 20:26:13 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>,
	Sam Edwards <cfsworks@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sam Edwards <CFSworks@gmail.com>,
	Lokesh Poovaragan <loki@gimmeapis.com>,
	linux-rockchip@lists.infradead.org,
	=?UTF-8?q?Daniel=20Kukie=C5=82a?= <daniel@kukiela.pl>,
	Sven Rademakers <sven.rademakers@gmail.com>
Subject: Re: [PATCH v2 0/3] Add initial devicetree for Turing RK1
Date: Thu, 19 Oct 2023 20:26:11 +0200
Message-Id: <169773987935.1461852.15123065300008221603.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231011225823.2542262-1-CFSworks@gmail.com>
References: <20231011225823.2542262-1-CFSworks@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Wed, 11 Oct 2023 16:58:20 -0600, Sam Edwards wrote:
> This is the second version of my patch to bring in support for the RK3588-based
> Turing RK1 SoM. In my previous cover letter, I perhaps should have specified
> that the RK1 is a little bit unusual in that, though it *is* a true SoM, it is
> targeted toward home-hosting/edge users directly as a compute node, and as a
> result the vast majority of users will be seeing it more like a
> micro-bladeserver, rather than an off-the-shelf part meant to power a larger
> system. This was my rationale for previously sending this as a single .dts,
> targeting that use case.
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: vendor-prefixes: add turing
      commit: 817bacc3a648cc55a0b07a699c03ecc70309ae50
[2/3] dt-bindings: arm: rockchip: Add Turing RK1
      commit: e30ecfcbe4ed3706af67dff5aa1418fba6ba2c29
[3/3] arm64: dts: rockchip: Add Turing RK1 SoM support
      commit: 2806a69f3fef61d7353ea8206add8ffb15064b51

I've dropped the mem-supply references from the cpu nodes.
I think some at Collabora is working on upstreaming the
cpufreq driver that will utilize those.

Until then they are not part of the binding, so please add
them via a new patch once the cpufreq support has landed.


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

