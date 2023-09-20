Return-Path: <devicetree+bounces-1860-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 926C57A8A24
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 19:10:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4E1CC281C3F
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 17:10:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 668623FB0A;
	Wed, 20 Sep 2023 17:10:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55BBE3D399
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 17:10:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 39327C433C7;
	Wed, 20 Sep 2023 17:10:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695229811;
	bh=KP9IcaiHNhAMnTzX+ZBEk7bOQS90xvHRMfHmkZfCs4A=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=TCqQckW883n+AiYIVWcDftPSvpKx/VWm7ewtENRzz0zuS5sDra2vBGnEvaZgFm4TR
	 gnx3+8a6r/OkibNQ3e+bKDtWIYkzSf28XiHYDt89dUNQXPrnjsNhV5VQqg5WzErGxT
	 agqWwyxrcYMXBFk0cxXSd0NfQWrWd/Ge8NDl+45zrVeroX5uFG21/fTLqLbY5aggLZ
	 5l4NT0bTshCLqahbqt9GAuxrDxbCQbtI6sD5jD5YhG6Y/IQwV8E6vnW8IGwmYGTwh/
	 p3EdqihTR3tRrszNH3/RJ9EjU4NhnHha2m3BOyk537AIfY/uO9/REWg5yYYKksXn46
	 sRrBKEzUDFdGg==
From: Bjorn Andersson <andersson@kernel.org>
To: Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH v3 00/18] phy: qcom-qmp-pcie: convert to newer style of bindings
Date: Wed, 20 Sep 2023 10:13:59 -0700
Message-ID: <169523004940.2665018.6127381308126268052.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230820142035.89903-1-dmitry.baryshkov@linaro.org>
References: <20230820142035.89903-1-dmitry.baryshkov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Sun, 20 Aug 2023 17:20:17 +0300, Dmitry Baryshkov wrote:
> Reviewing several patchsets for newer platforms made it clear that
> having two styles of QMP PHY bindings causes confusion. Despite binding
> documents having notes telling that old bindings should be used for
> older platforms, it is too easy to attempt adding new platform with
> older QMP PHY binding. Thus let's have just a single documented style of
> bindings.
> 
> [...]

Applied, thanks!

[18/18] ARM: dts: qcom-sdx55: switch PCIe QMP PHY to new style of bindings
        commit: bb56cff4ac0347fe5adb57659ceab338da7f8559

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

