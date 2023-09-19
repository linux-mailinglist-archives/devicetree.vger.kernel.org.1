Return-Path: <devicetree+bounces-1468-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CFF567A67AD
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 17:12:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EB8A41C20912
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 15:12:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4FED3B7A2;
	Tue, 19 Sep 2023 15:11:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC4743B782
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 15:11:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5D2A6C433C9;
	Tue, 19 Sep 2023 15:11:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695136318;
	bh=oQZE1gehH3m0aVjeQGpGI4UwdSKpfNlvVo6HbrBGos8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=reXUN8Lm8OVwp1i9vVCCdg0A4xWglEaEmg5enV0gEccKgXxgpGgJGycPY0fPtD9B7
	 EbMZUIURD8pz5Sc1D9oLVMO/zRWGTapGT0nCXTAR4U4sbpRl72Gkm1Ua47gH2syuwj
	 yp+zAtUz3ECBZ02khlQ+Xs8MsTRrrrcgbiXXOr59t9JwZlIAEkSQRk/6aVsiSyp40I
	 zCermNUTlAmjX0M/tJ9jukn3nFG3vb1xA3em/zHCiRCHGrmMAKTCzocD+ZwIsijb87
	 PLdrrhhd0cMrMpI+vlshjMgj1bM4yJDJyO1nDe9ma58fzYnjaTkKfNoy3jObZW67RQ
	 R7w0hVRuC9TIA==
From: Lee Jones <lee@kernel.org>
To: devicetree@vger.kernel.org, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org, 
 Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, 
 linux-iio@vger.kernel.org, Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
 linux-input@vger.kernel.org, Pavel Machek <pavel@ucw.cz>, 
 linux-leds@vger.kernel.org, Satya Priya <quic_c_skakit@quicinc.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230827132525.951475-3-dmitry.baryshkov@linaro.org>
References: <20230827132525.951475-1-dmitry.baryshkov@linaro.org>
 <20230827132525.951475-3-dmitry.baryshkov@linaro.org>
Subject: Re: (subset) [PATCH v5 02/37] dt-bindings: mfd: qcom-pm8xxx: add
 missing child nodes
Message-Id: <169513631509.3259165.15493970676059884239.b4-ty@kernel.org>
Date: Tue, 19 Sep 2023 16:11:55 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.12.2

On Sun, 27 Aug 2023 16:24:50 +0300, Dmitry Baryshkov wrote:
> Add gpio, keypad, led, mpps, pwrkey, vibrator and xoadc as possible
> child nodes of qcom,pm8xxx, referencing existint schema files.
> 
> 

Applied, thanks!

[02/37] dt-bindings: mfd: qcom-pm8xxx: add missing child nodes
        commit: 2c09766cb133ee4d57d19f56c6a0035b0d9eb034

--
Lee Jones [李琼斯]


