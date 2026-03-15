Return-Path: <devicetree+bounces-275842-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2DLpOI8at2lGMgEAu9opvQ
	(envelope-from <devicetree+bounces-275842-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 15 Mar 2026 21:46:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FF0F2926E3
	for <lists+devicetree@lfdr.de>; Sun, 15 Mar 2026 21:46:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3FCAC3064E86
	for <lists+devicetree@lfdr.de>; Sun, 15 Mar 2026 20:45:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5BC637C0E1;
	Sun, 15 Mar 2026 20:45:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Vy8WKNlL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8542837C0F5
	for <devicetree@vger.kernel.org>; Sun, 15 Mar 2026 20:45:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773607512; cv=none; b=fzH5uU+br6yfMrov4QSqyGQjPKdWSVLvJadQ1vqUf78TF02wduICP5thHpjQivR0Jx0p7IOgFGP239toIReItIdy3jFtcH8b5HObK66lxuPkl9DA3T33kh9PqbJFGzNVOalNcVpXjKKDpGROjowGq0F3TmkvGRoOmT1EOuvaZIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773607512; c=relaxed/simple;
	bh=i6Ts41fXLRb5swardCZUkTCJ3f2AD6uWbw7o0btGsW8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=CokCTsAe+K+tA/9qSfFN6F3TI4pXuf5/iDa+31a+V+kdBBUwfyHBFVEypXNUh/+hQ9g/92Cz341uVWrI0SUiIKIKEdOQYMR3knvQ9nOrM8oTQQi+A/n/3AMPZ2Rvs6AyffIx6JEk58/1/rvZPdn4X9M01rA+BrG1d39k1TQgmOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Vy8WKNlL; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-48557c8ad47so20379725e9.0
        for <devicetree@vger.kernel.org>; Sun, 15 Mar 2026 13:45:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773607510; x=1774212310; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=98rPC4PTu7tCmBtkzzBMDz6PWd5qa76zGSirl2GTGes=;
        b=Vy8WKNlLTLqR/g/wB4o6G9mzeTCLHrEhf2/eM0BgizBIQZakxr6t5fTjyvtcidTIJf
         RuLbfvubzx4MjHZZ7bNviW+VIVR8PCasXMC+5uAOpyqMlrzWHR3qGvQD/gfn8FzzPZeY
         IQrGIRlksX3I9J0om5YWTWnQpPRdmbRxk/ZmZ1znK4juMIniTqvyHEtiu6XtFaRIRSKy
         GYsbAF+6dwWvCFStMU25lO2XA/D2MAH5SxIZArqFrTwyWU9w1zUK/P/nnbaNlIwvKzk8
         lQZnZcT0AesXZL57WRFDBG/1X/3kfjiBduONRrI86JdLNWX/kPMQpsQj0fJ2+aI/95uD
         uUAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773607510; x=1774212310;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=98rPC4PTu7tCmBtkzzBMDz6PWd5qa76zGSirl2GTGes=;
        b=mh/0Qkm0KcOlIGFy3BgotCNwRQqZTQm2/dkYBwUMBhqxC8Z2LSGacvAfbUAWBaKwyd
         adWyYl3zPdSNKUuYa2IPYp7VCB4TBh6DaqrMlD0om0X5MZu0kVuuK0eeCQhSqKKl+ddh
         1g5/+j8cblp0QKtYAA8sYuqpsYAt5JnMS6quU64zKY5MHtWcDbcJcwqmfK5jTKyr4uDB
         8HTs2N5BM696H0LwZgyA57YlW2Z3E6yis/vJxWWGSRoBONR6iNTVfRoBePYhx3HBvwbM
         ixsJgYq8UON8oJhtaCUTK5EowFZjNyKutiBEjyP+l1jZLXLjGhCVg4VqaiPBmvTZ2W/9
         t+cw==
X-Forwarded-Encrypted: i=1; AJvYcCUl8OBvsDHynmO7LLZS/oKg1y0LbUSQ95LGtnndveNOhaPH8diofPa9iGLS6EC0wJkgRrPcViDaVCjc@vger.kernel.org
X-Gm-Message-State: AOJu0YzigdlL1N62Rx+Rk9p0CG1AT6VNFrO2teOZiTUmLw8Sg8k4Xncf
	MiPL19yWiPldF47J06C4dMfLsDokGZgD2YvodXuRhtGbYlqu99ORZzuH
X-Gm-Gg: ATEYQzxbXSqD296qAoVO6Efds1QLI8Zhc2Cv/EgaDqiw876mtFGll3BU2V017K2K2zZ
	yz8961xEBhClASecl+3mjiNcNRMgeVveY3uikxcGjtp+jbWzC89AhgPk0HF6dablj7U5ZCsmbeT
	yy+dYGxlxbJCCA9NfS1yYO+FVzYdVeZYzvO5kJZpLvDLpZCwebBIKyI/xQHR0zyutNnsRCDDJCn
	8657vYKdrSmQbQGytgvzIMpZfCUE3WJ8Huzid0/ptdRUj5x/BTyqSaEhdhNOxt6ThaUqNAmzgs1
	KDGb68UoLKHdePaguSqcqZfbFSQcLaB5Y838Jpsras5ARe7voWqd5bhyagtspv2F/geMQFAnDmO
	2EXVly+lwct2nX94FxhMBEvWZbQ22fMLNVebI4LCtfKzRFnDKZVbt9qejXJdTMiHJlaXCcB9vHW
	eI7ZjUu1v5b/8bxZm7OZ7ZsX8=
X-Received: by 2002:a05:600c:8b2c:b0:485:4bd1:4c7e with SMTP id 5b1f17b1804b1-485567148e8mr179710125e9.33.1773607509651;
        Sun, 15 Mar 2026 13:45:09 -0700 (PDT)
Received: from nas.local ([2001:912:1ac0:1e00:c662:37ff:fe09:93df])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-485563f8c23sm132043885e9.1.2026.03.15.13.45.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Mar 2026 13:45:08 -0700 (PDT)
From: Damien Dejean <dam.dejean@gmail.com>
To: andrew@lunn.ch,
	krzk+dt@kernel.org,
	robh@kernel.org,
	kuba@kernel.org,
	maxime.chevallier@bootlin.com,
	pabeni@redhat.com
Cc: netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	edumazet@google.com,
	davem@davemloft.net,
	hkallweit1@gmail.com,
	Damien Dejean <dam.dejean@gmail.com>
Subject: [PATCH net-next v8 1/4] dt-bindings: net: ethernet-phy: add property enet-phy-pair-order
Date: Sun, 15 Mar 2026 21:44:51 +0100
Message-ID: <20260315204454.124544-2-dam.dejean@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260315204454.124544-1-dam.dejean@gmail.com>
References: <20260315204454.124544-1-dam.dejean@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[vger.kernel.org,google.com,davemloft.net,gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275842-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[damdejean@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 5FF0F2926E3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add property enet-phy-pair-order to the device tree bindings to define
the pair order of the PHY. To simplify PCB design some manufacturers
allow to wire the pairs in a reverse order, and change the order in
software.

The property can be set to 0 to force the normal pair order (ABCD), or 1
to force the reverse pair order (DCBA).

Signed-off-by: Damien Dejean <dam.dejean@gmail.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
---
 Documentation/devicetree/bindings/net/ethernet-phy.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/ethernet-phy.yaml b/Documentation/devicetree/bindings/net/ethernet-phy.yaml
index 58634fee9fc4..4a27547f7d7a 100644
--- a/Documentation/devicetree/bindings/net/ethernet-phy.yaml
+++ b/Documentation/devicetree/bindings/net/ethernet-phy.yaml
@@ -126,6 +126,12 @@ properties:
       e.g. wrong bootstrap configuration caused by issues in PCB
       layout design.
 
+  enet-phy-pair-order:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [0, 1]
+    description:
+      For normal (0) or reverse (1) order of the pairs (ABCD -> DCBA).
+
   eee-broken-100tx:
     $ref: /schemas/types.yaml#/definitions/flag
     description:
-- 
2.47.3


