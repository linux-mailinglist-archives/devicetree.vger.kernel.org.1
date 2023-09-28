Return-Path: <devicetree+bounces-4011-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D4877B1002
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 02:30:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id CC3D2281FCB
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 00:30:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39139163;
	Thu, 28 Sep 2023 00:30:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 293C01FAB
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 00:30:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 45D46C433C7;
	Thu, 28 Sep 2023 00:30:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695861005;
	bh=xl1vZm+n8QWp+Hct7HDZg7+jm6bYEZnVR0LPCaRbftQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=gjHHnnkfoB+fNYJ0qmysjCCHXc2pYgMN95mB1n7afmFOan/dpj/3RMidhREUzZ3R5
	 kkSR8vRwIq52Kaz+DzOznhTaTWuSp3wP2mnw9mSZkybd2qeTIU8yEBrEVVdGNwWXvx
	 TVo0+aMcj36MluxgH6dsdoHc59OZyN/FiZ61UmosB72cAMiUrXYWvGDquntVZfZCeA
	 81ahe4U3F5ylD5QygLyhrtERuFupXCmbh7UDiz2b5VIzVc/n3E8ZgB5+GFC4tFJOBI
	 seFd71nl1NPgauaxjLrqnJT6+/np2BtOb+SGhy54zEXQft2mDY1xSlPUe1CHYZ2peP
	 SUTAPPZNflVhA==
From: Bjorn Andersson <andersson@kernel.org>
To: Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <quic_bjorande@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH v3 0/3] soc: qcom: rmtfs: Support dynamic allocation
Date: Wed, 27 Sep 2023 17:34:09 -0700
Message-ID: <169586125030.1226038.2013225064759221820.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230920-rmtfs-mem-guard-pages-v3-0-305b37219b78@quicinc.com>
References: <20230920-rmtfs-mem-guard-pages-v3-0-305b37219b78@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Wed, 20 Sep 2023 19:37:29 -0700, Bjorn Andersson wrote:
> Some platforms have laxed requirements on the placement of the rmtfs
> memory region, introduce support for guard pages to allow the DeviceTree
> author to rely on the OS/Linux for placement of the region.
> 
> Changes since v2:
> - Rewrote DeviceTree binding description, to avoid dictating the OS
>   behavior.
> - Adjusted addr and size before memremap(), to avoid mapping the guard
>   pages, and unnecessarily have to adjust the base pointer.
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: reserved-memory: rmtfs: Allow guard pages
      commit: 3ad96787949a96256931ca59aff73ea604bc0e6c
[2/3] soc: qcom: rmtfs: Support discarding guard pages
      commit: 9265bc6bce6919c771970e5a425a66551a1c78a0

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

