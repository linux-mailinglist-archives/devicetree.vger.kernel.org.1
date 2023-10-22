Return-Path: <devicetree+bounces-10612-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 704C17D23A7
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 17:46:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 35C3228111E
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 15:46:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA5D210949;
	Sun, 22 Oct 2023 15:46:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PtzdmEYG"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE86710782
	for <devicetree@vger.kernel.org>; Sun, 22 Oct 2023 15:46:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 45E39C433D9;
	Sun, 22 Oct 2023 15:46:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697989573;
	bh=MgO5bjMvpO11GfjTzQbZpeaD/9DseAWTE89B2Y+hElw=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=PtzdmEYGtj1cFaaoEmaKgRC0lx+zqSu+Ia4BgCW2yxDArvcqTqroikivsf3akkOxE
	 vgl8wkv88uZHy0HWPUn+5niaK9CeB3wIBa1xod7c4vX8w4zpQ+fuEwMK+ibAIqa8fO
	 bJTE0+st8rKyJlW1p1ZbDWfFFnsDQRc2ULqmjq3YLCzSo8Gb2tntAMXN9nBhFAKODV
	 6r58pWMFmzdyGxqwfc4G1PxyxmdTsfenVpupPitDkTETvEVAJc+Lo+juySxcoLDUQs
	 oaT7Je3cFbA7ahS/Eb8WCCKISYy44G0jsqg5q4zkU3yIwj3M6s1c7tNQVAZnBlRXK8
	 k8bYd1umtEDtw==
From: Bjorn Andersson <andersson@kernel.org>
To: "Rafael J. Wysocki" <rafael@kernel.org>,
	Viresh Kumar <viresh.kumar@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Georgi Djakov <djakov@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Sibi Sankar <quic_sibis@quicinc.com>,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	Richard Acayan <mailingradian@gmail.com>
Subject: Re: (subset) [PATCH v2 0/3] SDM670 CPU frequency scaling: dtschema fixes
Date: Sun, 22 Oct 2023 08:50:20 -0700
Message-ID: <169798982274.271027.14966618047695117026.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230816230412.76862-6-mailingradian@gmail.com>
References: <20230816230412.76862-6-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Wed, 16 Aug 2023 19:04:14 -0400, Richard Acayan wrote:
> Changes since v1 (20230815223108.306018-5-mailingradian@gmail.com):
>  - add compatible to allOf area (2/3)
>  - change subject line (Acked-by tag retained) (1/3)
>  - add fixes tag (2/3)
> 
> This adds appropriate compatible strings to pass bindings checks.
> 
> [...]

Applied, thanks!

[3/3] arm64: dts: qcom: sdm670: add specific cpufreq compatible
      commit: 032ff6a3b39addd54427844affaf21e1e80fabc2

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

