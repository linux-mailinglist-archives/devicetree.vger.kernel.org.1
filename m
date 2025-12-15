Return-Path: <devicetree+bounces-246644-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D63C4CBE6B3
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 15:54:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0191D304CC09
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 14:50:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC31D308F2A;
	Mon, 15 Dec 2025 14:41:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sdcBa5Xi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F8432DCBF8
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 14:41:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765809711; cv=none; b=t7V1Zu8fACohXFDBaobzWp5CzTHSa3Fce3Fbk21i9Xb6HYa3jDEDeWjlVFSKKzMXZLhSdLkmWQA5HUXLC63dLmOUdlm8abcXIBQxWkJS55qB7XLa2LGFHEJZ5whAhzn5ArZimy1Zi7o9mTvTrJgOjlwN8yHxr+EE0tT3/Cd4oGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765809711; c=relaxed/simple;
	bh=3LEY9+gvgyLYDxiWssEFrDzVVT5UeklBK8qSgtG3XrE=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=P5KBjhe3auYu2TJoEl6KgVzA5MI35I91fnN50dAyW/IXie3hvLZZji7+15RACkaxo8PQEx4gFJ9NgV0r8x180AVP/KpS5JylFLSbqy6ELOS0dSOPcT5ASPCbGfM3nt/V+/F8SQa9TeF7+5n5K7oUoqd6Y0ww7FcV27GIZm86KG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sdcBa5Xi; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-42fb5810d39so1554076f8f.2
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 06:41:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1765809707; x=1766414507; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MOcUNs+T7w7UnOFVcqXvYSgg4w1o3SYRSucYGzT5NG4=;
        b=sdcBa5XifKKjLE0p7E1NnKGmrKk/vcL5XInWFU7rkVfqbNKVITQ4Tv0Zkng6g1LfQB
         /qbXa8PwKorbELwLDrG5hU1QKHqLuE7R2LQs4PsE7U1ijHaWOIWb6O4xiayl7sdUE1YT
         1xBDTZ7e42Y95tZmtHJFJYV7tt4rrfcPqKlBtZJRmFowiB/1rSBsHu5jz2Gp1+qW8aDf
         C6C1E3W6LkUBwJQ/e3ylGepODte8Jfu59isNbdcWW4xS8OFFtGo8OtqhIYVCiWBbMFTT
         9+eUBwSM0uzzO+PolScs36i5MKEv9n07xCkBhZfc/pitmpAgeAvl0Qdgx2Pf0GUVKnHk
         MDyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765809707; x=1766414507;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MOcUNs+T7w7UnOFVcqXvYSgg4w1o3SYRSucYGzT5NG4=;
        b=xUlmKyVKYlD3B8iCvmGwYTmy7HN+7ETFU+UWdBDQRXKwp+G2B+cZYo1YGpyOAoKgpv
         p6njA8AS53wAcXWWFrNR4ka5olnVniwYebpsVOLIa0Eu7zLtJM7C/ud0AOGjIU6laJrZ
         nLiL6dOwIhsYoFfJTAsPbGKyi01f0xFS14evp4fJe6Gx6rcspf1YCCQ+Nc+j5SCIN5F9
         qaF0K9c3GIDgU/vXjc8yQLjyRkHwQ2Ni0lvubLLtFDlqa7quwc5p0DfY87/vxlQ9zA9i
         aSkS1L0XFZSYn+bBE8Q38kUX+PcA+csCFPFKqbSif4ynQwpCwq/RJjtH5U37ufy5yRAO
         cj6Q==
X-Forwarded-Encrypted: i=1; AJvYcCWqf0qjvUhCTdIpnEpBzAhCuqvvrQjx/jq8v8PMVfB4uqPa47lYHDEXKssHVnFgehp5vvHS/GWtJvbX@vger.kernel.org
X-Gm-Message-State: AOJu0YzXQxMUbEoagGMaSiVEeCz5l4qrELybekty8vOsFMoPjtqoHEjC
	dzzR0Up43QF7UD4vD4y+6tSK/KSx8tmIw7VhfcaIU7q1JmQRTVJZ3swsgws7SVkF1AY=
X-Gm-Gg: AY/fxX4+CWXWA8jWceywkqj9j55qYvr698pcpjMOxz8ve6Rr3DN5r9/1ZtIIQ8XVWX5
	ly3IYeZJZQ1qvUErtHivuHEYqxETT/R4zhqD6FARzIGZHRmlnp6aCslEaFcRyGqg0TQjN4V0ayq
	LCqLZ1mCJhlmdzQi5yriNOPKqW7ID2GskJ7Z01l5CXe/5FyskYZWbpK3af5JYe3dnjQpvrzEgU3
	V7liuotrf+j8lHRTNyvqvFqZKlnU7WnQkUiuLwJtXqCBNlnWDy+nWGn18M3iB8RhlHB5Uv5Y2ey
	kpAAMDHBedMQFamE+c2qWVTHFBBQDo8aOYfQcQYN3HdJ9KMn3Qer+ev3Y3gJmSOEz+tYa8DxJHG
	ucd4A3KuIfcCJkcCm2g+1tDCrwrwIcP7UEay9WpgmcNPOP9pBQ3mZ/zB56MaF33n+B6xdG6E+JO
	tD+RaXA87qz+Nfsedw
X-Google-Smtp-Source: AGHT+IH7tV1xCOROP2jvu0xV490eqBk9+v5Ntm6XR34UvABXmZ0b23HM/6I4IQoJkUDLysFdkLNqfw==
X-Received: by 2002:a5d:64c7:0:b0:431:327:5dc8 with SMTP id ffacd0b85a97d-43103275eb4mr709797f8f.46.1765809707367;
        Mon, 15 Dec 2025 06:41:47 -0800 (PST)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42ff626b591sm17343328f8f.15.2025.12.15.06.41.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 06:41:46 -0800 (PST)
Date: Mon, 15 Dec 2025 17:41:43 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Chester Lin <chester62515@gmail.com>
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	Conor Dooley <conor+dt@kernel.org>,
	"David S. Miller" <davem@davemloft.net>, devicetree@vger.kernel.org,
	Eric Dumazet <edumazet@google.com>,
	Fabio Estevam <festevam@gmail.com>,
	Ghennadi Procopciuc <ghennadi.procopciuc@oss.nxp.com>,
	imx@lists.linux.dev, Jakub Kicinski <kuba@kernel.org>,
	Jan Petrous <jan.petrous@oss.nxp.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Lee Jones <lee@kernel.org>, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	Matthias Brugger <mbrugger@suse.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, netdev@vger.kernel.org,
	NXP S32 Linux Team <s32@nxp.com>, Paolo Abeni <pabeni@redhat.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>, linaro-s32@linaro.org
Subject: [PATCH v2 0/4] s32g: Use a syscon for GPR
Message-ID: <cover.1765806521.git.dan.carpenter@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

The s32g devices have a GPR register region which holds a number of
miscellaneous registers.  Currently only the stmmac/dwmac-s32.c uses
anything from there and we just add a line to the device tree to
access that GMAC_0_CTRL_STS register:

                        reg = <0x4033c000 0x2000>, /* gmac IP */
                              <0x4007c004 0x4>;    /* GMAC_0_CTRL_STS */

We still have to maintain backwards compatibility to this format,
of course, but it would be better to access these through a syscon.
First of all, putting all the registers together is more organized
and shows how the hardware actually is implemented.  Secondly, in
some versions of this chipset those registers can only be accessed
via SCMI, if the registers aren't grouped together each driver will
have to create a whole lot of if then statements to access it via
IOMEM or via SCMI, where if we use a syscon interface we can write
a driver to handle that quite transparently without modifying each
individual driver which reads or writes to one of these registers.
That code is out of tree for now, but eventually we'll want to
support this.

Changed since v1:
* Add imx@lists.linux.dev to the CC list.
* Fix forward porting bug.  s/PHY_INTF_SEL_RGMII/S32_PHY_INTF_SEL_RGMII/
* Use the correct SoC names nxp,s32g2-gpr and nxp,s32g3-gpr instead of
  nxp,s32g-gpr which is the SoC family.
* Fix the phandle name by adding the vendor prefix
* Fix the documentation for the phandle
* Remove #address-cells and #size-cells from the syscon block

Here is the whole list of registers in the GPR region

Starting from 0x4007C000

0  Software-Triggered Faults (SW_NCF)
4  GMAC Control (GMAC_0_CTRL_STS)
28 CMU Status 1 (CMU_STATUS_REG1)
2C CMUs Status 2 (CMU_STATUS_REG2)
30 FCCU EOUT Override Clear (FCCU_EOUT_OVERRIDE_CLEAR_REG)
38 SRC POR Control (SRC_POR_CTRL_REG)
54 GPR21 (GPR21)
5C GPR23 (GPR23)
60 GPR24 Register (GPR24)
CC Debug Control (DEBUG_CONTROL)
F0 Timestamp Control (TIMESTAMP_CONTROL_REGISTER)
F4 FlexRay OS Tick Input Select (FLEXRAY_OS_TICK_INPUT_SELECT_REG)
FC GPR63 Register (GPR63)

Starting from 0x4007CA00

0  Coherency Enable for PFE Ports (PFE_COH_EN)
4  PFE EMAC Interface Mode (PFE_EMACX_INTF_SEL)
20 PFE EMACX Power Control (PFE_PWR_CTRL)
28 Error Injection on Cortex-M7 AHB and AXI Pipe (CM7_TCM_AHB_SLICE)
2C Error Injection AHBP Gasket Cortex-M7 (ERROR_INJECTION_AHBP_GASKET_CM7)
40 LLCE Subsystem Status (LLCE_STAT)
44 LLCE Power Control (LLCE_CTRL)
48 DDR Urgent Control (DDR_URGENT_CTRL)
4C FTM Global Load Control (FLXTIM_CTRL)
50 FTM LDOK Status (FLXTIM_STAT)
54 Top CMU Status (CMU_STAT)
58 Accelerator NoC No Pending Trans Status (NOC_NOPEND_TRANS)
90 SerDes RD/WD Toggle Control (PCIE_TOGGLE)
94 SerDes Toggle Done Status (PCIE_TOGGLEDONE_STAT)
E0 Generic Control 0 (GENCTRL0)
E4 Generic Control 1 (GENCTRL1)
F0 Generic Status 0 (GENSTAT0)
FC Cortex-M7 AXI Parity Error and AHBP Gasket Error Alarm (CM7_AXI_AHBP_GASKET_ERROR_ALARM)

Starting from 4007C800

4  GPR01 Register (GPR01)
30 GPR12 Register (GPR12)
58 GPR22 Register (GPR22)
70 GPR28 Register (GPR28)
74 GPR29 Register (GPR29)

Starting from 4007CB00

4 WKUP Pad Pullup/Pulldown Select (WKUP_PUS)

Dan Carpenter (4):
  net: stmmac: s32: use a syscon for S32_PHY_INTF_SEL_RGMII
  dt-bindings: mfd: syscon: Document the GPR syscon for the NXP S32 SoCs
  dt-bindings: net: nxp,s32-dwmac: Use the GPR syscon
  dts: s32g: Add GPR syscon region

 .../devicetree/bindings/mfd/syscon.yaml       |  4 ++++
 .../bindings/net/nxp,s32-dwmac.yaml           | 10 ++++++++
 arch/arm64/boot/dts/freescale/s32g2.dtsi      |  6 +++++
 arch/arm64/boot/dts/freescale/s32g3.dtsi      |  6 +++++
 .../net/ethernet/stmicro/stmmac/dwmac-s32.c   | 23 +++++++++++++++----
 5 files changed, 44 insertions(+), 5 deletions(-)

-- 
2.51.0


