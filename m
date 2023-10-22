Return-Path: <devicetree+bounces-10607-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BFE3C7D239F
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 17:46:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DD51E1C209DE
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 15:46:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F71E107A1;
	Sun, 22 Oct 2023 15:46:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UEDDOjk8"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A41163B2
	for <devicetree@vger.kernel.org>; Sun, 22 Oct 2023 15:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DED23C433C7;
	Sun, 22 Oct 2023 15:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697989566;
	bh=286IEr6Au2fjEg8EUTjPOBmNUpcywoLU8+MN1g61aBw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=UEDDOjk8xf2FP5mSSbJHg1CbKwjRtRe+R+MVb4G5Zvs7mxtvJjDe98jIJZwDwyOYj
	 Pj0hXih9Fd6hnKmoJjQu+bTuOvZQkPqS32qxg1EETMkexyqM3YtAq0H7yrOH522Zg0
	 LJa/WNSB302anTADe5FpE2214g4iNCyUYQQur2mepRyAhrvTXccN5Z+Ukg56NfBrcz
	 PSWBGpN9qDwqf6e4JqLnL2b5pckOp7sxZ9RjP5bsaMsWGmQnGVLeEasdvEtX/slfoN
	 guMiZIJA8arhpeEJb0tGHHJa62CEdBEU2Vl063zmgEERwBtzg9VkE64DbvHWusQw2r
	 iYdqofxEKtLEA==
From: Bjorn Andersson <andersson@kernel.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: sc8280xp-x13s: add missing camera LED pin config
Date: Sun, 22 Oct 2023 08:50:14 -0700
Message-ID: <169798982330.271027.9186412119973993390.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231003093647.3840-1-johan+linaro@kernel.org>
References: <20231003093647.3840-1-johan+linaro@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Tue, 03 Oct 2023 11:36:47 +0200, Johan Hovold wrote:
> Add the missing pin configuration for the recently added camera
> indicator LED.
> 
> 

Applied, thanks!

[1/1] arm64: dts: qcom: sc8280xp-x13s: add missing camera LED pin config
      commit: a3457cc5bc30ad053c90ae9f14e9b7723d204a98

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

