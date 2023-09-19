Return-Path: <devicetree+bounces-1529-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 77BEE7A6EF6
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 01:04:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 31D582818D4
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 23:04:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4369838BB7;
	Tue, 19 Sep 2023 23:03:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3284A46A1
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 23:03:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4DB36C433C8;
	Tue, 19 Sep 2023 23:03:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695164626;
	bh=R+S5riwK7UdxE7czIhG41d7dQ35QLGYDwF1FupTD5ns=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=VM14q1ilkV02GAjri2z4l8WkZDjIJ78vWD4TCkHYC7rtckIeiHTMzzbwxDfVQN2a5
	 dXhayZOhXr40e4aHqdbrZtHABmVy9zmvO9ozASxs+bUmzG6iYyRaREhW5ckBK8FW8c
	 sf2pFads+sc7DeNFeGRDBFURs7POo6XyDCCPNmZcJ/9hnYsQ+ZubvSjtRaFyLpimSW
	 djBUhJ5CPQyHE0zLWorIeF6GNRZh7rE0BrrlxorBNejjsdE45oJo+5/yY0zuExJNuD
	 FlDsTQ6aXpaa8Wq+XJlvmN7v0LhWiTWGEegSciI7A5rPqdgBv5aY8xWhFV/j5IWcB9
	 JMacOGqZsCURA==
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
Subject: Re: (subset) [PATCH 1/2] arm64: dts: qcom: sc8180x: align USB DWC3 clocks with bindings
Date: Tue, 19 Sep 2023 16:07:35 -0700
Message-ID: <169516485987.787935.15143020408632490875.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230723141849.93078-1-krzysztof.kozlowski@linaro.org>
References: <20230723141849.93078-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Sun, 23 Jul 2023 16:18:48 +0200, Krzysztof Kozlowski wrote:
> Bindings require different order of clocks for USB DWC3 nodes (sleep
> before mock_utmi).
> 
> 

Applied, thanks!

[1/2] arm64: dts: qcom: sc8180x: align USB DWC3 clocks with bindings
      commit: 1e5fd509fef100aec1cdfc3f2d60b9eccd980de4
[2/2] arm64: dts: qcom: sdm630: align USB DWC3 clocks with bindings
      commit: 5af94c7c6578b39f03efbb9b5ee1809e894a0e58

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

