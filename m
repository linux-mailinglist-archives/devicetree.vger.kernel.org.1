Return-Path: <devicetree+bounces-191458-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EAC1AEF63D
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 13:13:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 256A41C017E7
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 11:13:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 743F3272806;
	Tue,  1 Jul 2025 11:12:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="eGZUWY1F"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout2.samsung.com (mailout2.samsung.com [203.254.224.25])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51DA12737FE
	for <devicetree@vger.kernel.org>; Tue,  1 Jul 2025 11:12:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.254.224.25
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751368347; cv=none; b=KriIS/FZXDJcnQguop0CUlcNLxmZxma4NTDEIDchbrofSf+Fjs9wE72VBKStp3EHtyqt/Hna6ta/mJFG3FSqLVQxhO60Z1NHYV1wNd7+Dn8Bcw5LyW971ruqI/GMt6KKngJjdOB50VEt7YqxUpy6aB/+G9eVsFrXuxmTxY/rJng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751368347; c=relaxed/simple;
	bh=ZFoqmRko2SSCUSy3qOHGmg6pxl9wBXG2wcGKwxLpJuo=;
	h=From:To:Cc:In-Reply-To:Subject:Date:Message-ID:MIME-Version:
	 Content-Type:References; b=YnDtCfb/1phqIM3v3pQ0u+egT2Ba1kN0Pka3s33KhV0neW/yAo+EqdVRTCZEW6tZr4E+oDTeSOE/yWghX+cPAEEP55j0w0+tGi4EqjSOoU9166gJoFnanGZ/FAIo1NumSgu3lAUUeG1PYt6WnN2whVQ3AkhWpWDBOFlGk8rvU8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=eGZUWY1F; arc=none smtp.client-ip=203.254.224.25
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from epcas5p3.samsung.com (unknown [182.195.41.41])
	by mailout2.samsung.com (KnoxPortal) with ESMTP id 20250701111217epoutp02a63002b4cf9bcb8d374b0c393d74b020~OHDle5MsV0452504525epoutp02z
	for <devicetree@vger.kernel.org>; Tue,  1 Jul 2025 11:12:17 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com 20250701111217epoutp02a63002b4cf9bcb8d374b0c393d74b020~OHDle5MsV0452504525epoutp02z
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1751368337;
	bh=Qc61XCsNX7jtimwS9YLE7scWnHViXc1VdS+/vuEdXPw=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=eGZUWY1FH10LHOKEaHWnA2ArhG8hxMqRxS3t2Rl0pmkRmzWR9Fl/DHvJUwunnVMhh
	 /O+CiKNV5TSOz8Hs5vPVKxjOYH5/s9ZldynzSQzHS2Nynp+qu7L3753yBJaobVBJCb
	 Cm2WR34A6u2zt5ybvtUQ7lL3iDb9WSU1dcX0F6dk=
Received: from epsnrtp03.localdomain (unknown [182.195.42.155]) by
	epcas5p4.samsung.com (KnoxPortal) with ESMTPS id
	20250701111216epcas5p44af4c4950cc453b245daaed1a704e14a~OHDknjMtz1299912999epcas5p4L;
	Tue,  1 Jul 2025 11:12:16 +0000 (GMT)
Received: from epcas5p1.samsung.com (unknown [182.195.38.179]) by
	epsnrtp03.localdomain (Postfix) with ESMTP id 4bWgNG6YX0z3hhTD; Tue,  1 Jul
	2025 11:12:14 +0000 (GMT)
Received: from epsmtip1.samsung.com (unknown [182.195.34.30]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPA id
	20250701111110epcas5p2938ed510e75510ab0ca7da2c350ba777~OHCm3_haD2693926939epcas5p2p;
	Tue,  1 Jul 2025 11:11:10 +0000 (GMT)
Received: from FDSFTE462 (unknown [107.122.81.248]) by epsmtip1.samsung.com
	(KnoxPortal) with ESMTPA id
	20250701111107epsmtip15232f3d8aeb2f97b46647ad34d93693e~OHCkOEa5k1910819108epsmtip1K;
	Tue,  1 Jul 2025 11:11:07 +0000 (GMT)
From: "Shradha Todi" <shradha.t@samsung.com>
To: "'Rob Herring'" <robh@kernel.org>
Cc: <linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-samsung-soc@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
	<linux-fsd@tesla.com>, <mani@kernel.org>, <lpieralisi@kernel.org>,
	<kw@linux.com>, <bhelgaas@google.com>, <jingoohan1@gmail.com>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>, <alim.akhtar@samsung.com>,
	<vkoul@kernel.org>, <kishon@kernel.org>, <arnd@arndb.de>,
	<m.szyprowski@samsung.com>, <jh80.chung@samsung.com>,
	<pankaj.dubey@samsung.com>
In-Reply-To: <20250627211236.GA147018-robh@kernel.org>
Subject: RE: [PATCH v2 06/10] dt-bindings: PCI: Add bindings support for
 Tesla FSD SoC
Date: Tue, 1 Jul 2025 16:41:06 +0530
Message-ID: <02b001dbea78$d991d5b0$8cb58110$@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQFUClgbainc6hQuKSBO0V8ttZVgkwK41mGpAfhwG8gB/KC3xLT3bJYA
Content-Language: en-in
X-CMS-MailID: 20250701111110epcas5p2938ed510e75510ab0ca7da2c350ba777
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-Sendblock-Type: REQ_APPROVE
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-541,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250625165315epcas5p19f081c8a0e2e7dc87698577cc2d460ca
References: <20250625165229.3458-1-shradha.t@samsung.com>
	<CGME20250625165315epcas5p19f081c8a0e2e7dc87698577cc2d460ca@epcas5p1.samsung.com>
	<20250625165229.3458-7-shradha.t@samsung.com>
	<20250627211236.GA147018-robh@kernel.org>



> -----Original Message-----
> From: Rob Herring <robh@kernel.org>
> Sent: 28 June 2025 02:43
> To: Shradha Todi <shradha.t@samsung.com>
> Cc: linux-pci@vger.kernel.org; devicetree@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
linux-
> samsung-soc@vger.kernel.org; linux-kernel@vger.kernel.org; linux-phy@lists.infradead.org; linux-
> fsd@tesla.com; manivannan.sadhasivam@linaro.org; lpieralisi@kernel.org; kw@linux.com;
> bhelgaas@google.com; jingoohan1@gmail.com; krzk+dt@kernel.org; conor+dt@kernel.org;
> alim.akhtar@samsung.com; vkoul@kernel.org; kishon@kernel.org; arnd@arndb.de;
> m.szyprowski@samsung.com; jh80.chung@samsung.com; pankaj.dubey@samsung.com
> Subject: Re: [PATCH v2 06/10] dt-bindings: PCI: Add bindings support for Tesla FSD SoC
> 
> On Wed, Jun 25, 2025 at 10:22:25PM +0530, Shradha Todi wrote:
> > Document the PCIe controller device tree bindings for Tesla FSD
> > SoC for both RC and EP.
> 
> Drop 'bindings support for ' in the subject.
> 
> >
> > Signed-off-by: Shradha Todi <shradha.t@samsung.com>
> > ---
> >  .../bindings/pci/samsung,exynos-pcie.yaml     | 121 ++++++++++++------
> 
> I think this should be its own schema file. There's not much shared.
> 

Will make 2 new bindings - samsung,exynos-pcie-common.yaml and
tesla,fsd-pcie.yaml
Does that sound okay?

> >  .../bindings/pci/tesla,fsd-pcie-ep.yaml       |  91 +++++++++++++
> >  2 files changed, 176 insertions(+), 36 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/pci/tesla,fsd-pcie-ep.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/pci/samsung,exynos-pcie.yaml
> b/Documentation/devicetree/bindings/pci/samsung,exynos-pcie.yaml
> > index f20ed7e709f7..595156759b06 100644
> > --- a/Documentation/devicetree/bindings/pci/samsung,exynos-pcie.yaml
> > +++ b/Documentation/devicetree/bindings/pci/samsung,exynos-pcie.yaml
> > @@ -11,16 +11,15 @@ maintainers:
> >    - Jaehoon Chung <jh80.chung@samsung.com>
> >
> >  description: |+
> > -  Exynos5433 SoC PCIe host controller is based on the Synopsys DesignWare
> > +  Samsung SoCs PCIe host controller is based on the Synopsys DesignWare
> >    PCIe IP and thus inherits all the common properties defined in
> >    snps,dw-pcie.yaml.
> >
> > -allOf:
> > -  - $ref: /schemas/pci/snps,dw-pcie.yaml#
> > -
> >  properties:
> >    compatible:
> > -    const: samsung,exynos5433-pcie
> > +    enum:
> > +      - samsung,exynos5433-pcie
> > +      - tesla,fsd-pcie
> >
> >    reg:
> >      items:
> > @@ -37,52 +36,102 @@ properties:
> >    interrupts:
> >      maxItems: 1
> >
> > -  clocks:
> > -    items:
> > -      - description: PCIe bridge clock
> > -      - description: PCIe bus clock
> > -
> > -  clock-names:
> > -    items:
> > -      - const: pcie
> > -      - const: pcie_bus
> > -
> >    phys:
> >      maxItems: 1
> >
> > -  vdd10-supply:
> > -    description:
> > -      Phandle to a regulator that provides 1.0V power to the PCIe block.
> > -
> > -  vdd18-supply:
> > -    description:
> > -      Phandle to a regulator that provides 1.8V power to the PCIe block.
> > -
> > -  num-lanes:
> > -    const: 1
> > -
> > -  num-viewport:
> > -    const: 3
> > -
> >  required:
> >    - reg
> >    - reg-names
> >    - interrupts
> >    - "#address-cells"
> >    - "#size-cells"
> > -  - "#interrupt-cells"
> > -  - interrupt-map
> > -  - interrupt-map-mask
> >    - ranges
> > -  - bus-range
> >    - device_type
> >    - num-lanes
> > -  - num-viewport
> >    - clocks
> >    - clock-names
> >    - phys
> > -  - vdd10-supply
> > -  - vdd18-supply
> > +
> > +allOf:
> > +  - $ref: /schemas/pci/snps,dw-pcie.yaml#
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            enum:
> > +              - tesla,fsd-pcie
> > +    then:
> > +      properties:
> > +        clocks:
> > +          maxItems: 4
> > +
> > +        clock-names:
> > +          items:
> > +            - const: aux
> > +            - const: dbi
> > +            - const: mstr
> > +            - const: slv
> > +
> > +        samsung,syscon-pcie:
> > +          $ref: /schemas/types.yaml#/definitions/phandle-array
> > +          description: phandle for system control registers, used to
> > +                       control signals at system level
> > +
> > +        num-lanes:
> > +          maximum: 4
> > +
> > +      required:
> > +        - samsung,syscon-pcie
> > +
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            enum:
> > +              - samsung,exynos5433-pcie
> > +    then:
> > +      properties:
> > +        clocks:
> > +          items:
> > +            - description: pcie bridge clock
> > +            - description: pcie bus clock
> > +
> > +        clock-names:
> > +          items:
> > +            - const: pcie
> > +            - const: pcie_bus
> > +
> > +        vdd10-supply:
> > +          description:
> > +            phandle to a regulator that provides 1.0v power to the pcie block.
> > +
> > +        vdd18-supply:
> > +          description:
> > +            phandle to a regulator that provides 1.8v power to the pcie block.
> > +
> > +        num-lanes:
> > +          const: 1
> > +
> > +        num-viewport:
> > +          const: 3
> > +
> > +        assigned-clocks:
> > +          maxItems: 2
> > +
> > +        assigned-clock-parents:
> > +          maxItems: 2
> > +
> > +        assigned-clock-rates:
> > +          maxItems: 2
> > +
> > +      required:
> > +        - "#interrupt-cells"
> > +        - interrupt-map
> > +        - interrupt-map-mask
> > +        - bus-range
> > +        - num-viewport
> > +        - vdd10-supply
> > +        - vdd18-supply
> >
> >  unevaluatedProperties: false
> >
> > diff --git a/Documentation/devicetree/bindings/pci/tesla,fsd-pcie-ep.yaml
> b/Documentation/devicetree/bindings/pci/tesla,fsd-pcie-ep.yaml
> > new file mode 100644
> > index 000000000000..f85615a0225d
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/pci/tesla,fsd-pcie-ep.yaml
> > @@ -0,0 +1,91 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: https://protect2.fireeye.com/v1/url?k=48166268-299d775e-4817e927-74fe485fffe0-
> 300a108993374478&q=1&e=3e3a0fc6-8338-4fe3-b352-
> 2e510a3c6aaa&u=http%3A%2F%2Fdevicetree.org%2Fschemas%2Fpci%2Ftesla%2Cfsd-pcie-ep.yaml%23
> > +$schema: https://protect2.fireeye.com/v1/url?k=60c79c47-014c8971-60c61708-74fe485fffe0-
> 2608e7d54b39a025&q=1&e=3e3a0fc6-8338-4fe3-b352-
> 2e510a3c6aaa&u=http%3A%2F%2Fdevicetree.org%2Fmeta-schemas%2Fcore.yaml%23
> > +
> > +title: Samsung SoC series PCIe Endpoint Controller
> > +
> > +maintainers:
> > +  - Shradha Todi <shradha.t@samsung.com>
> > +
> > +description: |+
> 
> Don't need '|+'
> 
> > +  Samsung SoCs PCIe endpoint controller is based on the Synopsys DesignWare
> > +  PCIe IP and thus inherits all the common properties defined in
> > +  snps,dw-pcie-ep.yaml.
> > +
> > +allOf:
> > +  - $ref: /schemas/pci/snps,dw-pcie-ep.yaml#
> > +
> > +properties:
> > +  compatible:
> > +    const: tesla,fsd-pcie-ep
> > +
> > +  reg:
> > +    maxItems: 4
> > +
> > +  reg-names:
> > +    items:
> > +      - const: elbi
> > +      - const: dbi
> > +      - const: dbi2
> > +      - const: addr_space
> > +
> > +  clocks:
> > +    maxItems: 4
> > +
> > +  clock-names:
> > +    items:
> > +      - const: aux
> > +      - const: dbi
> > +      - const: mstr
> > +      - const: slv
> > +
> > +  num-lanes:
> > +    maximum: 4
> > +
> > +  samsung,syscon-pcie:
> > +    $ref: /schemas/types.yaml#/definitions/phandle-array
> > +    description: phandle for system control registers, used to
> > +                 control signals at system level
> > +
> > +  phys:
> > +    maxItems: 1
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - reg-names
> > +  - clocks
> > +  - clock-names
> > +  - num-lanes
> > +  - samsung,syscon-pcie
> > +  - phys
> > +
> > +unevaluatedProperties: false
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/clock/fsd-clk.h>
> > +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> > +    bus {
> > +        #address-cells = <2>;
> > +        #size-cells = <2>;
> > +        pcieep0: pcie-ep@16a00000 {
> > +            compatible = "tesla,fsd-pcie-ep";
> > +            reg = <0x0 0x168b0000 0x0 0x1000>,
> > +                  <0x0 0x16a00000 0x0 0x2000>,
> > +                  <0x0 0x16a01000 0x0 0x80>,
> > +                  <0x0 0x17000000 0x0 0xff0000>;
> > +            reg-names = "elbi", "dbi", "dbi2", "addr_space";
> > +            clocks = <&clock_fsys1 PCIE_LINK0_IPCLKPORT_AUX_ACLK>,
> > +                     <&clock_fsys1 PCIE_LINK0_IPCLKPORT_DBI_ACLK>,
> > +                     <&clock_fsys1 PCIE_LINK0_IPCLKPORT_MSTR_ACLK>,
> > +                     <&clock_fsys1 PCIE_LINK0_IPCLKPORT_SLV_ACLK>;
> > +            clock-names = "aux", "dbi", "mstr", "slv";
> > +            num-lanes = <4>;
> > +            samsung,syscon-pcie = <&sysreg_fsys1 0x50c>;
> > +            phys = <&pciephy1>;
> > +        };
> > +    };
> > +...
> > --
> > 2.49.0
> >


