Return-Path: <devicetree+bounces-1862-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CD2E7A8A32
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 19:10:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 06D5C281C4F
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 17:10:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 298203FB1B;
	Wed, 20 Sep 2023 17:10:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16F883D399
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 17:10:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 385E9C43391;
	Wed, 20 Sep 2023 17:10:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695229814;
	bh=icMbnMCivl6XtizPdU2hl9OASrROLgB1ExFgzceYpjg=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=TS1dRJyZyFqltcyF1L7xdY8GzkmNouhXktii5ZZwhBj5YbFcEBoPhsnwloMliE9tp
	 Jg3/ZDFTd14IeqzpjSqSL0P7+0J0wYofbWmKXmyhFYhwvmD+ilpVNRD9+VFj832q4e
	 InaYQR563neRMSQF/R9+IolvH98DffCVT/HL7cAss/Ix42Z6gSKwwAQ8cibL8HAO/q
	 3XQqtszlIMNgLO4SkessgQdEhsWASVMegodh+RdzLXhmJrLmZSzfbA4cH8NALU1kNN
	 bAC+VJNJkFEzemuWl6WpMiOQcoVhYxMJyaXRwTHAnD6lFXptn8pKquP6KBJhrkiFSc
	 RbgZLW0bNsT8Q==
From: Bjorn Andersson <andersson@kernel.org>
To: Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: (subset) [PATCH 1/3] ARM: dts: qcom: drop incorrect cell-index from SPMI
Date: Wed, 20 Sep 2023 10:14:02 -0700
Message-ID: <169523004943.2665018.5938387194105724011.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230827122842.63741-1-krzysztof.kozlowski@linaro.org>
References: <20230827122842.63741-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Sun, 27 Aug 2023 14:28:40 +0200, Krzysztof Kozlowski wrote:
> The SPMI controller (PMIC Arbiter) does not use nor allow 'cell-index'
> property:
> 
>   qcom-sdx55-mtp.dtb: spmi@c440000: Unevaluated properties are not allowed ('cell-index' was unexpected)
> 
> 

Applied, thanks!

[1/3] ARM: dts: qcom: drop incorrect cell-index from SPMI
      commit: 340ed74de508e5d79599b67553ee1e8e8239e0d1

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

