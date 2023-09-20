Return-Path: <devicetree+bounces-1695-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D1B87A770D
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 11:19:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B88E62817B9
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 09:19:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E40C11738;
	Wed, 20 Sep 2023 09:19:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C3443D63
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 09:19:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E8352C433C8;
	Wed, 20 Sep 2023 09:19:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695201553;
	bh=9xBbxr+swRhwwQgmUTAanBRHI1SK4zTTAg4FJYXKK24=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Gwkcc8Xu5Nso+9thrscxOksnORUUzS6emX7ckBzzFxMBJUbeQsViBBg7tKz0IYHBe
	 3xSxW2DGNqUJQpjF34PagKy3hH3cKXS78UuR5ptd4VCnObq9SqHDuIxPy+Rdng4Y8U
	 Lsa1zPhYc55ZxPPTPJvLhF2jeJpl1avLsLfAKmcWhXsFzkWH0jL36nGGUl1sEEY/+4
	 /mAqv7azDV4eECtV/HS7JZ3Vojf9HTNzYKJ6Wsze4zOdZsNnJp8tTK3pFSL0fRR7bm
	 3tz3QRf/bFwz7LAEhAKqddoHPGQ8rnZNUgR8j6Sxe2+xa21kBRLRk4ffV1QcMgJ6vO
	 3GIDT/6cj8Mfw==
From: Lee Jones <lee@kernel.org>
To: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
 lee@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
 conor+dt@kernel.org, sboyd@kernel.org, luca.weiss@fairphone.com, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230816115151.501736-2-bryan.odonoghue@linaro.org>
References: <20230816115151.501736-1-bryan.odonoghue@linaro.org>
 <20230816115151.501736-2-bryan.odonoghue@linaro.org>
Subject: Re: (subset) [PATCH v9 1/7] dt-bindings: mfd: qcom,spmi-pmic: Add
 typec to SPMI device types
Message-Id: <169520155063.3348589.10688565387981596667.b4-ty@kernel.org>
Date: Wed, 20 Sep 2023 10:19:10 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.12.2

On Wed, 16 Aug 2023 12:51:45 +0100, Bryan O'Donoghue wrote:
> Add the PMIC Type-C port driver to the list of devices.
> 
> 

Applied, thanks!

[1/7] dt-bindings: mfd: qcom,spmi-pmic: Add typec to SPMI device types
      commit: 852355e98e45ec7f9adf06de92bba063424aa7cb

--
Lee Jones [李琼斯]


