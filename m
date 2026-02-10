Return-Path: <devicetree+bounces-264449-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eHTPNHZFi2mfRwAAu9opvQ
	(envelope-from <devicetree+bounces-264449-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 15:49:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B00B11C0F4
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 15:49:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 843F0302BDD1
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 14:49:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90D7B3803E4;
	Tue, 10 Feb 2026 14:49:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Umklve7R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f47.google.com (mail-yx1-f47.google.com [74.125.224.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57F1E30C371
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 14:49:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770734952; cv=none; b=FZnSfcXYYKHDIZu0AMHt+5baQ7tK2Af5AJXufLdMGWNKPj56U/QCeG4iL4jNqaMxJRL1e7TKqiOW6dBZ6IxsIJdw7DXL3FROOqeWPnLahrBI6SUP+T/Nv9pcCEypQjE3LqkJzuQD7xHpsIFNZXycK684xFhT3Ce9CG/x/xLtNME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770734952; c=relaxed/simple;
	bh=erAYQoaoLFMAKrrWxbMAVJwPe2CgunO7FnQVmB+6vsU=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=GzATd1KyY8wdo5LhbdCxLyqoEVKyURmigdqcxv1nEXeEZ/AYTRS3D6AhHEWVV9kDNhwKfiJHZAxry8vKi8ltILuz0ptoOpyHsxpwN1rYLoTxVAHG9sKL4JR0bgQeiywIgFCo+1HJiKaL15230RIpkk71H8Js0TrFAjPO4jHDT60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Umklve7R; arc=none smtp.client-ip=74.125.224.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f47.google.com with SMTP id 956f58d0204a3-64ad019bbd4so3765664d50.0
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 06:49:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770734950; x=1771339750; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=GNCXerJx3sFfDg6KS7EVW/a5lfhIGse5nvrVk7F3w1A=;
        b=Umklve7R2xWVQJ0scfy4vX932pLzZtC5+hDQuZJuDNY50PQbbjFNXhlhcOSfH1TUGQ
         1VjYKm7E5xtC0gEviQkVQT7QHfzpQfJpK9P/NyHFtfw/G4Wb7le8rUq1WwnAwfQ1mzpm
         GYDTS9akLiKQGCGs0J+247Arf4luLyVOWuXItRIsIrnxYU6PhguerwAZaWkBI4R1QgzR
         aGdmhuh5YiZcT5GumtqNkWKfQepLUUI/P9ZqQZ1fNvEsfcmpfkoNimRlelW2usPC4cWw
         HWAhYF/vHjDMS9Nm+qdDT57ADwBCfxkksQ9g2ZIbeOH9cfMY136AX53jN5nKYSGBHARo
         fkpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770734950; x=1771339750;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GNCXerJx3sFfDg6KS7EVW/a5lfhIGse5nvrVk7F3w1A=;
        b=cCLbziPopzSMhedNyfdsCLEOp/Z1xMK5DITN/lfVz0/T4f/plA64kNYOczNTOtzbEY
         1HkqdABXsVt/yfzA5bUTatdgOG2ro9DceTOBlMCcHHnqF1zNvp4dAJlQ3bSRK3riu7Yc
         KNymc5Ci8aDtRtLEy7c4ullfETbLmv4sOnua0ZXIKEI75AlvAqLP/zBNjqSRf4TSn0xH
         jOJPoKwbjzhbpGhFpm6KMZf3A7x/mmk9txx0+UWfLex0gzNAjR++0QokOFZ5qYPwESN/
         OPnrYMceIvYomxprBNZX8h8VW9ZNtSvbKCPIeAopxZ7mVA9I3oNulJaBiNufDmvyXHQr
         WBfg==
X-Forwarded-Encrypted: i=1; AJvYcCWo0WYpz7CrCvNB2tUGGXy2y9zfatIPlZDsdaqd5ASERrUAXyywUf0MskPxPQuOFoJIb8uYJWZJ18qb@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7kpLmhCe12alndXI6P/L8RKBkTYbL5HdQjI/vJ8GoGMNmg+D5
	y4ZtyTl7wzEam2vdN1nj8mipwQna7VD7iu0vH0+vqMSuiqODmSokmOdW3xC1LA==
X-Gm-Gg: AZuq6aIdKlppIoxxNrlyShoIZpLg/D2KRWDF2XWvyTFXBHD5Q8mkTIqiRQqu67v1bkG
	+Ftt+Z67CYS6j3y4gGnm4z9u85qj5mO3DsPf75do7XST7sPd/sls7wXL8HDubFat24rI0B1dBSb
	5Bak3pbIojtmC6SzvraXXYrW+ErZJEB5RCkAw6lSpODLUOivOwscuULll9j4R0f0LluhZsqW5XE
	zM6Jd1O0r3rHSZaMggc1ExHQZ2fgWN3a3JdOf9hBj9E9aa6wk1LRpT7nQqnyidWSiWUghv4H0Vd
	B96tu5HEe03/pkm4Hq28V136A2fAabXwoKr4BeZ/hHha+LlEGc/4d+oOczcPffwaKD32wlK07zv
	FNquqd7lyqKvkIqXENH1li3vLKbeoRdddqMozRVYGoJvm5O7y5iiLnRi1mi1sSAZww8ATT1VU2y
	t03rUYQxV+k8s43/ilK7RvLMmG/9/Mx2GI1+PTPFcDJTlFREs=
X-Received: by 2002:a05:690e:124a:b0:649:f09d:a6e3 with SMTP id 956f58d0204a3-649f1e5286bmr10865997d50.19.1770734950183;
        Tue, 10 Feb 2026 06:49:10 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:7e95:428c:8802:872e])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-64acd247ee5sm12086263d50.6.2026.02.10.06.49.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 06:49:09 -0800 (PST)
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
Subject: [PATCH v3 1/4] dt-bindings: soc: rockchip: grf: Add RV1103B compatibles
Date: Tue, 10 Feb 2026 11:48:42 -0300
Message-Id: <20260210144845.317048-1-festevam@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264449-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 4B00B11C0F4
X-Rspamd-Action: no action

From: Fabio Estevam <festevam@nabladev.com>

Add the PMU GRF and IOC compatible strings for the RV1103B SoC.

Signed-off-by: Fabio Estevam <festevam@nabladev.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
Changes since v2:
- Used a more specific compatible name: rockchip,rv1103b-pmu-grf

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


