Return-Path: <devicetree+bounces-10615-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E85D7D23AA
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 17:46:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4D05F1C209C0
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 15:46:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8198210949;
	Sun, 22 Oct 2023 15:46:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mYZVm9Uk"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62F65F517
	for <devicetree@vger.kernel.org>; Sun, 22 Oct 2023 15:46:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F22AEC433CC;
	Sun, 22 Oct 2023 15:46:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697989577;
	bh=HvRuPV3FqtsA6ZyEHaakvnvDdaaCIZbT6hNYmWIxek8=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=mYZVm9UkAsQIYgV+niOicDOLFgCPxlBBq4ORwrqDCH0gv+DtamxSAb/HoGna9MK9+
	 ibZ+uxVyZi273lcC0tjLXQUtuJqxH0vI+vCLiefMAK1WIG9FAp8+gxei8fguSFZ+FH
	 JANSz0Zr0M6FddS0FVe6BeDbLdAL2S2nvkE4PdT8ELNjG8vHp3CGWjVyOlWUZL7l9e
	 Wuj0uRV+MxaqdVOjBDVk2frcsZerYHdhfgp2vepr67FnpyQ1FteUdjDkh1JHMZkMjT
	 hqEwtU377FgWtCU9eDF/eX/HsY0iwFbK/aGiwefz4v/eUQu9y3g2pdsK6TDQ3S9HBu
	 sSBuP+WF5mtZg==
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
Date: Sun, 22 Oct 2023 08:50:23 -0700
Message-ID: <169798982279.271027.9280015987469447845.b4-ty@kernel.org>
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

[7/9] arm64: dts: qcom: ipq5332: populate the opp table based on the eFuse
      commit: 62073bc9f1ecc0d91fc260e7ae380cbadd33e9fc
[9/9] arm64: dts: qcom: ipq9574: populate the opp table based on the eFuse
      commit: b36074357baf2794c825ea1c145de1d22b15380b

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

