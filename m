Return-Path: <devicetree+bounces-20386-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 36C5B7FF133
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 15:07:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E7261281A18
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 14:07:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48853487A3;
	Thu, 30 Nov 2023 14:07:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eY+/hjb8"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1D038DE0
	for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 14:07:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D328AC433C8;
	Thu, 30 Nov 2023 14:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701353244;
	bh=bP9gIF1qF4Nngoergf+YlwyvyidP2LRuh9f3flnifSY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=eY+/hjb80pvffUfR18Y/9t5vQLaXI8OQZYlKum3cDsd78XY3r5g5GWpgWZ4gvGDdl
	 HITSTSNCFUBxnmh4Opngyi37KaxBariH7lFbnN2/Zw3kex6UE0zgCsKl+A+b9QAOIC
	 I3NMNIyf5aaAPNE8KgbWijORy4tMKxxKgkIFiFjPe3VecTS7eWfDf+CZL2W9W2YrBP
	 hp6nYbbKFHeF16SX1whX1bXKYZQ9rGmGTw27gYUdTmaAO/tCTPEzicQib8KhMaMUHb
	 dnaGNan328aAKNs17uGN9Fe758NR2xXIEEDI5YuWvyuS9qmWMz+1iLSkvc9ZvRTyT5
	 w39p+DfIhASog==
From: Lee Jones <lee@kernel.org>
To: lee@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
 conor+dt@kernel.org, miquel.raynal@bootlin.com, 
 Santhosh Kumar K <s-k6@ti.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org
In-Reply-To: <20231124045019.21003-1-s-k6@ti.com>
References: <20231124045019.21003-1-s-k6@ti.com>
Subject: Re: (subset) [PATCH v2] dt-bindings: mfd: ti,am3359-tscadc: Allow
 dmas property to be optional
Message-Id: <170135324258.3259675.3935588909848820.b4-ty@kernel.org>
Date: Thu, 30 Nov 2023 14:07:22 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.12.3

On Fri, 24 Nov 2023 10:20:19 +0530, Santhosh Kumar K wrote:
> ADC module can function without DMA, so there may not be dma channel
> always associated with device. Hence, remove "dmas", "dma-names" from list
> of required properties.
> 
> 

Applied, thanks!

[1/1] dt-bindings: mfd: ti,am3359-tscadc: Allow dmas property to be optional
      commit: 968baa6a0c18a3bd0f5bb7c4b50ba3081e2a64cf

--
Lee Jones [李琼斯]


