Return-Path: <devicetree+bounces-1466-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C58B37A6795
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 17:08:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CD3AB1C20937
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 15:08:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB05B3B79A;
	Tue, 19 Sep 2023 15:08:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E58673B782
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 15:08:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2E638C433C8;
	Tue, 19 Sep 2023 15:08:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695136114;
	bh=czDJHRpcAR6BNkFpOvyDtvqKNrVlVuj2/gAeQgeuUeY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=hZBfzz7xXUVah5tPGzsdhbSkSRbvAVJMkiagKx1B/UtvUhe0dgPV6zAQEraA8XOhq
	 176Q7Esss5Td9HCVXT46wwk3ftH0BZzUwdU2UJSOnMRmq9wJhUCqwJ2rJa4mI31wxw
	 28Qc8EKGZ9ov8miIYHYOWCx1UbC5vS5cN9FNRR0NeAtzDK8/QFYg//u8HVbVOOXvK/
	 r5uPJDMIWfZjzeObW8UjQWaZh6Z99NJnIfXebmR5c6kysryPhoboFBUUUdpG/leIBP
	 uWIk4H8GhGHS66h2iGzdYSc9wr5mLhvukeuIUJkYv4Rp4PMUjpopUIRBFq42/mZf8E
	 PIeNCuj7aEsUA==
From: Lee Jones <lee@kernel.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230821232532.3110607-1-dmitry.baryshkov@linaro.org>
References: <20230821232532.3110607-1-dmitry.baryshkov@linaro.org>
Subject: Re: (subset) [PATCH v2] dt-bindings: mfd: qcom-spmi-pmic: add
 pm8450 entry
Message-Id: <169513611189.3257807.3120090917293713051.b4-ty@kernel.org>
Date: Tue, 19 Sep 2023 16:08:31 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.12.2

On Tue, 22 Aug 2023 02:25:32 +0300, Dmitry Baryshkov wrote:
> Add bindings for the PM8450 PMIC (qcom,pm8450). No driver changes are
> necessary, since the PMIC is handled by the generic qcom,spmi-pmic
> entry.
> 
> 

Applied, thanks!

[1/1] dt-bindings: mfd: qcom-spmi-pmic: add pm8450 entry
      commit: eec152967faf6befb34ce4828798d699aadab6c5

--
Lee Jones [李琼斯]


