Return-Path: <devicetree+bounces-1581-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B06767A712C
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 05:55:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D52761C20AB3
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 03:55:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2CCE320E0;
	Wed, 20 Sep 2023 03:54:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E6FB23A8
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 03:54:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 72111C433CA;
	Wed, 20 Sep 2023 03:54:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695182093;
	bh=GXSUaLuNK5r0XvwfaHFTrr+dslJlUGIbM/d+lmdmSAQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Sjz/B+LMt+UIfdCK/yDaa1GHCRDeQ2ECYbFeeu1CZdUN9HL2Bh8B7KQXfnMg1qhGJ
	 ntID01kvozO15BOnTMXxOXfnbpa7oygg3F159pn5Klt6nFZcGqVPSuf0R1JTEFe5x3
	 DCRernp3wjLBZHGR/4CfBkedOxR/GOR2v7aUWFJgTEA4jOyA1fKzZgFnVriPZCTOIU
	 GYn5BVPi3SVwPxRH31X1s8qp9oohhejuOHVkTO+EEunNmm+xaGywOB592dggcxA0Xl
	 U0LutQNOgSfKMiEnGIcQH2j5ZcW8htQu92qDvEPJ+ujqBe+PliS0im4Grl5MBPhkmj
	 C8WPmYouYwonQ==
From: Bjorn Andersson <andersson@kernel.org>
To: Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Taniya Das <quic_tdas@quicinc.com>,
	David Wronek <davidwronek@gmail.com>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht,
	phone-devel@vger.kernel.org,
	cros-qcom-dts-watchers@chromium.org
Subject: Re: (subset) [PATCH v4 0/7] Add initial support for SM7125 and Xiaomi SM7125 platform
Date: Tue, 19 Sep 2023 20:58:44 -0700
Message-ID: <169518233709.1055386.6053331761982073486.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230723190725.1619193-1-davidwronek@gmail.com>
References: <20230723190725.1619193-1-davidwronek@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Sun, 23 Jul 2023 21:05:01 +0200, David Wronek wrote:
> This series introduces support for the Qualcomm SM7125 SoC and the
> Xiaomi SM7125 platform.
> 
> 

Applied, thanks!

[3/7] dt-bindings: arm: qcom: Document SM7125 and xiaomi,joyeuse board
      commit: 9b4adf37fdc0ca8cd1d14b4160e2f04b63df98e6
[5/7] arm64: dts: qcom: pm6150: Add resin and rtc nodes
      commit: ec053ec90c245a4efc8dda87d9207de0adf0040e
[6/7] arm64: dts: qcom: Add SM7125 device tree
      commit: 72fbf05149bd451e7222c2ed1e3823972f19df9c
[7/7] arm64: dts: qcom: Add support for the Xiaomi SM7125 platform
      commit: 7d65d4b7d70fb9560ce9baaf4219fb24646bd578

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

