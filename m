Return-Path: <devicetree+bounces-10614-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 615067D23A8
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 17:46:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E9491281482
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 15:46:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7937310960;
	Sun, 22 Oct 2023 15:46:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fbin9TVg"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A195107B8
	for <devicetree@vger.kernel.org>; Sun, 22 Oct 2023 15:46:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5EF8AC433D9;
	Sun, 22 Oct 2023 15:46:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697989575;
	bh=5U0+w/BGtHtXW2F9LQIXpNNTOP74moySVAIGJYB4T7M=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=fbin9TVgMQ2/T5sY81hCxh7OqUlLO1MsjYQZkVrn/5NZI8bGLAaSOAr8aJ551106M
	 2BNt3sgPcmY5vcjteqdx3WLNOH+7EXC2ma+QYbyLUHX583mdXsAFNZoKdi7X67kPR5
	 hDCTgACZN6cdJ1WqjBZ1jURujZT4L53GweK4QovnjJNITbSftS+8v5rMcLsfb13ddk
	 89uCAliWlYXCpkRyG34ufldW2VJtVuU3V0EkAHp4IR+mWUvO+ORlt+SXOlQ8RwuJpu
	 wU6yeBkOe15BzcB/zP7H3jHV9XBc5RIq0gt8iLrRlUSaD6F/IZuWxSdjIoS8b59X6X
	 +chZEoq3EDHNA==
From: Bjorn Andersson <andersson@kernel.org>
To: Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Sricharan Ramabadhran <quic_srichara@quicinc.com>,
	Gokul Sriram Palanisamy <quic_gokulsri@quicinc.com>,
	Varadarajan Narayanan <quic_varada@quicinc.com>,
	Anusha Rao <quic_anusha@quicinc.com>,
	Devi Priya <quic_devipriy@quicinc.com>,
	Jassi Brar <jassisinghbrar@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kathiravan Thirumoorthy <quic_kathirav@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	stable@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Robert Marko <robimarko@gmail.com>
Subject: Re: (subset) [PATCH v2 00/11] Add GPLL0 as clock provider for the Qualcomm's IPQ mailbox controller
Date: Sun, 22 Oct 2023 08:50:22 -0700
Message-ID: <169798982292.271027.2242232774452445233.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230913-gpll_cleanup-v2-0-c8ceb1a37680@quicinc.com>
References: <20230913-gpll_cleanup-v2-0-c8ceb1a37680@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Thu, 14 Sep 2023 12:29:50 +0530, Kathiravan Thirumoorthy wrote:
> Currently mailbox controller takes the XO and APSS PLL as the input. It
> can take the GPLL0 also as an input. This patch series adds the same and
> fixes the issue caused by this.
> 
> Once the cpufreq driver is up, it tries to bump up the cpu frequency
> above 800MHz, while doing so system is going to unusable state. Reason
> being, with the GPLL0 included as clock source, clock framework tries to
> achieve the required rate with the possible parent and since GPLL0
> carries the CLK_SET_RATE_PARENT flag, clock rate of the GPLL0 is getting
> changed, causing the issue.
> 
> [...]

Applied, thanks!

[01/11] clk: qcom: ipq8074: drop the CLK_SET_RATE_PARENT flag from PLL clocks
        commit: e641a070137dd959932c7c222e000d9d941167a2
[02/11] clk: qcom: ipq6018: drop the CLK_SET_RATE_PARENT flag from PLL clocks
        commit: 99cd4935cb972d0aafb16838bb2aeadbcaf196ce
[03/11] clk: qcom: ipq5018: drop the CLK_SET_RATE_PARENT flag from GPLL clocks
        commit: 01a5e4c6731ab6b4b74822661d296f8893fc1230
[04/11] clk: qcom: ipq9574: drop the CLK_SET_RATE_PARENT flag from GPLL clocks
        commit: 99a8f8764b70158a712992640a6be46a8fd79d15
[05/11] clk: qcom: ipq5332: drop the CLK_SET_RATE_PARENT flag from GPLL clocks
        commit: 5635ef0bd1052420bc659a00be6fd0c60cec5cb9
[07/11] clk: qcom: apss-ipq6018: add the GPLL0 clock also as clock provider
        commit: e0e6373d653b7707bf042ecf1538884597c5d0da
[08/11] arm64: dts: qcom: ipq8074: include the GPLL0 as clock provider for mailbox
        commit: 80ebe63329909531afc87335f1d95c7bf8414438
[09/11] arm64: dts: qcom: ipq6018: include the GPLL0 as clock provider for mailbox
        commit: 0133c7af3aa0420778d106cb90db708cfa45f2c6
[10/11] arm64: dts: qcom: ipq9574: include the GPLL0 as clock provider for mailbox
        commit: 77c726a4f3b124903db5ced7d597976d5b80dcfb
[11/11] arm64: dts: qcom: ipq5332: include the GPLL0 as clock provider for mailbox
        commit: da528016952bf93ca810c43fafe518c699db7fa0

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

