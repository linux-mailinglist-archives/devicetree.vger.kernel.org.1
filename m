Return-Path: <devicetree+bounces-176759-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9725AAB56F0
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 16:23:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DCFF67AA0E1
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 14:22:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4E0E28EA72;
	Tue, 13 May 2025 14:23:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SLe4pJ/p"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com [209.85.222.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10FC728F538
	for <devicetree@vger.kernel.org>; Tue, 13 May 2025 14:23:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747146224; cv=none; b=Evi3Af7hTV+0Iw42XsePTvatytqCmcvHdqM/yByqjveLau2GvPfVqlQeY1/QtB3kwhixkfDzL5qDuxbUh7RQC3qlOro456b6sJ6W0wyemBNNAEYyu7nONlI9I0CsTeZsnEPNh1Y93x3LTseYSSQvu/S91JtHPxGSJvwpiSuFclY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747146224; c=relaxed/simple;
	bh=oT6XNM77B8+ium9Cx4cc7TioAAenrUX/vpKuFTyATHM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=me02ZnieokyUiql1/t1YASWnbgPJxtsBCcntyrSUrYKuJgOjv2C+SRDXNmfe9I/+WCuCbMDdUHM0BQN0nAykerUxleQ+xSap3mh7d+XqNowO4hSn6u88MS+ikMO+BO83eR5S3vZzGZJdY+IlTzz7KoPrTQ/7DlLGtIZ7V7fkz7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SLe4pJ/p; arc=none smtp.client-ip=209.85.222.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f50.google.com with SMTP id a1e0cc1a2514c-8783b2cbce3so1417661241.3
        for <devicetree@vger.kernel.org>; Tue, 13 May 2025 07:23:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747146222; x=1747751022; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0l36qpCnDAhRnaTWedEaUZwbfvZPD7EM2qytUdMEXlk=;
        b=SLe4pJ/pC8eL/PTTWmSppqoCXh0k0uB0mBOn5HFhsnjcfjThq9iNkOQ9477WO4luXW
         fKIo3XywTwl2MXI99htwnzQeIe4FA3ek8HkUrwxw1074gZWytHhBxX74kzS5EyVoiug3
         yD59uOg1+tJFGmcopMXzHmBX2L7RLAJFKKf9e3pJudOK26mb5NKCauEMOjzS+PW0zYOQ
         J3HIef6si/INrWMjYtk6Wr6n7h2TVB8OMpCmPgTkoXFj7ROfOxpSoE/6GJ63wkvRXghQ
         p9/MI2s45T/DlI07QjXLaak++/LGImS7J8MlXsnxQo357zLHBu9q5APqKJL25TI2tgLY
         6C5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747146222; x=1747751022;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0l36qpCnDAhRnaTWedEaUZwbfvZPD7EM2qytUdMEXlk=;
        b=a8sOW0h4Z8Y7TpobV0wisYh/EkVhDq6Hm2PJ+vA2jo4KFRAuttIE7oDhms2MCzrlgI
         0a8HMdwcasnyDiTQZ17kuwbgWhQiEYijdNlxK2/f8wIEVrwcbcSEW2jGwSK7gZr3vJjx
         CnrFNszhSeC/6BsUcMjx96nBHDN2uIWAr8jlZSp7eW03Oul5Oo82ON8eXQ94hc739x4i
         Wjw02wS7TMR0jRZdMWn+XZ4FZXOhygASdgrTe/q+DIc0brWR+yBlTE9IEpgRmXw6bRD5
         MwQufxS79xrS9yykTml/olb/NUSO11HaZUaDjG7ofnIBN8ESTIQnhG3XUV2iVuIp2nRs
         CAoA==
X-Forwarded-Encrypted: i=1; AJvYcCWobAXTx3tDpOZAhhAtv0oIHAfsF06I7T6kKEhKEn8dCqAwieJYfUY2WxFSsUOnJk0oVqV2uIAqtLkZ@vger.kernel.org
X-Gm-Message-State: AOJu0YyeJxAst3y1+pkoXQRvDkoTgHeMDQ4xeVduulyHxWr1tM80IZmm
	1bTs8dRuT99anqBAj479uftK56YLC6ZK0ivcUuNo8OiBKn2g+oJ14r1JAA==
X-Gm-Gg: ASbGncvsSwFLL1WoWuv5RYI8OleEaWvokkj3ll+iSuPiIHbDDsne7a02XkyAvE9upcq
	TGudbTgTOKDiGYvpbuWIMoc6IRhhOfyX+Pi157UfJSu0b019303ds1QIGFJApUQtjAOTpdBmVnY
	Fp5BU0zEJ40U2OFttfeeEtePTOLxenEVFeory0pARPyftr7YxWKI4Sc75PDeoMSR67QaPTSwQo3
	ULosiEo/r+ZH/e8z2yDkvGAdCpaBGDOgJWz/QvQ7IsufYE8lF82zdrdfBxcjC8DtVBOVHO8lCOh
	1qULDGHfqn0cSR3QtobjYun48KYHSytvPvcpR/AdChR4RVJW9F4EJuzeaCuhZ9TadQ==
X-Google-Smtp-Source: AGHT+IEPnMB4IboXCa/1FdqFHavEmkJxVozv+Io0Cs9hnebsXUci5GmVrdypDMhC+ZsSI0YngK2PIg==
X-Received: by 2002:a67:e7cc:0:b0:4dd:ab6c:765a with SMTP id ada2fe7eead31-4deed36dc90mr14572810137.12.1747146221656;
        Tue, 13 May 2025 07:23:41 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:5c18:acd6:b894:dc8f])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-4deb203c26bsm6630965137.27.2025.05.13.07.23.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 May 2025 07:23:41 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	imx@lists.linux.dev,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH 3/3] ARM: imx_v6_v7_defconfig: Select BT_HCIUART_BCM
Date: Tue, 13 May 2025 11:23:20 -0300
Message-Id: <20250513142320.4036324-3-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250513142320.4036324-1-festevam@gmail.com>
References: <20250513142320.4036324-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Select BT_HCIUART_BCM so that Bluetooth can work by default on a
imx7s-warp board with a BCM43455 Wifi/Bluetooth chip.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm/configs/imx_v6_v7_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/imx_v6_v7_defconfig b/arch/arm/configs/imx_v6_v7_defconfig
index 062c1eb8dd60..6f62d2e96239 100644
--- a/arch/arm/configs/imx_v6_v7_defconfig
+++ b/arch/arm/configs/imx_v6_v7_defconfig
@@ -68,6 +68,7 @@ CONFIG_BT=y
 CONFIG_BT_BNEP=m
 CONFIG_BT_HCIUART=y
 CONFIG_BT_HCIUART_LL=y
+CONFIG_BT_HCIUART_BCM=y
 CONFIG_BT_NXPUART=m
 CONFIG_CFG80211=y
 CONFIG_CFG80211_WEXT=y
-- 
2.34.1


