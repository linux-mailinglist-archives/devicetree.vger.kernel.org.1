Return-Path: <devicetree+bounces-234207-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 39D01C2A2E6
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 07:28:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 66CD8188B6A9
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 06:27:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AA02295DB8;
	Mon,  3 Nov 2025 06:27:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KpRKMnas"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E58C8291C1E
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 06:27:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762151235; cv=none; b=hezFfDwBfAulFW7ZjGQerGSIqAPFOr+SBtOOuHHCOTxnHTc7kf1L3HGd41dRSNYmPQnhoZHSjt9+cdlH/GjmSMUPLTbOcl+o53papIUWNR24OnrXkFZUxf/7e0lh85Jod7ZGXP5cNT2beYZM/Cddt4Wxko7OEsdo6zoAhMa5CEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762151235; c=relaxed/simple;
	bh=0rL5TGBY7q8nvzECU6bSXlUF+B8hh6WFBDcQ55vZL94=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=O1ny81eVpQz/grB0aHet6MwcLt9UTt+bRsnua2563iPItmmHoV/rVbptEtpejNYqVaToklH1MDmWgBZ+elgGeYwAL2cNBBbSke6aLxGvD/WEiuA/m5OM3vQ7DT13HtdzXgOlkf6q0EQ1rZhDHaamSLcRvJEEPfwZTmkRodkYk94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KpRKMnas; arc=none smtp.client-ip=209.85.216.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-34029c5beabso3645698a91.1
        for <devicetree@vger.kernel.org>; Sun, 02 Nov 2025 22:27:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762151232; x=1762756032; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZGKLj9IuGGzKXJR4eozTFqH7zWJUpUm6z/EiTyDGmsU=;
        b=KpRKMnas6jIAuyHC6odBnJM9Z+950EXimE4fz0tHvQ3Q/ic3XXf4gSgs6xwTjtmjgB
         Yrp/RCZjLJGkqZb+/E9uTJIa/H98YWEVmYVvT9J2i44hvEKnHras6BSwhLo2dzcw2JL2
         MH4bG54zWpEIoLZZVj3ZuHtqcv05Znr/P0yRfK2LhaGrXMeeNWOJ4GbGh4mouIKW8Jz1
         Htig0HLHLeXM8xtxmee0eG4ESrh4J9WdD7bS5fTMTbEseJTKLPF2OUSYtYi/PXZSsief
         3QvjffRSg92ZodtGCEkvilbxQKyA+XL9D7OK8XcKJWGJm7cvToqgBQtLrA570cY3HGxI
         dZSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762151232; x=1762756032;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZGKLj9IuGGzKXJR4eozTFqH7zWJUpUm6z/EiTyDGmsU=;
        b=Rbzl7xmQ9LhIvVAPIUtsQ9erFNX2+8GJO6Ho6sGKpzyzBKOqadpIUN2KxIsS43xexZ
         4QY2gBZPMA3Om1PqCDtSi+6O2Xve2Wl3WKzdQgvWZ7hPHGrkaW3OZ1crIXYzpWXjaeOe
         vqmV+y/tmoLBvfVhN5IXcm2bMW+xbCnOs3c/ScIIvTXwI5ob8Y515PihOtXfkmNm9/8l
         gpi7AUqJwkbgZK1CdK0jWk0F1w5cyZLHDLwYH0Hw99Y+BFkLAT4rGHo040w6MlgROVCj
         kauLZkkGXgDIKxGA4lIMIg/FGskrmBGqDflXL53ZD56kxV3n9F58QG8mVrzSjZBAEPEq
         M7GA==
X-Forwarded-Encrypted: i=1; AJvYcCUEUvYLbYBMG6yqAWdWltTMlwlT8gohCNdpqNasCPs8JRthw2M/aV/5bXdFF3K+DindT13X/H2P7B7O@vger.kernel.org
X-Gm-Message-State: AOJu0YxTF1YNtH+1pKPU9HxZ6I8cFVn7gerdeClAlvwXqRfFTRpTwiix
	w+HHAu5kC0pTfsZJu2Qv3Kiw0e1/rlUe7p7bjSJhEd33q/10dCfuq/4V
X-Gm-Gg: ASbGnct1PP35qo6HBw/eETsoL+fuvw5m4c3uw8iKXSaJVxC+Am2DHxl+3Ozr/0AZLG3
	HkWBRjkSyhajOkgoAGhgPx/PjcFtaGXYkKipsXUQ/xhFO0okxRrxMxzPejL6X/0aBkaCaaWVw07
	nDKYiubATz1seHCQRfzezsEs134FuEfvS7zMpgyzWpgwDpZyLNZLePJz8Kwn0aTtgGhik+5Eao7
	yPwJqadJJSPZqzYL/N1fxCoadhMKecFKeLJoHRAn3/rbVZivnaUrcZ+kVvh0BjJ5TGI/J03qlEY
	0lT1nJP2Dx5C8v/FLa8+EoW1wUup+WF5P5e3kOCwm8hYjULV4w/gzrLYThgRXAtGBEZwLzbnVtW
	LJ0FBJFrZCYYsf3h6FBMQb6+RTfvESCNXbdA60tlxtT0tY2RqdeP3dKgIMGCYZgKWdWZOzz37bw
	==
X-Google-Smtp-Source: AGHT+IEEHJ5cKAo4s66Rvzv1t4feR0vnrItpNEwvY8alRc3/7dD6RTg/7i7hmvK6LD5XGWQ6H0YDoA==
X-Received: by 2002:a17:902:ce8c:b0:295:9d7f:9294 with SMTP id d9443c01a7336-2959d7f9455mr43290485ad.21.1762151232219;
        Sun, 02 Nov 2025 22:27:12 -0800 (PST)
Received: from geday ([2804:7f2:800b:fff9::dead:c001])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3407ef4c592sm4512294a91.1.2025.11.02.22.27.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Nov 2025 22:27:11 -0800 (PST)
Date: Mon, 3 Nov 2025 03:27:05 -0300
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
Subject: [RFC PATCH 1/2] arm64: dts: rockchip: drop PCIe 3v3 always-on/boot-on
Message-ID: <1c1cb7f94cf41142c55561ce8f2a2579021d4818.1762150971.git.geraldogabriel@gmail.com>
References: <cover.1762150971.git.geraldogabriel@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1762150971.git.geraldogabriel@gmail.com>

Example commit of needed dropping of regulator always-on/boot-on
declarations to make sure quirky devices known to not be working on
RK3399 are able to enumerate on the PCI bus.

One example only, tested on my ROCK PI N10 board, to avoid patch-bomb

Signed-off-by: Geraldo Nascimento <geraldogabriel@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
index aa70776e898a..ad99a8558bf0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
@@ -25,8 +25,6 @@ vcc3v3_pcie: regulator-vcc-pcie {
 		pinctrl-names = "default";
 		pinctrl-0 = <&pcie_pwr>;
 		regulator-name = "vcc3v3_pcie";
-		regulator-always-on;
-		regulator-boot-on;
 		vin-supply = <&vcc5v0_sys>;
 	};
 
-- 
2.49.0


