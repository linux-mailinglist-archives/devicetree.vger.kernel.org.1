Return-Path: <devicetree+bounces-1551-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0705B7A703D
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 04:10:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A0FEC281586
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 02:10:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E833117CD;
	Wed, 20 Sep 2023 02:09:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D97891FA2
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 02:09:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 91D46C433C8;
	Wed, 20 Sep 2023 02:09:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695175799;
	bh=DFfP4IoEJmoEfhZtfQJFBZL2aVXZkiydQfe+9+2kgQY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=vAKQN8fdlgDjnF5U+3vA0iXnpdayVzjAbSyG2Z3Hx5HU5DYaH4lja6E5mZ8Z7dJyu
	 Z4ZuwAS3TpH4nLQ9WU1qQrjhn71WzW/BLVV88q2B3pumEHwOvNgtfyGroSAeYQZRxL
	 aTPla5ROb598YNQSmwDksQZIurUQ9RVOyjciZVMOuTAQhSFLSvITcKlxlzHhXmrtNQ
	 LXVWS3nwzc+vI5FYCgL6/0cSOFdzhq6T7TKmpbg3wKKwm0On/eZPZu8cbHKzW+Uqk/
	 Iig9bx/oANd4xS7utlOxymgTKhYVYfFdr8DHy71lRX3WHURNXH9iyXwWHJOfuJszD5
	 bc8Sf1VEt4sdA==
From: Bjorn Andersson <andersson@kernel.org>
To: Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Clark <robdclark@gmail.com>,
	Sean Paul <sean@poorly.run>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Stephen Boyd <swboyd@chromium.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org
Subject: Re: [PATCH v2 0/4] arm64: dts: qcom: qrb5165-rb5: enable DP support
Date: Tue, 19 Sep 2023 19:13:59 -0700
Message-ID: <169517603994.822793.9794338866644758315.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230817145940.9887-1-dmitry.baryshkov@linaro.org>
References: <20230817145940.9887-1-dmitry.baryshkov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Thu, 17 Aug 2023 17:59:36 +0300, Dmitry Baryshkov wrote:
> Implement DisplayPort support for the Qualcomm RB5 platform.
> 
> Note: while testing this, I had link training issues with several
> dongles with DP connectors. Other DisplayPort-USB-C dongles (with HDMI
> or VGA connectors) work perfectly.
> 
> Dependencies: [1]
> Soft-dependencies: [2], [3]
> 
> [...]

Applied, thanks!

[1/4] arm64: dts: qcom: sm8250: Add DisplayPort device node
      commit: 956aa24b16350a50d3a6beb9237bc35aa2f447d6
[2/4] arm64: dts: qcom: qrb5165-rb5: add onboard USB-C redriver
      commit: d342e1c993bd7589cad9d2da099c6a9c652ecb9f
[3/4] arm64: dts: qcom: qrb5165-rb5: enable displayport controller
      commit: 96387ee7534dc449be35a9bb98b7668da2bed545
[4/4] arm64: dts: qcom: qrb5165-rb5: enable DP altmode
      commit: b3dea914127e9065df003002ed13a2ef40d19877

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

