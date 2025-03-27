Return-Path: <devicetree+bounces-161385-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A437A73E34
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 19:56:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 16A0717880F
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 18:56:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E68221ADBC;
	Thu, 27 Mar 2025 18:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="KeepDUON"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f51.google.com (mail-oo1-f51.google.com [209.85.161.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6DCE21ADB0
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 18:56:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743101793; cv=none; b=PJh3yLYo5CHB+b1TyEMexjRtWrz/ap+OQL8WquTE6EYTX4WtczZiS9yMulwJTDVrZ6VN/bk2S3GNsQxlQCHytGOhLnbbzW6i2jppHK+08NJ7ltlNYvI8LJlQHPZf6QRyDvgN6vlglg6dPcqAK5TG9JinVk8xWs2fYXBiCVRm6Lg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743101793; c=relaxed/simple;
	bh=36xTI9I5gkSkYvq9FCG9jiYpXN5rN0uPngaInWDOKUE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=SI9fJwe+dMYLEh3FJlx57+7VqmyDMUolEpZpBRfH5AF4fIbTiHZvlG8AfAcg718nfzVGGrektmlE3TetzsN0wXQmYbIuN1IfhU3tneuYlNK8AY4G9ORHMkYOrNQ6tT456oWZKxbUKvkgqVkkYUGN+Tphw2rFEZNHL9L7ZW0tyec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=KeepDUON; arc=none smtp.client-ip=209.85.161.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-oo1-f51.google.com with SMTP id 006d021491bc7-601a8b6c133so1153085eaf.1
        for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 11:56:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1743101791; x=1743706591; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+s2Bk2jjEjtn0ANWrGki0cYBsYkeN6iSQygrdQRlBdU=;
        b=KeepDUONPBG5Lz9wRzJHJn927Jzzz7xjAHkqV6r+SEhndRzc0YgcEWarrFP60tpWCN
         OzD69l1Ozy6K8nEWTnkqljVOhZGRQq7g6BwvLIiZt4eJpVFzoXWOYjbI6EOI/OBjntcT
         57GNe2R+8ICNuV6Tf0UpYUmPyufuiasvs3Gls=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743101791; x=1743706591;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+s2Bk2jjEjtn0ANWrGki0cYBsYkeN6iSQygrdQRlBdU=;
        b=d99X06IWp5aNATw/XtlZaxOlrrX2GhO4WPqVxSePAOjUO4tNrOj67IbN+oh/KSLfpR
         LNeoQXblklViv+PJJmKP+1M9VHAXfNmXjxT66GO8mFsWlzNw45AGoe4pF3lLcIYG2rgO
         yy8NxwY4eLQgjmGwULxQxOFZJ+ONY9Il22urwdTlPn4ru15U9Oqxukr1YT4YALR1OBim
         2+qGBHVAWDQl2M49URV5y8jA3TXGTy137o5IM99vx/qkodJkLDeQ8IlTS/S7JiUsEdZL
         N0dX/AtVStr+uKIOXY9fLG7OM3fKgBy8yFe1IsHXFr9qsJ+Bsg7aH6f2aQ0uvoYMCE4M
         lFlA==
X-Forwarded-Encrypted: i=1; AJvYcCW0MNpiIbEXq5i9PJZ3f/YmegyjoP5pLyYh4yhEB4mEgjUPIl3112IY1rNjOb6J6LKyd0P1SKOoJ/d+@vger.kernel.org
X-Gm-Message-State: AOJu0YwTAS1qXTgAjIoWJCCC3OXEYdd2MfIUCEC6snXgkUXgLmU2UyRt
	gEIYSZQLcXkQGjUiUr0xlfEq82J7UeVRHzNWGxdm+z2mn16/k6VPw3eWFtz5LQ==
X-Gm-Gg: ASbGnctUUE9mXIskDNAuHswMNYJIKROZvcYaYXogPRfyXFzkUTnbtlT8I66K5+/b7cj
	dA2CnVb4fVmtW+NAQ2pKeGWKHtG03lYSOy50Zty+0rsXKknE9zF1ZmyOqVVLhGx/Af5f+AuDwXO
	CGLPF8YvheyoeiFsAbuvNrenwgk5INY4Qm9LDLDLqEq4/gL2jk+oYcBt0c7bkKu5otHPfYH8OYs
	1wIMx5YNmmwwXKBSkeb3z7kJVWM37SvmbYmHPbTxmR1f6h1i7F7RG7LUoxyo/Tz859WNSfSwLip
	EF8u6XbPLkZbcKoRI+2K0kWXkre7TuBoyhKO3khbna1Z5SPaGI6PJbOfS8v72jQt2m4S85b0KY+
	PpQjiuPhyYVjlGa0wxO/wcw==
X-Google-Smtp-Source: AGHT+IEQeyF1ChzfQPByDWuHLCAdty2HiuEDVVEA5CMpBaviN7elicCmvvVu1wJZngtX0tBCNiGcdA==
X-Received: by 2002:a05:6870:ac2c:b0:2c4:1b1c:42c3 with SMTP id 586e51a60fabf-2c86626514emr1043383fac.9.1743101790608;
        Thu, 27 Mar 2025 11:56:30 -0700 (PDT)
Received: from stbirv-lnx-1.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2c86a3f3db1sm77997fac.4.2025.03.27.11.56.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Mar 2025 11:56:30 -0700 (PDT)
From: justin.chen@broadcom.com
To: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: rafal@milecki.pl,
	alcooperx@gmail.com,
	bcm-kernel-feedback-list@broadcom.com,
	florian.fainelli@broadcom.com,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	kishon@kernel.org,
	vkoul@kernel.org,
	Justin Chen <justin.chen@broadcom.com>
Subject: [PATCH 2/2] dt-bindings: phy: brcmstb-usb-phy: Add support for bcm74110
Date: Thu, 27 Mar 2025 11:56:23 -0700
Message-Id: <20250327185623.3047893-3-justin.chen@broadcom.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250327185623.3047893-1-justin.chen@broadcom.com>
References: <20250327185623.3047893-1-justin.chen@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Justin Chen <justin.chen@broadcom.com>

bcm74110 brcmstb usb phy adds further power savings during suspend
states.

Signed-off-by: Justin Chen <justin.chen@broadcom.com>
---
 Documentation/devicetree/bindings/phy/brcm,brcmstb-usb-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/brcm,brcmstb-usb-phy.yaml b/Documentation/devicetree/bindings/phy/brcm,brcmstb-usb-phy.yaml
index 580fbe37b37f..2e668935b454 100644
--- a/Documentation/devicetree/bindings/phy/brcm,brcmstb-usb-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/brcm,brcmstb-usb-phy.yaml
@@ -15,6 +15,7 @@ maintainers:
 properties:
   compatible:
     enum:
+      - brcm,bcm74110-usb-phy
       - brcm,bcm4908-usb-phy
       - brcm,bcm7211-usb-phy
       - brcm,bcm7216-usb-phy
-- 
2.34.1


