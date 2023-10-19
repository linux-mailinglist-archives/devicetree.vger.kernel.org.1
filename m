Return-Path: <devicetree+bounces-9968-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8429D7CF354
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 10:54:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3FBD9281F73
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 08:54:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D4AD15AF5;
	Thu, 19 Oct 2023 08:54:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B036616401
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 08:54:37 +0000 (UTC)
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 475CFC0;
	Thu, 19 Oct 2023 01:54:33 -0700 (PDT)
Received: from i5e861907.versanet.de ([94.134.25.7] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qtOnS-0001vg-AY; Thu, 19 Oct 2023 10:54:26 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Sascha Hauer <s.hauer@pengutronix.de>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	Mark Rutland <mark.rutland@arm.com>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Robin Murphy <robin.murphy@arm.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-pm@vger.kernel.org,
	kernel@pengutronix.de,
	Kyungmin Park <kyungmin.park@samsung.com>,
	Will Deacon <will@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Vincent Legoll <vincent.legoll@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Chanwoo Choi <chanwoo@kernel.org>
Subject: Re: (subset) [PATCH v8 00/26] Add perf support to the rockchip-dfi driver
Date: Thu, 19 Oct 2023 10:54:22 +0200
Message-Id: <169770556942.1297560.17058655935098736515.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231018061714.3553817-1-s.hauer@pengutronix.de>
References: <20231018061714.3553817-1-s.hauer@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Wed, 18 Oct 2023 08:16:48 +0200, Sascha Hauer wrote:
> This series integrates the recent review feedback from Chanwoo Choi to
> v7.
> 
> Chanwoo, I am sending the full patchset again for people to try this
> series. You said that you applied 1-5 already, so please start picking
> from 6/26.
> 
> [...]

Applied, thanks!

[23/26] dt-bindings: soc: rockchip: grf: add rockchip,rk3588-pmugrf
        commit: 3bd1c0c62bad8ea7f9cc6662e754f77ec8baa46e

I've grabbed the pmugrf compatible addition for now, so I can send
out the pull request for my "drivers" branch.


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

