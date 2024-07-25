Return-Path: <devicetree+bounces-87982-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 543F293BBF0
	for <lists+devicetree@lfdr.de>; Thu, 25 Jul 2024 07:03:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 11A4A284CA7
	for <lists+devicetree@lfdr.de>; Thu, 25 Jul 2024 05:03:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46DDE1C68C;
	Thu, 25 Jul 2024 05:03:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RpaxANy/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A67A718040
	for <devicetree@vger.kernel.org>; Thu, 25 Jul 2024 05:03:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721883808; cv=none; b=P3WfEpKZXLIo0ZfGj4t/PZwEBKTB1WpyXONi7bRTcCy6VuVf5VBoxls10ayPUf8OR0EXaWdNhsidRr9XrexyL5aGKaod7iE1ZkHv6KU04LVVThL+CKhTh3lQfUyla6lfIyff7c5wMkVy6V79dsoSSiGf74WZNisoeb0TeQDpijw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721883808; c=relaxed/simple;
	bh=4jOWZRFpC9T03DeHefAHMwQwPmdX/qSrpARBw4vv4qc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=H0NNba33iNzmYJ/19c+YE2i42fMSde5EAMvA4cyKuzleKv0oVfEpvlrbs9AYAdYSc+b6hM9FCg2+2eUuDke6gfLsfoUgyxrf6iTJOrgurQ2qxzndyjRn8u4WCOdq1AmxjqKg6v4aYHa8R+fh6PuQ2RJ+lG+puu/7m0SeErYzpZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RpaxANy/; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-70eb0ae23e4so67518b3a.0
        for <devicetree@vger.kernel.org>; Wed, 24 Jul 2024 22:03:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721883805; x=1722488605; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=WSFwKnfVczR16WD5Y3nfX2f2/Inf3FOYKXgV2SNCco4=;
        b=RpaxANy/VKVKF2jDYfpWTid7exw1wSpKCCrMUcnHP2OEOfaK9QGSqfj5rXkQSZz/DR
         qTnlMG5QM3y6ZUzhTINpA4MOzpvE9mRvKy+1VgNYxTYArROCDRqfCe8k7H19oNyRiR2H
         dG7V8qZMg0h0ZOZA+nwTD589nzmv2DDe1cH0An/7ha8C316tkuD3zDUQsZ4jQ7o0CUYF
         tsIdJIV661ZfY4vMwNtPbvvsVzeNAGRlxPrwbsgSm8w78D7/JtXdX2C9eZcR8k93dLuV
         8FwqPnJWLP+0w2bySmJHUR32QhirheKqZRTgAZHThEm/fbG+4ZIwiqdpUPGebps0nWjT
         NbIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721883805; x=1722488605;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WSFwKnfVczR16WD5Y3nfX2f2/Inf3FOYKXgV2SNCco4=;
        b=eZvjhN39GUfOBiup7rR92xZm5QHPI0hYZUkiA7+xO5x73eIcFED5s3OKmp6DaUfRc/
         YPbkB9mW7nV7sTZx3vspZzgY2INWXICiqp5Bb0FYFX0RjWZUSFTi0pX04jMC/mcv12/w
         mHxjLn5MVqY/sQQHW+YkQkd9VtIZIJNmsfyvCuvovRKAxRu+0gmN0BrwSOmNBh57ryLy
         kujfdU44ON7D/Up+9ZjwgOVBd/ggmPPxRsxS4wtsRf+nPtb+1r+uymDR3RJHfjbeJ/TT
         MHt4jAlqGrnbj64Ho2TMDVcw2ue+AuIBe7q1MKT4YzPPzlMdgRzMmjHKF8r4n9Q2svG/
         xcQA==
X-Forwarded-Encrypted: i=1; AJvYcCVJhNiHK9D1E42K4c98W9TQD+BDxF0aC/LJxS4DCYvLx2JG0ddyW+ICJ4ijXmBZPKgb/FEYH9yW1nTEdTZYS7y9fngcIokvnpyB9Q==
X-Gm-Message-State: AOJu0Yy7RZd6QiFlWnbuw4C5X2BmPmpZNjleJTFO7acQ8uAfanE6qEXv
	vH4m4hrOt1lax5lUjrpUvUDHWRKsUxXUnTqFvJNNcDRifso4KjsTUSy3cHRRgQ==
X-Google-Smtp-Source: AGHT+IHUkqheWrPFgpUPoQDkhuPNo5ceh34Gz+2v4tjh+WIsehsAtjMWtZX+TlgSdAsBTKwMuQC1JQ==
X-Received: by 2002:a05:6a20:b292:b0:1c0:e69f:f237 with SMTP id adf61e73a8af0-1c47b25a048mr559272637.21.1721883804913;
        Wed, 24 Jul 2024 22:03:24 -0700 (PDT)
Received: from thinkpad ([103.244.168.26])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2cf28c7fe33sm551503a91.13.2024.07.24.22.03.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jul 2024 22:03:24 -0700 (PDT)
Date: Thu, 25 Jul 2024 10:33:19 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Jim Quinlan <james.quinlan@broadcom.com>
Cc: linux-pci@vger.kernel.org, Nicolas Saenz Julienne <nsaenz@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Cyril Brulebois <kibi@debian.org>,
	Stanimir Varbanov <svarbanov@suse.de>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	bcm-kernel-feedback-list@broadcom.com, jim2101024@gmail.com,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	"moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
	open list <linux-kernel@vger.kernel.org>,
	"moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE" <linux-rpi-kernel@lists.infradead.org>,
	Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v4 00/12] PCI: brcnstb: Enable STB 7712 SOC
Message-ID: <20240725050319.GM2317@thinkpad>
References: <20240716213131.6036-1-james.quinlan@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240716213131.6036-1-james.quinlan@broadcom.com>

On Tue, Jul 16, 2024 at 05:31:15PM -0400, Jim Quinlan wrote:
> V4 Changes:
>   o Commit "Check return value of all reset_control_xxx calls"
>     -- Blank line before "return" (Stan)
>   o Commit "Use common error handling code in brcmstb_probe()"
>     -- Drop the "Fixes" tag (Stan)
>   o Commit "dt-bindings: PCI ..."
>     -- Separate the main commit into two: cleanup and adding the
>        7712 SoC (Krzysztof)
>     -- Fold maintainer change commit into cleanup change (Krzysztof)
>     -- Use minItems/maxItems where appropriate (Krzysztof)
>     -- Consistent order of resets/reset-names in decl and usage
>        (Krzysztof)
> 

Rpi mailing list owners: Could you please make the list 'unmoderated'? I haven't
subscribe to this list, so I just keep getting the 'Your message to
linux-rpi-kernel awaits moderator approval' for every review comment I post,
which is a spam to me.

Also I won't subscribe to this list unless I work on Rpi. So using moderated
list in LKML is just spamming the reviewers.

- Mani

> V3 Changes:
>   o Commit "Enable 7712 SOCs"
>     -- Move "model" check from outside to inside func (Stan)
>   o Commit "Check return value of all reset_control_xxx calls"
>     -- Propagate errors up the chain instead of ignoring them (Stan)
>   o Commit "Refactor for chips with many regular inbound BARs"
>     -- Nine suggestions given, nine implemented (Stan)
>   o Commit "Make HARD_DEBUG, INTR2_CPU_BASE offsets SoC-specific"
>     -- Drop tab, add parens around macro params in expression (Stan)
>   o Commit "Use swinit reset if available"
>     -- Treat swinit the same as other reset controllers (Stan)
>        Stan suggested to use dev_err_probe() for getting resources
>        but I will defer that to future series (if that's okay).
>   o Commit "Get resource before we start asserting resets"
>     -- Squash this with previous commit (Stan)
>   o Commit "Use "clk_out" error path label"
>     -- Move clk_prepare_enable() after getting resouurces (Stan)
>     -- Change subject to "Use more common error handling code in
>        brcm_pcie_probe()" (Markus)
>     -- Use imperative commit description (Markus)
>     -- "Fixes:" tag added for missing error return. (Markus)
>   o Commit "dt-bindings: PCI ..."
>     -- Split off maintainer change in separate commit.
>     -- Tried to accomodate Krzysztof's requests, I'm not sure I
>        have succeeded.  Krzysztof, please see [1] below.
>   
>   [1] Wrt the YAML of brcmstb PCIe resets, here is what I am trying
>       to describe:
> 
>       CHIP       NUM_RESETS    NAMES
>       ====       ==========    =====
>       4908       1             perst
>       7216       1             rescal
>       7712       3             rescal, bridge, swinit
>       Others     0             -
> 
> 
> V2 Changes (note: four new commits):
>   o Commit "dt-bindings: PCI ..."
>     -- s/Adds/Add/, fix spelling error (Bjorn)
>     -- Order compatible strings alphabetically (Krzysztof)
>     -- Give definitions first then rules (Krzysztof)
>     -- Add reason for change in maintainer (Krzysztof)
>   o Commit "Use swinit reset if available"
>     -- no need for "else" clause (Philipp)
>     -- fix improper use of dev_err_probe() (Philipp) 
>   o Commit "Use "clk_out" error path label"
>     -- Improve commit message (Bjorn)
>   o Commit "PCI: brcmstb: Make HARD_DEBUG, INTR2_CPU_BASE offsets SoC-specific"
>     -- Improve commit subject line (Bjorn)
>   o Commit (NEW) -- Change field name from 'type' to 'model'
>     -- Added as requested (Stanimir)
>   o Commit (NEW) -- Check return value of all reset_control_xxx calls
>     -- Added as requested (Stanimir)
>   o Commit (NEW) "Get resource before we start asserting reset controllers"
>     -- Added as requested (Stanimir)
>   o Commit (NEW) -- "Remove two unused constants from driver"
> 
> 
> V1:
>   This submission is for the Broadcom STB 7712, sibling SOC of the RPi5 chip.
>   Stanimir has already submitted a patch "Add PCIe support for bcm2712" for
>   the RPi version of the SOC.  It is hoped that Stanimir will allow us to
>   submit this series first and subsequently rebase his patch(es).
> 
>   The largest commit, "Refactor for chips with many regular inbound BARs"
>   affects both the STB and RPi SOCs.  It allows for multiple inbound ranges
>   where previously only one was effectively used.  This feature will also
>   be present in future STB chips, as well as Broadcom's Cable Modem group.
> 
> Jim Quinlan (12):
>   dt-bindings: PCI: Cleanup of brcmstb YAML and add 7712 SoC
>   dt-bindings: PCI: brcmstb: Add 7712 SoC description
>   PCI: brcmstb: Use common error handling code in brcm_pcie_probe()
>   PCI: brcmstb: Use bridge reset if available
>   PCI: brcmstb: Use swinit reset if available
>   PCI: brcmstb: PCI: brcmstb: Make HARD_DEBUG, INTR2_CPU_BASE offsets
>     SoC-specific
>   PCI: brcmstb: Remove two unused constants from driver
>   PCI: brcmstb: Don't conflate the reset rescal with phy ctrl
>   PCI: brcmstb: Refactor for chips with many regular inbound BARs
>   PCI: brcmstb: Check return value of all reset_control_xxx calls
>   PCI: brcmstb: Change field name from 'type' to 'model'
>   PCI: brcmstb: Enable 7712 SOCs
> 
>  .../bindings/pci/brcm,stb-pcie.yaml           |  50 +-
>  drivers/pci/controller/pcie-brcmstb.c         | 485 +++++++++++++-----
>  2 files changed, 400 insertions(+), 135 deletions(-)
> 
> 
> base-commit: 55027e689933ba2e64f3d245fb1ff185b3e7fc81
> -- 
> 2.17.1
> 



-- 
மணிவண்ணன் சதாசிவம்

