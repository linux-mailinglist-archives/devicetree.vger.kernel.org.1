Return-Path: <devicetree+bounces-238944-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 340BFC60221
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 10:10:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 019214E533F
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 09:10:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 785B126CE1E;
	Sat, 15 Nov 2025 09:10:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="m1uZM9PM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB6D719DF66
	for <devicetree@vger.kernel.org>; Sat, 15 Nov 2025 09:10:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763197826; cv=none; b=gMLx7NUu6vNAFlkjLYuUkrZuAOzu1DdbSalPDQ52KOXmcMELToHkazVVhdwoSfpKoFTnSFZA5lh0vTnMxwtwwCFgi1JecslJi2jbzf4/4fGGf81OpKpeWNmg8IUU04jRreoIJCQh3G9drDvbKDWjkBDVx8UWeRxfej+df/RX/XA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763197826; c=relaxed/simple;
	bh=39GjL804A0Af6T0xqj2B986g8wFCu7FUQ0sHq5hPvBs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Y5R2wgLhp1Hp6AAs7XGoq+TGUHtXijpogtFjqPUxeicomP2hI1dK4K+t1rhhkhCCE4jYrKNaG1LxahD7PAa0B2JboUdsHJf3ccRGOmxgUiOZDjxn7q++GAWwIVfG3CjTk5aYNlInlXW9+mYcv4Ib+NozvnulWlkDg4DJbaS8CNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=m1uZM9PM; arc=none smtp.client-ip=209.85.215.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f169.google.com with SMTP id 41be03b00d2f7-ba2450aba80so1597045a12.1
        for <devicetree@vger.kernel.org>; Sat, 15 Nov 2025 01:10:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763197824; x=1763802624; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ucj2p+rgYAXgwVH9kYepl5CbaaWyr15G4v4y10s3RPA=;
        b=m1uZM9PM5/S0RV76ZkiTgEKkXZPcOkQyX8rU6jhhl2pR9bphHcCJQ4C2WKiqHbh4TL
         wGiwJy1AOOQfDBalTGSia+quFVUQCofAPrsARF7RxhUWYaVU8FtIkRg74XEM2W4aIA3o
         e960Ruc4lBUY68moQ/tD/E6yC/FTfFiBpq16j9Bb9pT2fttCEdk32lRA8Hr8Y7t9lGd0
         7+IikJtivQ6sSfH7kFkVhrR33C5FcTW6FNi0PsKpVqCBXTCLux7CXhMV3mih5yl3lnwc
         DkrDlAIByL2tZJn3l5kgr+7IlG5haDL8PAlr8Q/9j1ROucTGaNWqwK06oyaxGUgjYheH
         gdpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763197824; x=1763802624;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ucj2p+rgYAXgwVH9kYepl5CbaaWyr15G4v4y10s3RPA=;
        b=LJCuoD19u2Ew/CvNkcYvBb+UjX9jq84CdiCOsXqKUDDErdHbRBY3H4rwLguIRAAo6R
         o5TD/ZOL8li6d5Nmc/2DaKi1P+lPnrlfR6F0Tt+tRptrgDcaLer49wwFnMlp+9jiJBp4
         MGHn2t7L643xQ4ikWALlU8uZ4R3tQp1XcIRUmEwRfan1MQqW78f8UpxidptlKftO4J8/
         ue2wxIjC+UqjBWID+PjkAYTqF6bPpjG1YnPPE4UU+S3GRucoMSRHTIGCgq7wuQa0eqw3
         GaocLVJ0LMiExS+P90FHRL3VeCQWDOAYDh1N1br6j8n24TjzZKkqVGYlRJN/7ybNebGN
         H2DQ==
X-Forwarded-Encrypted: i=1; AJvYcCUbLuiRnI4HtSGVu+6H39/1uuv/U7ChYHVwxVsVrt2y1bFeT8OhYHaaEdTVnSSyhUuJS+CA3v+33RnE@vger.kernel.org
X-Gm-Message-State: AOJu0Yzj9T3op1gZLZt/uHtd2UOdwEZlV0YEnOUGzQTTCVjPYfbbP7cR
	dn1iCPulTJhuhCXWkGL8cOhJmSQRsoFplEZycSSfOq4FbHME3eHWOi5r
X-Gm-Gg: ASbGncuF7caOjT/nmWkdN8WlNYCLlyP+W/iS0VAfTmr8MhMZUWUJZ18Miw5GmDlSkmJ
	gqoiBMUrNrZqkSbi9ptUFvH6PXZilhvGmsPLUGd05V+CqxFGmSOZTDTuWpJjsygkrs19nF19EJI
	tScmqsQZaHmbY+lj/GSdHvGitLBOwsVpSVenWddlMmRoPdOaoOKXJFUKc5h1N6VOMdINBeCG/V1
	U+YhU9Ps0LFetI/h7p7P/NofEX3zjezL6mI6pB0tYAXeMKn1tE99zUZapehz5qkFjjT2YZR6rA8
	IiM9bfh/NA7eqdwvUcxHJlVYhD3w797A8kXJiuKqoIeVaaNQIN9/kulH1NEkfLeuqMxJ0iqpmOR
	qOKQanOn72GBf3mkbGdEwE8DOwSFYNjvOERyntl2GA8YI6yHVDUpr10NpZHR2ac1ME4HI6t2ddw
	==
X-Google-Smtp-Source: AGHT+IFdOsYpOF/1IoUjLFcOg8Bhmt7xGXHygPshYo3UvTQSI65Ig5BIOny2NN8RVI+eyWKKQcuUNQ==
X-Received: by 2002:a05:7022:688a:b0:119:e56b:9899 with SMTP id a92af1059eb24-11b40b3420cmr2866205c88.0.1763197824064;
        Sat, 15 Nov 2025 01:10:24 -0800 (PST)
Received: from geday ([2804:7f2:800b:a07a::dead:c001])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11b060885c0sm23408196c88.3.2025.11.15.01.10.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Nov 2025 01:10:23 -0800 (PST)
Date: Sat, 15 Nov 2025 06:10:17 -0300
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
	Geraldo Nascimento <geraldogabriel@gmail.com>,
	Dragan Simic <dsimic@manjaro.org>
Subject: [PATCH 1/3] PCI: rockchip: warn of danger of 5.0 GT/s speeds
Message-ID: <d6593ae4f59468f294fdddfef83791e0db100e13.1763197368.git.geraldogabriel@gmail.com>
References: <cover.1763197368.git.geraldogabriel@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1763197368.git.geraldogabriel@gmail.com>

Shawn Lin from Rockchip has reiterated that there may be danger in using
their PCIe with 5.0 GT/s speeds. Warn the user if they make a DT change
from the default and at the same time, drive at 2.5 GT/s only, in case
the DT max-link-speed property is invalid or inexistent.

Fixes: 956cd99b35a8 ("PCI: rockchip: Separate common code from RC driver")
Link: https://lore.kernel.org/all/ffd05070-9879-4468-94e3-b88968b4c21b@rock-chips.com/
Reported-by: Shawn Lin <shawn.lin@rock-chips.com>
Signed-off-by: Geraldo Nascimento <geraldogabriel@gmail.com>
---
 drivers/pci/controller/pcie-rockchip.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip.c b/drivers/pci/controller/pcie-rockchip.c
index 0f88da378805..ed67886a6d43 100644
--- a/drivers/pci/controller/pcie-rockchip.c
+++ b/drivers/pci/controller/pcie-rockchip.c
@@ -66,8 +66,12 @@ int rockchip_pcie_parse_dt(struct rockchip_pcie *rockchip)
 	}
 
 	rockchip->link_gen = of_pci_get_max_link_speed(node);
-	if (rockchip->link_gen < 0 || rockchip->link_gen > 2)
-		rockchip->link_gen = 2;
+	if (rockchip->link_gen < 0 || rockchip->link_gen > 2) {
+		rockchip->link_gen = 1;
+		dev_warn(dev, "invalid max-link-speed, set to 2.5 GT/s\n");
+	}
+	else if (rockchip->link_gen == 2)
+		dev_warn(dev, "5.0 GT/s may lead to catastrophic failure\n");
 
 	for (i = 0; i < ROCKCHIP_NUM_PM_RSTS; i++)
 		rockchip->pm_rsts[i].id = rockchip_pci_pm_rsts[i];
-- 
2.49.0


