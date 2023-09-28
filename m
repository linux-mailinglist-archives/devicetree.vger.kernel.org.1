Return-Path: <devicetree+bounces-4008-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 589157B0FFD
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 02:30:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 87F03281C69
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 00:30:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83D4510E9;
	Thu, 28 Sep 2023 00:30:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 750437E2
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 00:30:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6C802C433C9;
	Thu, 28 Sep 2023 00:30:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695861002;
	bh=L4iIQxbv5asAaolQovXwXtsr7+YFE6mPicCpqOBnLgg=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=n0Vu5n6GH5OZl5Pr8hWzX2TYwroRYhhUw3B6BONE0x2Q7pgXUeIs/lb//YT4RbySD
	 bAc+tBDK5RPesdVrACufsPlcqPbjS62fTnsbG7l/p9UDswBVR18KN924DKresNjL22
	 S2u568laaJ1Q5NcOi3AEHtgmPwdyKebWcVzKDuSawpwTqRoW9hWjFDPNHehDHDp63c
	 b3kpPHBgRXSbl2fdSFJC0nM+OX1vUtyZAlX4zQkC/9vaz7MVMjPTOUKEns5KZerj80
	 Mu2BaHkOtU2D8N0g2da7S6wMW2bSqYZAkGp0BxfA2r4xbYDglOkcF+i+DAY4QGFWev
	 SnHVZOXZAi9Kw==
From: Bjorn Andersson <andersson@kernel.org>
To: Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Stephen Boyd <sboyd@codeaurora.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: (subset) [RESEND PATCH 1/4] ARM: dts: qcom: apq8064: drop incorrect regulator-type
Date: Wed, 27 Sep 2023 17:34:06 -0700
Message-ID: <169586125038.1226038.18147069062877074429.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230924183914.51414-1-krzysztof.kozlowski@linaro.org>
References: <20230924183914.51414-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Sun, 24 Sep 2023 20:39:11 +0200, Krzysztof Kozlowski wrote:
> regulator-fixed does not have a "regulator-type" property:
> 
>   qcom-apq8064-ifc6410.dtb: regulator-ext-3p3v: Unevaluated properties are not allowed ('regulator-type' was unexpected)
> 
> 

Applied, thanks!

[1/4] ARM: dts: qcom: apq8064: drop incorrect regulator-type
      commit: 686bca7bd170430d226c74337488088b1979bdbf
[2/4] ARM: dts: qcom: apq8060: drop incorrect regulator-type
      commit: 34c006f42cb15ac574c61859d07ae7a41ec04d84
[3/4] ARM: dts: qcom: mdm9615: populate vsdcc fixed regulator
      commit: 09f8ee81b6da5f76de8b83c8bfc4475b54e101e0
[4/4] ARM: dts: qcom: ipq8064: move keys and leds out of soc node
      commit: 2138c32af19740ab54bf5622890fe96ba3530b75

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

