Return-Path: <devicetree+bounces-1527-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CB1847A6EF4
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 01:04:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DF6D81C20B11
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 23:04:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9C453717D;
	Tue, 19 Sep 2023 23:03:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB2CE46A1
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 23:03:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 18C80C43395;
	Tue, 19 Sep 2023 23:03:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695164623;
	bh=ivEhs/zpi0JLldx/NRni4lu2jJS2PyalHVCowMrgpWU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=jLactDbzMUkpRGeo3wUh/yX6l3F1Z+OP9F0+eHgseBYs4+6x3+3h5S1kIgo++/u+R
	 aBBugArR4+j+/jFhbNpxf8w5voA1wySejdOqewHie3ZElY15etSd1RYyf2nBHozgNj
	 DQyw24Km7pMwszPD54CgijbfsnHF1Cnapdk3yR7QcRJA4Fr0UQfwsSRv/Z5zk2Qv+R
	 gsOceD1Tkypi4GNFr9GXOSbV/vCMW8TLyr1oWeXGQ/uUWHYiBioQ49HT7ahNOivmH6
	 nWNlA09r714Axoezixs3n9B1SxXvH5quKfRT/wvNiIO5XHIFSS/m086nZqXjYSbhpO
	 mSvAAHUTclQ7g==
From: Bjorn Andersson <andersson@kernel.org>
To: Andy Gross <agross@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: (subset) [PATCH v2 0/3] SM6115 LPASS TLMM
Date: Tue, 19 Sep 2023 16:07:33 -0700
Message-ID: <169516485994.787935.15338594127555472104.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230722-topic-6115_lpasstlmm-v2-0-d4883831a858@linaro.org>
References: <20230722-topic-6115_lpasstlmm-v2-0-d4883831a858@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Mon, 24 Jul 2023 13:39:55 +0200, Konrad Dybcio wrote:
> This series introduces the bindings and driver for SM6115's LPI TLMM
> block and enables it as a module in the arm64 defconfig.
> 
> 

Applied, thanks!

[3/3] arm64: defconfig: enable Qualcomm SM6115 LPASS pinctrl
      commit: 2f98ed431b77cbaefd75f9690a671c5fe3c9c479

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

