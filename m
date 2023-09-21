Return-Path: <devicetree+bounces-1971-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8109F7A953C
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 16:29:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 74C691C20A99
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 14:29:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9E51BA40;
	Thu, 21 Sep 2023 14:29:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8C2CBA26
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 14:29:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C9743C4E758;
	Thu, 21 Sep 2023 14:29:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695306566;
	bh=i7yPeuk2Yj5yCsGwQ+SXnhbxyv502egxjv2oc9SFNmE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=PCZ16C3C4Dbv8TEe8702mLOtUgACJfVB5x0outhchQVYNtesPJMUye/gHbkGDyXR+
	 P5ZVpxRfVNMZBl8VLIC59dERUnVdSsBy/EMkIZ2dV/PMqV0TIBS45ofEPTHtbdezB3
	 5Jb2qJZCTea3xOZ9eIwZtcTpH2hJyY0lrdE+r7M4k7Fykm0cGcI6l3ELkhtmOVuJ0T
	 Qfvb0QTm2Az1/rQuYtFXs7JKSmXl5THRc86wn7o8tfQgOqI/zAd4SAquhHygZPS7yE
	 CNPanpj9Q3Br/q8g+SLoDG/lxaw61miuswZ0ImVGlF6SQFjxW6RDK/wX0fv99xAJ2l
	 WmgeNvrRlPWkQ==
From: Vinod Koul <vkoul@kernel.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, Johan Hovold <johan@kernel.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org
In-Reply-To: <20230824211952.1397699-1-dmitry.baryshkov@linaro.org>
References: <20230824211952.1397699-1-dmitry.baryshkov@linaro.org>
Subject: Re: (subset) [PATCH v3 00/16] phy: qcom-qmp-usb: convert to newer
 style of bindings
Message-Id: <169530656347.106263.14330882289989442266.b4-ty@kernel.org>
Date: Thu, 21 Sep 2023 16:29:23 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3


On Fri, 25 Aug 2023 00:19:36 +0300, Dmitry Baryshkov wrote:
> Reviewing several patchsets for newer platforms made it clear that
> having two styles of QMP PHY bindings causes confusion. Despite binding
> documents having notes telling that old bindings should be used for
> older platforms, it is too easy to attempt adding new platform with
> older QMP PHY binding. Thus let's have just a single documented style of
> bindings.
> 
> [...]

Applied, thanks!

[01/16] dt-bindings: phy: migrate QMP USB PHY bindings to qcom,sc8280xp-qmp-usb3-uni-phy.yaml
        commit: 15c83637402c3654dbc7aac368119c3809a119fa
[02/16] phy: qcom-qmp-usb: simplify clock handling
        commit: 7233090aba54d82a1ed64f125b32c3ac0b91803c
[03/16] phy: qcom-qmp-usb: rework reset handling
        commit: fcf63482f6a9d383f04e409bc50f00eecb74ae73
[04/16] phy: qcom-qmp-usb: make QPHY_PCS_MISC_CLAMP_ENABLE access conditional
        commit: 6e9402261e8c85ec386b473ce3738d6e9d3e5013
[05/16] phy: qcom-qmp: move PCS MISC V4 registers to separate header
        commit: dc32762214e4bb683bfb21dcb4ade10e27e11c6d
[06/16] phy: qcom-qmp-usb: populate offsets configuration
        commit: 2be22aae6b18326426443d6c0cc9ac6985183a89

Best regards,
-- 
~Vinod



