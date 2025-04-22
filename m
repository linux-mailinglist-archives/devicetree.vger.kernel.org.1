Return-Path: <devicetree+bounces-169637-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 14002A97B1A
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 01:37:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F2C1B1B6076C
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 23:37:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6153221ABD1;
	Tue, 22 Apr 2025 23:37:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="KJgpv+Mf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com [209.85.167.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD8EF21A452
	for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 23:36:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745365020; cv=none; b=CJ+4gt6Ok8Xgam2UrXSPlQ83jEo4n0/XXeMkSByBqW5EY/vKN4PE9jzUeaa9sBZcwamDHwB9lh8ms3+S/laLoBUHfdunHOqaIy4rGiMw3XdSe0bXjpA/kZ9biN51kRgvRt28UxjOMhCr52FWLj47eWb50aRSYTz8JYXrJyHpxs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745365020; c=relaxed/simple;
	bh=6j9S53xpyZA2YvaFLv7oAI4t9prIzRjPnuNZ7YXlQ4E=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=IAJYjVCzXG79dc5sVpE2mSRw9lN/Mqi5ff+jTfBpiG7s7BZJybz67wuRjSkC6rGQAsQLuKUe5Jl260N+q6+pA9TeWb2ykgCTqM0Bkz8dD2xmPVvqu9j4U9slIPt7jQNCQrnj5Lln7IDINqdGquw/FIVIDhklu7EZECucDxxD1Qw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=KJgpv+Mf; arc=none smtp.client-ip=209.85.167.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-oi1-f175.google.com with SMTP id 5614622812f47-4003b22c2f4so3697569b6e.0
        for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 16:36:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1745365018; x=1745969818; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aC7aZSOIYYrhp9wP2gWtTrG5J3EW6XZ4IF3852eWLcs=;
        b=KJgpv+MfcesV7MIhNNJ/MR3GDVDrl67t0gvycc9QzjVAlfOqKLpInz9szHL2IbMFdL
         LkBdLcw0ie5a/InXxLwI1bFlCluI7fK8dB3Fy1amD/m/Pypaa/zxWoHBii56ZuzpgtrA
         Z0sx4q1OMOi+vHtgg0CByZVxOmSafKHqwa68c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745365018; x=1745969818;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aC7aZSOIYYrhp9wP2gWtTrG5J3EW6XZ4IF3852eWLcs=;
        b=NZxtlXE/NMjxAuMo6vMn4DEjdcrvtW0zi7gri1aGWEXKPI7oiFpLD7rphMKhkdCGk+
         PCSjeQCSQaOGgriEpkkND0mTeCtneaSyF/eN11RzHTN0VkH83Ty+k2M1bmJKwLjIfuIn
         r2wnYuGT8NQWE9RCd5zXVuSLljaMRfTN7HiVuPent4tixT7rKuNPMY+TaDytrntPZQTR
         9hxVEXt9Pb5cwOHStsekbrJte504axSMpua1TqBaxKPCJf6836GvVdUMub0le6nrNvmt
         QhlXrBVL3u3CugvKtjgDu4/0deDfqjBo3bZnspxTxcX8ZA4CjaePfEh5b1ntk4ZYcP/r
         Lrmg==
X-Gm-Message-State: AOJu0Yws2gWblSFqP4juT1BYgACi5YtUqzXot/5D8pG/AoXf5MDoAUwg
	p39/jPGxHOy5RVtgQ9ghY3i9awwuAztHqhR8KnOJR91OK8QOsvvLn6Hyf2v3uhQmA+I/qg0KNv/
	129T5DUCZInbH70E01tiPPCujdN3WCaHXsTQl+tOqvcrKB/8NxsSySGKbbWfq1VOoGhBG/zzJvC
	eB2B+3MpYZZkPykczmHcPUw01omfiF408k4FsAxwDDgD2vkhc=
X-Gm-Gg: ASbGnctMyFeHalAZPzDLy/BhQYJgtaYQxqOEfBzcRXwEhRBm2s2JK+r6ocw+jLflWX0
	kYZV7YFBWweA+iU9n7fc7zRY0m3P73+VAXf47aHVKwtEtiWs7P9cxt0132h7pY0RqzXIuiLG+s4
	GMWwWsn1RWyw9HdbgJwJ8PX+TqYL+TZ6C8kfDr/TZvSUwy9samYyh4EmIWEoE4sgSm17v7bCvxu
	a+XhvbMZe75g6PhDhIvcg1IGEyGTE7eg5UHR0gr43ukWDq8UAaY5C19Dtry746WfjEIMKjMtwT+
	Rv+cXknEMIQgG0Poy4Ekg4IBVPijLs1I/IQ2XXUoIddD5MIawuDP0fl6ngOYsX6ob7MP2YAHaot
	8VTl7q2TGY/NWKp0p51wLJEO63zAW
X-Google-Smtp-Source: AGHT+IEkfpYa9fRkS73u6nm/pvwQFHGyQje4Cw7zxAxtZCJFzs1yCyUJMlorBcANLHpmY6Dki3x4Sw==
X-Received: by 2002:a05:6808:80c1:b0:401:16e:b692 with SMTP id 5614622812f47-401c0c3d025mr11266125b6e.26.1745365017732;
        Tue, 22 Apr 2025 16:36:57 -0700 (PDT)
Received: from stbirv-lnx-1.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-401beeaf403sm2333582b6e.7.2025.04.22.16.36.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Apr 2025 16:36:57 -0700 (PDT)
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
Subject: [PATCH net-next v2 5/8] dt-bindings: net: brcm,asp-v2.0: Add asp-v3.0
Date: Tue, 22 Apr 2025 16:36:42 -0700
Message-Id: <20250422233645.1931036-6-justin.chen@broadcom.com>
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

Add asp-v3.0 support. v3.0 is a major revision that reduces
the feature set for cost savings. We have a reduced amount of
channels and network filters.

Signed-off-by: Justin Chen <justin.chen@broadcom.com>
---
v2
        - Split removal of asp-v2.0 into a separate commit

 Documentation/devicetree/bindings/net/brcm,asp-v2.0.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/brcm,asp-v2.0.yaml b/Documentation/devicetree/bindings/net/brcm,asp-v2.0.yaml
index 1efbee2c4efd..a3db6d594c8c 100644
--- a/Documentation/devicetree/bindings/net/brcm,asp-v2.0.yaml
+++ b/Documentation/devicetree/bindings/net/brcm,asp-v2.0.yaml
@@ -15,6 +15,10 @@ description: Broadcom Ethernet controller first introduced with 72165
 properties:
   compatible:
     oneOf:
+      - items:
+          - enum:
+              - brcm,bcm74110-asp
+          - const: brcm,asp-v3.0
       - items:
           - enum:
               - brcm,bcm74165b0-asp
-- 
2.34.1


