Return-Path: <devicetree+bounces-10547-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DC667D1E05
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 17:55:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4E85F1C20946
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 15:55:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8AAD1A292;
	Sat, 21 Oct 2023 15:54:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IMw0w5lg"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9ECB18B1C
	for <devicetree@vger.kernel.org>; Sat, 21 Oct 2023 15:54:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1D94FC433C8;
	Sat, 21 Oct 2023 15:54:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697903698;
	bh=RX/aqLDP1xRIhQbjEx9lk7WX42AI/4GHzOPjcXiwNd8=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=IMw0w5lgnQVLGFX1NMn08Lnthv/evMHQmiMO1+p7tAU3QC2QnJz0NqW7NAFdZ5P8S
	 7PtP8BD1zW8GS9iO+Y8ucjA49uUzIGnIGnwr3wE2B8Ve2xRZLWF2d2kYM8l81b6QZU
	 g77+gXxiSNncBnsZopqbMhAli8ARoIco1S/tOFX6L7BIq4j7nKZkAL41HGLzOsg2dN
	 wF8bOC2sbDTo2Erc1eHjwubSfFKm5DdeJnpq4GiCGD19xCQMh7t3mH6QsOPwMvjTTc
	 +QGKbPdyvSvJvCba/BV327ulnoqViqv8qUM1qH/RKmrTj3BOOq3Efyzp0bEwZZeVNs
	 zdt0DwWq53Ffg==
From: Bjorn Andersson <andersson@kernel.org>
To: agross@kernel.org,
	konrad.dybcio@linaro.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	rafael@kernel.org,
	viresh.kumar@linaro.org,
	ilia.lin@kernel.org,
	sivaprak@codeaurora.org,
	quic_kathirav@quicinc.com,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-pm@vger.kernel.org,
	Varadarajan Narayanan <quic_varada@quicinc.com>
Subject: Re: (subset) [PATCH v5 0/9] Enable cpufreq for IPQ5332 & IPQ9574
Date: Sat, 21 Oct 2023 08:58:33 -0700
Message-ID: <169790390713.1690547.10661636631598722761.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <cover.1697781921.git.quic_varada@quicinc.com>
References: <cover.1697781921.git.quic_varada@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Fri, 20 Oct 2023 11:49:30 +0530, Varadarajan Narayanan wrote:
> Depends On:
> https://lore.kernel.org/lkml/20230913-gpll_cleanup-v2-6-c8ceb1a37680@quicinc.com/T/
> 
> This patch series aims to enable cpufreq for IPQ5332 and IPQ9574.
> For IPQ5332, a minor enhancement to Stromer Plus ops and a safe
> source switch is needed before cpu freq can be enabled.
> 
> [...]

Applied, thanks!

[1/9] clk: qcom: config IPQ_APSS_6018 should depend on QCOM_SMEM
      commit: 6a15647d0adc686226045e8046369f34d6ab03ed
[2/9] clk: qcom: clk-alpha-pll: introduce stromer plus ops
      commit: 84da48921a97cee3dd1391659e93ee01d122b78b
[3/9] clk: qcom: apss-ipq-pll: Use stromer plus ops for stromer plus pll
      commit: 267e29198436a8cb6770213471f72502c895096a
[4/9] clk: qcom: apss-ipq-pll: Fix 'l' value for ipq5332_pll_config
      commit: 5b7a4d3d2b33398330aef69e0ff5656273483587
[5/9] clk: qcom: apss-ipq6018: ipq5332: add safe source switch for a53pll
      commit: 00331227f42045314b3775957f2f7809fb3ac32f

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

