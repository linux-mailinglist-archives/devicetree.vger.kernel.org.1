Return-Path: <devicetree+bounces-1534-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 118297A6F22
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 01:04:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C195D280DF9
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 23:04:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5C2D38DD2;
	Tue, 19 Sep 2023 23:03:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A378E36AE2
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 23:03:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 53B73C433CB;
	Tue, 19 Sep 2023 23:03:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695164632;
	bh=9JPk/GnPXNyAivpcwuGojuU8M2bc6bbcZIAp5O0Gbao=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=YjsvT1wovZ3ZyCQBHj+1+2m/Rnv0NEX90ttFgKP0/X3WyrSjL7169o07sOV+qkSJO
	 neQomVybJTjDhRNwaQ4cRvi1+M0z0lT/LDVIQrBdtX165x7MuhHviWBYliotN25ITz
	 DQAJ2li6LuLYPR+JwZ8n8ant18yFzgfIiAbYJ637qbpyilUTrb4r1TGe8ZdGWFbm6h
	 CBYnyVJbUA4fMrCRBarg9YUGA5ddA4G6g7K8zTEJLo7EqW5Cj0/FHjPK7JPQMX4B17
	 T/vvdQyHQVd0K/ZNwrx3XhSQnjD7EWD24MqG3/s1QrrIFGnBe0GzlEBzKbZLW2kNBd
	 YpLPuzmUhpEWQ==
From: Bjorn Andersson <andersson@kernel.org>
To: Andy Gross <agross@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Clark <robdclark@gmail.com>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Sean Paul <sean@poorly.run>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Krishna Manikandan <quic_mkrishn@quicinc.com>,
	Loic Poulain <loic.poulain@linaro.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Marijn Suijten <marijn.suijten@somainline.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Martin Botka <martin.botka@somainline.org>,
	Jami Kettunen <jami.kettunen@somainline.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk@kernel.org>,
	linux-clk@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org,
	Lux Aliaga <they@mint.lgbt>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: (subset) [PATCH v4 00/17] drm/msm: Add SM6125 MDSS/DPU hardware and enable Sony Xperia 10 II panel
Date: Tue, 19 Sep 2023 16:07:40 -0700
Message-ID: <169516485993.787935.1547209942193391755.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230723-sm6125-dpu-v4-0-a3f287dd6c07@somainline.org>
References: <20230723-sm6125-dpu-v4-0-a3f287dd6c07@somainline.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Sun, 23 Jul 2023 18:08:38 +0200, Marijn Suijten wrote:
> Bring up the SM6125 DPU now that all preliminary series (such as INTF
> TE) have been merged (for me to test the hardware properly), and most
> other conflicting work (barring ongoing catalog *improvements*) has made
> its way in as well or is still being discussed.
> 
> The second part of the series complements that by immediately utilizing
> this hardware in DT, and even enabling the MDSS/DSI nodes complete with
> a 6.0" 1080x2520 panel for Sony's Seine PDX201 (Xperia 10 II).
> 
> [...]

Applied, thanks!

[02/17] arm64: dts: qcom: sm6125: Pad APPS IOMMU address to 8 characters
        commit: 310cdafc4a56827d1aeda7cc297939034adb8f99
[03/17] arm64: dts: qcom: sm6125: Sort spmi_bus node numerically by reg
        commit: 3d06cee2249f4764f01a9f602ec1cc1bf4562ca6
[14/17] arm64: dts: qcom: sm6125: Switch fixed xo_board clock to RPM XO clock
        commit: cbe82d7d0b149aa9c0c000f7ffd2b18bfd248d35
[15/17] arm64: dts: qcom: sm6125: Add dispcc node
        commit: 4988881ec067c3e6d382de1583b7f5b1095ddea2
[16/17] arm64: dts: qcom: sm6125: Add display hardware nodes
        commit: 0865d23a02260a76963bd18d9ae603e77cdd0eba
[17/17] arm64: dts: qcom: sm6125-seine: Configure MDSS, DSI and panel
        commit: 5078dfe3c5c7b8d2d6494c26de81a4f3d4a5a3d7

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

