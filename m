Return-Path: <devicetree+bounces-1970-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F304E7A953B
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 16:29:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ACB15280F10
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 14:29:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BF59BA3A;
	Thu, 21 Sep 2023 14:29:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D29DBA26
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 14:29:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 85EC5C4E765;
	Thu, 21 Sep 2023 14:29:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695306563;
	bh=5pqxliWwkemKk42Pc3VBjDLFEFWsPXjl1Fd5EvGj9lc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=kp86v85AlW0PiTRcSowcXwNk+7N/m+mCEpy3HLzKWDLLQYRSzsde5Zw4a4N+sEshx
	 yMueOYJrdz2sVQXSPzcQCiwU3RpObeX3NW78bU3k6gsZLF1Shle89Vis62tra2pMiu
	 XgKP3f9aoWBhGxMzSv7z9RR1Rc27VR++yRbVo9d0wr2ZfBxOtmTPTTCYW9Sr0EnNjW
	 qWCwEw5y+GiOSizlEepHCKPD+kFD1y2QtfSyprxM81xaQb0Yvvfgwy4xglkyej8pav
	 kNJrt8Dl4gETkWSxyle8IgiULxbPTsVEPVoGIRuhrUYjkT5TRrNCwR19p5k2CryBQl
	 fsQRJXvVHoHwg==
From: Vinod Koul <vkoul@kernel.org>
To: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
 conor+dt@kernel.org, Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20230918205037.25658-1-quic_nitirawa@quicinc.com>
References: <20230918205037.25658-1-quic_nitirawa@quicinc.com>
Subject: Re: [PATCH V4 0/2] Add Phy Configuration support for SC7280
Message-Id: <169530656019.106263.17026016793514428546.b4-ty@kernel.org>
Date: Thu, 21 Sep 2023 16:29:20 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3


On Tue, 19 Sep 2023 02:20:35 +0530, Nitin Rawat wrote:
> This patch adds Phy configuration support for Qualcomm SC7280 SOC.
> 
> Changes from v3:
> - Addressed dmitry comment to update correct binding for clk entry
> 
> Changes from V2:
> - Addressed Vinod comment to replace upper case character with lower case
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: phy: Add QMP UFS PHY comptible for SC7280
      commit: 79eeac2e262545077be482b1a1700669e0c7d90c
[2/2] phy: qcom-qmp-ufs: Add Phy Configuration support for SC7280
      commit: 8abe9792d1ff7e60f911b56e8a2537be7e903576

Best regards,
-- 
~Vinod



