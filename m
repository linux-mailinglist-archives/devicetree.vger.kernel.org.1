Return-Path: <devicetree+bounces-8085-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 70F237C6A74
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 12:07:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2925D282764
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 10:07:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8913F21A09;
	Thu, 12 Oct 2023 10:07:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hsd4x/JV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BC34DDB6
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 10:07:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 06E00C433C8;
	Thu, 12 Oct 2023 10:07:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697105269;
	bh=gVg8UtHvBvE9+HDyXHQmUlBBjz6PEyk4GmrjWTk7gr0=;
	h=From:To:In-Reply-To:References:Subject:Date:From;
	b=hsd4x/JVT99DmsoB74tYqpbwpnDF8rRlK5umPGx7M9ndz4t68IAiK+HBaV95e8ikz
	 H6EniSCqf+vmv09fSNRc9s2J05jamDQnnLXmn+4o8pCKu2/ZAFWn6Y2F+iHw5Eslba
	 V3qHpo9S5GVy7tiDYs5FJjm7GGC1G1E5Clh325RHvX44JXRqHv+SMhBS1og010lzZR
	 uaoyO2w3iPpI3WT6182TPmV8+94P6PQ0wuJbzCebVO92NYhf8NzxIzp5f0n+2ZucJQ
	 TqD1bajiQ1qGQAHLAUCzb+wRrsIRFoyfhT+yhFLMHNIeIih//oX/Q0WlLI+qxZ9DQa
	 U7zNxQKdWIfQg==
From: Lee Jones <lee@kernel.org>
To: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
 lee@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
 conor+dt@kernel.org, thierry.reding@gmail.com, baruch@tkos.co.il, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, u.kleine-koenig@pengutronix.de, 
 linux-pwm@vger.kernel.org, Devi Priya <quic_devipriy@quicinc.com>
In-Reply-To: <20231006045317.1056625-3-quic_devipriy@quicinc.com>
References: <20231006045317.1056625-1-quic_devipriy@quicinc.com>
 <20231006045317.1056625-3-quic_devipriy@quicinc.com>
Subject: Re: (subset) [PATCH 2/4] dt-bindings: mfd: qcom,tcsr: Extend
 simple-mfd & pwm support for IPQ targets
Message-Id: <169710526675.1167576.9872640040047520620.b4-ty@kernel.org>
Date: Thu, 12 Oct 2023 11:07:46 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.12.2

On Fri, 06 Oct 2023 10:23:15 +0530, Devi Priya wrote:
> Extend simple-mfd and pwm support for IPQ5332 & IPQ9574 SoCs.
> 
> 

Applied, thanks!

[2/4] dt-bindings: mfd: qcom,tcsr: Extend simple-mfd & pwm support for IPQ targets
      commit: abbb729360a50ce949de94a983cb56b15b82018e

--
Lee Jones [李琼斯]


