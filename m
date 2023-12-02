Return-Path: <devicetree+bounces-20983-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C3B9801DCB
	for <lists+devicetree@lfdr.de>; Sat,  2 Dec 2023 17:36:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 271C71F21192
	for <lists+devicetree@lfdr.de>; Sat,  2 Dec 2023 16:36:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C54416436;
	Sat,  2 Dec 2023 16:36:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE3B6102;
	Sat,  2 Dec 2023 08:36:41 -0800 (PST)
Received: from i53875b61.versanet.de ([83.135.91.97] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r9Syn-0002Wz-R7; Sat, 02 Dec 2023 17:36:33 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>,
	Sam Edwards <cfsworks@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	Sven Rademakers <sven.rademakers@gmail.com>,
	Sam Edwards <CFSworks@gmail.com>,
	linux-arm-kernel@lists.infradead.org,
	=?UTF-8?q?Daniel=20Kukie=C5=82a?= <daniel@kukiela.pl>,
	Lokesh Poovaragan <loki@gimmeapis.com>,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Fix Turing RK1 interrupt pinctrls
Date: Sat,  2 Dec 2023 17:36:31 +0100
Message-Id: <170153497984.380580.16625087945958405832.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231202071212.1606800-1-CFSworks@gmail.com>
References: <20231202071212.1606800-1-CFSworks@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Fri, 1 Dec 2023 23:12:12 -0800, Sam Edwards wrote:
> The pinctrls for the hym8563 interrupt line and fan-tach input
> were both mistakenly defined as `pcfg_pull_none`. As these are
> active-low signals (level-triggered, in the hym8563 case) which
> may not be driven at times, these should really be pull-up. The
> lack of any bias results in spurious interrupts.
> 
> Fix this by modifying the `rockchip,pins` properties as necessary
> to enable the pull-up resistors.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Fix Turing RK1 interrupt pinctrls
      commit: 9f6acd2b4dfef81dcc45486ac704cf602c88db02

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

