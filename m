Return-Path: <devicetree+bounces-1548-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 733AA7A703A
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 04:10:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2E699281567
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 02:10:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31C3F1864;
	Wed, 20 Sep 2023 02:09:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 230E9185D
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 02:09:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1B2F7C433CA;
	Wed, 20 Sep 2023 02:09:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695175796;
	bh=ahu76PmIf0loEOsIZvlQKEsmmgqXjKmIxSpJWKbM5kc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=jzIImjapkUX1xV3F1Z7fIuHcoGbC5vzQV3q0uzns7Llxs50vsFBg+4mfY2eWNkK+3
	 i3DuSHifgOkfX490MvhWLCK+lMQOu6KMwH+90RlDtmQwBifVVvztzmZetUFRFM7E9q
	 SqlubYUNgEgbqJminV7xUWdPsnbVoSlOLrtY6o62yKWgyK/BfNdy+UBexcktz/sni4
	 tdEHz9Nbi2Np8d5VudDzmZKLMN5ZV9Yo8dI7jPqfLHJJhyHpuA1E/gsOL0+zCEN33U
	 5ewFbLBmvsh0t04gVCkBY1E8BJPRm1SPMuPvJzsGwuiIpUuetEcJP4hkPkEXUj4+kg
	 tkdQxwrr0V74Q==
From: Bjorn Andersson <andersson@kernel.org>
To: agross@kernel.org,
	konrad.dybcio@linaro.org,
	lee@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	sboyd@kernel.org,
	luca.weiss@fairphone.com,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH v9 0/7] Add Qualcomm PMIC TPCM support
Date: Tue, 19 Sep 2023 19:13:56 -0700
Message-ID: <169517603993.822793.12743751382669071299.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230816115151.501736-1-bryan.odonoghue@linaro.org>
References: <20230816115151.501736-1-bryan.odonoghue@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Wed, 16 Aug 2023 12:51:44 +0100, Bryan O'Donoghue wrote:
> V9:
> 
> - Reuses glink ports {} definitions and locations per Bjorn's request
> - Adds additional port @ 2 to 8250.dtsi as a result - Bjorn
> - Drops logic in previous patch
>   "dt-bindings: phy: qcom,sc7180-qmp-usb3-dp-phy: Add input and output ports"
>   No longer required
> - I've amended the names of the endpoints to match sc8280xp too - bod
> 
> [...]

Applied, thanks!

[2/7] arm64: dts: qcom: sm8250: Define ports for qmpphy orientation-switching
      commit: ea96b90a58cf5d2e91ac177f081118ff26b85c1d
[3/7] arm64: dts: qcom: pm8150b: Add a TCPM description
      commit: 5a0539515cbfad30b3e08a00004ed0c86136add5
[4/7] arm64: dts: qcom: qrb5165-rb5: Switch on Type-C VBUS boost
      commit: c627d7337aae4d83b4db621fdb9e8f638056dcee
[5/7] arm64: dts: qcom: qrb5165-rb5: Switch on basic TCPM
      commit: 5b1b6da9d39d515395d85dc678ddac7ff1689438
[6/7] arm64: dts: qcom: qrb5165-rb5: Switch on TCPM usb-role-switching for usb_1
      commit: 25defdca4d902b338c05bc01a1de1064a6d3b7f3
[7/7] arm64: dts: qcom: qrb5165-rb5: Switch on TCPM orientation-switch for usb_1_qmpphy
      commit: 45219a6b9497cb7713dd2bc221248ee1a7e9bb3d

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

