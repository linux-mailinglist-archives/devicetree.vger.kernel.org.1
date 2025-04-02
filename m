Return-Path: <devicetree+bounces-162700-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CF344A7984A
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 00:36:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E47983B3C8F
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 22:36:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C57511F4CBF;
	Wed,  2 Apr 2025 22:36:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="UiMBA9ov"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f51.google.com (mail-oa1-f51.google.com [209.85.160.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 376551F4623
	for <devicetree@vger.kernel.org>; Wed,  2 Apr 2025 22:36:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743633390; cv=none; b=flBhW/1M6YaBDxeMzd1P4Y1WxP66/6eR5unWrF7b07N0LJADmMIG1NAhX3Yfg7P2qM7iOnorzvlOY7vzauxkBZqxazjP6tQlUSoYFhjkJESjfn73q6bU4Hw0VMXRhC1dwvcYivoBPy5W9Eofy6fC0gH++PgttHEh+DzAeiWNz64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743633390; c=relaxed/simple;
	bh=rxws9Ad9Mn5TUKJ23gj+Mob5uEeBEiGS3XOdQg4UVDY=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=uc311AV7+NJGFwXYxZQf7WC/eaAOGstxkhfphrs/UWjNR2NiViDJ3dEV+vfZSmd4OFaUrdQI39fY2wZJyEK3WEeWwhUnVPEYFnXPIkVXP3zOy+WxYlDwdBBFKss3pCLAMbFyvjvW3A5HlS1BaER2JXi0C5ZyYSh9b42SAj8Wx2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=UiMBA9ov; arc=none smtp.client-ip=209.85.160.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-oa1-f51.google.com with SMTP id 586e51a60fabf-2c873231e7bso130582fac.3
        for <devicetree@vger.kernel.org>; Wed, 02 Apr 2025 15:36:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1743633388; x=1744238188; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=83I67gCYCWk7Y3uXHuaQU26uQxFvo2oq4r/u9/R3Arw=;
        b=UiMBA9ovzsnPqEIM++9bF8nmlI5hUBDZQXxE7u1bfVqmTSxZnieSW8uP5lBQx3+rD7
         5Wbv5gYoHiT7q1SZP3Y8FITVl/QIOnKr89E4UOWq4LIOmG9zGUjThRDX32H2loz0iaFZ
         +uL+vFBpujsbHUHr1CaM3TpmeMsBXGV+FJ6QA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743633388; x=1744238188;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=83I67gCYCWk7Y3uXHuaQU26uQxFvo2oq4r/u9/R3Arw=;
        b=ZMC2iSu0+jTyhi48uK3ajgGa2aQR1xig5ZJ5WFwcD9lHYBBlqZVhbSqXHwxQlyFTEn
         GUbuBNy2tu+firWGiUzH4UmuiKqRidcwpLvx2qD8tQ1opsInPm/myBBaDIBR+T9SpiIy
         xP+urd/mG8I36lHoBAdGH3DHoSVa0fWpNYpUnIYypBpzaWkrb12DzqKLib1tDRo9cUne
         LH/KDXzQbtoJwLm5tCI4YJzOUrNye54xcdr1QQsV+nd+KF7OGiMzbTthMtAtVaDcKEg3
         7o6xvKDZRmyv8mk+mEKrfMMDoJ/cIvEc/teT56SJEOoaXVoC1f0NmePkIUUvsgWGwFU4
         3NmQ==
X-Gm-Message-State: AOJu0YyPfbb/x8JDr+lb19fH/3+HSBSY+2ALVmp05FvP9cMaef6XN9Fp
	fRw9a3w3A2MheHQViY2k+ev+fbla6G8tPagHydP8Ht8DEcpnzrzSzMnoZvyU9Kao+dnFamrfvsS
	MVl5DpCAo+WU/BBvVPbFdXa3fuCCf4VUgf07N5sxvw+/HAGTGqTpl30B3QWbv/HIaeYXs987y0P
	Qezbf5aBXMYXIkLpXCjRSUxxlJwZVytdMrZ+XFV2BDL5AB
X-Gm-Gg: ASbGncu2UCcoCHG3KBIzRY7uvZj09LEKpPX2U8TEH30Pvw4KiQxM/l+9GQ+Mn+REwsW
	bpi8DjVX2A6KGWZgQOtIjBqvlRVzP7+guV0wHaPVP0rCaRHVjZDg21QMmmFCaXY7Z6i6xWduHyX
	m2bldGfNrY4/t+J937yT6ua7V2QwDMtbvGAlXOtk7w15AYBlwViW3Kj22vKcj1ivJjOran2nMI1
	e2o3lY82FirAzmhJklVVN6z6RTQWkLARXnn7o98xueEElzwtweJTxDXQYm9NDsBLGmq3Vqf4TZR
	yIWcaQc9XwskPS23QRmtZkE6sRdUgggckIkXZVM8P2QhbBECmQ+YV3F0OD5d18VQ59V+6VpP5yX
	DStjSWImZCeW7Lela6TWFmw==
X-Google-Smtp-Source: AGHT+IFhmDD/+MrGbtMTReOIWsVsy8RfmmRVyRpafY1xvzbf3x51S3IuGF7YCF7eJzB5Z665i8kqpA==
X-Received: by 2002:a05:6871:20c4:b0:296:e698:3227 with SMTP id 586e51a60fabf-2cc7f936aebmr336955fac.36.1743633388098;
        Wed, 02 Apr 2025 15:36:28 -0700 (PDT)
Received: from stbirv-lnx-1.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2cc84bcf5besm190fac.45.2025.04.02.15.36.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Apr 2025 15:36:27 -0700 (PDT)
From: Justin Chen <justin.chen@broadcom.com>
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: florian.fainelli@broadcom.com,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	jassisinghbrar@gmail.com,
	bcm-kernel-feedback-list@broadcom.com,
	Justin Chen <justin.chen@broadcom.com>
Subject: [PATCH v2 0/2] mailbox: Add support for bcm74110 mailbox
Date: Wed,  2 Apr 2025 15:36:17 -0700
Message-Id: <20250402223619.358818-1-justin.chen@broadcom.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The bcm74110 mailbox driver is used to communicate with
a co-processor for various power management and firmware
related tasks.

Justin Chen (2):
  dt-bindings: mailbox: Add devicetree binding for bcm74110 mbox
  mailbox: Add support for bcm74110 mailbox

 .../bindings/mailbox/brcm,bcm74110-mbox.yaml  |  70 ++
 drivers/mailbox/Kconfig                       |  10 +
 drivers/mailbox/Makefile                      |   2 +
 drivers/mailbox/bcm74110-mailbox.c            | 655 ++++++++++++++++++
 4 files changed, 737 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mailbox/brcm,bcm74110-mbox.yaml
 create mode 100644 drivers/mailbox/bcm74110-mailbox.c

-- 
2.34.1


