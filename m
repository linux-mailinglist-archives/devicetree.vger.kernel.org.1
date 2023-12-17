Return-Path: <devicetree+bounces-26280-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F3F3816105
	for <lists+devicetree@lfdr.de>; Sun, 17 Dec 2023 18:28:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A228F1C21E31
	for <lists+devicetree@lfdr.de>; Sun, 17 Dec 2023 17:28:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 013FE51027;
	Sun, 17 Dec 2023 17:22:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cakFclrJ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFAD556399;
	Sun, 17 Dec 2023 17:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 89533C433C9;
	Sun, 17 Dec 2023 17:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702833726;
	bh=PZbiL7kkNHNO+LmD1UdTKyE7IC4IECSiekPMY9BqjeA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=cakFclrJJgEk2yg/St2MNZ/U9Tk+26QpgInkDEylOybXQzlvNtIrZVT2xuWbZP4x2
	 dHoSAUd5t+LMBG8z6HfKkS2epJ8Is44b3rW7DgfJEp6EdKGOO5e/H4GHFHfOhzyQ+B
	 Esr0lZAMNEx9DBtFUNRCtontOg+8/e1mzvbWgQByMf/BAiq2XnMBNvQ2tTC3KDBIRE
	 ggC5U09tjCnwpLfluNiAztHKD5UAt3AlAF9hnW20tB81McDYUH0gSBt0V+i35EIAEV
	 zcjytGT676V1FvbgrrTmN2EaGR1802hHGVshR8qmolL5cOXR7VY8VRUs5gWsHsta96
	 OhD2rnAHEq08w==
From: Bjorn Andersson <andersson@kernel.org>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	konrad.dybcio@linaro.org,
	conor+dt@kernel.org,
	Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH 0/3] Qcom PCIe DTS fixes
Date: Sun, 17 Dec 2023 11:21:19 -0600
Message-ID: <170283349416.66089.9725620774629263977.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231206135540.17068-1-manivannan.sadhasivam@linaro.org>
References: <20231206135540.17068-1-manivannan.sadhasivam@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Wed, 06 Dec 2023 19:25:37 +0530, Manivannan Sadhasivam wrote:
> This small series has some fixes for the PCIe nodes in Qcom DTS.
> 
> - Mani
> 
> Manivannan Sadhasivam (3):
>   ARM: dts: qcom: Use "pcie" as the node name instead of "pci"
>   arm64: dts: qcom: Use "pcie" as the node name instead of "pci"
>   arm64: dts: qcom: sa8775p: Add missing space between node name and
>     braces
> 
> [...]

Applied, thanks!

[2/3] arm64: dts: qcom: Use "pcie" as the node name instead of "pci"
      commit: 052c9a1f1400f1b3fe9555bd029ee9a8a0db3cd0
[3/3] arm64: dts: qcom: sa8775p: Add missing space between node name and braces
      commit: 809ec4c5a5ab8ac080adbd9624d0040850725acc

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

