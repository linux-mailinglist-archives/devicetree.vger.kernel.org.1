Return-Path: <devicetree+bounces-239540-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B0D89C66556
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 22:49:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 16E6A4ED8F2
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 21:47:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81811315D5D;
	Mon, 17 Nov 2025 21:47:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KrLZGxZ5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f53.google.com (mail-oa1-f53.google.com [209.85.160.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC43C28B4FE
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 21:47:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763416051; cv=none; b=l8dHELnhw68OPFI8qnjJa2xajL5h95yfgt3bLVwFQ9Y60Ultg3w149FfDFuZVz/l+lpQ/QXEycZxARlwNMortvjvwmNVcPhiHc2MUJDMxcMbeeOYdd+Vr8W738jY4ukXi47LpR+fCeVIlrw3AudDgDBD3ozunFOxv59lXhcQWeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763416051; c=relaxed/simple;
	bh=02KrjkcVEGcP4+KgwEdLutAwHLpirxYLnBEVXSkC1SU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hdM7NWxSMfbu1mzGXB4LV2COvm0wx/8k35SVZcL+02YHy3uJNZ01S3/Uhgyk6u+8BnYsN4dil/vbyK21PDwgt/d2cX8iJOCrfs2ia8cMnALljTlKT4f2Fu6s1cojOHqGeKCaveLkYBL/9REN9JEwntUKWJc7lbZOQnIMALDSSlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KrLZGxZ5; arc=none smtp.client-ip=209.85.160.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f53.google.com with SMTP id 586e51a60fabf-3ec5df386acso308496fac.1
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 13:47:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763416049; x=1764020849; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=e5/Mnk8IlwC7NVL0B0/CURaWGhjHy5jv43K5mCqYKF4=;
        b=KrLZGxZ57y0EfwLM7nhWWZAvoFQl/YP8+pu78/yV3TXSysHdHs2TUhNvpbV1O++qob
         w02s139adKBn6y/Wg87rjt5mg90Oiygrl3QbjGj7usc95quOrOp3dp5OZfWMBMFMnCQ3
         BXM6/wDD7l9dsWb+LABlojtCxQRysb7Npbk+zDq6xugwqIdBpxd46mSc/6PFJjWzjW80
         pnS1orCMmPILd21+ahAcZjQFRhsl/m0+2UU6ArFp0fu297CidJEa3NIh0zixxbGMYLDX
         mlMt5aVdRV/6f2xs1Gn3FL7euIqlAWR76Dcxv7VtDLexCVWwf0r6DME4foNmxUcdqbul
         yTaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763416049; x=1764020849;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=e5/Mnk8IlwC7NVL0B0/CURaWGhjHy5jv43K5mCqYKF4=;
        b=gO6FLKu753f097c+Ga6wz1COqB0KOrzUQHvbbhzMpIcwgqKpxyJbUN/oZVMSfHO3Tx
         50Z4VGukDiRIu8ya6hU9shQ3zWbA3EgT4igFryHSkJOmpFaNh8RcESJChl/LuST6yRD+
         +Y6SM8cNtfHdCgnITpU1iqekSCjbKSYz7crAseCcPljsB3Mjnngi/dxaFhwAWB8+qNp+
         LCLzW1VSSrwsrJQJqheZFJLywXV3uVv9kHvEOU+A7WeH2uCIJdHkNHioK047rJBvWdm6
         4fKfi74hMSEhAdUPNUfhav5p9557vQf8rGCjWXCq8pS1BT9x752F0tGiwMRmz2tdhNzd
         qH4Q==
X-Forwarded-Encrypted: i=1; AJvYcCWmmBdWWpJcJti4abs5wn1uMA9mZDYA1V32wSK177r+bL2nMA/J959DhFmyDFOcmJ3WffLKb2zm9SXK@vger.kernel.org
X-Gm-Message-State: AOJu0YyZx1Gwwy5ZLrZQfikIrhLXbaEehwiVDRs9sorMnI1y5Yt61yc2
	rOiSt5vkt9jbILk1ogo2FNO8IDQyK9frisn2vIfB7CIV7Tzer0WjIscD
X-Gm-Gg: ASbGnctcudwD3I10kj14bl0cPLs43NKXSTduNbgQZ7N4SntcqjQNCEI+14Nz5WlpM3R
	+tHPjR1Ga3ylBlu0FY0lNywOPTIa/io8NCeuw89wVB/ckkAF5bni8KEN5dDQiVYu0WeiQFTWea+
	aK4UDimE7Rxk0Iu16+jVBtQKr3kL+KcnF2VqvZ9nu2kJpkfsphv+7iwVer73QRRfuySPGRquE7Y
	l/y96bYz4gxcRna3wfhZidI/uTtqU4tYopXNO0+SJE988vDMsDIaCWar9ZPyVd9rRkygdHtwVeW
	Xzg354FhQvdNajqvomMMgPsByHeM2jLvX4VA/4naX14ikFAWEm8rxYbAz8rSEcrc/OnycTAhJfc
	92OZm8rxJxapxx9k4XWOr76iNPgqOTkQO5KPLy3pdGMZVIesBlG2v24ozE+yRpx9HDcfYEKMq89
	kjCV/rTTib
X-Google-Smtp-Source: AGHT+IFbFQICWh2gP02Uz3H7G+3A9sZE2Z07hnxBP+XT6lcLkkYORqspu5DTPztkG3lR2Z2E4DHMXA==
X-Received: by 2002:a05:6870:a711:b0:3ec:64d2:3fd6 with SMTP id 586e51a60fabf-3ec64d2691amr104353fac.41.1763416049047;
        Mon, 17 Nov 2025 13:47:29 -0800 (PST)
Received: from geday ([2804:7f2:800b:a807::dead:c001])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-3e851ffc62dsm6367892fac.5.2025.11.17.13.47.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Nov 2025 13:47:28 -0800 (PST)
Date: Mon, 17 Nov 2025 18:47:22 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Johan Jonker <jbx6244@gmail.com>,
	Geraldo Nascimento <geraldogabriel@gmail.com>,
	Dragan Simic <dsimic@manjaro.org>
Cc: linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 2/4] PCI: rockchip-host: comment danger of 5.0 GT/s speed
Message-ID: <2f2825741e189f5d915560eede6ff7bf827546f4.1763415706.git.geraldogabriel@gmail.com>
References: <cover.1763415705.git.geraldogabriel@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1763415705.git.geraldogabriel@gmail.com>

According to Rockchip sources, there is grave danger in enabling 5.0
GT/s speed for this core. Add a comment documenting that danger and
discouraging end-users from forcing higher speed.

Link: https://lore.kernel.org/all/ffd05070-9879-4468-94e3-b88968b4c21b@rock-chips.com/
Cc: stable@vger.kernel.org
Reported-by: Dragan Simic <dsimic@manjaro.org>
Reported-by: Shawn Lin <shawn.lin@rock-chips.com>
Reviewed-by: Dragan Simic <dsimic@manjaro.org>
Signed-off-by: Geraldo Nascimento <geraldogabriel@gmail.com>
---
 drivers/pci/controller/pcie-rockchip-host.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
index ee1822ca01db..0af550277ee5 100644
--- a/drivers/pci/controller/pcie-rockchip-host.c
+++ b/drivers/pci/controller/pcie-rockchip-host.c
@@ -332,6 +332,9 @@ static int rockchip_pcie_host_init_port(struct rockchip_pcie *rockchip)
 		/*
 		 * Enable retrain for gen2. This should be configured only after
 		 * gen1 finished.
+		 *
+		 * Dangerous and may lead to catastrophic failure eventually!
+		 *
 		 */
 		status = rockchip_pcie_read(rockchip, PCIE_RC_CONFIG_CR + PCI_EXP_LNKCTL2);
 		status &= ~PCI_EXP_LNKCTL2_TLS;
-- 
2.49.0


