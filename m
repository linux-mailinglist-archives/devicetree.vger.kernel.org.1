Return-Path: <devicetree+bounces-168757-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BBE79A9440C
	for <lists+devicetree@lfdr.de>; Sat, 19 Apr 2025 16:59:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DCFC23B7F37
	for <lists+devicetree@lfdr.de>; Sat, 19 Apr 2025 14:59:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E04E61DC9B0;
	Sat, 19 Apr 2025 14:59:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QvOgQpwy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6655199E89
	for <devicetree@vger.kernel.org>; Sat, 19 Apr 2025 14:59:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745074774; cv=none; b=AMX4yb6erojMMIyy7DuC/KH1e0pzWocPFZW3/oygF8HUDgS7e5ngtDzn49wKS2bB8kbrugyqJcFflggDeNMZQkbaf1sq7Dv9kCEve1KyMoy5pRuytXKnV7O8Ct6fTDkumLqU6jY1DyuhXMQKr0j/P/hlHGuIu9TmLo+qie5X9L0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745074774; c=relaxed/simple;
	bh=YBkcA+8VZy/wu0v2Bt7u8fQ1puMwyzk0J7Ggy/XGRnw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=axl2pRASa/Ecz9Ym6Si3Hsm1Uen4WQhpCmkSF+A2UnW7ggpd7476Yab2vs68OxqNv3Gb0djlT0bYMBj/yJ31CqBeweTfaeF+RcBJtta5Ls2/V/95W3rzGf9FA7vmPGwnFYYdgi0y3dQUWWocCbooqNtVW2ku1o+PBEpSHAbUVVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QvOgQpwy; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-736a72220edso2659294b3a.3
        for <devicetree@vger.kernel.org>; Sat, 19 Apr 2025 07:59:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745074771; x=1745679571; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9q1NBR20RdtEJv8ykkYuXpJV8gE5og1ezdr6jbBl9lI=;
        b=QvOgQpwyT0Dv2wXZm/PkFEOPPHR6kAGJ4ZmFDNmHVujVOgrxn3f/5IqyZsMTowUzWP
         bQ464Qs1PZadMjJB3QbvZjH8fRxnXwyahWLJa3mNS++Y37PhsxpZffbI5wSIJxwSyk6V
         1NesAeKS/yMu/KRU+dM8I1iXyc2ZJA4x+8l6UTZvUeBhTZMfWptlWFUlr3SvSZm8SEOS
         ixkC5Kd+fXcVZ2OCKOyQ6EaieJDhiGklmkq9c1Ruw5JhNCZT4F8MgPt+KcjQNZzXqrs1
         wFzZthD57IjiCIJyvFZKTpGg9UWpVj3mgNrxlwDEL/fvBT9VYeXBeJy8E1dgtFkuBplI
         CZog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745074771; x=1745679571;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9q1NBR20RdtEJv8ykkYuXpJV8gE5og1ezdr6jbBl9lI=;
        b=BN8HGrJUP4nUT8TUoU5TgjKJ8Q/Zdqq7zUywAnfFcBc7EJHQCS0RHBOjcxjQMaOETv
         mnigf6clTCm0RZklM3CjtNAVo6oapRViHVv64A9S2/kl0DM+oGFYCgyUiLn1pak47mvk
         jEmk5DPpoJodBWwtlmYCbrZ50zfftlvRXQ0BqDsIbm5pOLeYDfDx6VQ78V0Y5Jcb/yDF
         rdiq28ZHbpWUv5fFIfe6hF0YCaO+n0/xzMefHSxY1x7QidYgCIPp6CAkhCPayEOH0yUH
         VHYuCDgVx19fIFV3wof4cuh7HreApoBLv/2CfdiUNRUJ0u1ua5hyTdrWwh1B/qcAXumL
         /15w==
X-Forwarded-Encrypted: i=1; AJvYcCUdFhxUf4v1aFMz1diLRbd6QeMiMhYRUy+vtbILeVHKsoiROeMXU8XBCeaLc4QqMyC4ia3IKJICmjKs@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3w2qa5xrZnFfnUE6lyuAQ5/boKyPTgaPJj8lnqqKf8YGeex+n
	qhFZ/3SbKCFn3YDQ5oLDPyBwUCNctVU20qg4/QH2Fo1E6UDUV/Gt2I91/cXgTg==
X-Gm-Gg: ASbGncsgYEVOgeBhyQoAMn2nSdXxNq0vNYxJBtl1mKjoDy765MevMQZvkAC5UPGzpxi
	fhRyzrZplV0UjlfGDVv6zQKiimG566S6xOVtb7fGaQ++HL/T2k4u/ftUkl5Hhx/TZqcfYuVtDPT
	vGxc7/s0ruHkK3iUg+Y8rNF2GWJnP2xgSfanKN9fFjfMFeYraHKz+1QkNeiHWfbJ2gX3LO5DjpC
	fTm9NBeYOGSFMPzmDFL4Ct5+pwR+lsAD2NYVk0olbLJ1J/jf5bk5MyzGHdysQOE77nrzV3C4KlK
	4b3Bk8sNnw9CDZ2gn+QmJ+6zbLloFaek3U8Qn2z/bxRSjSmbuB920Q==
X-Google-Smtp-Source: AGHT+IE8xaP7gnD8F/5xNGraXuOjC5ioTqc6szU4p31LKem0A/5JV3SxYxZJSVmaL3fJhJ5WcSXIAg==
X-Received: by 2002:a05:6a00:884:b0:730:97a6:f04 with SMTP id d2e1a72fcca58-73dc1494019mr9292391b3a.7.1745074771096;
        Sat, 19 Apr 2025 07:59:31 -0700 (PDT)
Received: from thinkpad.. ([36.255.17.167])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73dbf90bd8csm3411547b3a.79.2025.04.19.07.59.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Apr 2025 07:59:30 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: linux-arm-kernel@lists.infradead.org,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	asahi@lists.linux.dev,
	Marc Zyngier <maz@kernel.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Alyssa Rosenzweig <alyssa@rosenzweig.io>,
	Janne Grunau <j@jannau.net>,
	Hector Martin <marcan@marcan.st>,
	Sven Peter <sven@svenpeter.dev>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Mark Kettenis <mark.kettenis@xs4all.nl>
Subject: Re: [PATCH v3 00/13] PCI: apple: Add support for t6020
Date: Sat, 19 Apr 2025 20:29:18 +0530
Message-ID: <174507447951.53343.12422475035572217541.b4-ty@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250401091713.2765724-1-maz@kernel.org>
References: <20250401091713.2765724-1-maz@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Tue, 01 Apr 2025 10:17:00 +0100, Marc Zyngier wrote:
> As Alyssa didn't have the bandwidth to deal with this series, I have
> taken it over. All bugs are therefore mine.
> 
> The initial series [1] stated:
> 
> "This series adds T6020 support to the Apple PCIe controller. Mostly
>  Apple shuffled registers around (presumably to accommodate the larger
>  configurations on those machines). So there's a bit of churn here but
>  not too much in the way of functional changes."
> 
> [...]

Applied, thanks! 

[01/13] PCI: apple: Set only available ports up
        commit: 751bec089c4eed486578994abd2c5395f08d0302
[02/13] dt-bindings: pci: apple,pcie: Add t6020 compatible string
        commit: 6b7f49be74758a60b760d6c19a48f65a23511dbe
[03/13] PCI: host-generic: Extract an ecam bridge creation helper from pci_host_common_probe()
        commit: 03d6077605a24f6097681f7938820ac93068115e
[04/13] PCI: ecam: Allow cfg->priv to be pre-populated from the root port device
        commit: f998e79b80da3d4f1756d3289f63289fb833f860
[05/13] PCI: apple: Move over to standalone probing
        commit: cf3120fe852f5a5ff896aa3b2b6a0dfd9676ac31
[06/13] PCI: apple: Dynamically allocate RID-to_SID bitmap
        commit: d5d64a71ec55235810b4ef8256c7f400b24d7ce8
[07/13] PCI: apple: Move away from INTMSK{SET,CLR} for INTx and private interrupts
        commit: 0dcb32f3e12e56f5f3bc659195e5691acbfb299d
[08/13] PCI: apple: Fix missing OF node reference in apple_pcie_setup_port
        commit: 02a982baee109180da03bb8e7e89cf63f0232f93
[09/13] PCI: apple: Move port PHY registers to their own reg items
        commit: 5da38e665ad59b15e4b8788d4c695c64f13a53e7
[10/13] PCI: apple: Drop poll for CORE_RC_PHYIF_STAT_REFCLK
        commit: 3add0420d2574344fc2b29d70cfde25bd9d67d47
[11/13] PCI: apple: Use gpiod_set_value_cansleep in probe flow
        commit: 484af093984c35773ee01067b8cea440c5d7e78c
[12/13] PCI: apple: Abstract register offsets via a SoC-specific structure
        commit: 0643c963ed0f902e94b813fdcbf97cbea48a6d1a
[13/13] PCI: apple: Add T602x PCIe support
        commit: f80bfbf4f11758c9e1817f543cd97e66c449d1b4

I've fixed some trivial conflicts while applying. But please check the end
result to make sure I didn't mess up:

https://git.kernel.org/pub/scm/linux/kernel/git/pci/pci.git/log/?h=controller/apple

Best regards,
-- 
Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

