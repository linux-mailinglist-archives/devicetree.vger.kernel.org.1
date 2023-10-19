Return-Path: <devicetree+bounces-10128-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 555A67CFC06
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 16:06:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0FBE92811A3
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 14:06:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4A1529CFB;
	Thu, 19 Oct 2023 14:05:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4570F27477
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 14:05:53 +0000 (UTC)
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C4151130;
	Thu, 19 Oct 2023 07:05:49 -0700 (PDT)
Received: from i5e861907.versanet.de ([94.134.25.7] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qtTef-0004bU-GJ; Thu, 19 Oct 2023 16:05:41 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Sascha Hauer <s.hauer@pengutronix.de>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Mark Rutland <mark.rutland@arm.com>,
	linux-pm@vger.kernel.org,
	kernel@pengutronix.de,
	Vincent Legoll <vincent.legoll@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Chanwoo Choi <chanwoo@kernel.org>,
	devicetree@vger.kernel.org,
	Robin Murphy <robin.murphy@arm.com>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Will Deacon <will@kernel.org>,
	MyungJoo Ham <myungjoo.ham@samsung.com>
Subject: Re: (subset) [PATCH v8 00/26] Add perf support to the rockchip-dfi driver
Date: Thu, 19 Oct 2023 16:05:39 +0200
Message-Id: <169772432936.1425163.10520107144640249546.b4-ty@sntech.de>
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

[24/26] arm64: dts: rockchip: rk3399: Enable DFI
        commit: f57ef11ec63c17201b27569fbfb58801c227137d
[25/26] arm64: dts: rockchip: rk356x: Add DFI
        commit: 085be8875ca8a087e3cc102893f384894962c87e
[26/26] arm64: dts: rockchip: rk3588s: Add DFI
        commit: 5a6976b1040a2f99ab84eddbfa7cd072ac5d10fc

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

