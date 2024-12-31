Return-Path: <devicetree+bounces-134943-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id ADDC59FEFF7
	for <lists+devicetree@lfdr.de>; Tue, 31 Dec 2024 15:29:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A322D18831CA
	for <lists+devicetree@lfdr.de>; Tue, 31 Dec 2024 14:29:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18C2D84039;
	Tue, 31 Dec 2024 14:29:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oo+3wSz9"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFFEFCA4B;
	Tue, 31 Dec 2024 14:29:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735655392; cv=none; b=BjG5sp6eUqgNnScW4rjVD74r+AWnX7pkaT9gxr3NJP6xWpWiFDdhHeEpk+3wd5LOzFDb+Sb1WdHTNaN4ZdRNPSOFVD8hfhThYOWmXajt61E8A24TzHOzY+5FhwEMSxDgUQAY0wXNQQPMeLlG8l1piyf0tfKSc/uKFvuGbI/1iy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735655392; c=relaxed/simple;
	bh=D9i1BNvhWcyg16vVHBlPx2JLBoZflWFhfs/w06j/PbQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=CDC8rHm8w+X7gZ/iFDQFPyewceDOjjRzZ9aCnPctEZp7/kDMExSNYWWbRAJi7qIxqske801lR/Sm7zN8fFCGI1hrMILJF/EOZwIiSXvbD6hUf3eg87cj23GdBEOsuAhtoNswNl5wFfEvDg/tr2IoCibrEhGrl54/SkQn8TSmuqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oo+3wSz9; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 97E72C4CED2;
	Tue, 31 Dec 2024 14:29:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735655391;
	bh=D9i1BNvhWcyg16vVHBlPx2JLBoZflWFhfs/w06j/PbQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=oo+3wSz988zqtSFPYwqw0fJCO6r+TJVQauWzidt1vSOk3gTFEu21AP836iVWVcyMW
	 vbNHZCtHBGdV3kYKwtSfQx45eo502onauozTsXqvaUcz+2ycvwykRE5Z+sirKJiq2i
	 uT2Xk9iC7h367l07G+05h/7LrHhN5O6ofPXaIHPsFbwpNKOsgO2z0lpCh5dOGRiwWQ
	 hYapF+aL3noaRMJdSUiqyhZfTOBLGVvL4Uo+Vslr+vH8eICI1dO1hpscvvXx1TyaXb
	 jWHJaZ4s8Kd9GtrnU7d9MDzd+02KZ7VODeCrDEjHUAnspDKpQM2q+3MHojnPIwgQhT
	 nVoY9Hr2yEWfg==
From: Lorenzo Pieralisi <lpieralisi@kernel.org>
To: =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>,
	Hou Zhiqiang <Zhiqiang.Hou@nxp.com>,
	Frank <Li@nxp.com>,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Frank Li <Frank.Li@nxp.com>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	imx@lists.linux.dev
Subject: Re: [PATCH v3 1/1] dt-bindings: PCI: mobiveil: convert mobiveil-pcie.txt to yaml format
Date: Tue, 31 Dec 2024 15:29:43 +0100
Message-ID: <173565535275.212052.10594403575755993718.b4-ty@kernel.org>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241211171318.4129818-1-Frank.Li@nxp.com>
References: <20241211171318.4129818-1-Frank.Li@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Wed, 11 Dec 2024 12:13:16 -0500, Frank Li wrote:
> Convert device tree binding doc mobiveil-pcie.txt to yaml format. Merge
> layerscape-pcie-gen4.txt into this file.
> 
> Additional change:
> - interrupt-names: "aer", "pme", "intr", which align order in examples.
> - reg-names: reorder as csr_axi_slave, config_axi_slave to match
> layerscape-pcie-gen4 and existed Layerscape DTS users.
> 
> [...]

Applied to controller/dt, thanks!

[1/1] dt-bindings: PCI: mobiveil: convert mobiveil-pcie.txt to yaml format
      https://git.kernel.org/pci/pci/c/a45646d86e69

Thanks,
Lorenzo

