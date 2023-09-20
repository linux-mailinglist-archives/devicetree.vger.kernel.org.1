Return-Path: <devicetree+bounces-1593-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B14A7A7154
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 05:56:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6017D1C20A20
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 03:56:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56ECD23AF;
	Wed, 20 Sep 2023 03:55:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 484363D67
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 03:55:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6F3F7C433AB;
	Wed, 20 Sep 2023 03:55:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695182105;
	bh=H8Ozx7DKlJhostq/HOXtXf+BZQGn8zz+FsnkFGEab4M=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=OaRm1rSj9EIsEegUJ7W9D/WobZyz/SaSAd7IyZTphWqLMwiHRULXJZgmR8EckvQxX
	 9IdFOhKNVsyICSyUO1ZA29U14iKaq/qgk36crkhQdtFkV7g1eUGVcg3bvOXTsDM33a
	 84Kx6zPqvrZmgtWXgYPKHzuphLXEunaVU/4vR3RuZLrwir6UGl0J39qdpf1PO/Ao+f
	 8r3+QpxTflr/Tn81R44OU7ai8c3cJV8yBvqhECVT8LWOg0UM2k7jrcmhJXti0J4y13
	 tbZNBdp9ipQ82Dnrc/3FrSc8JvueC8LAn+Sd2tzGnYwjMVj20e/Nsgq46i6x2JcEy4
	 p8Y1O5AeiIQmw==
From: Bjorn Andersson <andersson@kernel.org>
To: Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: split pmr735d into 2
Date: Tue, 19 Sep 2023 20:58:56 -0700
Message-ID: <169518233719.1055386.15483744962512505307.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230831-topic-sm8550-upstream-pmr735d-split-v1-1-98e632636415@linaro.org>
References: <20230831-topic-sm8550-upstream-pmr735d-split-v1-1-98e632636415@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Thu, 31 Aug 2023 17:25:49 +0200, Neil Armstrong wrote:
> The second PMR735D PMIC is not always presend on SM8550 based devices,
> split the pmr735d.dtsi file in two so boards files can only include the
> ones present on the platform.
> 
> 

Applied, thanks!

[1/1] arm64: dts: qcom: split pmr735d into 2
      commit: e96c4d53d45e1ef0bcd40f2acfc30dfdea4b9131

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

