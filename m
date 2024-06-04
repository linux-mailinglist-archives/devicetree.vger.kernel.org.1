Return-Path: <devicetree+bounces-72015-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D2348FA812
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 04:03:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D6D7328F292
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 02:03:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1CC113D290;
	Tue,  4 Jun 2024 02:03:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="N2fImurh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m127166.xmail.ntesmail.com (mail-m127166.xmail.ntesmail.com [115.236.127.166])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F18C13D897;
	Tue,  4 Jun 2024 02:03:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=115.236.127.166
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717466610; cv=none; b=YRwl0EExyPHdc14/1tE+ZQKGgIzGwTKlfJJVrhkBpvY0604UsPNKAJWQ7g5hj7EZsyj8mXyp3qkiJV8BabfjCmtSpWpU89oU7YY7m2koAV3hrBAmbU2ZYI/6kdGjRqnCHLKEvs3TmXDy/+UprOTgWk7WyQx8KrVCkLC2ahnfRkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717466610; c=relaxed/simple;
	bh=CO5eKq5OAiCs/P6T3wxecAKfgpYaYpbqP3zWAC+XjPg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FJ7hpUuKfl6f7POyMw7FrbBfSZsfXY2IVBHkKAP2iY0SxA8ykdi0aEyN9i8wNRJ1xSCAJZSp7mWjnSL2DzXeIprYGhKP+VnJyHECUPAdXPOz3QeosMEao67llYi+y4ZzM4Vr5Os0nwZpq2uVASwVO3JIJzrobpqM1wAkq1Ly7xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=N2fImurh; arc=none smtp.client-ip=115.236.127.166
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
DKIM-Signature: a=rsa-sha256;
	b=N2fImurhfMc3GCqOAS84cOFRtdfmiZNwGXOdfYqJq6IJb5sUFHAlXozAbmf3CcaCn/2Bz+0F3EgQs7j3o/VjLS+4cixfw0ntBusS9aC6OGeshBrcfzAHuMluCwYludFQR+zesiBS+KAX9hr2tBAZipzD4WU/Bd/UR55mP6LTuBs=;
	c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=kbXSfr2xVMK7ezycrCzeNVcxpZlKpdLdcjyHpmgP240=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.77] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id C14DE900399;
	Tue,  4 Jun 2024 09:45:34 +0800 (CST)
Message-ID: <05b1bfa3-4284-4820-b0f6-124e08088456@rock-chips.com>
Date: Tue, 4 Jun 2024 09:45:33 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 00/13] PCI: dw-rockchip: Add endpoint mode support
To: Niklas Cassel <cassel@kernel.org>, Jingoo Han <jingoohan1@gmail.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Damien Le Moal <dlemoal@kernel.org>, Jon Lin <jon.lin@rock-chips.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Simon Xue <xxm@rock-chips.com>
Cc: linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20240529-rockchip-pcie-ep-v1-v4-0-3dc00fe21a78@kernel.org>
Content-Language: en-US
From: Kever Yang <kever.yang@rock-chips.com>
In-Reply-To: <20240529-rockchip-pcie-ep-v1-v4-0-3dc00fe21a78@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGk9LHlZOS0oeSR9OGRhLGEhVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk1PSU5JVUpLS1VKQl
	kG
X-HM-Tid: 0a8fe0ec551303a9kunmc14de900399
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Kww6OCo4MDMMAj84DgooSzhI
	KjIKCy5VSlVKTEpMT01OTkhNTkhJVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFKSU1PSjcG

Hi Niklas,

On 2024/5/29 16:28, Niklas Cassel wrote:
> Hello all,
>
> This series adds PCIe endpoint mode support for the rockchip rk3588 and
> rk3568 SoCs.
>
> This series is based on: pci/next
> (git://git.kernel.org/pub/scm/linux/kernel/git/pci/pci.git)
>
> This series can also be found in git:
> https://github.com/floatious/linux/commits/rockchip-pcie-ep-v4
>
> Testing done:
> This series has been tested with two rock5b:s, one running in RC mode and
> one running in EP mode. This series has also been tested with an Intel x86
> host and rock5b running in EP mode.

I'm interesting how you test in Intel x86 host, PC scan the PCIe device 
in BIOS, do you

power on the EP before PC power on?


Thanks,
- Kever
>
> BAR4 exposes the ATU Port Logic Structure and the DMA Port Logic Structure
> to the host. The EPC controller driver thus disables this BAR as init time,
> because if it doesn't, when the host writes the test pattern to this BAR,
> all the iATU settings will get wiped, resulting in all further BAR accesses
> being non-functional.
>
> Running pcitest.sh (modified to also perform the READ and WRITE tests with
> the -d option, i.e. with DMA enabled) results in the following:
>
> $ /usr/bin/pcitest.sh
> BAR tests
>
> BAR0:           OKAY
> BAR1:           OKAY
> BAR2:           OKAY
> BAR3:           OKAY
> BAR4:           NOT OKAY
> BAR5:           OKAY
>
> Interrupt tests
>
> SET IRQ TYPE TO LEGACY:         OKAY
> LEGACY IRQ:     NOT OKAY
> SET IRQ TYPE TO MSI:            OKAY
> MSI1:           OKAY
> MSI2:           OKAY
> MSI3:           OKAY
> MSI4:           OKAY
> MSI5:           OKAY
> MSI6:           OKAY
> MSI7:           OKAY
> MSI8:           OKAY
> MSI9:           OKAY
> MSI10:          OKAY
> MSI11:          OKAY
> MSI12:          OKAY
> MSI13:          OKAY
> MSI14:          OKAY
> MSI15:          OKAY
> MSI16:          OKAY
> MSI17:          OKAY
> MSI18:          OKAY
> MSI19:          OKAY
> MSI20:          OKAY
> MSI21:          OKAY
> MSI22:          OKAY
> MSI23:          OKAY
> MSI24:          OKAY
> MSI25:          OKAY
> MSI26:          OKAY
> MSI27:          OKAY
> MSI28:          OKAY
> MSI29:          OKAY
> MSI30:          OKAY
> MSI31:          OKAY
> MSI32:          OKAY
>
> SET IRQ TYPE TO MSI-X:          OKAY
> MSI-X1:         OKAY
> MSI-X2:         OKAY
> MSI-X3:         OKAY
> MSI-X4:         OKAY
> MSI-X5:         OKAY
> MSI-X6:         OKAY
> MSI-X7:         OKAY
> MSI-X8:         OKAY
> MSI-X9:         OKAY
> MSI-X10:                OKAY
> MSI-X11:                OKAY
> MSI-X12:                OKAY
> MSI-X13:                OKAY
> MSI-X14:                OKAY
> MSI-X15:                OKAY
> MSI-X16:                OKAY
> MSI-X17:                OKAY
> MSI-X18:                OKAY
> MSI-X19:                OKAY
> MSI-X20:                OKAY
> MSI-X21:                OKAY
> MSI-X22:                OKAY
> MSI-X23:                OKAY
> MSI-X24:                OKAY
> MSI-X25:                OKAY
> MSI-X26:                OKAY
> MSI-X27:                OKAY
> MSI-X28:                OKAY
> MSI-X29:                OKAY
> MSI-X30:                OKAY
> MSI-X31:                OKAY
> MSI-X32:                OKAY
>
> Read Tests
>
> SET IRQ TYPE TO MSI:            OKAY
> READ (      1 bytes):           OKAY
> READ (   1024 bytes):           OKAY
> READ (   1025 bytes):           OKAY
> READ (1024000 bytes):           OKAY
> READ (1024001 bytes):           OKAY
>
> Write Tests
>
> WRITE (      1 bytes):          OKAY
> WRITE (   1024 bytes):          OKAY
> WRITE (   1025 bytes):          OKAY
> WRITE (1024000 bytes):          OKAY
> WRITE (1024001 bytes):          OKAY
>
> Copy Tests
>
> COPY (      1 bytes):           OKAY
> COPY (   1024 bytes):           OKAY
> COPY (   1025 bytes):           OKAY
> COPY (1024000 bytes):           OKAY
> COPY (1024001 bytes):           OKAY
>
> Read Tests DMA
>
> READ (      1 bytes):           OKAY
> READ (   1024 bytes):           OKAY
> READ (   1025 bytes):           OKAY
> READ (1024000 bytes):           OKAY
> READ (1024001 bytes):           OKAY
>
> Write Tests DMA
>
> WRITE (      1 bytes):          OKAY
> WRITE (   1024 bytes):          OKAY
> WRITE (   1025 bytes):          OKAY
> WRITE (1024000 bytes):          OKAY
> WRITE (1024001 bytes):          OKAY
>
> Corresponding output on the EP side:
> rockchip-dw-pcie a40000000.pcie-ep: EP cannot raise INTX IRQs
> pci_epf_test pci_epf_test.0: WRITE => Size: 1 B, DMA: NO, Time: 0.000000292 s, Rate: 3424 KB/s
> pci_epf_test pci_epf_test.0: WRITE => Size: 1024 B, DMA: NO, Time: 0.000007583 s, Rate: 135038 KB/s
> pci_epf_test pci_epf_test.0: WRITE => Size: 1025 B, DMA: NO, Time: 0.000007584 s, Rate: 135152 KB/s
> pci_epf_test pci_epf_test.0: WRITE => Size: 1024000 B, DMA: NO, Time: 0.009164167 s, Rate: 111739 KB/s
> pci_epf_test pci_epf_test.0: WRITE => Size: 1024001 B, DMA: NO, Time: 0.009164458 s, Rate: 111736 KB/s
> pci_epf_test pci_epf_test.0: READ => Size: 1 B, DMA: NO, Time: 0.000001750 s, Rate: 571 KB/s
> pci_epf_test pci_epf_test.0: READ => Size: 1024 B, DMA: NO, Time: 0.000147875 s, Rate: 6924 KB/s
> pci_epf_test pci_epf_test.0: READ => Size: 1025 B, DMA: NO, Time: 0.000149041 s, Rate: 6877 KB/s
> pci_epf_test pci_epf_test.0: READ => Size: 1024000 B, DMA: NO, Time: 0.147537833 s, Rate: 6940 KB/s
> pci_epf_test pci_epf_test.0: READ => Size: 1024001 B, DMA: NO, Time: 0.147533750 s, Rate: 6940 KB/s
> pci_epf_test pci_epf_test.0: COPY => Size: 1 B, DMA: NO, Time: 0.000003208 s, Rate: 311 KB/s
> pci_epf_test pci_epf_test.0: COPY => Size: 1024 B, DMA: NO, Time: 0.000156625 s, Rate: 6537 KB/s
> pci_epf_test pci_epf_test.0: COPY => Size: 1025 B, DMA: NO, Time: 0.000158375 s, Rate: 6471 KB/s
> pci_epf_test pci_epf_test.0: COPY => Size: 1024000 B, DMA: NO, Time: 0.156902666 s, Rate: 6526 KB/s
> pci_epf_test pci_epf_test.0: COPY => Size: 1024001 B, DMA: NO, Time: 0.156847833 s, Rate: 6528 KB/s
> pci_epf_test pci_epf_test.0: WRITE => Size: 1 B, DMA: YES, Time: 0.000185500 s, Rate: 5 KB/s
> pci_epf_test pci_epf_test.0: WRITE => Size: 1024 B, DMA: YES, Time: 0.000177334 s, Rate: 5774 KB/s
> pci_epf_test pci_epf_test.0: WRITE => Size: 1025 B, DMA: YES, Time: 0.000178792 s, Rate: 5732 KB/s
> pci_epf_test pci_epf_test.0: WRITE => Size: 1024000 B, DMA: YES, Time: 0.000486209 s, Rate: 2106090 KB/s
> pci_epf_test pci_epf_test.0: WRITE => Size: 1024001 B, DMA: YES, Time: 0.000486791 s, Rate: 2103574 KB/s
> pci_epf_test pci_epf_test.0: READ => Size: 1 B, DMA: YES, Time: 0.000177333 s, Rate: 5 KB/s
> pci_epf_test pci_epf_test.0: READ => Size: 1024 B, DMA: YES, Time: 0.000177625 s, Rate: 5764 KB/s
> pci_epf_test pci_epf_test.0: READ => Size: 1025 B, DMA: YES, Time: 0.000171208 s, Rate: 5986 KB/s
> pci_epf_test pci_epf_test.0: READ => Size: 1024000 B, DMA: YES, Time: 0.000701167 s, Rate: 1460422 KB/s
> pci_epf_test pci_epf_test.0: READ => Size: 1024001 B, DMA: YES, Time: 0.000702625 s, Rate: 1457393 KB/s
>
> Kind regards,
> Niklas
>
> ---
> Changes in v4:
> - Rebased on pci/next
> - Link to v3: https://lore.kernel.org/r/20240508-rockchip-pcie-ep-v1-v3-0-1748e202b084@kernel.org
>
> Changes in v3:
> - Renamed rockchip_pcie_ltssm() to rockchip_pcie_get_ltssm()
> - Reworded some commit messages to avoid the term "patches".
> - Dropped patch that added explicit rockchip,rk3588-pcie compatible
> - Moved !IS_ENABLED(CONFIG_PCIE_ROCKCHIP_DW_HOST) check to proper patch.
> - Added comment in front of rk3588 epc_features describing why BAR4 is
>    reserved.
> - Added another struct epc_features for rk3568 as it does not have the
>    ATU regs mapped to BAR4 (like rk3588 does).
> - Picked up tags from Rob and Mani. Thank you!
> - Link to v2: https://lore.kernel.org/r/20240430-rockchip-pcie-ep-v1-v2-0-a0f5ee2a77b6@kernel.org
>
> Changes in v2:
> - Rebased on v4 of the pci-epf-rework series that we depend on.
> - Picked up tags from Rob.
> - Split dw-rockchip DT binding in to common, RC and EP parts.
> - Added support for rk3568 in DT binding and driver.
> - Added a new patch that fixed "combined legacy IRQ description".
> - Link to v1: https://lore.kernel.org/r/20240424-rockchip-pcie-ep-v1-v1-0-b1a02ddad650@kernel.org
>
> ---
> Niklas Cassel (13):
>        dt-bindings: PCI: snps,dw-pcie-ep: Add vendor specific reg-name
>        dt-bindings: PCI: snps,dw-pcie-ep: Add vendor specific interrupt-names
>        dt-bindings: PCI: snps,dw-pcie-ep: Add tx_int{a,b,c,d} legacy irqs
>        dt-bindings: PCI: rockchip-dw-pcie: Prepare for Endpoint mode support
>        dt-bindings: PCI: rockchip-dw-pcie: Fix description of legacy irq
>        dt-bindings: rockchip: Add DesignWare based PCIe Endpoint controller
>        PCI: dw-rockchip: Fix weird indentation
>        PCI: dw-rockchip: Add rockchip_pcie_get_ltssm() helper
>        PCI: dw-rockchip: Refactor the driver to prepare for EP mode
>        PCI: dw-rockchip: Add endpoint mode support
>        misc: pci_endpoint_test: Add support for rockchip rk3588
>        arm64: dts: rockchip: Add PCIe endpoint mode support
>        arm64: dts: rockchip: Add rock5b overlays for PCIe endpoint mode
>
>   .../bindings/pci/rockchip-dw-pcie-common.yaml      | 126 +++++++++
>   .../bindings/pci/rockchip-dw-pcie-ep.yaml          |  95 +++++++
>   .../devicetree/bindings/pci/rockchip-dw-pcie.yaml  |  93 +------
>   .../devicetree/bindings/pci/snps,dw-pcie-ep.yaml   |  13 +-
>   arch/arm64/boot/dts/rockchip/Makefile              |   5 +
>   .../boot/dts/rockchip/rk3588-rock-5b-pcie-ep.dtso  |  25 ++
>   .../dts/rockchip/rk3588-rock-5b-pcie-srns.dtso     |  16 ++
>   arch/arm64/boot/dts/rockchip/rk3588.dtsi           |  35 +++
>   drivers/misc/pci_endpoint_test.c                   |  11 +
>   drivers/pci/controller/dwc/Kconfig                 |  17 +-
>   drivers/pci/controller/dwc/pcie-dw-rockchip.c      | 308 +++++++++++++++++++--
>   11 files changed, 620 insertions(+), 124 deletions(-)
> ---
> base-commit: e3fca37312892122d73f8c5293c0d1cc8c34500b
> change-id: 20240424-rockchip-pcie-ep-v1-87c78b16d53c
>
> Best regards,

