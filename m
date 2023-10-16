Return-Path: <devicetree+bounces-8737-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B4E497C9DDF
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 05:28:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5515BB20C12
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 03:28:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDAAF23D5;
	Mon, 16 Oct 2023 03:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CltrR/13"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A13B81FB7
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 03:28:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0543FC433C7;
	Mon, 16 Oct 2023 03:28:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697426903;
	bh=oMOPLQgD3iWGapH/3B59TLY7Lv23EB8oNxoTvl8H7yg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=CltrR/13sdu+pWcti8uaSC/at59R+e7GsQ/lf8kDOJCjZXr6TcwdrGuYzH2r/2CIq
	 tLWVgZBBmPCzgfcwRKuUCitxxFxW9EST0j0YNqWtmbcBH0WrSpEpnFyBcT/W27smTu
	 phztd2Dnind37defHBfMi+iPbgKqY6aumsiiyvuhgR4m8F2pgMSD73CoAd5joqSxtx
	 Yn8Et2AV8gvY6fcmLEdY5ym/AUOwXODqA+fCSrAJueu8R4dYarO3cqf4OTvZgKHMkl
	 3WC/c4yB3dFsEAi4LkUxltJxwswmgdFo8nd3m2gyo0NQWh+Mxc3LckrvN7+yRxcmZJ
	 YpHm4Jj8pz8iw==
From: Bjorn Andersson <andersson@kernel.org>
To: Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	"David S. Miller" <davem@davemloft.net>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Om Prakash Singh <quic_omprsing@quicinc.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Bjorn Andersson <quic_bjorande@quicinc.com>
Subject: Re: (subset) [PATCH v4 0/5] arm64: qcom: sm8x50: enable RNG
Date: Sun, 15 Oct 2023 20:32:08 -0700
Message-ID: <169742712187.930433.14209128354915292443.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231003-topic-sm8550-rng-v4-0-255e4d0ba08e@linaro.org>
References: <20231003-topic-sm8550-rng-v4-0-255e4d0ba08e@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Tue, 03 Oct 2023 09:10:18 +0200, Neil Armstrong wrote:
> Enable RNG on SM8550 & SM8450 by reverting the PRNG bindings & DT
> for SM8450 and correctly document it as a True Random Number Generator.
> 
> - SM8550 QRD test run:
> 
> smccc_trng qcom_hwrng
> 
> [...]

Applied, thanks!

[4/5] arm64: dts: qcom: sm8550: add TRNG node
      commit: 3b3ba999046e246cfd570e5399adea2f82df9312
[5/5] arm64: dts: qcom: sm8450: add TRNG node
      commit: c2c9fa136253daf6b3e25c3ea4952d9f2c4da8cf

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

