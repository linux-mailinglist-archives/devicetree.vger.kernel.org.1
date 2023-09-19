Return-Path: <devicetree+bounces-1537-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E03527A6F25
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 01:05:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EE6C81C2029D
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 23:05:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE81D38DE7;
	Tue, 19 Sep 2023 23:03:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEEC836AE2
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 23:03:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6B579C43215;
	Tue, 19 Sep 2023 23:03:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695164636;
	bh=TyjQ2a3fkLX16U9DrTeFwA6CpB4id9tE4rUUupeTxQM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=FDHQK0XZUKFKX7CtidDDbUDAllbjRjLgpaqYZcU8s16H5gX3vSlJVLTa06FyKkqFO
	 5FJzoeESlfKVYExy1xAyvNtA1So+4PEr4dEhvag4HWg8ESa2u+2Hxy450KYcxItcZx
	 P+GGNbBpqx/GpH0JYdewKVmDdSJA1UGk6yl23OixU6mKnNLOY31U/Tl1Y8QVcsvI98
	 OYPPknV5llvL4S9VNOlYYI898pV1JQXhtGRk5g4QdkwDSPS8lplV7oBAktSD81RB0M
	 aU5DNkHhTsLB8r585noxLUqUP3ANwEOR5CIVWOA+dCusrTO/FOxdarQi5YZ/IaJ+UT
	 jVFYKUp4BIVHA==
From: Bjorn Andersson <andersson@kernel.org>
To: Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jagadeesh Kona <quic_jkona@quicinc.com>
Cc: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Taniya Das <quic_tdas@quicinc.com>,
	Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
	Imran Shaik <quic_imrashai@quicinc.com>,
	Ajit Pandey <quic_ajipan@quicinc.com>
Subject: Re: (subset) [PATCH V6 0/5] Add camera clock controller support for SM8550
Date: Tue, 19 Sep 2023 16:07:44 -0700
Message-ID: <169516485981.787935.8704144419477158360.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230707035744.22245-1-quic_jkona@quicinc.com>
References: <20230707035744.22245-1-quic_jkona@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Fri, 07 Jul 2023 09:27:39 +0530, Jagadeesh Kona wrote:
> Add bindings, driver and devicetree node for camera clock controller on
> SM8550.
> 
> Changes in v6:
>  - Updated parent map and frequency table of cam_cc_xo_clk_src to use
>    active only source P_BI_TCXO_AO instead of P_BI_TCXO
> 
> [...]

Applied, thanks!

[5/5] arm64: dts: qcom: sm8550: Add camera clock controller
      commit: e271b59e39a6fbdc57784fdda7e68076f8e58ef7

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

