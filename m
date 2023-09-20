Return-Path: <devicetree+bounces-1587-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ECFBE7A7145
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 05:55:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 290A61C20A1A
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 03:55:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5957C1FDF;
	Wed, 20 Sep 2023 03:54:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48E2E3C00
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 03:54:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5C88AC433CC;
	Wed, 20 Sep 2023 03:54:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695182099;
	bh=YB1y3YniIxZUraElg8KLKmN9/py1zDRKyK3VJvniHUc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=BUtdB3FCt8kKOfOzoJCZSG932f9J6RIhulw/mzyxqdgrP5FM+3ULM56SHhXcn46zL
	 4kOhSES1l8yA8QhCwJULmrs46eAAqX23eRRE0tXcVr3RRHa3UxmCynz0gI+jX0hzNG
	 G0vceT5CO01PtfRaHIXE/3iHwLFToksZTGEvnholFluXRSAxgR9dzu/59aJbbXGIv9
	 mjZyEBj8dxsObjYIYTX2Ob0niHWW6NPid3PMNj3wYPTbYB6G6RuSvzF+HOnFpNEG7c
	 /RVz8g2HC9XUWB2Aehyxdi2CF4UNRatm1nKbSD8RDTBf+o2qDxkm+ei8cWBkI+4Urx
	 uvn5usbVdnWCA==
From: Bjorn Andersson <andersson@kernel.org>
To: Andy Gross <agross@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Richard Acayan <mailingradian@gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sdm670: Fix pdc mapping
Date: Tue, 19 Sep 2023 20:58:50 -0700
Message-ID: <169518233712.1055386.17785713559908049172.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230818-topic-670_pdc_fix-v1-1-1ba025041de7@linaro.org>
References: <20230818-topic-670_pdc_fix-v1-1-1ba025041de7@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Fri, 18 Aug 2023 13:19:09 +0200, Konrad Dybcio wrote:
> As pointed out by Richard, I missed a non-continuity in one of the ranges.
> Fix it.
> 
> 

Applied, thanks!

[1/1] arm64: dts: qcom: sdm670: Fix pdc mapping
      commit: ad75cda991f7b335d3b2417f82db07680f92648a

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

