Return-Path: <devicetree+bounces-261683-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ElU3IppagGmY7AIAu9opvQ
	(envelope-from <devicetree+bounces-261683-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 09:04:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A644C976B
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 09:04:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C92623004F10
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 08:04:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D88513101B9;
	Mon,  2 Feb 2026 08:04:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="W8hA41ks"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CEBE30F931
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 08:04:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770019476; cv=none; b=ZrtsCVwWzw2H1ZvgqK6LtYIFwgnwrZJweGBJezfYcjQe1AD4HsPJ5/mgDJ0t3zjML7cXGk7eITXFBBT/2WVW2e191BcBdX+IChJdzPcG+BYHTsxVEGxLN/UWX2h64Qo4/ruXWQf18pfpkp2p8GsaqeqthNhV0ZOml4DJQ0szl8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770019476; c=relaxed/simple;
	bh=x1Twx8+kWz2RQ5t7uN30kKAHHBIKwVW+KmQ9s9g7ifA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=AQnGvdpLsyw5aLn0h9pG6nZyfNjW6jAT6eGB+V3fYr8e8/T65S3G/qi9gAoEIxZQR7a3YVJdsqKqpRDi8NIayEp1zNeND0wT6RGcPPZ4yYgeBIyjG8Qs7p2XgPGPpa/1QgX6qWr6Nlo4fUxM1jmmZFtP79epddPzVBwpWeci1sw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=W8hA41ks; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-8230c33f477so1792320b3a.2
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 00:04:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770019474; x=1770624274; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t7CfwT2DDi0khc1d2LSmdYOWoBYAWsTA6FV7mdcofhc=;
        b=W8hA41ks+VPx08jsw4W3a3kVu6SkaGxiFCAoLW2E4DCsKIB3ZUR0/34RssUENLJ12g
         L5QCxzohepo8xRSl3IduI/aremVJwAcefIGUGG0kOoopIjKIemGuOgByvtfs7hjX/r0E
         xSF4kkMAfj5mF4NB94v9Zk8TaIP0Imt0/Vy5991D1MDz8S7mavXK7qXvu+IdTlXA1PZW
         P5eWBJB5sdNNrYSaxvyvFR0oPkVui39uq9OAkvgsm5uhWiELnuRM2v878/bVNhbdywqE
         8zrX4kocn92JErKPFWq/tYe4qaEPAQYhbp2CgnROK7PjqS00UfkCOeQXAAMAwugrGXt1
         MFgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770019474; x=1770624274;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=t7CfwT2DDi0khc1d2LSmdYOWoBYAWsTA6FV7mdcofhc=;
        b=GmnYK0EX6CURS51E3Ip9Vd5oTizzG/XnczcUBCffwQu6XWN48OtageRFo60A98HbAi
         Y2guZocrROMeVIr1WDDdJ9XSrCAxy+1rAhtL2UnhPctx2DqgcjoXpjKlw3hE2X0ykE1I
         +hKYvubYYwwOUiS3gjRf5ssii0xbZPIX41S/AxHkgG6pbJ6vMk5vZHyb4VNzQFOvFEgx
         g/wuCHOoq2nGckfPivvEg297rLNs3jAU3pOOff7ucWsPnXgbo6FV2uFBKf7+IBs1j0pc
         O9co3Gr9hgiGirpmA0i72+ISrWCWwEmLz+YwANmCsyUt0RrnDEiR3/FQ30hfDnD4RAKF
         4JhA==
X-Forwarded-Encrypted: i=1; AJvYcCV3hu67IZO3H7gdhBSfph67ZVN7ETglcXEkpaA2zEP+eVreL38CFmB21tTkrj1R+jKoiPmvq2bKE9C4@vger.kernel.org
X-Gm-Message-State: AOJu0Yww74+TtCPmIv3JSGXJwxCYhGXXaC/t2un0dCQ+dIeIFVPwAkg9
	dYSBNbQ0V3s5B6KeI1ksMsO+uE+6euCuvM42mAeJAyQCJHwijYdtH3f7
X-Gm-Gg: AZuq6aKURnOFmSne7l80xL4vbzTlGbIvi9Cdqu//paUoUOzjZx5UORZWyC+DQMoU01v
	Y+CYwFQBGk+3Iuw/sRyEhV1pH7aw7/23hVMmISSuHFHTAFIim1hncFzlyAiEpDn2o2Yfgbv0jaM
	CQlqo0JAEgmh4GFstkp00nJ1uZLXAeQupkgdgsf/OA96cJ47LOxFZuGRMX32Koyyy/GKXLcGYsf
	eVuO3J20u7mLilsSQZoANe3LzHhpKmFztDUwJnj1SOXlEMI2JoWKyLedKHDGhFd9ep/mf6xjE1A
	Q6Z7YoG2EKQt2sTL8CdyLBfoj2PxlwJnmS2JWprWK5HFGHd68RmrZt8lrqFZxNkHeKaoipQXHkE
	m502apw9mX4emY6O27SFd5s9WbLb6GDHWSh67YxxmHRbyYdet/reP1hPTU26LRziD9IOpGg12UJ
	J+VWkB8zaTuvf4gBj3/VBr6pwXauF9Cqr6eg==
X-Received: by 2002:a05:6a20:2446:b0:38e:cac8:f968 with SMTP id adf61e73a8af0-392e004d994mr11112301637.17.1770019474475;
        Mon, 02 Feb 2026 00:04:34 -0800 (PST)
Received: from localhost.localdomain ([2401:4900:61bf:a770:ed27:c783:3591:cfc1])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c642a3356b4sm13596938a12.17.2026.02.02.00.04.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 00:04:34 -0800 (PST)
From: ASHISH YADAV <ashishyadav78@gmail.com>
X-Google-Original-From: ASHISH YADAV <Ashish.Yadav@infineon.com>
To: Guenter Roeck <linux@roeck-us.net>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Ashish Yadav <ashish.yadav@infineon.com>
Subject: [PATCH 1/2] dt-bindings: trivial-devices: Add support for XDPE1A2G5B/7B
Date: Mon,  2 Feb 2026 13:33:54 +0530
Message-Id: <20260202080355.53061-2-Ashish.Yadav@infineon.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20260202080355.53061-1-Ashish.Yadav@infineon.com>
References: <20260202080355.53061-1-Ashish.Yadav@infineon.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261683-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ashishyadav78@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[infineon.com:mid,infineon.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 6A644C976B
X-Rspamd-Action: no action

From: Ashish Yadav <ashish.yadav@infineon.com>

Add Infineon Digital Multi-phase XDPE1A2G5B and XDPE1A2G7B
Controllers to trivial devices.

Signed-off-by: Ashish Yadav <ashish.yadav@infineon.com>
---
 Documentation/devicetree/bindings/trivial-devices.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
index d0f7dbf15d6f..c017af9e5e8c 100644
--- a/Documentation/devicetree/bindings/trivial-devices.yaml
+++ b/Documentation/devicetree/bindings/trivial-devices.yaml
@@ -149,6 +149,9 @@ properties:
           - infineon,xdpe15284
             # Infineon Multi-phase Digital VR Controller xdpe152c4
           - infineon,xdpe152c4
+            # Infineon Multi-phase Digital VR Controller xdpe1a2g7b
+          - infineon,xdpe1a2g5b
+          - infineon,xdpe1a2g7b
             # Injoinic IP5108 2.0A Power Bank IC with I2C
           - injoinic,ip5108
             # Injoinic IP5109 2.1A Power Bank IC with I2C
-- 
2.39.5


