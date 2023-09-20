Return-Path: <devicetree+bounces-1865-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 93B6F7A8A43
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 19:11:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A92581C209B6
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 17:11:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2CE13FB34;
	Wed, 20 Sep 2023 17:10:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B312F3D399
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 17:10:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8439DC433CD;
	Wed, 20 Sep 2023 17:10:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695229818;
	bh=8VWkm0TdywfC0jIWQS11HiuH5wZyMz1Bz0shb7h8EI8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=LEG8NKuSLe7lSF+Zh2Qc65LBBlq3O3/DHBSHK8A9MY7dwT6CTLkejprzAuP+fBTI/
	 3PTFDw29UOCBHjlZn+d9aJFIMvj3kGGoT8t4J2p/1KS0jiXWwOoIU041/cuPQ3Mbov
	 t9bzzPnaLE60Yx0CJHJ6Yqaca4mPxzf0K6N44wPrZqCNR70ofiMkSqwf6u79NvDh4L
	 J6hs/vGW2rvlNxNlG37HdwlQPdoifOADunm7XtxsWG2afyKnqmRdATOZmoyfwXV1aU
	 29UPU7QjLLZnKAVaPaAHUWISsa4qBsF/+pbc9dvMDyuyDxAfYozYJ35O5aCool8jkY
	 nGm5Kp0YZsyJQ==
From: Bjorn Andersson <andersson@kernel.org>
To: Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	"David S. Miller" <davem@davemloft.net>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Om Prakash Singh <quic_omprsing@quicinc.com>
Subject: Re: (subset) [PATCH v3 0/6] arm64: qcom: sm8550: enable RNG
Date: Wed, 20 Sep 2023 10:14:05 -0700
Message-ID: <169523004964.2665018.13328603087200481888.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230828-topic-sm8550-rng-v3-0-7a0678ca7988@linaro.org>
References: <20230828-topic-sm8550-rng-v3-0-7a0678ca7988@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Mon, 28 Aug 2023 10:04:35 +0200, Neil Armstrong wrote:
> Enable RNG on SM8550 by reverting the PRNG bindings & DT
> for SM8450 and correctly document it as a True Random Number Generator.
> 
> 

Applied, thanks!

[1/6] Revert "arm64: dts: qcom: sm8450: Add PRNG"
      commit: e735eab705cd0a9b3b98ffd746055c2c49e1572b

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

