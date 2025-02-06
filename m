Return-Path: <devicetree+bounces-143615-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BEFDA2A93C
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 14:13:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1EB84188278B
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 13:13:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F7BB22E3F7;
	Thu,  6 Feb 2025 13:13:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="aAKTJ3or"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B17172E64A
	for <devicetree@vger.kernel.org>; Thu,  6 Feb 2025 13:13:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738847592; cv=none; b=nOanlM2kwjczpDXzt9+RYLswGJjo8Pbh4hV4oylHMQtbz96ioDcSgSjvbln1Z12zBLsrsyQQcSCPnCNVPcAHImj6WeSh5Nf7PhxILSvDbJRyHiRSAbtccI/l8ttnw6aa8JLyFm+s0D/ZMDhimQdvVrpR9HkoA8gXco5Yop9+VWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738847592; c=relaxed/simple;
	bh=7LGrtppsMBLPN/3BsfqBcn2mKTcTO4758RF8sL1ECRI=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=kfxRMneg9MwOrxHIiXEG3ACyvYCzxcc9Uv6B5GCV5BiKezVTFDiaaQdq+o3nYMawWfkun6NMGebafx3mbxVyX7lxmIbXWlNPLVSRHRHO2PjXB3SGbSIcX2Cqn2XtOp3ZnDeRkIlt9ZnYnRp5/HAZfzaoSL8P+bgRNtKfqCpdTAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=aAKTJ3or; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-21f0444b478so12240655ad.0
        for <devicetree@vger.kernel.org>; Thu, 06 Feb 2025 05:13:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1738847590; x=1739452390; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xpq/JlGo1+gTZp4/L5XVxyxFvC99WE7FdLuLF6jJBik=;
        b=aAKTJ3orUYaDUeiCkQR9SsBFxUR0V/sJWzhZPKJiopkJafh6Jw68f+QPCt6MLT58eW
         SKUiwT+K72XJWRAfO2GbldeZfLE8RZFirRAyZzd+77U1Uyn/eULa79vZWlHVoZvGsl/+
         VCLZTPUBKcft6yu6lNy/Q42Qu0wXmN54QLI0f5P70lOi9UImAxLfssBsRsm4F+9Wdt2i
         143VB0Dshx3rGakJ7ceYXPpJUODq5kShuVrOoMoIIXb5TGa9hNaYfK7JxvYBN3IsBi9f
         k+kAdEGrrFHAbjgdUkqLozFwqtZLx8Yzxu9hWeG3+3TFaA0obrjRdTVHd+V2Q/6/Go6o
         koCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738847590; x=1739452390;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xpq/JlGo1+gTZp4/L5XVxyxFvC99WE7FdLuLF6jJBik=;
        b=ngdnfGuepuJM/e4to1s0HWinaiugYE2gsx3ER41dn6v9bV+W3r/fksnP/DUQI4OTxE
         f3AOHHnKtEyTFcc2G6QWgD9ajlIoXVPAqKVd+cOH7GggOjFOPBk2EZv1EOB/709/oXf6
         oaJM1jrkiCjPVPJymtJdo5InKJ2JtBMRV7mCvTyQcbqB9gTNtfJInDJbuUc0lnS5dhx0
         +Fz0aAMevEhI7XzP/c4ek4HNpjJMEFIAH+dmH1g+dauDLVIk8ou5kiG6VSuMDC095Y+0
         eFPrwd4prKU4mDEF/VD+bRgELfxHZUQ2u9+VSxHCVpe5d/u+yPIeH9shCsjToKFyhIwa
         T6pw==
X-Forwarded-Encrypted: i=1; AJvYcCWEcl9Tb8uIwmrJOPKotePAQuSoBNokr5krrf9WuEv3ezAfCleZq+tW7DvilP6RuFfPxHyIf5iWbEq4@vger.kernel.org
X-Gm-Message-State: AOJu0YwuT7zER09EYRdeeS8JTYEXCwosdXobBvvE4H6dzWQoYbTaXnJM
	gqxVq3Nmp29QaQSZm1yk+pCx23OgOEvXMUeXXkStuhblKKMcLQoHOMlILfbgI/E=
X-Gm-Gg: ASbGncvYG+zHnKbfN5dVjgCAA1biItFTePgQDWBZtjGUF9Jqgp5k5HeD9bnFE/gO8yB
	DyEe3OjZeMhqS6ezOTvNoju2fOQ+qq8FNYJ8PDTIM5elg9MGf7+4VHqKvJDecRMxPQUwUQjpGPc
	tNzUzdlihGJdrIljrU8auPTyEqqFe9aZs/WVDTKhGbq1Q0/yvuuOzhLaLxRLmm95+paQWpT1oZu
	iD2AasSCl38yQ64suk3a0AvjVAgCUD7vDGN8plcIuKZbG8Euvao5us4qaj0Fgdi9F841pXTYPtz
	kmbj6H4kpioocxrEn9jTjp2Qx6/j1de3qoG5SRn5qd8j6DEpDcBUyn+7C6pyqjQ=
X-Google-Smtp-Source: AGHT+IHxqvOKzx2p1ONEnCBXtdA3snICrOFz5MyCT5P71N4sfXoXnSCIV8+wBHTzkoWIRuASvb8hrQ==
X-Received: by 2002:a17:903:28d:b0:21f:14e3:165d with SMTP id d9443c01a7336-21f17f031a4mr124763555ad.44.1738847589822;
        Thu, 06 Feb 2025 05:13:09 -0800 (PST)
Received: from dgp100339560-01.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21f3653afc2sm12237925ad.62.2025.02.06.05.13.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Feb 2025 05:13:09 -0800 (PST)
From: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
To: neil.armstrong@linaro.org,
	quic_jesszhan@quicinc.com,
	airlied@gmail.com,
	simona@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dianders@chromium.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
Subject: [PATCH v2 0/3] support for csot-pna957qt1-1 MIPI-DSI panel
Date: Thu,  6 Feb 2025 21:12:57 +0800
Message-Id: <20250206131300.1295111-1-yelangyan@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add "csot" to the Devicetree Vendor Prefix Registry.
Adjust functions and default_mode/desc ordering to match bindings.

Changes in v2:
- PATCH 1/3: Add "csot" to the Devicetree Vendor Prefix Registry.
- PATCH 3/3: Adjust functions and default_mode/desc ordering to match bindings.
- Link to v1: https://lore.kernel.org/all/20250127014605.1862287-1-yelangyan@huaqin.corp-partner.google.com/

Langyan Ye (3):
  dt-bindings: vendor: add csot
  dt-bindings: display: panel: Add compatible for CSOT PNA957QT1-1
  drm/panel: panel-himax-hx83102: support for csot-pna957qt1-1 MIPI-DSI
    panel

 .../bindings/display/panel/himax,hx83102.yaml |   2 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 drivers/gpu/drm/panel/panel-himax-hx83102.c   | 123 ++++++++++++++++++
 3 files changed, 127 insertions(+)

-- 
2.34.1


