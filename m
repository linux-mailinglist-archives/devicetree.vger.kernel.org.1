Return-Path: <devicetree+bounces-1526-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AD297A6EF3
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 01:04:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 53B9728177C
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 23:04:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EE6F37153;
	Tue, 19 Sep 2023 23:03:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C86A46A1
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 23:03:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EA70BC433C8;
	Tue, 19 Sep 2023 23:03:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695164621;
	bh=nnYY7JEJ7bFSMtO/wZJytTWM6LCJzG6A9H+PGbDlH84=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Dka5hH4kX9w5iZs5TKRfVjW9O8Fl+15LcYDCF5x+oiHQbbmVRUFKiYpQVIaHtV/MA
	 KcGPQhKahtC4Yf378ZMZa5PQl3IJytw7o/g5wY+TJBEHeW4w+Ty917kMKGl+6lqPHH
	 hfS9wxzjvIfFuxxrXCkDFEwoGewJ5JoFL+gMDT1eYmIP4I1pUXPQFSlk6sKOg111ib
	 JFcqSi4EgSH6iSPgb88bQ72DjIXQyTPR1W9+DRP0kEK00btR/4EHmqr7yoZDQEncx3
	 YxxyNLpX4LmbLFTHHyPsDXbvrljNuRiE0OkqmIn8qxL2NecFXfJRQK/vHTczkDIV87
	 hI8wNaIT9vXGw==
From: Bjorn Andersson <andersson@kernel.org>
To: cros-qcom-dts-watchers@chromium.org,
	Andy Gross <agross@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Taniya Das <quic_tdas@quicinc.com>,
	Matthias Kaehlcke <mka@chromium.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFT] arm64: dts: qcom: sc7280: Add missing LMH interrupts
Date: Tue, 19 Sep 2023 16:07:32 -0700
Message-ID: <169516486002.787935.10123239154326346450.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230811-topic-7280_lmhirq-v1-1-c262b6a25c8f@linaro.org>
References: <20230811-topic-7280_lmhirq-v1-1-c262b6a25c8f@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Fri, 11 Aug 2023 22:58:22 +0200, Konrad Dybcio wrote:
> Hook up the interrupts that signal the Limits Management Hardware has
> started some sort of throttling action.
> 
> 

Applied, thanks!

[1/1] arm64: dts: qcom: sc7280: Add missing LMH interrupts
      commit: 3f93d119c9d6e1744d55cd48af764160a1a3aca3

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

