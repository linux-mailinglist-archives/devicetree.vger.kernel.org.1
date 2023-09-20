Return-Path: <devicetree+bounces-1863-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A8A27A8A3D
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 19:10:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2B6FB1C2087F
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 17:10:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35B553FB20;
	Wed, 20 Sep 2023 17:10:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2171D3D399
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 17:10:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 23884C433CB;
	Wed, 20 Sep 2023 17:10:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695229816;
	bh=ffoIJVvj5rKT27gchGJm/7DiJGZLbaObPIL49iF12PM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=qMn15jip586IfOOvPd1IyjxMrf1cA4peJeiQFHvFNOcQ9edykYlFfyhgPeJuxM+81
	 HVk1rV7vIvWSXp3jl/oXIaD5Uv0NHe2Uhcb8AuoYOndsq5XSgnjBW9mORkusLdcPaL
	 q448OMONyJXgDnQsEdcA+l3CXtanEvQAeSoy1rmz+COs0V8YS+ZaStyB6CTSpOBkyz
	 d2JaYLgWkqXCXi4Zx1x5YPI88IbsrBWGNP7kNEdpRGcKJl2ymivwKtgJlKOcEG6eJ1
	 ZVFy91jeJl8Au6uS0ocJYQeVA94CCiSzWCrhQ/KggP7FOW6qpt6MWjkxGhZ0tKO07a
	 JeSAeBina2uEA==
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
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	stable@vger.kernel.org
Subject: Re: [RFT PATCH 1/2] arm64: dts: qcom: apq8096-db820c: fix missing clock populate
Date: Wed, 20 Sep 2023 10:14:03 -0700
Message-ID: <169523004953.2665018.6144096426032891536.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230901081812.19121-1-krzysztof.kozlowski@linaro.org>
References: <20230901081812.19121-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Fri, 01 Sep 2023 10:18:11 +0200, Krzysztof Kozlowski wrote:
> Commit 704e26678c8d ("arm64: dts: qcom: apq8096-db820c: drop simple-bus
> from clocks") removed "simple-bus" compatible from "clocks" node, but
> one of the clocks - divclk1 - is a gpio-gate-clock, which does not have
> CLK_OF_DECLARE.  This means it will not be instantiated if placed in
> some subnode.  Move the clocks to the root node, so regular devices will
> be populated.
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: qcom: apq8096-db820c: fix missing clock populate
      commit: 2ca3e844e3f978c0dbc95072dbf379abfc4a27db
[2/2] arm64: dts: qcom: msm8996-xiaomi: fix missing clock populate
      commit: 725f593692ceedeab639b661298955b6f9ba8ec3

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

