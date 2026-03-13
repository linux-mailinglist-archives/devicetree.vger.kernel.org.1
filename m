Return-Path: <devicetree+bounces-275226-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WBaMD3UNtGk2ggAAu9opvQ
	(envelope-from <devicetree+bounces-275226-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 14:13:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id ACA1F283876
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 14:13:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CC7BB30805E1
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:11:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD0BD316197;
	Fri, 13 Mar 2026 13:11:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UePi9oJg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f180.google.com (mail-dy1-f180.google.com [74.125.82.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABB482FFDCB
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 13:11:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773407477; cv=none; b=GBQSytKTYu3nNnVZON/NU55X2bTV5RKe5HXQAnwwRNW5ccMI+MvUYzuActO+abg1oHdp3MBRpET/uvIEwJCepqx+FYrItS6gZKgXoIVAwQSIl5egC9h2k5cJelqvFw+bLFG9JPV9kgr3iDmnbzzjx6D2GqPW7l8+8iumnG9JC2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773407477; c=relaxed/simple;
	bh=/Inis4wbExgapR0UhmZjbMPpwSAMA5E9QAk2s3b5zkU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=kc6Z5y62XcEYaJA/XPHtNJp8x+1r3bg2O09R048nAMTBIGI1Jlb3AuvEOU5msTPE45ejx5nSPIzTC+kNSn9bxTuxhVZD/Cofk+Ar00dcuBGWIdxZEORc1N7tMPstgfTSqh4ol0nUsBzwT9oGF7TYybfmo8YjAjZ1Eg1QMnqPcPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UePi9oJg; arc=none smtp.client-ip=74.125.82.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f180.google.com with SMTP id 5a478bee46e88-2bdfc4b191fso2490763eec.1
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 06:11:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773407476; x=1774012276; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=eS5sv0UBOGHpIO5uY3YOxKqzDuk8BU/Ch3wu8qyg9oY=;
        b=UePi9oJgq7PSYNdq53q6oe2YOh5M6IARt0uCskjBsb/jyGOmyWK8rS79JXx6ESln5A
         dgpoy1yCgy82OugKbiw9YKYvuzIds439MYPGdPX+Nk+ucb5AmEPa1+lbispvaSNlOBuo
         9qf9e6NSf5v1b5J9ai9u36O4yNlw5mQFpgTKlAq5CM6rpCkIeujVTmsm8mFEM0galqep
         E2iptP6yk4tESPuUwoObbJn9rlosluyAVGQ4k8q4g2KgDhcWrTOZLL+AAHdpVeo/Rneh
         nRaWEduiYADYu15ir3cXla3TPvQj8i75PYHLLheq+BAXRysVuSU5jcfZUcbQ13Tvrm8w
         sASQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773407476; x=1774012276;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eS5sv0UBOGHpIO5uY3YOxKqzDuk8BU/Ch3wu8qyg9oY=;
        b=OqNEa6PAuyIXcY3QdvebSIq7mbLNjE7zed8DCiWWiyaRni8D8XBCDtbQ0+IrfcA4Go
         RqSp8WdDgv/g5pRTYmTqLC7xAtf7G+6VbZaY9F1VoDk0kkzVTvgKkQEvqHTiusrL3vkA
         eflAW3SCF8QQmnzVVbcMkXrcsVcfGw88DhR6PWp9bDD+/yXn1ftI/NKJemobcZeoePnw
         Og/EXARoIVfMQDICnvdgQzZr50dkJDW/RhefMTt8BXOxdLKH23Y+5a8Ar2jrUAf5WFPD
         sfOnrFRbggPcVOYCrtIAkmr1gZ5GZJmUrhSSnxyC+3EGHpM8qx2DHCyaJUJa8+Eg9Cu5
         7Zpw==
X-Forwarded-Encrypted: i=1; AJvYcCVwCzYdkWAFdUJnAaRF+nYcvS5E/BSNFgcLt3tb5MBB2yMPbDX5FR3qbeUB0IqH8ZMrJffvCvCp7RnZ@vger.kernel.org
X-Gm-Message-State: AOJu0YzYqKlRVSk2HEvuV0ZmDINsVPJSTg40RiLLO6B+iyrVRmMomQ7x
	gpT6aEpfbHSmyALqXBsZTCSycIWs6a7sJpGoWhd3Lky0TZHz5cClSYOC
X-Gm-Gg: ATEYQzwVs57UPiDF4ODubDJJ+jd/P7E0aQ9y/i/TffotPvpWHWBNlpJsgPSklA2v0Z5
	n72jDoaJxMXqU9I9n2+gjW4WfMe2H7x+Ise2P98ZmLfjFPNdIu7t4VP+epYstG9WZZFdSpoJTnb
	1bDNjUyrRfQLu6ZmXDOamNoupzbnwRnNZmlPxP4B9+DP5DrOoJnG0L6He0w7J5JxJ9yA1b7Hcyc
	xgjZBRadL1YAuEbPp8U3IbWBnexcBvIIffYSUynvVJGwWIdeYiUdS/vtWvvLPbphkWUBrUgUtJ6
	74W3X70JBXuyZQg5pfcmJPr1fFKHS4LgPZamgNaRxAaaDTMiVQPu2QufJBlXDyv3npQBQVMAhDt
	9pgYOGegy0LmD//TXLt5/Q0tKshI5VjEfhnYLNRAsjkFDQ/UkeAnNiGBn4m6eeX/cS0YfEWVwGG
	tx0HgVlRNFQxANI1Gz7D3Hfz68q7eqpJAEhKCEL//3d2UY5FGLmEqEfbJj7hejQPDd57S8U3E6m
	eE6
X-Received: by 2002:a05:693c:6286:b0:2be:b2cf:cd34 with SMTP id 5a478bee46e88-2beb2cfda25mr328638eec.18.1773407475406;
        Fri, 13 Mar 2026 06:11:15 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:1b3:a803:148f:b6b5:4:db6e:9a2c])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2beab5702e5sm2602315eec.29.2026.03.13.06.11.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 06:11:13 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	shawn.lin@rock-chips.com,
	Fabio Estevam <festevam@nabladev.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v7 1/4] dt-bindings: soc: rockchip: grf: Add RV1103B compatibles
Date: Fri, 13 Mar 2026 10:10:55 -0300
Message-ID: <20260313131058.708361-1-festevam@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
	TAGGED_FROM(0.00)[bounces-275226-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nabladev.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email]
X-Rspamd-Queue-Id: ACA1F283876
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Fabio Estevam <festevam@nabladev.com>

Add the PMU GRF and IOC compatible strings for the RV1103B SoC.

Signed-off-by: Fabio Estevam <festevam@nabladev.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
Changes since v6:
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
2.43.0


