Return-Path: <devicetree+bounces-10381-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 178457D0F87
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 14:18:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 488AD1C20E3B
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 12:18:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 075EF19BA8;
	Fri, 20 Oct 2023 12:18:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A821199D3
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 12:18:37 +0000 (UTC)
Received: from mail-oo1-f48.google.com (mail-oo1-f48.google.com [209.85.161.48])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B0ADD51;
	Fri, 20 Oct 2023 05:18:36 -0700 (PDT)
Received: by mail-oo1-f48.google.com with SMTP id 006d021491bc7-57b9231e91dso399222eaf.2;
        Fri, 20 Oct 2023 05:18:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697804315; x=1698409115;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LOd3jXTL+M+StLbmAilt2rEYhlA6akOm0aYnH1E7pkU=;
        b=MHYn9QCnG0QB+eUwpsOI1+F2CudOvsTXfoSHDVrvSTto678muk6pFYrR9VOST+REsi
         dWxu6i4MgzV3x84qYvWBr74v5MhUJ5tUvHkWOhKnqQR1iclRzpEnK3Xu0ndF532PqN2v
         v5LPL/iqvchRCJKpjlf5qoiZOG6GevRMnGh6hNNlItkj/KWOdJuCp5fabM7xPCM6miz/
         hVrevOr6Fip2+styQMNXNjdHtDMcti2g+h2ziV8kx9T/4lARUEypGA1rT4rTxwwVJkn4
         ZGRApDzd8NswXsivJe3/VbUZWt5mItUENVV9dR4hu6rVn1507YqMJO/akvz7pAED12lM
         cE9A==
X-Gm-Message-State: AOJu0YyejUlB3ahDNWOBN5Jt305qZxhDeIu8nslSpkO7zqaaXk3OwQ6H
	T12YQboiMOZXrjFynK4qi9Q=
X-Google-Smtp-Source: AGHT+IHTSyBsNNSIaIF8AemW48jF99AIEURyoBpH1MuM0LgLklqcC2bp7f5ubM/5X+N5yQmhtDThuQ==
X-Received: by 2002:a05:6358:d091:b0:168:bc76:9a2d with SMTP id jc17-20020a056358d09100b00168bc769a2dmr324768rwb.7.1697804315418;
        Fri, 20 Oct 2023 05:18:35 -0700 (PDT)
Received: from localhost (fpd11144dd.ap.nuro.jp. [209.17.68.221])
        by smtp.gmail.com with ESMTPSA id f23-20020aa79697000000b0068fb783d0c6sm1444598pfk.141.2023.10.20.05.18.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Oct 2023 05:18:34 -0700 (PDT)
Date: Fri, 20 Oct 2023 21:18:33 +0900
From: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: lpieralisi@kernel.org, robh@kernel.org, bhelgaas@google.com,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	jingoohan1@gmail.com, gustavo.pimentel@synopsys.com,
	mani@kernel.org, marek.vasut+renesas@gmail.com,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH v25 00/15] PCI: dwc: rcar-gen4: Add R-Car Gen4 PCIe
 support
Message-ID: <20231020121833.GA298533@rocinante>
References: <20231018085631.1121289-1-yoshihiro.shimoda.uh@renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231018085631.1121289-1-yoshihiro.shimoda.uh@renesas.com>

Hello,

> Add R-Car S4-8 (R-Car Gen4) PCIe controller for both host and endpoint modes.
> To support them, modify PCIe DesignWare common codes.
[...]

Applied to controller/rcar, thank you!

[01/15] PCI: Add T_PVPERL macro
        https://git.kernel.org/pci/pci/c/164f66be0c25
[02/15] PCI: dwc: Add dw_pcie_link_set_max_link_width()
        https://git.kernel.org/pci/pci/c/a9a1bcba9025
[03/15] PCI: dwc: Add missing PCI_EXP_LNKCAP_MLW handling
        https://git.kernel.org/pci/pci/c/89db0793c9f2
[04/15] PCI: tegra194: Drop PCI_EXP_LNKSTA_NLW setting
        https://git.kernel.org/pci/pci/c/1a9745476cae
[05/15] PCI: dwc: endpoint: Add multiple PFs support for dbi2
        https://git.kernel.org/pci/pci/c/7873b49b41b9
[06/15] PCI: dwc: Add EDMA_UNROLL capability flag
        https://git.kernel.org/pci/pci/c/1896d17f9168
[07/15] PCI: dwc: Expose dw_pcie_ep_exit() to module
        https://git.kernel.org/pci/pci/c/2066b41a2ef8
[08/15] PCI: dwc: endpoint: Introduce .pre_init() and .deinit()
        https://git.kernel.org/pci/pci/c/52b4edbc304c
[09/15] dt-bindings: PCI: dwc: Update maxItems of reg and reg-names
        https://git.kernel.org/pci/pci/c/7e8fcf83c48a
[10/15] dt-bindings: PCI: renesas: Add R-Car Gen4 PCIe Host
        https://git.kernel.org/pci/pci/c/e8858cc55f62
[11/15] dt-bindings: PCI: renesas: Add R-Car Gen4 PCIe Endpoint
        https://git.kernel.org/pci/pci/c/5df0306d03c9
[12/15] PCI: rcar-gen4: Add R-Car Gen4 PCIe controller support for host mode
        https://git.kernel.org/pci/pci/c/8227bf7a81e6
[13/15] PCI: rcar-gen4: Add endpoint mode support
        https://git.kernel.org/pci/pci/c/d3c54d8ba855
[14/15] MAINTAINERS: Update PCI DRIVER FOR RENESAS R-CAR for R-Car Gen4
        https://git.kernel.org/pci/pci/c/2c1cca77c894
[15/15] misc: pci_endpoint_test: Add Device ID for R-Car S4-8 PCIe controller
        https://git.kernel.org/pci/pci/c/a21169341a16

	Krzysztof

