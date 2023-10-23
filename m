Return-Path: <devicetree+bounces-10769-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EC5827D2A6C
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 08:29:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A597B281340
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 06:29:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42CED6ABB;
	Mon, 23 Oct 2023 06:29:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="djO/kBUS"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2140C63D6;
	Mon, 23 Oct 2023 06:29:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 876F3C433CC;
	Mon, 23 Oct 2023 06:29:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698042551;
	bh=UzV9yMbqCPVXQQpeocsDp/J2O4jHQPgJtVBvMmlCVgE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=djO/kBUSwTiAuTbMrLkHAxEYombleyFJ5H0cXRy+NqKXFFKldm36vRKzb5Oq27ZiI
	 QGUDqrhTz0vpyypORVsCJbtANVnA5DXx3w+bNBf+sA3tyDCpOisZfz5JDoT8pbKlIo
	 v9x94mFT9OJ9DMW1lUFin06ARQK/znad3ytk06n4YgpXylSAAlV0mP8veyPda4X3Zc
	 PYIgHt16MZabGCzD4rgFgn+ivN+IgrRkWxsi9CeTU4ntui+oEYQUfhnULXs2mcXAQY
	 QZu4jhpilDbkTRt/gCze99F4AFZI7aZNOpvrUEHsa3VUktcyoS471szjbAo1WbRAOW
	 xhj7SkZXVnIOw==
From: Vinod Koul <vkoul@kernel.org>
To: agross@kernel.org, andersson@kernel.org, 
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
 konrad.dybcio@linaro.org, mani@kernel.org, 
 Mrinmay Sarkar <quic_msarkar@quicinc.com>
Cc: quic_shazhuss@quicinc.com, quic_nitegupt@quicinc.com, 
 quic_ramkri@quicinc.com, quic_nayiluri@quicinc.com, 
 dmitry.baryshkov@linaro.org, robh@kernel.org, quic_krichai@quicinc.com, 
 quic_vbadigan@quicinc.com, quic_parass@quicinc.com, 
 Bjorn Helgaas <bhelgaas@google.com>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, linux-pci@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, mhi@lists.linux.dev, 
 linux-phy@lists.infradead.org
In-Reply-To: <1697715430-30820-1-git-send-email-quic_msarkar@quicinc.com>
References: <1697715430-30820-1-git-send-email-quic_msarkar@quicinc.com>
Subject: Re: (subset) [PATCH v3 0/5] arm64: qcom: sa8775p: add support for
 EP PCIe
Message-Id: <169804254205.383714.18423881810869732517.b4-ty@kernel.org>
Date: Mon, 23 Oct 2023 11:59:02 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3


On Thu, 19 Oct 2023 17:07:05 +0530, Mrinmay Sarkar wrote:
> This series adds the relavent DT bindings, new compatible string,
> update PHY, add support to EPF driver and add EP PCIe node in dtsi
> file for ep pcie0 controller.
> 
> v2 -> v3:
> - removed if/then schemas, added minItems for reg,
>   reg-bnames, interrupt and interrupt-names instead.
> - adding qcom,sa8775p-pcie-ep compitable for sa8775p
>   as we have some specific change to add.
> - reusing sm8450's pcs_misc num table as it is same as sa8775p.
>   used appropriate namespace for pcs.
> - remove const from sa8775p_header as kernel test robot
>   throwing some warnings due to this.
> - remove fallback compatiable as we are adding compatiable for sa8775p.
> 
> [...]

Applied, thanks!

[3/5] phy: qcom-qmp-pcie: add endpoint support for sa8775p
      commit: 8e11a94e15a49221510dd4737a70c8dd56eb9678

Best regards,
-- 
~Vinod



