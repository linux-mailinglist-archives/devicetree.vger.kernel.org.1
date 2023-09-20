Return-Path: <devicetree+bounces-1884-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FE307A8B54
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 20:13:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 00026B20A62
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 18:13:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8ED463CD01;
	Wed, 20 Sep 2023 18:11:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EB033CCE0
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 18:11:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 25F7EC433C9;
	Wed, 20 Sep 2023 18:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695233486;
	bh=be+zabTmXv7/l62mTC5GSeWFLNg/+okcaQ3h+uUJUak=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=AyeqsFYv6R8k3NLlcKeUEYtc2FOgiAQ8pMnEC6CmtXRV4cFGQQJLLPq33iKrKn7MX
	 lYgQghffm/VK6RxzMsVWao4LkTvY7h8HJXE3wajd0T65UXwGm73qSwJJGU7pvCPPt6
	 LAEt/1iC9fBvxqNCOee+87uxZxYuXyknO4voj8X9Fuxr9erL1oVcLJ/cD5pef6pJd6
	 ZDW6cuec2cwdFfGJZekxff3kXUKGdgaTOFIw9KEzRT4my0TCKFbpxchndnMPnrADQ7
	 gF5Y7WhFZjG7E9u/tfSercr5NZcKbCnCiaANgUukonkaVQU+V0KA16oAi983XNre8r
	 vCKW9WCyujEmw==
From: Bjorn Andersson <andersson@kernel.org>
To: agross@kernel.org,
	konrad.dybcio@linaro.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	quic_gurus@quicinc.com,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	quic_mojha@quicinc.com,
	Robert Marko <robimarko@gmail.com>
Cc: computersforpeace@gmail.com
Subject: Re: (subset) [PATCH v3 1/4] dt-bindings: firmware: qcom,scm: support indicating SDI default state
Date: Wed, 20 Sep 2023 11:15:31 -0700
Message-ID: <169523372601.2994310.13795981750540613883.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230816164641.3371878-1-robimarko@gmail.com>
References: <20230816164641.3371878-1-robimarko@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Wed, 16 Aug 2023 18:45:38 +0200, Robert Marko wrote:
> IPQ5018 has SDI (Secure Debug Image) enabled by TZ by default, and that
> means that WDT being asserted or just trying to reboot will hang the board
> in the debug mode and only pulling the power and repowering will help.
> Some IPQ4019 boards like Google WiFI have it enabled as well.
> 
> So, lets add a boolean property to indicate that SDI is enabled by default
> and thus needs to be disabled by the kernel.
> 
> [...]

Applied, thanks!

[4/4] arm64: dts: qcom: ipq5018: indicate that SDI should be disabled
      commit: 79796e87215db9587d6c66ec6f6781e091bc6464

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

