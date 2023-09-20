Return-Path: <devicetree+bounces-1584-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F4027A713B
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 05:55:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B8C0D1C20A55
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 03:55:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A7EF23CC;
	Wed, 20 Sep 2023 03:54:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C7A023A8
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 03:54:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 98F26C433CC;
	Wed, 20 Sep 2023 03:54:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695182096;
	bh=OolkSjx9WL9+PX/F8Hb+9RIQ3flKtK/kzoGxzyBpvi8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=B2ZziXpHa2SwXI2W+beWexGP1ZAWRkhMy+nWE8JexDKRO7qdRpHUND6qfnC7ikL6d
	 URaRFN/X/MpOrmIgvwWJgIMVxKfgyHwstirudIBAciZP9EMlkCBWYSZ5S7QOL7yHOe
	 uUqviHtP8jY2fz0GeGAY4GXxY1vYjC79jjUmtvyMoiQCN8heflzPNelK8QTHut49hU
	 dovjtb2JkM3dTCpM0/ZVXrkb9hyS9TXXRKQxOM3VXUyFEtV/E107+rrI6Ut5p6dVP8
	 rGJ+jMFQg9PlZnqC56i0SmchLebyJFL2mGk3jxz6soXx0wn9LYlYWF/v8hpiN72jrv
	 L75vxhd1Bd4QA==
From: Bjorn Andersson <andersson@kernel.org>
To: Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 0/5] arm64: dts: qcom: sdm845-mtp: misc improvements
Date: Tue, 19 Sep 2023 20:58:47 -0700
Message-ID: <169518233717.1055386.15383300126177175919.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230826221915.846937-1-dmitry.baryshkov@linaro.org>
References: <20230826221915.846937-1-dmitry.baryshkov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Sun, 27 Aug 2023 01:19:10 +0300, Dmitry Baryshkov wrote:
> Several misc improvements, take away from testing recent kernel on
> SDM845-MTP board.
> 
> Changes since v1:
>  - Reordered PCIe properties according to Konrad's suggestions
>  - Fixed pcie1 perst to have bias-pull-down instead of bias-disable
> 
> [...]

Applied, thanks!

[1/5] arm64: dts: qcom: sdm845-mtp: fix WiFi configuration
      commit: b33868a52f342d9b1f20aa5bffe40cbd69bd0a4b
[2/5] arm64: dts: qcom: sdm845-mtp: specify wifi variant
      commit: 84c7786499880d47fbcf0cee9661fd96e026ab2a
[3/5] arm64: dts: qcom: sdm845-mtp: switch to mbn firmware
      commit: 37857110db63783bac36960aa3bd335d4adea9d7
[4/5] arm64: dts: qcom: sdm845-mtp: enable Vol-/reset button
      commit: be30dc31823d46dca3a184896433ebf8beffa1a0
[5/5] arm64: dts: qcom: sdm845-mtp: enable PCIe support
      commit: da3620d7c7d78a375b21ccf046b6617598b7c824

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

