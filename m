Return-Path: <devicetree+bounces-137774-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D310A0A925
	for <lists+devicetree@lfdr.de>; Sun, 12 Jan 2025 13:30:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1827B1886A89
	for <lists+devicetree@lfdr.de>; Sun, 12 Jan 2025 12:30:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E32D1B4144;
	Sun, 12 Jan 2025 12:30:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AjPVd2Wm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com [209.85.167.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D68471B3725
	for <devicetree@vger.kernel.org>; Sun, 12 Jan 2025 12:30:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736685009; cv=none; b=mmrIs/Kpg70ECavTx2z+O+1Ka/ZgeZgHCdY3O3EIT7T8BTKFbWzs+QyBAVuVhPdGnQwGd25OE/IP1VjShOvqMxo4LiFWa+6DlnzOTkkimaE2mxqNCkERaKFSVmciRj/A8qUTBsx7ytzF3GWTzeLKgLwi5M4ue7/CKgDFhb8tlKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736685009; c=relaxed/simple;
	bh=55SJtEopymqDLK9jEfPDJlSY2zUu3iFsgAynO+ND2xQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=oxVTefPvKwghZZnHcl6RivRAmVcNcl3+QzcxlZHpnWGL6C2085nhBSvCPnN1rhTaDMLP6J7rFWzxkTKrDS2jlISfjTz9kab6EkuEF/pm5whPXhrj1xpABy4Au+MB9Veey3T1VIX/x41Bt7zDQeTTfVPZaTdtgrJoPz87vGYNddg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AjPVd2Wm; arc=none smtp.client-ip=209.85.167.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f176.google.com with SMTP id 5614622812f47-3eb8accbde3so2163155b6e.0
        for <devicetree@vger.kernel.org>; Sun, 12 Jan 2025 04:30:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736685007; x=1737289807; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zxHvRU79mZPg7YVqFDPmYG/fyVRd96eq7pLfVRnFKlQ=;
        b=AjPVd2Wmg1De0WL0DLDk8XHNSlHXJPT8ATlWwH/4UybrETbjMfbtC56Ac9W1G3dO/l
         S4y02JLyegohwVrJ5BJf09869Y85elklbw0Shju4vKqZUP0sVSPMf1j+/BayGRcurF37
         t1BHXRifZHPFOlibK+XB+yO88mxZJgpK0zyRudOcz9jRg4HFlPcWK5ra7agPqZp+1ukh
         BRFWfUzavP4eqmfwxCufaZvaLAviPUL/o/mKtOVm29d20NRDdOa6T0ZQM1/2Y91i7i9q
         i03Yehu+/ibjMVKtTT3rde+iZDRLAeGhMxrm9gVpn9vNZDWemtDv991W+3KQEdwYXm+u
         j4mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736685007; x=1737289807;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zxHvRU79mZPg7YVqFDPmYG/fyVRd96eq7pLfVRnFKlQ=;
        b=NwMXYcFblGDFTCTb7fMrzmTzDjs5ceWket8HKFoymnFmUZlOWfJkKbeuGW/EGMVxMD
         I8IjIRYGncx28BCNgtg0sd+WL5QEIJhGOqBe1rp+I1f7lwb1RF61I6XpbMUrRYCU7DUP
         TA6TtyWRRvXyv4if4gYxTSiFzeGMJ+UNS1m0VdqessPKKmmOurgfI98jhoaky+aR5bqD
         Hfy2IqGwDusd1lVUpZIYA5VrT8l3mh6BvR4bh0+9Wjl9V4Y7TbaVfbJunqC+S6mGSs5e
         63xFViCCnMoBccowey2eqVksgC20iVQtEF3h6MCzJnYEuk6JOoEEWLmJQpc4YqmFDiav
         +NUQ==
X-Forwarded-Encrypted: i=1; AJvYcCVidK8ovLhiAztxPwqKFQwzoQLEbJJK3t6K+nduL4Jd1wpXJ1jtU/mdu9BXpuDNVYrCJ/fNi4aNts9q@vger.kernel.org
X-Gm-Message-State: AOJu0YxOhv7ALFdQwq2ybbyGi/V4yflZVQsbzKD/uwJS4Sj3vKdNL3XT
	/dmbZliEykjF4Ho6nbeB5As+32J3uCdaM8QvfFACoR5LrBAAxxow
X-Gm-Gg: ASbGnctrAJ+nNaP4J4Q2Mh1ZsN38xTwC5Q/vNSl8K0rNSOxgy/wN4G2JZsRS8YoAD4E
	NtdEIHAZVC7U4MfxjWPueTn7IXTebJ14mjUPas18OjAyUlYmSQJF8c6mj1FQxYadGTSxfIpVndS
	0ZFi4MAjeuJAt+vNmJPtzJFTZSdg+o8ilvE6ZLc9R4fBMbwiQw/th0a9l22Nxp02eHa5nGC3odR
	dzPyfNGDXSdIXkVtlNIg19kP0tDt2rIY5xNaTXfo4MX93zwQm4GE9ui06X3QO8fcBwoFQ==
X-Google-Smtp-Source: AGHT+IHBEpxax2xMY9nJrTyjERREv7VKhbMGJmdVOS/eKfcaNST6ATYJ5Bmp1DZ6uORogDWU++riWw==
X-Received: by 2002:a05:6808:3945:b0:3e7:bd4e:5b98 with SMTP id 5614622812f47-3f038359e56mr5897262b6e.0.1736685007081;
        Sun, 12 Jan 2025 04:30:07 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:8c53:b609:d83:9568])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3f037653ff2sm2196609b6e.13.2025.01.12.04.30.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Jan 2025 04:30:05 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	kernel@pengutronix.de,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH 2/2] dt-bindings: clock: imx5: Fix the CCM interrupts description
Date: Sun, 12 Jan 2025 09:29:39 -0300
Message-Id: <20250112122939.988309-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250112122939.988309-1-festevam@gmail.com>
References: <20250112122939.988309-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

On the i.MX5 chips the peripheral interrupts are represented directly only
by their interrupt numbers.

Make the CCM nodes to follow this format.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 Documentation/devicetree/bindings/clock/imx5-clock.yaml | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/imx5-clock.yaml b/Documentation/devicetree/bindings/clock/imx5-clock.yaml
index 423c0142c1d3..ad03c0a13e64 100644
--- a/Documentation/devicetree/bindings/clock/imx5-clock.yaml
+++ b/Documentation/devicetree/bindings/clock/imx5-clock.yaml
@@ -46,13 +46,11 @@ additionalProperties: false
 examples:
   - |
     #include <dt-bindings/clock/imx5-clock.h>
-    #include <dt-bindings/interrupt-controller/arm-gic.h>
 
     clock-controller@53fd4000{
         compatible = "fsl,imx53-ccm";
         reg = <0x53fd4000 0x4000>;
-        interrupts = <0 71 IRQ_TYPE_LEVEL_HIGH>,
-                     <0 72 IRQ_TYPE_LEVEL_HIGH>;
+        interrupts = <71 72>;
         #clock-cells = <1>;
     };
 ...
-- 
2.34.1


