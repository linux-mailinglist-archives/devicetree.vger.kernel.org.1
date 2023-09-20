Return-Path: <devicetree+bounces-1867-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C2397A8A45
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 19:11:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 912301C20980
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 17:11:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E0733E49D;
	Wed, 20 Sep 2023 17:10:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D4353D399
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 17:10:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 20216C433AB;
	Wed, 20 Sep 2023 17:10:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695229821;
	bh=K0sbzUr5jtVHR89g51G0NkEZtQQygAev4/km+8TF2zI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=KaGRn/sUlxTUwOwVDJUOKl874bT6lpR6k2REBs0mAw1R/+FcIcLWrTv7jKe06ld8C
	 /h0mu+XWl7Eyo2ZctNYM/Zcb0nI/SI4O/W8ottKhpQ85AVTnLfM3xXsNz+hLDp1tsf
	 vfh5hAjFocLhf4pJeKmZFpgquifpSjFwHNfV7J92/4VbwA4qRfF67xEYvGME1KLCHI
	 /abV8iSlXkjsBY8L//f4LW/BtFPNeNGS4XeuKkUppwfagmgYiFUyuHvgNnn2WbLK5C
	 SRgYaFymt7xtNCKoPyZYLAIqsZm9jrBiazyTlDE201mc2RTNNyYWu8B/lzc6qm4DHA
	 InW0bN9ab5qMw==
From: Bjorn Andersson <andersson@kernel.org>
To: Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Taniya Das <quic_tdas@quicinc.com>,
	Imran Shaik <quic_imrashai@quicinc.com>,
	Jagadeesh Kona <quic_jkona@quicinc.com>,
	Ajit Pandey <quic_ajipan@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/4] clk: qcom: Add support for GCC and RPMHCC on SM4450
Date: Wed, 20 Sep 2023 10:14:07 -0700
Message-ID: <169523004970.2665018.17640231475620159294.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230909123431.1725728-1-quic_ajipan@quicinc.com>
References: <20230909123431.1725728-1-quic_ajipan@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Sat, 09 Sep 2023 18:04:27 +0530, Ajit Pandey wrote:
> This series add dt-bindings and driver support for GCC and RPMHCC on
> SM4450 platform.
> 
> Changes in v2:
>  - Remove min-items and optional tag from bindings documentation.
>  - Use qcom_branch_set_force_mem_core() wrapper API to update bits.
>  - Link to v1: https://patchwork.kernel.org/project/linux-clk/list/?series=779098
> 
> [...]

Applied, thanks!

[1/4] dt-bindings: clock: qcom: Add RPMHCC for SM4450
      commit: 0b8aae7ed8eaf24d5f59d390325e9b2ebf1c78bd
[2/4] clk: qcom: rpmh: Add RPMH clocks support for SM4450
      commit: 5a6eabf3268f91ce3cb5350210d0a876fa65b481
[3/4] dt-bindings: clock: qcom: Add GCC clocks for SM4450
      commit: d2d04deb5566b82aeb795f24014f5b3bdb8315ed
[4/4] clk: qcom: Add GCC driver support for SM4450
      commit: c32c4ef98baca6dfedbddace1e0bbcae0ca65050

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

