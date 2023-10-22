Return-Path: <devicetree+bounces-10616-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E6997D23B3
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 17:46:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D694CB20D87
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 15:46:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30C4E10950;
	Sun, 22 Oct 2023 15:46:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a/RTYhLY"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F168107B4
	for <devicetree@vger.kernel.org>; Sun, 22 Oct 2023 15:46:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5076CC433C7;
	Sun, 22 Oct 2023 15:46:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697989578;
	bh=DetEMdiRD6MGqVtSW2k7LUFnENO0dedBHH9GU+rM+SI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=a/RTYhLYRkfZadEsok7DCOgCXivU8FProHQzWUGJ/DwKSY8opBoVeHiYET0RF6YJL
	 2UBmXwfqhC01/3fvDrqIsqZ121GpIA4o/1sHP9Vj8LE0HJ0rGAQVyZzKil+kpUtQok
	 iiAmT1cWH244idnuTYLuvEjN0gO1UqqPN/l/tjhsXo9EEo3+Ii4bdv9HK0vd88P2Vo
	 aYOSPfnbxMYbBcrxssoLuE74s8ikNrhunvaTRwe+oB8WDC4j01Oj5/VQg7Qb9e49pR
	 5Tg3Y161ioi6+xZDUtNt8dL7yWeOclW+dJL9SlVS3GqRgHvXiW1C5w1XQIoemXTD9D
	 4popM2snj/AyA==
From: Bjorn Andersson <andersson@kernel.org>
To: Stephan Gerhold <stephan@gerhold.net>
Cc: Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/3] arm64: dts: qcom: msm8916/39: Fix-ups for dynamic reserved mem patches
Date: Sun, 22 Oct 2023 08:50:25 -0700
Message-ID: <169798982295.271027.6626600075646673370.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230921-msm8916-rmem-fixups-v1-0-34d2b6e721cf@gerhold.net>
References: <20230921-msm8916-rmem-fixups-v1-0-34d2b6e721cf@gerhold.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Thu, 21 Sep 2023 20:56:03 +0200, Stephan Gerhold wrote:
> Enable GPU/WCNSS properly in some MSM8916/MSM8939 boards that were
> changed after I sent the patches for the dynamic reserved memory
> allocation.
> 
> I have magic scripts that make the necessary changes automatically so
> I'm quite sure that I caught all new instances that need adjustment. :-)
> 
> [...]

Applied, thanks!

[1/3] arm64: dts: qcom: msm8916-samsung-gt5: Enable GPU
      commit: e87cef6a035edc03b4ac98f88121c706b2843156
[2/3] arm64: dts: qcom: msm8939-longcheer-l9100: Enable wcnss_mem
      commit: d63ae4a814a763a5d2d4d078073562698693a909
[3/3] arm64: dts: qcom: msm8916-*: Fix alphabetic node order
      commit: b364cc485da1b769f1ead705dcd853e87b42f96e

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

