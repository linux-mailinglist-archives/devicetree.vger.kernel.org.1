Return-Path: <devicetree+bounces-271428-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mGOyOIJDqWkt3gAAu9opvQ
	(envelope-from <devicetree+bounces-271428-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 09:49:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AFBA20DB5F
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 09:49:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CD8AC301E99F
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 08:49:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57BC1375F8E;
	Thu,  5 Mar 2026 08:49:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FSyRyFH7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07A68375AA7
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 08:48:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772700539; cv=none; b=pt61dvtdORNP5cDhfPgOxWNa5fEq1hgpoYvj+wEgqc3Z0sm+M02pCo0GsBKKhQBztUj5fxXtkSHl4Ti/Gk5mdPuO6IvxCMW2DQe1EniBdewBBK3Z1AXRHmOUVIGF57rE8ZcrQSkc76zDD9lH6xondaSdG3clrG72DKK4khp7kx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772700539; c=relaxed/simple;
	bh=BQwOeLovHOxDnPpSwfAgfB5JdeVrD8wdheLxvZ4wUPw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=XAawI6VlSKcIPZJLu3f+9gnUmn/j+0gSxLx7MxYTR6IlubeqQHu+ia+KZ/9M3up++JTbHFG5l3Pt+JTX3JWasyVd/+FvAI+kcs47R+sXjaNDP1xJnPzB+MFR2ddWXzL53fnKWxfTusprU6t81tlrVl5oq00tLvjaaWlNahL+0D0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FSyRyFH7; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-2aaf43014d0so58373125ad.2
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 00:48:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772700537; x=1773305337; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=uLXMGyCvCYaOpNewWGAXwBi4Q3TPN5Jmwds2Ju3CvEs=;
        b=FSyRyFH7YLXwyESrGkg/4aSBVIT4ZmQBgULEg7F76hSPLP/sjddWKByzp6mK1gpMLu
         kEml4Mm/1hD4uSMkBto2RNYz9pLzSlYBahUTKV/PVmQDypun18y0uhnANO3VwQ96Y4hj
         WiT+AlOMIV1BcVDWLrcjC3J11QaVZONzOBx6Tfa/gUU21EJ2YeyBw71YOLX5182PiZZQ
         9HUi1YrBc0kTI+ItDlaqCBvnsKW6gVYB2x09b1XumrHYYoA5zrFBqEA5hwtA8iLV+G3w
         V4P9XrhivZeE9he2Tfd6PwuPX6YWASWUPm5ZsKHelUIoqQG+X8JTDs+mfCpV/+syk7HN
         tECg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772700537; x=1773305337;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uLXMGyCvCYaOpNewWGAXwBi4Q3TPN5Jmwds2Ju3CvEs=;
        b=Q7q4R4bBF0khkL/8CXnZVWw3e2Nc9kzpnod2dT0mGK/K4xheAGZPkMIMM9fXUCcTwJ
         4zttNbUAoCkAdWSRUqoxX8l05nSmj3bOlhDFfvX3HidMNkAVDKKunLICzYcPXyCW16Yg
         VOjY+Bb051bvXJx8Lhhq7zNW/7NKrwOXqo+qNLX5mjB/mYckvjDvgjuHYEMcIrf4lHgE
         YOzpBYIBpMaTrbts4Qqrakr4MnaQWeWRqapjj29X3j2IUGV55mwqrjK2VpBcwRRKsNhg
         EyS4S+1EhahTtseUdHZkLRhHZfuMyeBWKLVnIKpho6sAgk8KSk/UfzsdK8r9Uv9XwITt
         3hGg==
X-Gm-Message-State: AOJu0YyOZsbBcr/nz0O6l3TeiVJQfmzJA54jH9V+Vf1TU7taMdEhUSBB
	k3PPlfWNkh9xDswsqDc1qTX5UWPHdyIY5xHzbNivGmlvwt5AqkeNYcN/
X-Gm-Gg: ATEYQzzHRtHlr8jszEOVf4F6ssYeExw/3cRRUiazgfwvM3xRDETr8+pKR3RBIEFO0I9
	1P36n5pkMsmMebG1MfaZfn+9gOOdM+goar6YamMrA7PrH/xynVycWe49+/qlTj9VzKlR1ED/xYp
	JijXA462YcWVSVeRsgqJBp1sfXIs159AliFOP9YhdV394qUPo1bK9Xrt1y9Tcyme6Gs0IQNQgKS
	7Y3RMVyTynZ625McxmLsAMM1k/jBiNwNMpidxmpmXvC2kfnI+gYkAqnLcEsJ3uWTFUZNSBkW+aT
	3ZYNP/X6g/YTdj57T1qhLJVRONMgeZ6de97aH314JvMw28V05VNn2gG6MPeo1zGbwcMLB5Ox0OO
	E85qLZoJ7RvOL+cNdyaLL4LJ+qtb5XFTLQmwLHJCdZR/Z+XZSJsqoG9xD6zOYvMoG9Lyczv+J1v
	RaLRRvuTIt2CkWn0tsaKmkGmv8hkX+w6oOa2qZfICi6mHSsmR7Vi/ko9rWB4npqlfdxW+NauruR
	qhrVrUwYd+jj9bg+9AffA==
X-Received: by 2002:a17:902:d501:b0:2ab:230d:2da9 with SMTP id d9443c01a7336-2ae6ab28e3cmr48197565ad.48.1772700537028;
        Thu, 05 Mar 2026 00:48:57 -0800 (PST)
Received: from bu9-daniel.dhcpserver.bu9bmc.local (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2adfb69f277sm289309515ad.55.2026.03.05.00.48.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 00:48:56 -0800 (PST)
From: Daniel Hsu <d486250@gmail.com>
X-Google-Original-From: Daniel Hsu <Daniel-Hsu@quantatw.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	joel@jms.id.au,
	andrew@codeconstruct.com.au
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	Daniel Hsu <Daniel-Hsu@quantatw.com>
Subject: [PATCH] ARM: dts: aspeed: yosemite5: Add MP5998 power monitor
Date: Thu,  5 Mar 2026 16:46:50 +0800
Message-ID: <20260305084650.24511-1-Daniel-Hsu@quantatw.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 5AFBA20DB5F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-271428-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[d486250@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_PROHIBIT(0.00)[0.0.0.47:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,quantatw.com:mid,quantatw.com:email,0.0.0.46:email,0.0.0.45:email]
X-Rspamd-Action: no action

Add the MP5998 power monitor device on I2C bus with address 0x46
for the Yosemite5 platform.

This allows the hwmon driver to probe the device and expose the
power monitoring telemetry to userspace.

Signed-off-by: Daniel Hsu <Daniel-Hsu@quantatw.com>
---
 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
index 2486981f3d6b..6287f80d70d9 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
@@ -422,6 +422,11 @@ power-sensor@45 {
 		shunt-resistor = <1000>;
 	};
 
+	power-monitor@46 {
+		compatible = "mps,mp5998";
+		reg = <0x46>;
+	};
+
 	power-monitor@47 {
 		compatible = "ti,tps25990";
 		reg = <0x47>;
-- 
2.43.0


