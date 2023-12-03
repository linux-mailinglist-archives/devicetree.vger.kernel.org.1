Return-Path: <devicetree+bounces-21036-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 690EA8020DF
	for <lists+devicetree@lfdr.de>; Sun,  3 Dec 2023 05:52:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 993281C20942
	for <lists+devicetree@lfdr.de>; Sun,  3 Dec 2023 04:52:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6828228F1;
	Sun,  3 Dec 2023 04:51:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iWQUQqql"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44471258C;
	Sun,  3 Dec 2023 04:51:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2D63BC433CB;
	Sun,  3 Dec 2023 04:51:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701579118;
	bh=tpslFBFUdoUYnmtU0ha+7cWVGnpRVis8xcl35eJNYRg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=iWQUQqqlFuCzGgB4OUGFfZcsAXxVe3bpeoLJjZ9UVjzfUBjgUgDE+Q5AirQDIhCRA
	 8vC6N9fYnWV8z5qe33y71O+/AIHIxXGJNLP9zsbDWjKHpeLFxItst3HovbqBD8yzXM
	 oIoZTvPuEScw4CvRmN6RzfOnARv0/KSh8q5iVn89DZyqyJWBnODLMSWconIjaLpwWO
	 cUq1T25ntgxwKs9NrB3LlunsYbtOESTW0QN/nDvRBd+k6KAQrVPRN0ntfdurx5Wo04
	 42kI5pMbq8ERjdV1Pe0oTIW85o2BNshKdTm0q5i2zsFEzHeEO4B0nanONrKBo3IsRQ
	 mu34Lga2xkqIA==
From: Bjorn Andersson <andersson@kernel.org>
To: Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Lukas Walter <lukas.walter@aceart.de>
Cc: ~postmarketos/upstreaming@lists.sr.ht,
	phone-devel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: (subset) [PATCH 1/2] dt-bindings: arm: qcom: Add Huawei Honor 5X / GR5 (2016)
Date: Sat,  2 Dec 2023 20:54:45 -0800
Message-ID: <170157925830.1717511.2933416466366395463.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231021143025.77088-1-lukas.walter@aceart.de>
References: <20231021143025.77088-1-lukas.walter@aceart.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Sat, 21 Oct 2023 16:30:24 +0200, Lukas Walter wrote:
> Add a compatible for Huawei Honor 5X / GR5 (2016).
> 
> 

Applied, thanks!

[1/2] dt-bindings: arm: qcom: Add Huawei Honor 5X / GR5 (2016)
      commit: 01a3c3739183003640f8468ecf75d7eeb15f808a
[2/2] arm64: dts: qcom: msm8939-huawei-kiwi: Add initial device tree
      commit: cff9a76f306bfb6262153c0da2029071036b9a04

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

