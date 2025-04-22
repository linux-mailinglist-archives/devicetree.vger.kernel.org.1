Return-Path: <devicetree+bounces-169636-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B078A97B17
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 01:37:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D80AB16E5B2
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 23:37:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE5D321A435;
	Tue, 22 Apr 2025 23:36:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="EHl3zASB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40F7A218821
	for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 23:36:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745365018; cv=none; b=MH79dKe/SXOPPgU5POvMWR83Jx8nLg8DErTjWkUoZIR39yZnuI1BMe4UED5yA4TNv38jYwpAydRYN1Q4+ezuIOJ3yH8RG5NF2WgROyILU082udMC0QdnQNnngt/KXdloAhFmO+ftyf5nRY0RBpoPeBPOZiCMiAeSeVBSwG1Fj6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745365018; c=relaxed/simple;
	bh=0MajdxKyaHIVnsykLUzsIIxRjVd+bS7YJWc3wfIPbnM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=CTDC3v8JlsrqsoZv7Ok7WIoUqtWbrMC+LKmSqwJ5PNI+BUbin38hf1VW1G4Xr3wNGiEUsYSgXZ7e+q+U7wtVznXwOiLMerjQXqKn9m8yT1PfPDM127onJCtdl5nMA5dLnbR82aAQsTAE5CB/kJ5laj2nJdjAVCrGhig2mDwkPKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=EHl3zASB; arc=none smtp.client-ip=209.85.167.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-oi1-f172.google.com with SMTP id 5614622812f47-3fbaa18b810so1560008b6e.2
        for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 16:36:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1745365016; x=1745969816; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=19MmXmxBI44zE/jRyZ1VAn2A08Wrh0byg1LURdcHnek=;
        b=EHl3zASBgJkRP+wChFGjg7L2ERIgcSK2FADVsUWWT//iGCV7UsMHIhTOinRn/lyWSn
         WrLwE4Tt0LzmnFs+JM8L5MK3IBE35igeP6I3dR7K0A3un1nCVPfsAWG59yNBNwEdO3j9
         /uAGGmgdhRqO9i32+icl8SmURNQU9h+/piRos=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745365016; x=1745969816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=19MmXmxBI44zE/jRyZ1VAn2A08Wrh0byg1LURdcHnek=;
        b=clF9VGfTrxXlpB9rxXZltkKnR93TChVwkTIy3H5VLTn3sWAM9D88Yvaz6OS/863oev
         OKDS5iqDS3B/Ycmg1X6xXYMv6KnSbfFe7RcTpAwOF70FpjC3unHA5Rt80Hp5jagWlWZi
         yeLRlDoAz1zzSAClWBA3WpMcfQ3twmN8zDbqzZHAJbUTLZqR+dT5S4ugRID5xhsCK93U
         JciupC6Ahx6jGK/JRrfJCOS4hK+RrsLoL2Hedpc+/i884XQWGSVHjV7RH8Y1EZUpcpSV
         zkG/nxekhZIRqDS71JFMPMoUzyehzCPQ2PTY6+pcr847GArVVpq64fOq6+klkKH75S21
         1ZqQ==
X-Gm-Message-State: AOJu0YzI5IiQp0als2QRy1ip7rWA3WQQtj7yPX2OzTpJGJg75wT6GICu
	HU+CEcbjlLGooftPK4KTpFn/gQEdhrv+/t1dV2jEQ0Ae8hMAIjhFDJGDz5xgqqfRlEom8p+pBSj
	WvWHlbJEWHNz8wQ4+8LQSIASNBwxkFTSjDBf9rOk3spNbex3S2iescwcW2dPSsJPa9fPu7Oa97E
	Nk2knPUFWJ9byiroVwiq1X4tC+8LxH1T8dxACHVJV/B4lIu58=
X-Gm-Gg: ASbGncvS1xqR7C/OsYiTpa4vYZP7/DZMHJjqttBBT3t2QO668qPz34NXwuFd634s3gb
	BmlB922W6HGoBa4ta4+H1HPeA5ONvUF3qpoFkfnNb+NqPPJGlvyN95oZui+4s50UQq7jPVbNxwy
	25sFwdnOodagL++q18bdOjYUX/SHdHRHhNdbaiRyBNrVVelXHOTIaXjLssVKmlO/9jlOwzyzBo5
	QNelzMMb49J0Xnr/ANIM4PfWuM6S/TNvjdPib2OJ1Ij/BUoCn5nyyB27MRnuuClGm9DigQY9yzA
	ByLfhLdEBB4/qMb8CADhMg1f+gZvaDsKUEPnIFv8uvCnb9eJRZLpbaYJkLnnTw2VraE7HmcE5fH
	OEbmnTHqVIIz2EcDHomU07zovHxJt
X-Google-Smtp-Source: AGHT+IH06vBTc0L7af5hB6EVFf5tDdhSK0BUxpsN5jCB3IOqmEuUjMFYm/zDfvB6MsHT/vCjbkDUyA==
X-Received: by 2002:a05:6808:8305:b0:401:bcae:68 with SMTP id 5614622812f47-401c0a7bb43mr9951971b6e.19.1745365016087;
        Tue, 22 Apr 2025 16:36:56 -0700 (PDT)
Received: from stbirv-lnx-1.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-401beeaf403sm2333582b6e.7.2025.04.22.16.36.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Apr 2025 16:36:55 -0700 (PDT)
From: Justin Chen <justin.chen@broadcom.com>
To: devicetree@vger.kernel.org,
	netdev@vger.kernel.org
Cc: rafal@milecki.pl,
	linux@armlinux.org.uk,
	hkallweit1@gmail.com,
	bcm-kernel-feedback-list@broadcom.com,
	opendmb@gmail.com,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	pabeni@redhat.com,
	kuba@kernel.org,
	edumazet@google.com,
	davem@davemloft.net,
	andrew+netdev@lunn.ch,
	florian.fainelli@broadcom.com,
	Justin Chen <justin.chen@broadcom.com>
Subject: [PATCH net-next v2 4/8] net: phy: mdio-bcm-unimac: Remove asp-v2.0
Date: Tue, 22 Apr 2025 16:36:41 -0700
Message-Id: <20250422233645.1931036-5-justin.chen@broadcom.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250422233645.1931036-1-justin.chen@broadcom.com>
References: <20250422233645.1931036-1-justin.chen@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove asp-v2.0 which will no longer be supported.

Signed-off-by: Justin Chen <justin.chen@broadcom.com>
---
v2
        - Split out asp-v3.0 support into a separate commit

 drivers/net/mdio/mdio-bcm-unimac.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/net/mdio/mdio-bcm-unimac.c b/drivers/net/mdio/mdio-bcm-unimac.c
index 074d96328f41..e2800b2e0288 100644
--- a/drivers/net/mdio/mdio-bcm-unimac.c
+++ b/drivers/net/mdio/mdio-bcm-unimac.c
@@ -336,7 +336,6 @@ static SIMPLE_DEV_PM_OPS(unimac_mdio_pm_ops,
 static const struct of_device_id unimac_mdio_ids[] = {
 	{ .compatible = "brcm,asp-v2.2-mdio", },
 	{ .compatible = "brcm,asp-v2.1-mdio", },
-	{ .compatible = "brcm,asp-v2.0-mdio", },
 	{ .compatible = "brcm,bcm6846-mdio", },
 	{ .compatible = "brcm,genet-mdio-v5", },
 	{ .compatible = "brcm,genet-mdio-v4", },
-- 
2.34.1


