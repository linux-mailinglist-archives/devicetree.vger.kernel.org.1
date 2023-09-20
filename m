Return-Path: <devicetree+bounces-1588-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C39127A714A
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 05:55:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E0C3D1C20A70
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 03:55:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 368303C04;
	Wed, 20 Sep 2023 03:55:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2662D3C00
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 03:55:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5031BC433C7;
	Wed, 20 Sep 2023 03:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695182100;
	bh=RwH1Noo13YikC7ey/ktmaTdR3UAhonYDslwWSOkwjuY=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=mXyCrNb78ecB/HaMuQHQUzr4tz8DevaYJ6QjopMb5Mbclb91FSCLB7EEqFb7aM7gb
	 9RN251fEFtWC1Hex89KeKy9XbX7MBC9Ejt19Y+8Ggv4wPutA1H2zwG4onoET5poVJ6
	 6pyGRk7HQ5iJ4bd/JQITMxxp4UVUBlpwyE8ZQlTFJ6EqlSeK/xkgMqWRUHkNCaDIil
	 j8dmfmYPM3ahjGD8xDY4T8ccFWsorTzPXDXtjPUkm20w1HSM5U8+oRk23jTVBFZhJD
	 hFCTBY5NBAWASi0XnIiwJ4WG3kOEq1fNR4UkuRgx4qjmV24b6iZv7fwnpMR4mwkqRL
	 8LE7p+1SoTOMQ==
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
Subject: Re: [PATCH 00/12] arm64: dts: qcom: correct UFS pad supply
Date: Tue, 19 Sep 2023 20:58:51 -0700
Message-ID: <169518233725.1055386.1525696529845914456.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230905161920.252013-1-krzysztof.kozlowski@linaro.org>
References: <20230905161920.252013-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Tue, 05 Sep 2023 18:19:08 +0200, Krzysztof Kozlowski wrote:
> Not tested on hardware.
> 
> Best regards,
> Krzysztof
> 
> Krzysztof Kozlowski (12):
>   arm64: dts: qcom: sm6125-sprout: drop incorrect UFS phy max current
>   arm64: dts: qcom: sm6125-sprout: correct UFS pad supply
>   arm64: dts: qcom: sm6115-pro1x: correct UFS pad supply
>   arm64: dts: qcom: sm6115p-j606f: correct UFS pad supply
>   arm64: dts: qcom: apq8096-db820c: correct UFS pad supply
>   arm64: dts: qcom: msm8996-oneplus: correct UFS pad supply
>   arm64: dts: qcom: msm8996-gemini: correct UFS pad supply
>   arm64: dts: qcom: msm8998-pro1: correct UFS pad supply
>   arm64: dts: qcom: msm8998-mtp: correct UFS pad supply
>   arm64: dts: qcom: msm8998-oneplus: correct UFS pad supply
>   arm64: dts: qcom: msm8998-sagit: correct UFS pad supply
>   arm64: dts: qcom: sm4250-billie2: correct UFS pad supply
> 
> [...]

Applied, thanks!

[01/12] arm64: dts: qcom: sm6125-sprout: drop incorrect UFS phy max current
        commit: 11bdfe69fb40ca6afdf6bd82946b8197fd7f6c70
[02/12] arm64: dts: qcom: sm6125-sprout: correct UFS pad supply
        commit: 08231f1fe620465890554b107032be330d1c66c7
[03/12] arm64: dts: qcom: sm6115-pro1x: correct UFS pad supply
        commit: 69a9275aeb9adeb223884c9754a8269fe33b0b88
[04/12] arm64: dts: qcom: sm6115p-j606f: correct UFS pad supply
        commit: 131b820c8dedf9516b39f74d82a43c5a0a858583
[05/12] arm64: dts: qcom: apq8096-db820c: correct UFS pad supply
        commit: 6dd6ba6cb3a75fd45e4a48502c184a9659728136
[06/12] arm64: dts: qcom: msm8996-oneplus: correct UFS pad supply
        commit: dfee6788a02c44bbe82a02c58db846ea6edfc630
[07/12] arm64: dts: qcom: msm8996-gemini: correct UFS pad supply
        commit: 38f6ac152fa641dc4a92a9d5f563ed2794f45b12
[08/12] arm64: dts: qcom: msm8998-pro1: correct UFS pad supply
        commit: 304e5c53649f79418cb0e2c5e738a4e1f61729b8
[09/12] arm64: dts: qcom: msm8998-mtp: correct UFS pad supply
        commit: e699305f858e1e18c90001065e156dd9d4646dcc
[10/12] arm64: dts: qcom: msm8998-oneplus: correct UFS pad supply
        commit: 39a123c50f12589949c8ec8b824bb61b94175cc0
[11/12] arm64: dts: qcom: msm8998-sagit: correct UFS pad supply
        commit: c50e34f09a437623fc98b5545b7a097cc9ca53dc
[12/12] arm64: dts: qcom: sm4250-billie2: correct UFS pad supply
        commit: a46e3a82aeb0282f80d6b512f8670da4ed12b973

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

