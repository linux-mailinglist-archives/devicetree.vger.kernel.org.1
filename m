Return-Path: <devicetree+bounces-8738-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AC1377C9DE0
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 05:28:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2BD87B20CC7
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 03:28:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DD9F1FB7;
	Mon, 16 Oct 2023 03:28:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kDJWY3t0"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E52E4525A
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 03:28:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A384C433CA;
	Mon, 16 Oct 2023 03:28:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697426904;
	bh=0BG6gCVyQZ+FZsM7OGv9E0Z09ha0CQdOMKT/Ks/UcXM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=kDJWY3t01oZJupVLQGHdiE0thiRh8EZ6xVCCvd6bOhbgchUsbNTILleUB5USnV3fx
	 z0M/xQ14DBMbllfrz5NZi+DjKAf3Rolfm/qbT/IcWSkwUuwyLsRQCCjkdlDwYwOZLl
	 MEFVgEG2CUQeEgxg0nMPKXGjm9NsjCeFyCT7C7GMDVblDiv/FvsZ3zq9RPFsvh5jUO
	 ++lu0Cy6JI5pdzaitkeALG9aicc1nSpBVUB8iE9N62KEfR9YIskgRJR07Jlhn1wnBq
	 iZ4blnZAKWQmYuKWqqX0ZtFLSGz/4OzKA+5/muhwtVjlxwgz6yzNr2fuNJj2qBPcO7
	 TFKcr3kGHaTlQ==
From: Bjorn Andersson <andersson@kernel.org>
To: Om Prakash Singh <quic_omprsing@quicinc.com>
Cc: neil.armstrong@linaro.org,
	konrad.dybcio@linaro.org,
	agross@kernel.org,
	conor+dt@kernel.org,
	davem@davemloft.net,
	devicetree@vger.kernel.org,
	herbert@gondor.apana.org.au,
	krzysztof.kozlowski+dt@linaro.org,
	linux-arm-msm@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	marijn.suijten@somainline.org,
	robh+dt@kernel.org,
	vkoul@kernel.org
Subject: Re: (subset) [PATCH V1 0/4] Enable TRNG for SA8775P and SC7280
Date: Sun, 15 Oct 2023 20:32:09 -0700
Message-ID: <169742712188.930433.9590223142482523853.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231015193901.2344590-1-quic_omprsing@quicinc.com>
References: <20231015193901.2344590-1-quic_omprsing@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Mon, 16 Oct 2023 01:08:57 +0530, Om Prakash Singh wrote:
> Add device-tree nodes to enable TRNG for SA8775P and SC7280
> 
> *** BLURB HERE ***
> 
> Om Prakash Singh (4):
>   dt-bindings: crypto: qcom,prng: document SA8775P
>   dt-bindings: crypto: qcom,prng: document SC7280
>   arm64: dts: qcom: sa8775p: add TRNG node
>   arm64: dts: qcom: sc7280: add TRNG node
> 
> [...]

Applied, thanks!

[3/4] arm64: dts: qcom: sa8775p: add TRNG node
      commit: 2d04f31103921b8c21756ff9eeba32e3ece1a276
[4/4] arm64: dts: qcom: sc7280: add TRNG node
      commit: d9f33f465114b8d1ecbd5d0b5a4d5f7e709094d9

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

