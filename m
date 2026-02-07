Return-Path: <devicetree+bounces-263604-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id pspKAPI4h2kuVQQAu9opvQ
	(envelope-from <devicetree+bounces-263604-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 14:06:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 60C2A105EA7
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 14:06:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C55D63013A5B
	for <lists+devicetree@lfdr.de>; Sat,  7 Feb 2026 13:06:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BE4034104E;
	Sat,  7 Feb 2026 13:06:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FaWkzbfe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f47.google.com (mail-yx1-f47.google.com [74.125.224.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16D913112D2
	for <devicetree@vger.kernel.org>; Sat,  7 Feb 2026 13:06:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770469614; cv=none; b=Y6wwYVn3BK8IqXDwC5UCeUZ/FM5nHr1Kq7vHNrp+7SukRGCc2xCS9ymvH5Ia8SkA+V9W9SFnFdJHYigQdipOAAqZM8fDCRyzEe6y7oz2puOM2K1o3ii6YOwL2Kyt3lS9IxI66ZGNmr3ZfwCmEixMUyOM2OQYkPdGbIOIt8d16NA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770469614; c=relaxed/simple;
	bh=PDMpQY9A/q5YRj33nQAyJ5Dibhc3Aog/84i3/fXpMZI=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=JRn8YXni2efGTFzpw1I2S35yNdXfn15VOfnBlEMBn+sxYSjbfeJ2NxklKRzxPC3jAY3iqKpAdJGoaJf/jShjjRHF0i11FVSFlbBIL76euGIT+AuXWR0fFLBAyCwzclyhPMOJ95n9kTKsQ50ucF/UCyu3yPa9Q5tX2f/wMAZCgDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FaWkzbfe; arc=none smtp.client-ip=74.125.224.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f47.google.com with SMTP id 956f58d0204a3-64adabaafd6so137367d50.0
        for <devicetree@vger.kernel.org>; Sat, 07 Feb 2026 05:06:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770469613; x=1771074413; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=KExn54vGdemRSQc8V4xZY/OAPOefDjPGw+AdA0mcHiM=;
        b=FaWkzbfeH+ny5lBzdtL9sXKcQZXYbZA2lJuqaVhDPtfN3aPmVm1AhK0EFND4DMznrJ
         y3H20+r7cchdtN3+brp7wo0pgts7KBz8aRmPH65+OBd3a0MLHgCFJA9MGF5K1X9o9pag
         y/YaZo67Q8xFmk30+ilnDG1DHtlNUh0rUnJ95rqXs3JigpCI47ab/dOHIBk0jwbqdDah
         cFMEpRV/OOz9Qcj8zoqGvjFNbmgIDptdf914/X7BLVCbtVcgEJZs3Zb7oFZsFTkYWjnT
         N/gDd5La4tTya6Be/MjsLjJ8KBnZwT8dma8FEyvfoNFLHxNI6LIP06SuFjQ8KdE9zcU6
         I/yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770469613; x=1771074413;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KExn54vGdemRSQc8V4xZY/OAPOefDjPGw+AdA0mcHiM=;
        b=wyENKa1SfMdvWE3d3ylJAuZrHsWVL/fRwTgOknzVOtoPCwhB9uB6Kym8NMEly8SHR3
         Tmo+84el4YuX+1OLwC7PmIjG8lSs+RGUnat0Tq+zDMjgJbsGmOVOeniwsXnqjtY49Xr6
         Ico30vRleQj749JtD+mFXzIkhfHYyVVit+Y3Cwyso9MhEhRLfiyZuaD0f6phTL4V0cDV
         g/HRdTXshwRqnPsUv4RjRp+Hz1esAa1tOmQF2q3H7DBQjlcK4nY/2K9dMmP7GyJSJRWU
         l9SeC6oe+y8fYD8EDnqfrxcsAOYHwPG2qWd32/UVDpoIYEpJEL7GhCBlGJrFGNv53itU
         9ovw==
X-Forwarded-Encrypted: i=1; AJvYcCXD1VzEu9+ofVL8p9e15rEmlQL0K7nEQOu8vUkn0+l6PhxMktCYhoz1PG8jSWX4zd+sXf/sgvk4HAQQ@vger.kernel.org
X-Gm-Message-State: AOJu0YxO8y2CxvZa35ATmNkKA6JyDwrNDv96Wkx0WoPZYFC0cK1WYDhK
	HrtgSiT2Pdlf/MIbBzhw9Sc2p/pIie0PCiISZyiSiqjWv0HRWiOYL1pn
X-Gm-Gg: AZuq6aLKi/mTp2rf7ven6twQBlAAl/c7PfdrD0EYhL1/Vb4vLGk//AietRBNb1j8TSs
	xoB+mYPbUU8ZbEQz6R7yzkbC1jVgw/2nE/Tkvs0oZjvyHWFSX24N/0/u4dcDVRKQT3WqOWXyg4n
	+ZMvwpqxVOh+OnaYa0Om4tmJzcv9pOnkXnA0UGSAqSUaJumJncHP0UjUgNmjXeG4V54YYKKI1/R
	T5NoYYD0gRxjDl5De/Kxno/jxVCsA0NZQ1dA4qpaN84kpu2NZScnQbM+eqOu0/9RerYh8htUIcz
	2kANVo/UBRM0pN8blq2OV/EXupLV7hHJtEu6pVzzeQ3I6lAM4CuCq2dpjMQWEo5nfbqJv0u8pv2
	luiDSoYhXZWXeD/EPQDeh3I5Lg5RL/IkPiFsJf02n84b5qBlkLFWQZiFF7rtGU7cJDCE8DY26m8
	2lIe7vmMEp5mRmTf0Qxi5xDbT4
X-Received: by 2002:a05:690e:1686:b0:640:ddf5:254f with SMTP id 956f58d0204a3-649f2058f4fmr5743886d50.62.1770469612896;
        Sat, 07 Feb 2026 05:06:52 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:b1ab:5cb0:a2f8:764b])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-649f248c511sm4991572d50.8.2026.02.07.05.06.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Feb 2026 05:06:52 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: linusw@kernel.org
Cc: heiko@sntech.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	jonas@kwiboo.se,
	Fabio Estevam <festevam@nabladev.com>
Subject: [PATCH v2 1/2] dt-bindings: pinctrl: rockchip: Add RV1103B compatible
Date: Sat,  7 Feb 2026 10:06:41 -0300
Message-Id: <20260207130642.2833312-1-festevam@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263604-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-0.992];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,nabladev.com:email]
X-Rspamd-Queue-Id: 60C2A105EA7
X-Rspamd-Action: no action

From: Fabio Estevam <festevam@nabladev.com>

Document the compatible string for the RV1103B SoC.

Signed-off-by: Fabio Estevam <festevam@nabladev.com>
---
Changes since v1:
 - None
 
 Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
index 76e607281716..9b3cbeb54fed 100644
--- a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
@@ -50,6 +50,7 @@ properties:
       - rockchip,rk3568-pinctrl
       - rockchip,rk3576-pinctrl
       - rockchip,rk3588-pinctrl
+      - rockchip,rv1103b-pinctrl
       - rockchip,rv1108-pinctrl
       - rockchip,rv1126-pinctrl
 
-- 
2.34.1


