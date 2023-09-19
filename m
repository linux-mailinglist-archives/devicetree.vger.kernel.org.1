Return-Path: <devicetree+bounces-1533-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 186707A6F1A
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 01:04:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C7C49280DE4
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 23:04:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E20FB38BDF;
	Tue, 19 Sep 2023 23:03:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1B3F38BBB
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 23:03:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A2C1FC43391;
	Tue, 19 Sep 2023 23:03:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695164629;
	bh=Cvf1kg5rPSVb3dgmOVgVEB6Gg/q96WLqe4JnbgiLtR8=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=I7xnCwYowl8JzVC340VQm+ijrk1nyICKoNxX1oHQ2NFLxJJeJ1yb8ZacBGov4OY8a
	 RJ13x0kWeT6s2F6vK954Ikov+yUcW+P6t25w3uZXvEtRlPMc4FmfALjCmxyh+cZEyn
	 nHIyH2trVCFPnArah5lDZRIkY7Owf642+3EM3vvnU9xk4gRG91N42svu3XYgiPuWD9
	 tF9yO+31rDYuQeRP4bmVHkwjgTuU3gepdu9uF/FEx0+v9hl7YBKxHlTLDokAjWmQww
	 mPYFo8m4XVmAlToP0jPmsMlYwA0g4gmHBdhZDWOpcQzVcNnX+kbLADehfHq/5LQ06u
	 VQ3Et6xDpEIsA==
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
Subject: Re: (subset) [RESEND PATCH 1/2] arm64: dts: qcom: msm8994: fix duplicated @6c00000 reserved memory
Date: Tue, 19 Sep 2023 16:07:38 -0700
Message-ID: <169516485987.787935.2863146104390557606.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230720072048.10093-1-krzysztof.kozlowski@linaro.org>
References: <20230720072048.10093-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Thu, 20 Jul 2023 09:20:47 +0200, Krzysztof Kozlowski wrote:
> Reserved memory @6c00000 is defined in MSM8994 DTSI and few boards:
> 
>   Warning (unique_unit_address_if_enabled): /reserved-memory/reserved@6c00000: duplicate unit-address (also used in node /reserved-memory/hole2@6c00000)
>   Warning (unique_unit_address_if_enabled): /reserved-memory/reserved@6c00000: duplicate unit-address (also used in node /reserved-memory/memory@6c00000)
> 
> 

Applied, thanks!

[1/2] arm64: dts: qcom: msm8994: fix duplicated @6c00000 reserved memory
      commit: bf80e606ca8db08c840d1ad394ec75eaabba717b
[2/2] arm64: dts: qcom: msm8992-libra: drop duplicated reserved memory
      commit: f32096602c19e68fb9bf04b494d13f1190602554

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

