Return-Path: <devicetree+bounces-1868-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 67CC47A8A49
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 19:11:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 23630281A06
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 17:11:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CEAA450ED;
	Wed, 20 Sep 2023 17:10:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C21B450CD
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 17:10:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5036EC433CA;
	Wed, 20 Sep 2023 17:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695229823;
	bh=u5gZSSDuo6bC0Rf1ntYLT4MADeEqbRtBchnHNiD3jso=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=gGdc8wpw46wpbq+2K6KBvvl8w2hOQ3WF/XPGskKzYGMC+eQo44HkOSLF8SAk+/r0l
	 avuH4AdjzwfUpQQwVtWwfZWnlIFEKaUvAwADmpu/U88n49pMBLmw283B16pc38J4ze
	 WJOcYdTRimE2xzXfS2WzZ5ttY9ffSv2XI5x5sfvFMGUar428CKbWILAmeLnPkAutCx
	 Wg9Ewa7ViWtFq06DZYfwyV//Ha7wpqda9T6jk7zQfJ9IyIWNfomF1BgUVFZXpCMBTV
	 dCkE/nrAyEAolm4sCalMNnrk14CNLpL4gzNBGAw+jrybM7U0xEW3MbpY21K6DYkGnt
	 bwsKq+F+xb/0Q==
From: Bjorn Andersson <andersson@kernel.org>
To: agross@kernel.org,
	konrad.dybcio@linaro.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	srinivas.kandagatla@linaro.org,
	bryan.odonoghue@linaro.org,
	Komal Bajaj <quic_kbajaj@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v8 0/6] soc: qcom: llcc: Add support for QDU1000/QRU1000
Date: Wed, 20 Sep 2023 10:14:09 -0700
Message-ID: <169523004944.2665018.13586229919901477277.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230830105654.28057-1-quic_kbajaj@quicinc.com>
References: <20230830105654.28057-1-quic_kbajaj@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Wed, 30 Aug 2023 16:26:48 +0530, Komal Bajaj wrote:
> This patch series does the following -
>  * Refactor LLCC driver to support multiple configuration
>  * Add stub function for nvmem_cell_read_u8
>  * Add support for multi channel DDR configuration in LLCC
>  * Add LLCC support for the Qualcomm QDU1000 and QRU1000 SoCs
> 
> Changes in v8 -
>  - Removed macro DEF_NUM_CFG as suggested by Bryan.
>  - Rebased on top of linux-next/master.
>  - Link to v7: https://lore.kernel.org/all/20230810061140.15608-1-quic_kbajaj@quicinc.com/
> 
> [...]

Applied, thanks!

[1/6] dt-bindings: cache: qcom,llcc: Add LLCC compatible for QDU1000/QRU1000
      commit: 8e2506d0123149a7b7846fbabbf4295b6005faf4
[2/6] soc: qcom: llcc: Refactor llcc driver to support multiple configuration
      commit: 16fa93112f26a7a151f3d86a2a9223c564f6e3bf
[3/6] nvmem: core: Add stub for nvmem_cell_read_u8
      commit: 54e1f99d91405417b3ddb6050cfba82733c3aa41
[4/6] soc: qcom: Add LLCC support for multi channel DDR
      commit: a78502a4b2201235d93b04ac2902e01e32588bd5
[5/6] soc: qcom: llcc: Updating the macro name
      commit: 0bc76be64e80b15b975345b6957a87a1893c34f2
[6/6] soc: qcom: llcc: Add QDU1000 and QRU1000 LLCC support
      commit: db1e57928766966cd542e59789125968ac29b9da

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

