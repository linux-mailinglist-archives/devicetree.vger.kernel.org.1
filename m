Return-Path: <devicetree+bounces-235037-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 247EAC3405D
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 06:56:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7FBEC423F02
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 05:55:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4144274B42;
	Wed,  5 Nov 2025 05:55:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="S4gylcHA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A39E327FB0E
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 05:55:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762322128; cv=none; b=mkDNJeBylKviYV336Cysti516oLXWtxEdfd/Htl8MIWoUBVytThShwby0zjxR8sjXRgwhGPP9VdFpgVWDvKT6+DL30NRcNTVyb2lNNSXvsGzOdX+fbaCKXRqRViWEI2ReBLjraGEpD6uq8dKsc+fZMM/hhOAZV33ZeXPg2iG90g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762322128; c=relaxed/simple;
	bh=e6KW0tVVBZqqo+yCeocl+kVIywhldeYMYDweLh5i3ag=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=AqEsexscZyIr09ggvZbqQ8kECi7EXr8NB7u35a0a3x4Jo8ejoz/iCHcMcfh5pLHBYkaY8duPnnGDz+B7aNQBgNit/lXsJOA5PB91rutv9QAYkfpT96dWyMvTqlzPc4Cr8F8lfJOGyVc7UtaOS4ZfrM0fJrmnXmOV9m1U3iSXuVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=S4gylcHA; arc=none smtp.client-ip=209.85.210.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f53.google.com with SMTP id 46e09a7af769-7c6cc366884so328871a34.1
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 21:55:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762322124; x=1762926924; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Fwi0DrEUoNTIOaZJZRTu2PMBRWvJKCPWH2oh77N1gps=;
        b=S4gylcHA/mBnaGO9HJN4RM31KWMQG58fQgvZtWX1t15DREJc0kWIAsuobkKk4ppsn7
         Lkm5s3tgWeYILeakLYup/6pFrQg7g92YuvOxI4CjIeJ7sRtgA9vyjzOL+95VQfzjnbhf
         4hrKH4ZZNh++CR9I3XLKTYbQGIgnMB4optKopJdlBfdVNC5zyB53ErcPA0eKB2ZalkKh
         jKpwe0JPfBqdpVlf+vPkRxjGcs3G0Fh1ndppHzN6KzgNN78gE6xTjc4P/tJ7Iv6DPOFH
         zQe/vfgfEqFQYbLLz37hZowLS0LxF0XzzvjkTty4ak7GmGRRzGs36mpBzSdJYlhoNg9H
         w8yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762322124; x=1762926924;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Fwi0DrEUoNTIOaZJZRTu2PMBRWvJKCPWH2oh77N1gps=;
        b=oMG/zpVNrGVrxmSQKmFNNdUPU8855H5qS6lXqo4PCZidVAXAQINPXvd7UQVOe4kyrV
         72vvY+LO3gOkhPn/iOwAlYyLYGhsz/2g3DItqrvfkUcD867ZJC55Wrh/UyRJazRlmW+E
         O8tXl5MC9vRIAdmOO2M8CS1bsXvKF6nOy5tAGBgI9tqZjLuWNGc8Lzpa9AT/ayILXgdf
         RBLoiFhb2uGEWUT/lm0eh69DtUmieQw+bOiYejkU2gUS5mbLOMlK5TObZyyqdczPsg3V
         wZCtkH5svL4MX09XIcH03iD4WgHRjrs2r2CcEt6nnxL2S7OJdHSu4tlAlKA+5Xx5aW6L
         okpA==
X-Forwarded-Encrypted: i=1; AJvYcCVUGdZnqS+/aZyvvg8UdhGcA+Y/TfmhN7ajtHg1H0F66gkll/PRBaRdn8Oc99jjr5i1nGructcDgajn@vger.kernel.org
X-Gm-Message-State: AOJu0YxmqbUBUDQfvmg+moKaEzMBNyEOlV4z7uzcEn6gD3OO1VqEpQCW
	N5mM1fWNdlNj/3f3DNnh1/sf0rHq5nlL+3l0rAfTVHT7HkRozbjS8e4b
X-Gm-Gg: ASbGncssNhW3skT0bF71fcZ4Ikzi2OSqC8AaiY7mzxJBB3OxJuvX6NmebsWhVzS5WDU
	hd07lC/NTuW8CpAOjGNJLDa0Y+jjkWVdI7z1P9ZsH+PErj/FNNp8lLM0Mlf5fjR+mU6TOCIyWfA
	TAD5i/hitivx4ZC9A4uJcAjXCQoNPsRCtbdh8L/cvLg95gkikF9kDTdjEcCLegj/CRplbIZjh0A
	FH0vK4W0r8yKF0chTkQQPfzI1CcQBe2YFsJVlM+fzowqkIrHyePlEoV0l7DuFVDztVQFqTZjoFR
	ENrlde1M1hhXn7+Ju4fk1TTuZEZ7tyGv/BNohkOmbVHURQCpShOqgY2SvES4XLfrsfT8hmgRyC0
	/UfT7lUvCKF9AuBSiFuajxwC3Wb/kxsDOMWg6AVg3xomDzUvtOmc15PHeg8b1SFo=
X-Google-Smtp-Source: AGHT+IFEVR0qbygzze5iBfiTi1hOIxTOUWBa+aFthKdgTb9tcWOqhz0feyJ/iBoBrEyZdPQs0msfOg==
X-Received: by 2002:a05:6830:63cb:b0:79e:69fa:6bcb with SMTP id 46e09a7af769-7c6d140f2e0mr1585902a34.13.1762322124566;
        Tue, 04 Nov 2025 21:55:24 -0800 (PST)
Received: from geday ([2804:7f2:800b:2cb7::dead:c001])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7c6c2448c76sm1714476a34.2.2025.11.04.21.55.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Nov 2025 21:55:23 -0800 (PST)
Date: Wed, 5 Nov 2025 02:55:10 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Johan Jonker <jbx6244@gmail.com>,
	Geraldo Nascimento <geraldogabriel@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: align bindings to PCIe spec
Message-ID: <4b5ffcccfef2a61838aa563521672a171acb27b2.1762321976.git.geraldogabriel@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

The PERST# side-band signal is defined by PCIe spec as an open-drain
active-low signal that depends on a pull-up resistor to keep the
signal high when deasserted. Align bindings to the spec.

Note that the relevant driver hacks the active-low signal as
active-high and switches the normal polarity of PERST#
assertion/deassertion, 1 and 0 in that order, and instead uses
0 to signal low (assertion) and 1 to signal deassertion.

Incidentally, this change makes hardware that refused to work
with the Rockchip-IP PCIe core working for me, which was the
object of many fool's errands.

Signed-off-by: Geraldo Nascimento <geraldogabriel@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
index aa70776e898a..8dcb03708145 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
@@ -383,9 +383,9 @@ &pcie_phy {
 };
 
 &pcie0 {
-	ep-gpios = <&gpio0 RK_PB4 GPIO_ACTIVE_HIGH>;
+	ep-gpios = <&gpio0 RK_PB4 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 	num-lanes = <4>;
-	pinctrl-0 = <&pcie_clkreqnb_cpm>;
+	pinctrl-0 = <&pcie_clkreqnb_cpm>, <&pcie_perst>;
 	pinctrl-names = "default";
 	vpcie0v9-supply = <&vcca_0v9>;	/* VCC_0V9_S0 */
 	vpcie1v8-supply = <&vcca_1v8>;	/* VCC_1V8_S0 */
@@ -408,6 +408,10 @@ pcie {
 		pcie_pwr: pcie-pwr {
 			rockchip,pins = <4 RK_PD4 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
+		pcie_perst: pcie-perst {
+			rockchip,pins = <0 RK_PB4 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+
 	};
 
 	pmic {
-- 
2.49.0


