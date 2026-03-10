Return-Path: <devicetree+bounces-273169-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QCxeK+tjr2mHWwIAu9opvQ
	(envelope-from <devicetree+bounces-273169-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 01:20:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AE99F242FC7
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 01:20:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id BD02D300BE90
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 00:20:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9454F1F37D3;
	Tue, 10 Mar 2026 00:20:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Kxav+a4J"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f172.google.com (mail-dy1-f172.google.com [74.125.82.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72C2F1F0991
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 00:20:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773102052; cv=none; b=qPgmI9fpjn4aZlg6JObNOtAWxLBa3VWvAu1Y/SnTSCEIXnX/DKidYzmNJAcjPStSaBogofHgS4mTnyQEdlx0VWybK7AbvhGMLh8RooykPkQfM4l0xqfc2SiD7IdYMWEy31lhRuPekQgTiK0J8yiCCqi3i+XFv+J1Jmg5PqxaNMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773102052; c=relaxed/simple;
	bh=Y9PRrFLu7d08JWoBE3phrh5eFQ0D+N072CPAq0RCxh8=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=POVhX6C+9D+plpXDG/f+yKzvIzl31JyRlG1+kgzIxAiOOSUurD/aFQJ2eDJmaNpqOlug9WxOrsUU2MubzCwyn/e5HxV4h95wv8vlGfd0Ri4MjZ6WEMlNRPdNTUM4HlTzpDVyUBzaBRRiKo6dIj5vmRVtx7TMhTSPFEgKAnOJoak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Kxav+a4J; arc=none smtp.client-ip=74.125.82.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f172.google.com with SMTP id 5a478bee46e88-2ba9c484e5eso12128452eec.1
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 17:20:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773102051; x=1773706851; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=XTxiBTQPBxIEDJ+EdVXtbyWx7niATlKQS7MVfuG6I3M=;
        b=Kxav+a4JLnsfw2VEFbI34BiDfV8UIlJeC6DV90wGP+gGorPPMkMMvE6D2Mv2wm0kAl
         b5lS06oiZCSsNaGBD4LmLi/0oZqGrR66GQXQuq6MW8zrWSk0K5NEfvaRslH0NVcpeQjB
         4LYFcr3o6F7+aZsj1MCrJq2GToqKbF+Wb1kleZ1u2zxOCPwcKolUllV26QL0NWjv8F4K
         OptVyTZ27eyX31Joz7IXUEZEiiVFJjhhyCiHC3JePlxsG21VqVWsfVBO/45k9CtNDZKy
         0LF3sF3rFn52/7hEM6AbT6J7I7Bj+C0quVyrX7cBNquEQwlklu7D5DeMMaElr8y/G8QH
         40nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773102051; x=1773706851;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XTxiBTQPBxIEDJ+EdVXtbyWx7niATlKQS7MVfuG6I3M=;
        b=KaQmdjd0gTa43fKEMTha96J6x76ZYTEOz9NsV9NWoHpzt8ie+GVz/fQCG07mS9u0f5
         EO1sdpzfPj1/5zBTY4UoSRTSG9Zu8lEaDPDPJlbcs9YIJ65iYAcHxQz/9bbERAMQulbE
         mlpPbOEmaEqlHfs7G5uyRNJA1kcyFHClP2Ua/Dcv9BCbVC1M8ORm06MCUCbhipL5LroE
         gq+QJxcpBrKiqnrrNIwqYEUqwKXsNAXL25Rd+tS7lACjVZZnyt4IA/rA6IZUAxwxM8xw
         pZ1UoiuoLiNeHxeJO7p+px0RvoZgVXZs4IBfDd6XfgHqVCkmK3wpxKTXIRKogDT8q71+
         8Bkg==
X-Forwarded-Encrypted: i=1; AJvYcCUnlIZq3r6VyGwMfrVyHVC2dISmDMLlTPcMh0E9AGYiY5lXra8pNpJEPe8jaUkzJfVbo7F2eRCFSzmp@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/rjwE7fl3Pd0UavR0kUCViAVABqiJ4jmsUi95ETbjzT0wUK6v
	UMVPGrk8dHkiF8PBLnFDsdRixQd8d1fxz6sfCI2elRgCJC8D4ZtOlc3A
X-Gm-Gg: ATEYQzy7RlEjOTXtHxOX7ngyn/I3bWVw0EfdF1xdanVoxZbR6TZbpulxojCirkhZoYU
	cs9aWw5s75Q0BYtQq24JrRzAg0tV7/80QeCz869KswLdkEw6/sJKfzLsj67V4LEAH9Cm33KF5ia
	lyce3xeR0ohhlGx9ahxEFXeADRY8bhpQzE2HfmA+iFwOyC5DfgopRCs5f1zbf0f6leFFYZDqnIS
	DCZTG040IgYc3T2OtqvbShStSuCJFL9i/yoXkyYIGPtRYLiLqHb9w7AMB4lMBznnCJW8wDmoz9t
	CDUvJ/RlSRk9vQCpQo+QJdL0vC+lUHY/zZaP4hQ8AnNOojSdxnH9CUTo8uX5nWjkMI+PfDA/DGn
	cGChb5HE6uR7l0sLzIGD7zyjBXgsdSQzgBMrTu17e61HyjtX4pXcE0QbebNS5O4MAD71uPHkJlk
	F/YmSkBnsymdKmtlAgAQvXnLlY59y7Qhot83n/aaw5fzLFx3k7mJ5+21W8ExGTmptzKlGd
X-Received: by 2002:a05:7300:dc91:b0:2bd:b325:8d91 with SMTP id 5a478bee46e88-2be4e0ac410mr4697894eec.29.1773102050467;
        Mon, 09 Mar 2026 17:20:50 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:1b3:a802:e566:5060:45a8:d0c9:5e8d])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2be4f82b1d3sm11214357eec.11.2026.03.09.17.20.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 17:20:50 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: linux@roeck-us.net
Cc: wim@linux-watchdog.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-watchdog@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	heiko@sntech.de,
	Fabio Estevam <festevam@nabladev.com>
Subject: [PATCH v2] dt-bindings: watchdog: rockchip: Add RV1103B compatible
Date: Mon,  9 Mar 2026 21:20:40 -0300
Message-Id: <20260310002040.417424-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: AE99F242FC7
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273169-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action

From: Fabio Estevam <festevam@nabladev.com>

The RV1103B watchdog is compatible with the existing DesignWare Watchdog
binding. Add the rockchip,rv1103b-wdt compatible string.

Signed-off-by: Fabio Estevam <festevam@nabladev.com>
---
Changes since v1:
- Fixed a typo in the devicetree mailing list address.

 Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml b/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
index 609e98cdaaff..141c72909b15 100644
--- a/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
+++ b/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
@@ -33,6 +33,7 @@ properties:
               - rockchip,rk3568-wdt
               - rockchip,rk3576-wdt
               - rockchip,rk3588-wdt
+              - rockchip,rv1103b-wdt
               - rockchip,rv1108-wdt
               - rockchip,rv1126-wdt
           - const: snps,dw-wdt
-- 
2.34.1


