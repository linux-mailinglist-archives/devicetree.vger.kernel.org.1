Return-Path: <devicetree+bounces-263608-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id hAgVHJg7h2l+VQQAu9opvQ
	(envelope-from <devicetree+bounces-263608-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 14:18:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BD5B1105F39
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 14:18:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 659083019194
	for <lists+devicetree@lfdr.de>; Sat,  7 Feb 2026 13:18:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B97C52C08DC;
	Sat,  7 Feb 2026 13:18:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NhVszPUe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f53.google.com (mail-dl1-f53.google.com [74.125.82.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 795BD17C211
	for <devicetree@vger.kernel.org>; Sat,  7 Feb 2026 13:18:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770470293; cv=none; b=gtaznCFZjYLSHSXiS0uyfDs/WtPXDGAbcN5UuK8o/E2rueXKBVPetjN5ri8nJ6bcYLxwLM8fOZmSI8AB1O8HCGt9WLjYD0BujiAXfrZNCVdAct2GfutylJN+t3iWaYHpmgoXNm8fvWeV9OpnQ0ZLbVbr1qQciGCisOgb0JLh05g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770470293; c=relaxed/simple;
	bh=MuW6ZAmimVXVOEi0cRO57Eujbmw5dJSH0fvF3E/cMVU=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=UZPfzSTF7lEHxLHF3z9JGlf3kLRos6aLT78sXTGGppGUl1KefI59y5qxIQh3uB5Md7IoFjxFuXTCxZrC2B5abZcKkQhVmEp6pW0/1TGb/QK19is7KVWGKjFF1jiZTwredJC4AmNHFBhdorLWp9JZS/+aONN9q48mIti0kf8XQSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NhVszPUe; arc=none smtp.client-ip=74.125.82.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f53.google.com with SMTP id a92af1059eb24-124afd03fd1so2234492c88.0
        for <devicetree@vger.kernel.org>; Sat, 07 Feb 2026 05:18:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770470292; x=1771075092; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+9W9/g77jOrUZY4Vom1pwr4e+Jb98dvCscwpobNoHak=;
        b=NhVszPUeiNAY5EYgI17B0rDGFKPAKyphZel7aQkhJpMhbvyg6ZWqBNYtTCx9O9NHQz
         VQCuNDiF73ZqbNGlM7HDH/hptwRuKUPOcYGOIOQZp1zSo0NljuV/OHkqlWRf/ImHrsoE
         XSo3lYCnNniKNxQgCV99nlsWcDpok5RaPUx9eGmckIJCEPblWU37BqYH4bLHrSwIs6LF
         bDvSz0i6/NmhDN/dEsM7I4Em5EhwEkal4syu6dkrxc0iB28E1pJuknrUMKNsnhJ+MgZx
         D1bexqzwSPwCnCHRxdqhauEAYhcolBYuksa8qjuJHj+3gJQZezLfhVRQgDYhJKobTGsO
         Ywxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770470292; x=1771075092;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+9W9/g77jOrUZY4Vom1pwr4e+Jb98dvCscwpobNoHak=;
        b=AHsU7uVAKDBQbngt/t2dgonraTBFgUYo785FVJiCiuodWV/4w4RSL7w8pedpkn6ymX
         bSmcyduYh7TH8l5tOPUgqzcRbOgvVgYhJagezMgq/FBLc1KDHI7C9sRkhxLxXypQHX0y
         Q9kBd9/Wr1ZCXx0Vlv0fMwrw0EES5unt2KM9wJw5+1G0WL8SrQOPr/0cTPesDXgTEnkZ
         ionyG7veNxofV3z1GzqmY6eAVzxNLH7iY4CFc72Y9lgIWhrOwDUjzV+A0L+K1Vo+8g2/
         tRRtkZqw04uxMoU70DBuVtkvFjoNvnvYyOobq37zpAw0Bux41y48xvGx2yEqn6ojN01Y
         xsBw==
X-Forwarded-Encrypted: i=1; AJvYcCUKAs0MyLNFO2c65jk70jL+l1nwtV/pwwAK1+c69gl4Ns7r+OKWAMm3Snuj7/GD1gLYpydoE9Azmzpk@vger.kernel.org
X-Gm-Message-State: AOJu0YyC0l5PHq1gQdvjm2tbPD3sRLYmHEygWEwjPmAy4cnIJXUFYW1U
	Q+aozuHZVBiB5kp9FVARxZMejIafcGAdSAj0vI8aIVhVO+u5Aw4Djz16
X-Gm-Gg: AZuq6aKqiKuwFpKtzWvtX+8g7FO//UkcIUf4fWR7ONcOpvusB2uUbJqorAzW9mR+xL3
	3tEOQb9SwAOnoGsLLzhEpJrwqsRt1UlS+X82zG8LopquzG1OzG4s1FsVPnj8tlZhkCjByasmoXy
	6qlI2JATB49Tgu2GB88Lm6lK3fcOkds2jYn7VfLnSMyXsCQnWXd+KiSPliN5UpsV9U0eG8eUOHl
	7JWvJvaGecNuITXkYHOWLhencIIglastCPHaLbtNEM04XhCANPKAVXqRswrX+4dx0WoPZdDeUOZ
	36JKZ9h3e5oHodNM0g0Cy4M8gDOZnGkDTDEEZjkkabwmIcYMgsUgM6Cfy3jOqiT1ufTXx0xgK2y
	8qt3SjpAxfCROnI7QCe5z3xN0lkKlmzjbdi1VZBhLfa7NfNG9O1eVJbjmMjhRbamk1wsGelKEzu
	6kK2bBYI1pvYAFUTQV+xKX8wmX
X-Received: by 2002:a05:7022:f8e:b0:11a:51a8:eca with SMTP id a92af1059eb24-12703f84c42mr3550846c88.18.1770470292497;
        Sat, 07 Feb 2026 05:18:12 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:b1ab:5cb0:a2f8:764b])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b855c7f5fcsm3688627eec.29.2026.02.07.05.18.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Feb 2026 05:18:10 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: jonas@kwiboo.se,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Fabio Estevam <festevam@nabladev.com>
Subject: [PATCH v2 1/4] dt-bindings: soc: rockchip: grf: Add RV1103B compatibles
Date: Sat,  7 Feb 2026 10:18:00 -0300
Message-Id: <20260207131803.2834749-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263608-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-0.991];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nabladev.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: BD5B1105F39
X-Rspamd-Action: no action

From: Fabio Estevam <festevam@nabladev.com>

Add the GRF and IOC compatible strings for the RV1103B SoC.

Signed-off-by: Fabio Estevam <festevam@nabladev.com>
---
Changes since v1:
-  Update to the list of children.

 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 0b8e3294c83e..4fc01a450139 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -63,6 +63,7 @@ properties:
               - rockchip,rk3588-vo0-grf
               - rockchip,rk3588-vo1-grf
               - rockchip,rk3588-vop-grf
+              - rockchip,rv1103b-ioc
               - rockchip,rv1108-usbgrf
           - const: syscon
       - items:
@@ -98,6 +99,7 @@ properties:
               - rockchip,rk3576-pmu0-grf
               - rockchip,rk3576-usb2phy-grf
               - rockchip,rk3588-usb2phy-grf
+              - rockchip,rv1103b-grf
               - rockchip,rv1108-grf
               - rockchip,rv1108-pmugrf
               - rockchip,rv1126-grf
@@ -231,6 +233,7 @@ allOf:
               - rockchip,rk3036-grf
               - rockchip,rk3308-grf
               - rockchip,rk3368-pmugrf
+              - rockchip,rv1103b-grf
 
     then:
       properties:
-- 
2.34.1


