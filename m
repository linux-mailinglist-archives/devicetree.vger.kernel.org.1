Return-Path: <devicetree+bounces-167959-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D1E17A90EDC
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 00:48:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A65417A6CF2
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 22:47:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E23A24A062;
	Wed, 16 Apr 2025 22:48:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="edg7ivuc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF52824A057
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 22:48:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744843711; cv=none; b=ZTJbsvQhJMrc1EZp89+ttWXVgsfNbefC6LbhMe+IHrmbRdnLqpNJdknrwyzMpr0jkwtBOEAANDDLX5AKgIXZX02q9gZtIB7+J+BH/NYCU0tSZttRAYuhx3pOJ+IkfK9NLvlm8OG3E1lscpb/FjTsIaYmCkhKob9CvS6QMrz0+sE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744843711; c=relaxed/simple;
	bh=eqyYaYWChMPmRU5DAc6y6TmudTWOOglC+kKHcnAeHRE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=dNfskXkhwkzWb/BHP1S4OMIlb7m2gTIYhekeaJuXZ7r/SxM9EWDVT0S7r1Iq82bxKprjGkG8gXzDve8flnlAXdTIzBesy/C0NEEYlOe24+uht4Rf6Iwqq8tT5VD0FZgNsIPCb+PU8IDlXjyDpcrjSDY4p3CQP/dTWbi0mDUlFuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=edg7ivuc; arc=none smtp.client-ip=209.85.210.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-72c173211feso40540a34.1
        for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 15:48:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1744843709; x=1745448509; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W1M7OacyH/ahFd8hgf1tLeJiARoK46j4SXfIGzzZlOg=;
        b=edg7ivuc2DLIZnQkPDaSWafq8zlE+l1GMsDDD771vs/B7jvAoZOzp1bRwaHR8ZZpuM
         kQi/EkunQdzZv8b1X8l2+OGInV9pjECO9Nm1tgVbfpiaY5Vg5QaMtyjyJYz1ogEZI37z
         aKgkPAnsyxsCItbt2HVTX2+LsmAMFVQDR3ATQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744843709; x=1745448509;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=W1M7OacyH/ahFd8hgf1tLeJiARoK46j4SXfIGzzZlOg=;
        b=qgQUJb15hsTW178OUW55HRCh9AF9JsFtVAUvlqcGu2efb7d/s6Qr40sNYnEQhc1PHZ
         7XLy9i/4LABMxWQaFZLL7Rul89/UBF4LAiLBQY8rwUB3Wv+DKgBI/AtSgwq+ihoAq/Ah
         GWRoxTin0VDPct5GWrlnQi7Ps8n0aBA4x1vtuAPICIPGyAiSObAp31irV1S+XdRI7M7i
         BbdVblALFn15j26k7UkhTLpl2A3n++j6PweXYKjulK1KVDYQyq8Ns7fJyQAPA4io5on+
         8UDoMYRhPByORbMRgdyPROQdrVueEH3u6PL1be/E2vyFQmozajUhsrsKTOoV5xymATwQ
         U6mQ==
X-Forwarded-Encrypted: i=1; AJvYcCWNRY2c7VgtIUcCYgsoKJJB39ANsX7kRKSuN3DgaU9dxJ0GtUgZAcU6XfM9dCSohbJ0lznlXYiQJQSp@vger.kernel.org
X-Gm-Message-State: AOJu0YyxOKzgu/NixYL5MXEDP3+tRvi2Qrz32UEXbjp6IQ9MQP+BflU7
	fBifMC/obMzv27sL7+vr2H9HcCzuEowHXZX1nIFcMU/NuEDbnqZhZQiVn8lqmQ==
X-Gm-Gg: ASbGncuyKMTozHgFEdRFX1YtmlQhgyFUyzzhAI8O7QZPAaoJ0B8UF8cuoAPxC4saMkL
	3eCgweyLYGYa0qMj11y0D9Tbq2tLhPkuvsp/sT6sKSkNyBtRcT0YDN5Bs6I9jUQ529u7ymo0M2J
	+Ge9ABCcZfWHQcHDH7Tq1jEmOwp6Igi7vfkWi/+mSv77uq4nIKIiKXDEqgPZsfomjh7Oghy2njQ
	gCAq9RvT/rQbGYCzhIHLC2hgkl6BkuLED2/xbxOYlG7OeWzFBRzDC8IjRai2uOgPeuhEC8ykpGd
	Whan2Q8zzdXG73apoiis++F9omcXhrk/ROM75FiDNsW+X3jUkD6T5B1JpouG1hzYp6z8Joqqk8E
	GiKRut8+s7HI2KQJ0HQ==
X-Google-Smtp-Source: AGHT+IEr3rp6o3U+5Le2wh6aSpiLtCjtqa8QZlb5yvodqDM7XxmooWxghWU11yhXt7iXnPux3PQ2Rg==
X-Received: by 2002:a05:6830:2a8a:b0:72b:b8d8:3995 with SMTP id 46e09a7af769-72ec6cdf37cmr2352252a34.19.1744843708919;
        Wed, 16 Apr 2025 15:48:28 -0700 (PDT)
Received: from stbirv-lnx-1.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-72e73d71813sm3015956a34.26.2025.04.16.15.48.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Apr 2025 15:48:28 -0700 (PDT)
From: Justin Chen <justin.chen@broadcom.com>
To: netdev@vger.kernel.org,
	devicetree@vger.kernel.org
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
Subject: [PATCH net-next 5/5] net: phy: mdio-bcm-unimac: Add asp-v3.0 and remove asp-v2.0
Date: Wed, 16 Apr 2025 15:48:15 -0700
Message-Id: <20250416224815.2863862-6-justin.chen@broadcom.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250416224815.2863862-1-justin.chen@broadcom.com>
References: <20250416224815.2863862-1-justin.chen@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add mdio compat string for asp-v3.0 ethernet driver and remove
asp-v2.0.

Signed-off-by: Justin Chen <justin.chen@broadcom.com>
---
 drivers/net/mdio/mdio-bcm-unimac.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/mdio/mdio-bcm-unimac.c b/drivers/net/mdio/mdio-bcm-unimac.c
index 074d96328f41..b6e30bdf5325 100644
--- a/drivers/net/mdio/mdio-bcm-unimac.c
+++ b/drivers/net/mdio/mdio-bcm-unimac.c
@@ -334,9 +334,9 @@ static SIMPLE_DEV_PM_OPS(unimac_mdio_pm_ops,
 			 NULL, unimac_mdio_resume);
 
 static const struct of_device_id unimac_mdio_ids[] = {
+	{ .compatible = "brcm,asp-v3.0-mdio", },
 	{ .compatible = "brcm,asp-v2.2-mdio", },
 	{ .compatible = "brcm,asp-v2.1-mdio", },
-	{ .compatible = "brcm,asp-v2.0-mdio", },
 	{ .compatible = "brcm,bcm6846-mdio", },
 	{ .compatible = "brcm,genet-mdio-v5", },
 	{ .compatible = "brcm,genet-mdio-v4", },
-- 
2.34.1


