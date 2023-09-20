Return-Path: <devicetree+bounces-1596-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A6FC7A7159
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 05:56:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 43D8D281ADE
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 03:56:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B1BB4420;
	Wed, 20 Sep 2023 03:55:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CCC8440D
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 03:55:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DC651C433C8;
	Wed, 20 Sep 2023 03:55:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695182108;
	bh=KLd/KTuYcUQ+62+oF51ABS8/yjh5Boe6tRWlpvMIzCg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=kyf3Q1HmELPksD9KQVp8/G/536tKmm+xgFkGcwsJE1cw4HROmw2cTG50zTS2kCINl
	 G8mnEMf5IBenh1Bl1QzaZxsinSd7KB2yxBJ95JzdoAKVnYmZP8Luyae2t0ypYN/YPN
	 TK9vS4avKL4yC7RwSoQ3plv+htNfrU7SSpHzaVzSZwrVU1S+nZ0T+ffK6yQ7ti40Vz
	 vDghR0iSnQbWqUdE0+8HIQ5+ntx6pouauqSGU6XanOfR4OhxOWeL+FTT2locjWjSAt
	 4u5YcFWluXNrIab0sLez0xG8DSBWvh2cDuAbuknmfrbst4om/86n11iSdkxDzutEHg
	 6KudLL6EfefMQ==
From: Bjorn Andersson <andersson@kernel.org>
To: LKML <linux-kernel@vger.kernel.org>,
	Sheng-Liang Pan <sheng-liang.pan@quanta.corp-partner.google.com>
Cc: dianders@chromium.org,
	Andy Gross <agross@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	cros-qcom-dts-watchers@chromium.org,
	devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v6 0/2] Add no-esim sku for sc7180-lazor family and new board version for audio codec ALC5682i-VS
Date: Tue, 19 Sep 2023 20:58:59 -0700
Message-ID: <169518233715.1055386.9590552786770708093.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230823071306.131373-1-sheng-liang.pan@quanta.corp-partner.google.com>
References: <20230823071306.131373-1-sheng-liang.pan@quanta.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Wed, 23 Aug 2023 15:13:04 +0800, Sheng-Liang Pan wrote:
> Changes in v6:
> - commit update, add dependent patch link
> - remove unnecessary symbol
> - sort out the order of properties
> 
> Changes in v5:
> - rebased on patch moving rt5682s to a fragment
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: arm: qcom: add sc7180-lazor board bindings
      commit: 5aca91ec55393b8829978b12062d658de0491f78
[2/2] arm64: dts: qcom: sc7180: Add sku_id and board id for lazor/limozeen
      commit: b8d34535a04c11b92a687c31a352c123ba21e22b

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

