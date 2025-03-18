Return-Path: <devicetree+bounces-158676-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F864A67A5E
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 18:08:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 81111179919
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 17:08:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7926211A0E;
	Tue, 18 Mar 2025 17:07:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m2IZlA+0"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79F08211A07;
	Tue, 18 Mar 2025 17:07:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742317674; cv=none; b=M85MHJ2KaJPy7JyvupemrGniNOHKjm5z6wKd3zJqGdbYl4H3COJoUvsZVLAybruYQeuYMHgJNt3olmbHPgq01lhzCfDKqxF984LyqkWJ3/jo859PTJfWx4CxAbNilowg1/lIbq86xuJNr+alsPOatnvS5ySsEvookWktP/59bTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742317674; c=relaxed/simple;
	bh=yyzRC1yt270PoA9xubaKlDDKHFkwOaUF8znY903SGhc=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=mILRqaYeRODqTNxPn1YEc6T05LoTrMS06WGoR+FtC5cillBwhHJlk7UShyitCj2YvnjZuVZuw3LH475gri0cHwLQXnS2QvWNO3rGYqIqRWIYfDuzlxCgrwgyinHn1+MCbOSFjMNpvetVfYA9YyGs/NkFJ2Ob8EGH7oSb6k11Y5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m2IZlA+0; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C061CC4CEDD;
	Tue, 18 Mar 2025 17:07:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742317674;
	bh=yyzRC1yt270PoA9xubaKlDDKHFkwOaUF8znY903SGhc=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=m2IZlA+0Mvr6U+JFfYostDT24nb7KRyNYwnJU5Pj7dgcZItayVxMGIraHJeRdAjtE
	 ATr7aEPLJ5NPm20peGuX//kum2avr8nci1ro8+DG+/NFMHsLDxyhGrqspGwbXXl3QZ
	 WOcrywRuqrpmFfubF4zoLXqy7Ygid3Kf1VNzTDwvQnLkZqKwd5tOTL3ItK8PfqQSJf
	 ErhglIRnCCetLWeUJ9uiYiEDps8qFTX9RAldiyBYOORcVi0Ym/QB4qeiSkdo6rwi6/
	 bgK9+P6KYUK3aC32/1K4LuicDKSBDFSOk7mpR9LWjObZzvNYRCugWBoGMrWk9yDjpr
	 SvvPxurbaBaWA==
Date: Tue, 18 Mar 2025 12:07:52 -0500
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-kernel@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
 quic_miaoqing@quicinc.com, quic_zhichen@quicinc.com, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
 quic_yuzha@quicinc.com, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, devicetree@vger.kernel.org
To: Stone Zhang <quic_stonez@quicinc.com>
In-Reply-To: <20250318093350.2682132-1-quic_stonez@quicinc.com>
References: <20250318093350.2682132-1-quic_stonez@quicinc.com>
Message-Id: <174231754034.3228146.15702683890868692067.robh@kernel.org>
Subject: Re: [PATCH v3 0/2] Enable WLAN for qcs8300-ride


On Tue, 18 Mar 2025 17:33:48 +0800, Stone Zhang wrote:
> Enable the WLAN subsystem of the qcs8300 ride board. The WCN6855 wireless
> chip is attached to PCIe interface 0.
> 
> This patch series depends on:
> - PCIe
> https://lore.kernel.org/all/20250310063103.3924525-1-quic_ziyuzhan@quicinc.com/
> - PCIe SMMU
> https://lore.kernel.org/all/20250206-qcs8300-pcie-smmu-v1-1-8eee0e3585bc@quicinc.com/
> 
> Changes in v3:
> - Complete the nodes property definitions according to DTS binding requirements (Bjorn)
> - Link to v2: https://lore.kernel.org/all/20250227065439.1407230-1-quic_stonez@quicinc.com/
> 
> Changes in v2:
> - Rename the nodes name according to DTS coding style (Konrad & Krzysztof)
> - Provide regulator-min/max-microvolt to the regulators (Konrad)
> - Link to v1: https://lore.kernel.org/all/20250210062910.3618336-1-quic_stonez@quicinc.com/
> 
> Stone Zhang (2):
>   arm64: dts: qcom: qcs8300: add a PCIe port for WLAN
>   arm64: dts: qcom: qcs8300-ride: enable WLAN on qcs8300-ride
> 
>  arch/arm64/boot/dts/qcom/qcs8300-ride.dts | 108 ++++++++++++++++++++++
>  arch/arm64/boot/dts/qcom/qcs8300.dtsi     |   9 ++
>  2 files changed, 117 insertions(+)
> 
> 
> base-commit: da920b7df701770e006928053672147075587fb2
> prerequisite-patch-id: c87e5f1cb29568c24566e8a960d6c8dd0be5969d
> prerequisite-patch-id: f80a486c6e34dfb62f09faf0eb3fae586cda85ec
> prerequisite-patch-id: 0e2cb7a4d8779539a58261111deea6bd6b750f6f
> prerequisite-patch-id: 8b9034fca96bd8edb5c4eca5b88811df7206120c
> prerequisite-patch-id: bb6ec99692ade9d7c89f91b5507cc0ee248e43dd
> prerequisite-patch-id: 32c051e9f77de6b53a4f4539ce49dde9859002ea
> prerequisite-patch-id: ccfa56b7d00a1139fbbdccdc13496bfc98440d5e
> --
> 2.34.1
> 
> 
> 


My bot found new DTB warnings on the .dts files added or changed in this
series.

Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
are fixed by another series. Ultimately, it is up to the platform
maintainer whether these warnings are acceptable or not. No need to reply
unless the platform maintainer has comments.

If you already ran DT checks and didn't see these error(s), then
make sure dt-schema is up to date:

  pip3 install dtschema --upgrade


New warnings running 'make CHECK_DTBS=y for arch/arm64/boot/dts/qcom/' for 20250318093350.2682132-1-quic_stonez@quicinc.com:

arch/arm64/boot/dts/qcom/qcs8300-ride.dtb: pci@1c00000: interrupts: [[0, 307, 4], [0, 308, 4], [0, 309, 4], [0, 312, 4], [0, 313, 4], [0, 314, 4], [0, 374, 4], [0, 375, 4], [0, 306, 4]] is too long
	from schema $id: http://devicetree.org/schemas/pci/qcom,pcie-sa8775p.yaml#
arch/arm64/boot/dts/qcom/qcs8300-ride.dtb: pci@1c00000: interrupt-names: ['msi0', 'msi1', 'msi2', 'msi3', 'msi4', 'msi5', 'msi6', 'msi7', 'global'] is too long
	from schema $id: http://devicetree.org/schemas/pci/qcom,pcie-sa8775p.yaml#
arch/arm64/boot/dts/qcom/qcs8300-ride.dtb: pci@1c00000: resets: [[49, 1], [49, 2]] is too long
	from schema $id: http://devicetree.org/schemas/pci/qcom,pcie-sa8775p.yaml#
arch/arm64/boot/dts/qcom/qcs8300-ride.dtb: pci@1c00000: reset-names: ['pci', 'link_down'] is too long
	from schema $id: http://devicetree.org/schemas/pci/qcom,pcie-sa8775p.yaml#
arch/arm64/boot/dts/qcom/qcs8300-ride.dtb: phy@1c04000: clock-names:0: 'aux' was expected
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-pcie-phy.yaml#
arch/arm64/boot/dts/qcom/qcs8300-ride.dtb: phy@1c04000: clock-names:1: 'cfg_ahb' was expected
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-pcie-phy.yaml#
arch/arm64/boot/dts/qcom/qcs8300-ride.dtb: phy@1c04000: clock-names:2: 'ref' was expected
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-pcie-phy.yaml#
arch/arm64/boot/dts/qcom/qcs8300-ride.dtb: phy@1c04000: clock-names:3: 'pipe' is not one of ['rchng', 'refgen']
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-pcie-phy.yaml#
arch/arm64/boot/dts/qcom/qcs8300-ride.dtb: phy@1c04000: clock-names:4: 'pipe' was expected
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-pcie-phy.yaml#
arch/arm64/boot/dts/qcom/qcs8300-ride.dtb: phy@1c04000: clock-names:5: 'pipediv2' was expected
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-pcie-phy.yaml#
arch/arm64/boot/dts/qcom/qcs8300-ride.dtb: phy@1c04000: clocks: [[49, 54], [49, 80], [49, 58], [49, 60], [49, 63], [49, 56]] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-pcie-phy.yaml#
arch/arm64/boot/dts/qcom/qcs8300-ride.dtb: phy@1c04000: clock-names: ['cfg_ahb', 'ref', 'rchng', 'pipe', 'pipediv2', 'phy_aux'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-pcie-phy.yaml#
arch/arm64/boot/dts/qcom/qcs8300-ride.dtb: pci@1c10000: interrupts: [[0, 519, 4], [0, 140, 4], [0, 141, 4], [0, 142, 4], [0, 143, 4], [0, 144, 4], [0, 145, 4], [0, 146, 4], [0, 518, 4]] is too long
	from schema $id: http://devicetree.org/schemas/pci/qcom,pcie-sa8775p.yaml#
arch/arm64/boot/dts/qcom/qcs8300-ride.dtb: pci@1c10000: interrupt-names: ['msi0', 'msi1', 'msi2', 'msi3', 'msi4', 'msi5', 'msi6', 'msi7', 'global'] is too long
	from schema $id: http://devicetree.org/schemas/pci/qcom,pcie-sa8775p.yaml#
arch/arm64/boot/dts/qcom/qcs8300-ride.dtb: pci@1c10000: resets: [[49, 6], [49, 7]] is too long
	from schema $id: http://devicetree.org/schemas/pci/qcom,pcie-sa8775p.yaml#
arch/arm64/boot/dts/qcom/qcs8300-ride.dtb: pci@1c10000: reset-names: ['pci', 'link_down'] is too long
	from schema $id: http://devicetree.org/schemas/pci/qcom,pcie-sa8775p.yaml#
arch/arm64/boot/dts/qcom/qcs8300-ride.dtb: phy@1c14000: clock-names:0: 'aux' was expected
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-pcie-phy.yaml#
arch/arm64/boot/dts/qcom/qcs8300-ride.dtb: phy@1c14000: clock-names:1: 'cfg_ahb' was expected
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-pcie-phy.yaml#
arch/arm64/boot/dts/qcom/qcs8300-ride.dtb: phy@1c14000: clock-names:2: 'ref' was expected
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-pcie-phy.yaml#
arch/arm64/boot/dts/qcom/qcs8300-ride.dtb: phy@1c14000: clock-names:3: 'pipe' is not one of ['rchng', 'refgen']
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-pcie-phy.yaml#
arch/arm64/boot/dts/qcom/qcs8300-ride.dtb: phy@1c14000: clock-names:4: 'pipe' was expected
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-pcie-phy.yaml#
arch/arm64/boot/dts/qcom/qcs8300-ride.dtb: phy@1c14000: clock-names:5: 'pipediv2' was expected
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-pcie-phy.yaml#
arch/arm64/boot/dts/qcom/qcs8300-ride.dtb: phy@1c14000: clocks: [[49, 68], [49, 80], [49, 72], [49, 74], [49, 77], [49, 70]] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-pcie-phy.yaml#
arch/arm64/boot/dts/qcom/qcs8300-ride.dtb: phy@1c14000: clock-names: ['cfg_ahb', 'ref', 'rchng', 'pipe', 'pipediv2', 'phy_aux'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-pcie-phy.yaml#






