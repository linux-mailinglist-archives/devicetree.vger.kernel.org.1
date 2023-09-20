Return-Path: <devicetree+bounces-1585-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 494D57A7140
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 05:55:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 767F91C20A70
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 03:55:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D03D1FC1;
	Wed, 20 Sep 2023 03:54:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E52D23A8
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 03:54:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 55DBEC433CD;
	Wed, 20 Sep 2023 03:54:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695182097;
	bh=UlorBZR7jwpwSkHXqDVO2Qf0PvrylOVR+7VJ/cpsXZs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=kAtNUK+6no9nEmb2ndarCfuP+BGAIRzWL5JU5/TlZgyef43ijLWVUk6Ml81OgOmG2
	 elLAcCbqq1KunSuSW0J/e2g/NNwob06iWvN6Z5U752Gi1HyPIPXV77ky48JV7zWr6X
	 MsVhSpSE8O3CwVIyVL8JIAzGTxnctxY2jSpYjQfhfNXkzhDxcOcsKVBxgqxyypxF1H
	 1fl/nSa8R9Z20JSvNSTpVH8Dxz4atuSDyW0fBwM58vxfJCiRwn9Qpo5e0Mw3B3m5WJ
	 /xsSEYvvYY8Hexk72Dvww68WJ34nM8HR+oiz6k1zqIzEwrun/2qf/IOsczcqyiIe6P
	 FF+VgggKnKqog==
From: Bjorn Andersson <andersson@kernel.org>
To: Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	=?UTF-8?q?Andr=C3=A9=20Apitzsch?= <git@apitzsch.eu>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Stephan Gerhold <stephan@gerhold.net>,
	phone-devel@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v4 0/2] arm64: dts: qcom: msm8939-longcheer-l9100: Add initial dts
Date: Tue, 19 Sep 2023 20:58:48 -0700
Message-ID: <169518233718.1055386.6163446408058250462.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230827-bq_m5-v4-0-f8435fb8f955@apitzsch.eu>
References: <20230827-bq_m5-v4-0-f8435fb8f955@apitzsch.eu>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Sun, 27 Aug 2023 10:47:58 +0200, André Apitzsch wrote:
> This dts adds support for BQ Aquaris M5 (Longcheer L9100) released in
> 2015.
> 
> Add a device tree with initial support for:
> 
> - GPIO keys
> - Hall sensor
> - SDHCI
> - WCNSS (BT/WIFI)
> - Accelerometer/Magnetometer
> - Vibrator
> - Touchscreen
> - Front flash
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: arm: qcom: Add BQ Aquaris M5
      commit: 9905205541d2020e45da5ffe9787b4a2e53cc199
[2/2] arm64: dts: qcom: msm8939-longcheer-l9100: Add initial device tree
      commit: 27da4fd325c371e1ddbb4fc46629e2caf8f73f07

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

