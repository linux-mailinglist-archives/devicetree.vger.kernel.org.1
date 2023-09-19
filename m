Return-Path: <devicetree+bounces-1525-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A2C67A6EF1
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 01:03:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 34D03281817
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 23:03:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0E7E36B10;
	Tue, 19 Sep 2023 23:03:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E12E846A1
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 23:03:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B91BCC433CC;
	Tue, 19 Sep 2023 23:03:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695164620;
	bh=qF4/9d6eVhS5IiOnbMCUg5Jo8SdxsHnh1wZSpqLGTW8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ABhdGUDFY+QyKtk1C0f9DweY+iaYrvY8dNhfiCe8Py42wGqb3sfEGSXTy9IVnI7wd
	 MDlitU6QzJ0d8sJTD1ima1nSr3L1OHjtRAde8u/kACUhfeCq8hvjjWQ0FjbLpFYmb+
	 NIK1lD3aeld3GB0qMA/2spgadAwuuksiRPozEd38ls0U+uqmGacFI1nOzOkLoooJpc
	 T1uJJnYC7AP+lCRdc2ib2yyHZBcrLVqth4FBzOd1IuPq48av0pTpVuu2C+dlTcWTYw
	 Dg+cpjbagYV75OXcV6LuvdCehOM0HHFKaDAl1Gr/iszyZOWmmJncvWgZj3cqvHyPCn
	 9CW2Vu5JtMfUg==
From: Bjorn Andersson <andersson@kernel.org>
To: Andy Gross <agross@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	cros-qcom-dts-watchers@chromium.org,
	Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>,
	linux-arm-msm@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH 0/3] Clean up LPASS_LPI probe
Date: Tue, 19 Sep 2023 16:07:31 -0700
Message-ID: <169516485983.787935.11341835418351027559.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230714-topic-lpass_lpi_cleanup-v1-0-dc18b5bd14f7@linaro.org>
References: <20230714-topic-lpass_lpi_cleanup-v1-0-dc18b5bd14f7@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Fri, 14 Jul 2023 14:40:45 +0200, Konrad Dybcio wrote:
> Some SoCs (like SM6115 or SC7280 with various firmwares) expect a single
> clock for the LPASS pinctrl.
> 
> This serires addresses that by simplifying the probe code and relying
> on bindings to sanction the correct number of clocks. That allows us to
> shoot down another downstream-ism.
> 
> [...]

Applied, thanks!

[3/3] arm64: dts: qcom: sc7280: Remove qcom,adsp-bypass-mode
      commit: 274926cc4ced14f4e61204c0cd23fd099daa9b16

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

