Return-Path: <devicetree+bounces-265647-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mFCVLK9skmmMtwEAu9opvQ
	(envelope-from <devicetree+bounces-265647-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 02:02:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 75FE8140873
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 02:02:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EFFBF300D9EF
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 01:02:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 920A027A91D;
	Mon, 16 Feb 2026 01:02:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jjEPM/y/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f44.google.com (mail-dl1-f44.google.com [74.125.82.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC259222584
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 01:02:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771203752; cv=none; b=GtYXRjEyp6iulHFVsXweYNs9e1KQ0frQB9U2RPQwdGs8wUYfE889c0H+CYVJWFyHNAcR0/Q9dm3ciFQZV/OYchuGtLZbwQKZBiJs62q7Rc54RsoVydPdJj1HzihmHmYj1pS6MPt1aJOltwdpcnX1BXIZEORLPZBLecL+/mrcXv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771203752; c=relaxed/simple;
	bh=TKWGXf+7UrMF6GfRJjCucnPP1QV3uqGGvqTuJXQwVzo=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=QQzVWb1HEeSqOPRMC7rXbi2YMBVoY/m6JGrlK9Ir0LosNyrV5elsnQsNHYuRbGlNjj6hukQaO8HE4kf3jRF6nbSTLW76qjMefP165O0UM5PLY3lDELLZr4zRLN6HlA9ko4/bGA+j0U9e1nDcUkeFhf4bgtXuZR+cpHlMHWCMHEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jjEPM/y/; arc=none smtp.client-ip=74.125.82.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f44.google.com with SMTP id a92af1059eb24-1248d27f293so6275491c88.0
        for <devicetree@vger.kernel.org>; Sun, 15 Feb 2026 17:02:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771203750; x=1771808550; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0uUVQPbhvB6NSi3mbkZ1qXyVTFOD4aa4pfphYcfbKPU=;
        b=jjEPM/y/suPXY8RWntCa/AUmD8rnSbsCZUk/pwPuURIeHJdUxYBZdyKjxztwb43BM8
         72MaRZc+i6A+42zSUr1lnVnw9xmenNeR5ewzY7ohhGjHSgcowi+XWDujVms/LWmdho8o
         ws16uLjiZk8CboG4vR1gWZ2232p0EnTYck4T3183qBXOFAR9Jzf8Jd/sFds4ktgRUcZI
         b0JbOx+7Fy0WhVTFv86CwNY4YwPlMS99POCvYA+1eBH1JcNGLQ/axVsEkV9HZcaZ3PZa
         HyfTBtZuwnyjQuU67WDsnFfMgCrNm+UlXbKGjwgHi8dPm/G6wtJ5eZlo2RruPyGkpjcC
         uZLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771203750; x=1771808550;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0uUVQPbhvB6NSi3mbkZ1qXyVTFOD4aa4pfphYcfbKPU=;
        b=LHSrhYD8b6eubuQ+gulS1BULghp/mQvDTp+OTcUaSjNqCYBd2wmMc+DOlp1ySCEnjM
         iSBGYLjGbs3Xncv2dnrJlbCNfo5ubxRbjLz57iVmkEsPtjbHI2rOtd6a9H823KV5umE5
         ZCUInMWjZsXZKUphBkH9sBA6LUcrYRcKNeN68GNu0i0bvf8kE30xTK5yrrYH6sxBpNKu
         HQ5+hb7wrMuz2VFLS3HE2uWddpf9J3Am8ljmfXGaH2q5mtNEvl4reklanj/aa3zxtAy+
         lTRJ/70qcMLhBo3XT0YzyWOJbogp2HD9xi2Uc9WFEFjfHe6VmTlKLADw+dSby8TS1PWA
         kuUQ==
X-Forwarded-Encrypted: i=1; AJvYcCUkLJokRxDjazVJZqRj60A3fKfkHtWwTn93cf7ucmWRuBMiTjPJxtdW2JgXkaXaHrjWF4fPwmlZgnoH@vger.kernel.org
X-Gm-Message-State: AOJu0YzJ2o1pBuaiO2aAkvwsuaaA45OgnUGw9q+b+GA0vasayccq0FNr
	kRQScDuLfhbzqdlU9axItU46c+aSBoygPxjRn47F8SN+GwYiHDTyGhMo
X-Gm-Gg: AZuq6aKw4+T0evpZSN57+RW8jsJle68nfMeqHPICY6DDL9NfRQZBDvONAZ9uAkT5W6e
	9T6PgOeunM73lsf6OLlFVgouZ+1xxJmoXkX2ElAwuDRbQQW1oEcM8+2optviSi4KbXLZ2V+inrf
	CWd7dvN1reT4NWXjV3eQRLmkIkXZr5+vWp30b777/O2jbY0A7Can+mF4tqJtQeOMrmvm3EsOzXC
	eu0ZyZZi8s1cZDIb3j/i1LgDF72fRIEpw9iY3NoUzc0cEyKNLzfJtO0maAoYYPHHiLjG8dT2vlI
	GVZF+9UNsw42PMYAciwihIUGOkAKCIcU/slM1p1wyWhwz0dPYWDFR2In9i22PevjlEsNuiw45xy
	DIanQfo+Qh1/rZn2ccc1o+THjO69ZBGn2NMPdUt23THRc8Ikm95hzWBsNDOGhF3UVQbtjMKWWyq
	et7qrvaL9o2o7EYS9G//63JfvTG8oMzJO6iADFlSFlqUpJId1x0b3DVVYTjzTT1BeqdQ==
X-Received: by 2002:a05:701b:418a:10b0:127:3b1b:c816 with SMTP id a92af1059eb24-1273b1bc8e9mr3216897c88.20.1771203749797;
        Sun, 15 Feb 2026 17:02:29 -0800 (PST)
Received: from localhost.localdomain ([2804:14c:485:4ffb:cd7:e7e8:c526:2074])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-12742cadb25sm9158160c88.10.2026.02.15.17.02.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Feb 2026 17:02:29 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: jonas@kwiboo.se,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Fabio Estevam <festevam@nabladev.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v5 1/4] dt-bindings: soc: rockchip: grf: Add RV1103B compatibles
Date: Sun, 15 Feb 2026 22:02:16 -0300
Message-Id: <20260216010219.2131484-1-festevam@gmail.com>
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265647-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nabladev.com:email]
X-Rspamd-Queue-Id: 75FE8140873
X-Rspamd-Action: no action

From: Fabio Estevam <festevam@nabladev.com>

Add the PMU GRF and IOC compatible strings for the RV1103B SoC.

Signed-off-by: Fabio Estevam <festevam@nabladev.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
Changes since v4:
- None.

 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 0b8e3294c83e..2cc43742b8e3 100644
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
+              - rockchip,rv1103b-pmu-grf
               - rockchip,rv1108-grf
               - rockchip,rv1108-pmugrf
               - rockchip,rv1126-grf
@@ -231,6 +233,7 @@ allOf:
               - rockchip,rk3036-grf
               - rockchip,rk3308-grf
               - rockchip,rk3368-pmugrf
+              - rockchip,rv1103b-pmu-grf
 
     then:
       properties:
-- 
2.34.1


