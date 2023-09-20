Return-Path: <devicetree+bounces-1552-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 193327A703E
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 04:10:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0C8B71C2081B
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 02:10:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 045591FDF;
	Wed, 20 Sep 2023 02:10:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8BC31FA2
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 02:10:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E4790C433CC;
	Wed, 20 Sep 2023 02:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695175800;
	bh=Vv/k0XfU635pKagxS1yVwKInDfpvPuQUWW4tmVK3bH4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=KZTCNhCkAGmZJrqZcS/ojYeWZSoHbkfPlQdikglz5QftJkjuSufYxt2OY3ow4zkqp
	 eMvZAA/KEf7fJYeOS0KcKtXMzwvVHtHv6eIdFx8CaX5CPE8k+yMNM+cMgHaLZnF7LM
	 Eqy/cQT7qlkbuSidYKimEkDe0WDyzs46yQWUs/gqLox0GZfHLYGzT4VapLW/bzmkkx
	 OmbhbKXAo2DSiReq1ctdSIKiz/ZJ4CeNKWHPU8AFnvHNOuEeAj7rvBND5oKmMsBJaN
	 aMO90G0Adc9WUwobdFBqg0MXNmEtMwT72WT+FJ0Omz5sH076w3Qgy+Q8HKc2sn7KG9
	 Sxnod11HithRQ==
From: Bjorn Andersson <andersson@kernel.org>
To: Andy Gross <agross@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Subject: Re: [PATCH 0/5] RB1 features
Date: Tue, 19 Sep 2023 19:14:00 -0700
Message-ID: <169517603987.822793.12171416203818012201.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230906-topic-rb1_features_sans_icc-v1-0-e92ce6fbde16@linaro.org>
References: <20230906-topic-rb1_features_sans_icc-v1-0-e92ce6fbde16@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Wed, 06 Sep 2023 11:24:54 +0200, Konrad Dybcio wrote:
> This series brings:
> 
> - a boot fix (Qualcomm's promises of updated hw never materialized)
> - regulator fixes (way back then schema didn't notice my mistakes)
> - GPIO LEDs
> - USB3
> - remote processors
> 
> [...]

Applied, thanks!

[1/5] arm64: dts: qcom: qrb2210-rb1: Swap UART index
      commit: 973c015facabcbd320063648010942c51992c1a1
[2/5] arm64: dts: qcom: qrb2210-rb1: Fix regulators
      commit: 31bee70793b67f4b428825434542afc72ddb2b3b
[3/5] arm64: dts: qcom: qrb2210-rb1: Enable remote processors
      commit: 9692ccc49583cd43184ea192af127635877e0f24
[4/5] arm64: dts: qcom: qrb2210-rb1: Add GPIO LEDs
      commit: 02a2fcfbb835bac0c523b3f89326bc1c69f83ce0
[5/5] arm64: dts: qcom: qrb2210-rb1: Hook up USB3
      commit: 59f9ff79cd9cf3bc10743d61662b5729fcffff24

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

