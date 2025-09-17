Return-Path: <devicetree+bounces-218345-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 29713B7F2DD
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 15:23:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9BE297B0B4E
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 11:12:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8380C2E0B5D;
	Wed, 17 Sep 2025 11:13:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b="k8S0kp51"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 020372DAFA5
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 11:13:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758107626; cv=none; b=nT6Aq3Y3jdmrqoeJw/jmOggNs3Dq6op9qJrEwv3XLQjTvSh2tt+i8fnrhNmHzbgjVoA9D3NdTSSKf+EcAFacawDQ21YFbbaEiFEXHs3LxKH/4yKdjAx6ghadSawOoFlM39qSmPwPONIou1eppD4LmyGNJqVe7sTTnj3sGHwhEmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758107626; c=relaxed/simple;
	bh=zQe/z+qDYNsZ6M5CHtOZnyOAH9P7RZo8QdnI4PDOo7A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ZMvMHzci4C8zVnLy0hbHt3GwBpUFxudpfoLM10hw3OLY6oHw5hpvBn74mL3Ut+rFMMGQKfdWfTfjISjJpdC5uzfO8i1s5VZ66JBYVvxmIGjTQsFDXCZWCo0S5hjGGGbjYIXN254lxVYq+Yg4mBcnWCDSQeH7xvNzuTll4rWUEKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr; spf=pass smtp.mailfrom=sartura.hr; dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b=k8S0kp51; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sartura.hr
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-261682fdfceso8350875ad.1
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 04:13:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1758107624; x=1758712424; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gpVFnQJK85Q9Z+39jpO0lJZZc1Nu8KNAXStfs8r/sJo=;
        b=k8S0kp51W85ZfkYPDdAXhZuHGXA7zQhZaSAb+9YJcP4Y4rTN8H/y1H4+TRVd6QH3wW
         1o/Ktjtza922XqQzNbJWWoKdUgtD2IqcvTvA3B4+xJv2fz1XQw4gRrC1ITLgGNrtcDm4
         +HGt95N/BxbV/RgNkIZlWLF0j9cOrbEuiTycxNNKkee56rbInFKW8dCmA9uFIVBC6rrX
         4ZZbezvb0auMGzGTZtWEei+QrSAYBE6NSBn145xNBnJQHXILr3IiiFbZe0Vr8O0/10jz
         KwQzEcR6QMNgXdVJ2uEjnYQjQPn63dWbtO5c85Duky1lNaHR0b+S7kpq5bnLCqDfRM6t
         lScg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758107624; x=1758712424;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gpVFnQJK85Q9Z+39jpO0lJZZc1Nu8KNAXStfs8r/sJo=;
        b=q5vwzAFRgGonRAsTaiy4SB5Ml1J51pX1ux2PwJpxqHOZXIbQnVreHsd1ZKm+mmAVvD
         ewOSHrazS99Yh1YnFj6tlGvUc3LFRxdpmWrUXDzUrQf2AdDRs+O9wLp8WEXITHN4MxKO
         hsr5buI/jz2vulV7sl4TRMyQ6EegEHAuF5SvcOGJ6jQXqMYjehUFavbSDlJvMZX69xyG
         exfS7MCf2pEKUFdPd5I5meR6GAQNcjPHZip3y2IzO/wneXGkB6pBbbU1HZp7XQPUlvhx
         ci0uUKxPoWPXppTtyTmVVMuwwQR3fZClyLJEB+FoCMMP7tQiCQ1wQq70+LMrPrDfDnio
         exEg==
X-Forwarded-Encrypted: i=1; AJvYcCWVPNBS+1QPfknjrhV8OGbaStaooyv/Dk59qdRgzBjQdqC7SRw7iMgB0QbmCBRiexJfhae1cF//LVFf@vger.kernel.org
X-Gm-Message-State: AOJu0YwkIz4IMLc2DHBPhp0+LX7Vmz391th6Tna5mDed6+9s1r11Y++2
	uwo98cNfSXg+QPNUgyXUIHkdJqoArFJ6b5vMuDGGpBWhXcRLV/qOhEHKnHMc8Co8B8c=
X-Gm-Gg: ASbGnctEJ/S0XREKHgVsr5MGucNm3ufcbJ/i6lgz6WPwML4YSPC7Xi8unlx79op1jAF
	S153IGFwsWO0FWmqdiGS1YP+h+VqPs1tdhjW4jXQuEsoFHehFjBDBPmXWGEUl+Tp2ExSyYbvUP9
	qJANKx9vmgZ92M7XFYPiMZQe3sJWJ2zx902qy9HciDOikuKpT8Dh0QMc00p4BFHIs/NzMQNZ5e0
	t9dyParLXOqH6W3i8vE8iYNfh8GtqVbqLffFgVG2+e5kZxlp5VhUreRjulN9XnuVvywvKeHELk2
	WNxIR98hGdoYKAk1Ui5bmYcq4ZtEELNn3xVf7uuobKauQIMe5J6cefPT+S5vRaXiHqMm5cHPIpk
	wzzwU8YSdD9WmzefDaK7ijXnNZ83BBlop9bQ5ng25TKz43XrGjFpnQOg/
X-Google-Smtp-Source: AGHT+IGBK3w7KSmxjJxg5GKNR+TLS8twm6DWLFyjs5+Ei7BBZUVpj/ST7ilq6me4VOBB/aZBOm/Vbg==
X-Received: by 2002:a17:902:cec2:b0:24c:db7c:bc34 with SMTP id d9443c01a7336-2681097477fmr22668825ad.13.1758107624269;
        Wed, 17 Sep 2025 04:13:44 -0700 (PDT)
Received: from fedora (cpezg-94-253-146-122-cbl.xnet.hr. [94.253.146.122])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-267b4ae8808sm59079655ad.132.2025.09.17.04.13.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Sep 2025 04:13:43 -0700 (PDT)
From: Robert Marko <robert.marko@sartura.hr>
To: p.zabel@pengutronix.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	Steen.Hegelund@microchip.com,
	daniel.machon@microchip.com,
	UNGLinuxDriver@microchip.com,
	lars.povlsen@microchip.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: luka.perkov@sartura.hr,
	benjamin.ryzman@canonical.com,
	Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH 2/2] reset: sparx5: add LAN969x support
Date: Wed, 17 Sep 2025 13:12:36 +0200
Message-ID: <20250917111323.60781-2-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250917111323.60781-1-robert.marko@sartura.hr>
References: <20250917111323.60781-1-robert.marko@sartura.hr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

LAN969x uses the same reset configuration as LAN966x so lets add support
for it as well.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
 drivers/reset/Kconfig                  | 2 +-
 drivers/reset/reset-microchip-sparx5.c | 3 +++
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/reset/Kconfig b/drivers/reset/Kconfig
index 78b7078478d4..35cb84d1de4e 100644
--- a/drivers/reset/Kconfig
+++ b/drivers/reset/Kconfig
@@ -170,7 +170,7 @@ config RESET_LPC18XX
 
 config RESET_MCHP_SPARX5
 	tristate "Microchip Sparx5 reset driver"
-	depends on ARCH_SPARX5 || SOC_LAN966 || MCHP_LAN966X_PCI || COMPILE_TEST
+	depends on ARCH_SPARX5 || ARCH_LAN969X ||SOC_LAN966 || MCHP_LAN966X_PCI || COMPILE_TEST
 	default y if SPARX5_SWITCH
 	select MFD_SYSCON
 	help
diff --git a/drivers/reset/reset-microchip-sparx5.c b/drivers/reset/reset-microchip-sparx5.c
index 6d3e75b33260..28ad8f1298a0 100644
--- a/drivers/reset/reset-microchip-sparx5.c
+++ b/drivers/reset/reset-microchip-sparx5.c
@@ -198,6 +198,9 @@ static const struct of_device_id mchp_sparx5_reset_of_match[] = {
 	}, {
 		.compatible = "microchip,lan966x-switch-reset",
 		.data = &reset_props_lan966x,
+	}, {
+		.compatible = "microchip,lan969x-switch-reset",
+		.data = &reset_props_lan966x,
 	},
 	{ }
 };
-- 
2.51.0


