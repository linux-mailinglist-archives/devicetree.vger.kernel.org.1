Return-Path: <devicetree+bounces-238945-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 7338CC6022A
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 10:10:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id CF7064E41EC
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 09:10:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1633D26B08F;
	Sat, 15 Nov 2025 09:10:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nqQ6DbKr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BE3726CE1E
	for <devicetree@vger.kernel.org>; Sat, 15 Nov 2025 09:10:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763197845; cv=none; b=rCteqdW32tlKy2hIxJ1Ql7W3dy7zf0uhRvmQNeqg1peaZ1fRYVdbFOqtbdaRJtrLaf9TfyELZRk2ctDXtcHGteo25xtspKa2wN6GBpFw8ElCXAfHBm23oFAuXDDncxmXMEF4FzWfA3S9iwRwEYPmKMueC+j0BGPdy95ca44HZ7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763197845; c=relaxed/simple;
	bh=aLENdR9BSNy1WQU19DJ52igohwKCfgQbrHgW6IuMOew=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IvrmHy7MuvxqP8Bd/Lgng/g1GjsM6LHT/55IpbQC3XoqSy62SedEy/I1luaZnUUDjz+oJwHZweIP1erkLg+TGXCHX9kQJQTW47OaUVLKl3jmUprDiRMqTOAF07MOmIlOvGhM59Lmb99yxnvBRX4uESQmjGg/XWkgHZADFmWJMVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nqQ6DbKr; arc=none smtp.client-ip=209.85.215.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-b98983baeacso1134822a12.1
        for <devicetree@vger.kernel.org>; Sat, 15 Nov 2025 01:10:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763197843; x=1763802643; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=43JeYWuHKtURhUFg3KcuzTVi7n2XDdHqu+mEl6pMXsI=;
        b=nqQ6DbKr69gy188vRPsydq4jQPVQ7FD0QJyyvri9d0uE7IK2QFa9xlrWh0l1LJmh9m
         CiJqAsns83qyQVXS65tm0wC4UnhlCKi3C/Ac3QC5I47omB5fSx675k90H/Hvd3s9MOyh
         bUcBf0RNaVwJWZLrpALCFh6ZmSPgTJ2Ytfo1Hd5Jp+McvsVXMH5h8Itobi6mBMnb3/tp
         4QN7+djhcrECGamdVvmJKHuzFMKyVz4vq3SKV98hcIr6otRuqchM2X4anSYq7LNEIDzQ
         +KnoQYDOXEwOJIzDSIXFEIhapxDWQuS2ulg8bjqy908Jf2MahYf7YzZzloNqKTPg4ADQ
         iJtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763197843; x=1763802643;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=43JeYWuHKtURhUFg3KcuzTVi7n2XDdHqu+mEl6pMXsI=;
        b=NLdq51AnZVYnqyfNTqxFSKlPu+7VcgBU1lTsjbmeVRY8sknaS7Oa+2J9R8q00IupqD
         m5aQWBee/tGSUxiJvcOKCn4nQd27T3Vh0/hZDz+vRF+Qj2TMLRk1KQDoaWolWjp1cgXp
         4JkJbzj7m9P1Cck+qRPfLq8cEWV7wBllU3ofnDIs0aqP6QwOLyxFmcm3jmuVk5UJbnsY
         rIAUBWNNqThwjx2WrDuHoA3eGuxfI2bJ+j2YD4qB0VQZOPHQTS2m7bGiZngOsmFmtLt0
         soSmD7EVtdx0ZLM1wfyxe+c/5HBlAD3l4YBn0sFiX8OcYVPE+XzctSEwGFXHR0qf9/9p
         eUTQ==
X-Forwarded-Encrypted: i=1; AJvYcCWwWg/PzkcQXFps0b+QLOcP/mbdpteL+IpRb79OLeO1HPdwUXTI53JdJwHdV8FvF6jQAvqp1pFCxDY8@vger.kernel.org
X-Gm-Message-State: AOJu0YzoLnfKi1BbxL5RsPJDPYD48Os5y7ss36nx+fWO8txr2ZxLZQBB
	sIiP2lPN82CfljHAQ9enYwuDdAf3mjscmkwZbsz7bBZLmZ/c1ZFnOxcQ
X-Gm-Gg: ASbGncvdGA8LHoIb0Xkyhk23V5U751ROdJXFFlTzqS975UC+T7ITAROA2Wc61mJSjxH
	nySwz8Ogbmlzx4OTqqfThZQT2lQPzu1u7XyaMEVBgqaSveiX00LQ9zP9F6EHMutmhGjaCfu7jFZ
	VeAkCSuCe62gP9dmPv0jO1UZ/emUIRPRaNsRqeuwIC1BtINY1bDuYuMkbYXJSeTkxC8PEPUv4ZF
	MrELYZOvwnZc//M5p3I3mPh8fjrHigJ4DxTGBSHMv2wHDlg4qCguMbbecBozf75/s5IUg8QpBXN
	76GDTdg2+W1YE/QmaOYPKvKD1W/OT+ja26tVGyUyYJHWHyV31zocwOvAwwPqj2fKTYac842BD64
	g1kVwdgL7fpSzkNKvu4azr43b7h39Pn1STkWoH2hI0k5cPZM5/6iTnwFq4b8pS5U/3vGA2TWVXQ
	==
X-Google-Smtp-Source: AGHT+IElHt3OAfMQunNnxmg0BPEu4aQyjchDbhYGwGxKZcOlUa5P+fzvsHcgcZg533YgbRMtBY3msQ==
X-Received: by 2002:a05:7301:5787:b0:2a4:3593:ddd7 with SMTP id 5a478bee46e88-2a4abab9ccemr2414709eec.4.1763197842582;
        Sat, 15 Nov 2025 01:10:42 -0800 (PST)
Received: from geday ([2804:7f2:800b:a07a::dead:c001])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2a49d695821sm22796380eec.0.2025.11.15.01.10.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Nov 2025 01:10:42 -0800 (PST)
Date: Sat, 15 Nov 2025 06:10:36 -0300
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
Subject: [PATCH 2/3] PCI: rockchip-host: comment danger of 5.0 GT/s speed
Message-ID: <b04ed0deb42c914847dd28233010f9573d6b5902.1763197368.git.geraldogabriel@gmail.com>
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

According to Rockchip sources, there is grave danger in enabling 5.0
GT/s speed for this core. Add a comment documenting that danger and
discouraging end-users from forcing higher speed through DT changes.

Link: https://lore.kernel.org/all/ffd05070-9879-4468-94e3-b88968b4c21b@rock-chips.com/
Reported-by: Shawn Lin <shawn.lin@rock-chips.com>
Signed-off-by: Geraldo Nascimento <geraldogabriel@gmail.com>
---
 drivers/pci/controller/pcie-rockchip-host.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
index ee1822ca01db..7e6ff76466b7 100644
--- a/drivers/pci/controller/pcie-rockchip-host.c
+++ b/drivers/pci/controller/pcie-rockchip-host.c
@@ -332,6 +332,11 @@ static int rockchip_pcie_host_init_port(struct rockchip_pcie *rockchip)
 		/*
 		 * Enable retrain for gen2. This should be configured only after
 		 * gen1 finished.
+		 *
+		 * According to Rockchip this path is dangerous and may lead to
+		 * catastrophic failure. Even if the odds are small, users are
+		 * still discouraged to engage the corresponding DT option.
+		 *
 		 */
 		status = rockchip_pcie_read(rockchip, PCIE_RC_CONFIG_CR + PCI_EXP_LNKCTL2);
 		status &= ~PCI_EXP_LNKCTL2_TLS;
-- 
2.49.0


