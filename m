Return-Path: <devicetree+bounces-1554-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 43BB97A7040
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 04:11:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3189D1C20925
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 02:11:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DBB823AF;
	Wed, 20 Sep 2023 02:10:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D7E923A8
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 02:10:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F19B7C433CA;
	Wed, 20 Sep 2023 02:10:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695175803;
	bh=4rabWQq0UehfRLcnAMiQFlo+pshDNKHLYhkK16tm71w=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=UTLdcguwqIFEmQdhfJrP7kU7XsjPULjQNUlTPxJglY+gKzecy2dyExJ1/y15eAoHP
	 wvbdpyHYE7x/FwP2/oCooXw/xUeKVXDq8Gw90vTvGNHQtqWtRP4+vi2LjmW+2PFp40
	 l2yDyCtRhhZZtUgL9yzk6b/oMVZjonra/5dYJDo31df6DzozyfVAd7GkBG1SraJ+q1
	 uUetlyXcXwVBJpBzKJa79Z4sJNe/woh8v1tAcwh/IPHfrFA0B03Ke1spNz7myjDzpg
	 ca2hKtZJ/mZZK4DBj6HDqBj4ACjUGpCOJI/DXHHubsuONJESJOwtI/XdS9gYCTLpaC
	 QjKBFXWer1Ztw==
From: Bjorn Andersson <andersson@kernel.org>
To: agross@kernel.org,
	konrad.dybcio@linaro.org,
	wim@linux-watchdog.org,
	linux@roeck-us.net,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	quic_saipraka@quicinc.com,
	linux-arm-msm@vger.kernel.org,
	linux-watchdog@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Robert Marko <robimarko@gmail.com>
Cc: Conor Dooley <conor.dooley@microchip.com>
Subject: Re: (subset) [PATCH v2 1/2] dt-bindings: watchdog: qcom-wdt: document IPQ5018
Date: Tue, 19 Sep 2023 19:14:02 -0700
Message-ID: <169517603990.822793.6632260895287617003.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230816161455.3310629-1-robimarko@gmail.com>
References: <20230816161455.3310629-1-robimarko@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Wed, 16 Aug 2023 18:13:59 +0200, Robert Marko wrote:
> Document the IPQ5018 watchdog compatible.
> 
> 

Applied, thanks!

[2/2] arm64: dts: qcom: ipq5018: add WDT
      commit: 9cbaee8379e620f82112002f973adde19679df31

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

