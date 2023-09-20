Return-Path: <devicetree+bounces-1595-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DE587A7158
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 05:56:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 969DA1C20A47
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 03:56:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2B9423B5;
	Wed, 20 Sep 2023 03:55:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D21BD440D
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 03:55:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B4751C433CC;
	Wed, 20 Sep 2023 03:55:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695182107;
	bh=e4y/mviqWLNNV87tif/yuXvY21+y6KzTGk+ud2D3wfw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=FQl9iFZVm+SED8NPXtzqOx0pG5v9JHSSeRLEm5ZFkOo9TjXwnNNlr2DmR7tr8Ts9h
	 hxVE9ep9Gke7kPLLSYZGETkwBplE+nwJVWiKn9aeeH2k27TcJ6DPvJGMuoY3kNy2/S
	 ECwDJI1J5uA3CXmiTq16/14zS05EIAuODfvm5e98Yzlfba5aQBO87YqD2WpeuOsPpo
	 6RCYjNDFmzEw7ABuKV1gyUvZX08OM08p9SGXzRKA+8OrRpfBAKZoBMv9Zv78eW5Pro
	 pbqYbyX0wOcvjQSiA2tJ8Q2Pzc4unkTU32VQLKURUiJoktdOi4q1OUaiz9smtstyT7
	 hfuZkwJ3EW/hA==
From: Bjorn Andersson <andersson@kernel.org>
To: agross@kernel.org,
	konrad.dybcio@linaro.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Vignesh Viswanathan <quic_viswanat@quicinc.com>
Cc: quic_kathirav@quicinc.com,
	quic_anusha@quicinc.com,
	quic_sjaganat@quicinc.com,
	quic_srichara@quicinc.com,
	quic_varada@quicinc.com
Subject: Re: (subset) [PATCH v2 0/4] Fix SMEM hwlock index for IPQ platforms
Date: Tue, 19 Sep 2023 20:58:58 -0700
Message-ID: <169518233723.1055386.4715738884321034745.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230904172516.479866-1-quic_viswanat@quicinc.com>
References: <20230904172516.479866-1-quic_viswanat@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Mon, 04 Sep 2023 22:55:11 +0530, Vignesh Viswanathan wrote:
> SMEM uses lock index 3 of the TCSR Mutex hwlock for allocations
> in SMEM region shared by the Host and FW.
> 
> Fix the SMEM hwlock index to 3 for IPQ5332, IPQ6018, IPQ8074 and IPQ9574.
> 
> Vignesh Viswanathan (4):
>   arm64: dts: qcom: ipq5332: Fix hwlock index for SMEM
>   arm64: dts: qcom: ipq6018: Fix hwlock index for SMEM
>   arm64: dts: qcom: ipq8074: Fix hwlock index for SMEM
>   arm64: dts: qcom: ipq9574: Fix hwlock index for SMEM
> 
> [...]

Applied, thanks!

[1/4] arm64: dts: qcom: ipq5332: Fix hwlock index for SMEM
      commit: d08afd80158399a081b478a19902364e3dd0f84c
[2/4] arm64: dts: qcom: ipq6018: Fix hwlock index for SMEM
      commit: 95d97b111e1e184b0c8656137033ed64f2cf21e4
[4/4] arm64: dts: qcom: ipq9574: Fix hwlock index for SMEM
      commit: 5fe8508e2bc8eb4208b0434b6c1ca306c1519ade

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

