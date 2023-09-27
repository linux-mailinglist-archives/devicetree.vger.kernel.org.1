Return-Path: <devicetree+bounces-3715-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 291217AFF2B
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 10:58:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 244D11C208C2
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 08:58:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4D891F189;
	Wed, 27 Sep 2023 08:58:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A641B13ADF
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 08:58:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B9A2EC433CD;
	Wed, 27 Sep 2023 08:58:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695805090;
	bh=5NESgz9NKBwccsQ0Ujo74kHMO5OzmxrWwiJfaekpyDs=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=oKyjTmXEnqst1LSzcib9B0n6Kb/BIaQHmWuymqnxqjaxCgqEjre4/pB1ZwEdS4yzx
	 LgfxNEPc/rbI5k4Mx0/MYoszoX1yq0SDFflpdCEDoSUKAzTJTzmofAtYHAgsDTku7g
	 nbntNbvvnEUq+4kpmjld6tuQw0Fpx6ZM2GoXOqo+cV5mK+gCAyf47YxW2An6dS4GJw
	 Dy8/bwwqR+9o0Jbt7HuLDXOqE226g4K2+DoEgQU8wRFykpLWEMNoeReJk1lEeJB4OU
	 UEY91HUAQP2HxVDrQRRMGEem1YIJNTxbgdaZNbzwDDWq8jQSiaVS0sewBn/T3yHHon
	 DtaJjak5rKvxA==
From: Mark Brown <broonie@kernel.org>
To: Stephan Gerhold <stephan@gerhold.net>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Robert Marko <robimarko@gmail.com>, 
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, 
 Stephan Gerhold <stephan.gerhold@kernkonzept.com>
In-Reply-To: <20230912-spmi-pm8909-v1-0-ba4b3bfaf87d@gerhold.net>
References: <20230912-spmi-pm8909-v1-0-ba4b3bfaf87d@gerhold.net>
Subject: Re: [PATCH 0/6] regulator: qcom_spmi: Add PM8909, PM8019 and
 PMA8084
Message-Id: <169580508696.2677308.6259946007338687878.b4-ty@kernel.org>
Date: Wed, 27 Sep 2023 10:58:06 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13-dev-099c9

On Tue, 12 Sep 2023 09:49:48 +0200, Stephan Gerhold wrote:
> Add the necessary definitions for the PM8909, PM8019 and PMA8084 PMIC to
> the qcom_spmi-regulator driver to allow reading the actual voltages
> applied to the hardware at runtime. This is mainly intended for
> debugging since the regulators are usually controlled through the
> RPM firmware (via qcom_smd-regulator).
> 
> These PMICs are used on totally different platforms (MSM8909, MDM9607,
> MSM8974/APQ8084). Each PMIC addition is independent and useful on it
> own. I only bundled them to simplify review.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-next

Thanks!

[1/6] dt-bindings: regulator: qcom,spmi: Document PM8909
      commit: 6f20872035378ab2311cc901f8f94f8718f1b17f
[2/6] regulator: qcom_spmi: Add PM8909 regulators
      commit: 813d01a40ae7c0c67681c82edce8463fbbd84b08
[3/6] dt-bindings: regulator: qcom,spmi: Document PM8019
      commit: 350aab7f8f2c7d7368d2bbc47717696a51014078
[4/6] regulator: qcom_spmi: Add PM8019 regulators
      commit: 5b30cb2a317a8e2636f724e8ebf5cbe3849e786e
[5/6] dt-bindings: regulator: qcom,spmi: Document PMA8084
      commit: f72d04235781cf89410ffd750109f4b9931c50ea
[6/6] regulator: qcom_spmi: Add PMA8084 regulators
      commit: 317aa3c4fe708fcbee5b9fe5fc25e1b9e92b83f5

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark


