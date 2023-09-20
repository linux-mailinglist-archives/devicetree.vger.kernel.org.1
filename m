Return-Path: <devicetree+bounces-1883-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 79ED57A8B52
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 20:13:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 18449B20A37
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 18:13:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 787C83CCEC;
	Wed, 20 Sep 2023 18:11:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68AA13CCE0
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 18:11:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BC852C433C8;
	Wed, 20 Sep 2023 18:11:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695233484;
	bh=eBhQGHLnDBA306YDLUtLnfWfnfa686CaUaNAJLwdKnQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=cjBssFR+sHxsHVeFelfJ9QS31m7R5ZqOWqbelESqVVyC3astpMIcQirTaHiXeJzhZ
	 Yk30FBs7I8xcxYFDp6UipAdYgVj7y7UW2l1BRaeQx9iNz3BMaH4iF2qhELX8T+6EPj
	 Dwd07GRZgBD32pU+uuDT5oL1UdF0U0a8KCsBOTiGYhpnwTM9PjkfhydyqTIPIxITF+
	 fYKR6LYuAgdzjBIXd0Yb7Kb721q2+KB9jZmRwKdZrKb33kOy2Xd0THmXmlKdhTulgr
	 g0uciVYwXr7u52Flbv69ue49A7Vzfu117RGSM2N/YJbSEkWqcHanSqLC7F/sEU0yoZ
	 NdDz1UVfqR54A==
From: Bjorn Andersson <andersson@kernel.org>
To: Adam Skladowski <a39.skl@gmail.com>
Cc: phone-devel@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht,
	Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	AngeloGioacchino Del Regno <kholk11@gmail.com>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	linux-arm-msm@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH v3 0/7] MSM8976 PLL,RPMPD and DTS changes
Date: Wed, 20 Sep 2023 11:15:30 -0700
Message-ID: <169523372598.2994310.11789786910326394347.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230812112534.8610-1-a39.skl@gmail.com>
References: <20230812112534.8610-1-a39.skl@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Sat, 12 Aug 2023 13:24:43 +0200, Adam Skladowski wrote:
> This patch series fixes introduce support for msm8976 pll,
> also brings some adjustments and fixes domains setup and few dts nitpicks.
> 
> Changes since v1
> ================
> 1. Fixed few styling issues
> 2. Changed compatibles for plls
> 3. Added fixes: tag to first patch
> 
> [...]

Applied, thanks!

[6/7] arm64: dts: qcom: msm8976: Split lpass region
      commit: 31c133b4a07e3db456a7e661c96653cd65a25bc6
[7/7] arm64: dts: qcom: msm8976: Fix ipc bit shifts
      commit: 684277525c70f329300cc687e27248e405a4ff9e

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

