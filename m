Return-Path: <devicetree+bounces-1531-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D0E0A7A6EF8
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 01:04:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8C8F22819B4
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 23:04:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E507C38BBE;
	Tue, 19 Sep 2023 23:03:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5CF946A1
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 23:03:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3FDEDC433D9;
	Tue, 19 Sep 2023 23:03:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695164628;
	bh=BKSCEpcWTMGHY3XimOTfIsJcw1YDM09kC6XQg+YxKRw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=vIje+1moVku665frSsXPDsvLHtTnmT7/r7Q5eGD8IKM8Qw538I6lRqvD1leH+mpLf
	 3rg7JUUTBz0ybmbDOjE8QN43rovgQWQUW5yGAKDENFFwGvwSvJDMEarRgXyxrovhh1
	 XC0czCu6Wkp2oLC0sxEEMekX7eRn1FBwFuw8fEXUimQNx6ax42VdHZaqT/XYoJjnKk
	 ztie/zPGruKuxRX3lQALSv2zMrG6QpQGWObXGskdcLxB0wKhh8VINMwQco1Cqck4Yi
	 J8fJxblgpUKy2Lph1XhwuElYfGBgWyZacUrs1YHhmSXRMcScWkZTCEJJNe5wLedRVL
	 Xd/rYP1X3x8IA==
From: Bjorn Andersson <andersson@kernel.org>
To: Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh@kernel.org>
Subject: Re: (subset) [PATCH v3 1/3] dt-bindings: pinctrl: qcom,sm8350-lpass-lpi: add SM8350 LPASS TLMM
Date: Tue, 19 Sep 2023 16:07:37 -0700
Message-ID: <169516485987.787935.2244475537859107114.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230719192058.433517-1-krzysztof.kozlowski@linaro.org>
References: <20230719192058.433517-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Wed, 19 Jul 2023 21:20:56 +0200, Krzysztof Kozlowski wrote:
> Add bindings for pin controller in SM8350 Low Power Audio SubSystem
> (LPASS).
> 
> 

Applied, thanks!

[3/3] arm64: defconfig: enable Qualcomm SM8350 LPASS pinctrl
      commit: 7a9d9ee88cdb25d6241021317bcb3874d0fa7153

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

