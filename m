Return-Path: <devicetree+bounces-269350-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eJ32G4DAoWnPwAQAu9opvQ
	(envelope-from <devicetree+bounces-269350-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 17:04:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 28E701BA7DC
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 17:04:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CD78A3028C19
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 15:58:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6C5F449EBE;
	Fri, 27 Feb 2026 15:58:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ep0PQzGy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f179.google.com (mail-dy1-f179.google.com [74.125.82.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72D9F449ED1
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 15:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772207897; cv=none; b=lD3BEkwXLL7x9K6PhcHXvFKsh9EOAjgvRY52u6Usv6kk/xNagz0HQzBcH1V96GTqO4a7ytVOzu5dry24TH5Ro9EMDtkLN88FxZ58aI4RLLV+9Yci2/DBtPD9xJ8eyHICus/Axrbs0GLsqGOfIizQKUEwuIJ3C1nTbcgPb9wB2A8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772207897; c=relaxed/simple;
	bh=ta+x7MJ/ORf6d+tFhvpve4wJW3ThsyU1IorpoNuyOrI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=aczbEbQMgFk7zaK3ifXQaqZk1m8tRotB+jrhGcES7cehR38Hf+dTGunilBdtxpJgPjzIafKminHZ/MVcCY97YsfBtpA3bG5us+VVkr0Yu6r2tbvRsXu6AAVHcVZ0OWa0jPNeuUnSihC34pioMHcVBew4VFgBvf8Alg4bZDScoY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ep0PQzGy; arc=none smtp.client-ip=74.125.82.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f179.google.com with SMTP id 5a478bee46e88-2bddf5091c0so2087804eec.1
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 07:58:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772207895; x=1772812695; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M7vc13IY7ZLjB19K/DPnMAGdw1kS+zbTwHhwRJW3V8k=;
        b=ep0PQzGybrN3063XPbuRt6bBmf1wt4t4Y+1rvnV+XXsGBCymU4cg6/ymRIlei3piYm
         1t5n/AibsgcUdQd3qVZi0+3HOxKXbP9sNFIGl5jY1Oraglwefn7ypVEts4xkuV4GCKDt
         DUU51dLsybW1okUh5g8vFIoPVimJnxSLVltak3PdohOT/A16eSRxVKse6hI3Q0Sd8jAA
         th6hkRziCUN5+YUaJl+Bnx78f4N9MupipgY1OyAg+69QLx2vYi1LPC1m4YhNqRQPovfp
         Yg9m3QY5axW4y+hIlSTZG2Sl/obVUWdLPud8OOYLdLVzWu7MHV2cVrVA8WutIWtiEeMk
         SGfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772207895; x=1772812695;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=M7vc13IY7ZLjB19K/DPnMAGdw1kS+zbTwHhwRJW3V8k=;
        b=vCFIudAw72xuxrsWOYbiWe2jeirPLFk9aFgDFpRh3PqOKmMV4QyZ08H0PwDI8S0sKm
         IwzHS6uUnn7sEjOY+gnwvwQASteZb4oKW9MJt1o6Wj8fpSJ1pwfhlNp4JFLV/NUWGSo+
         DBTB1EFc0ldTuCF6lvxJPWok8r+Ia2zPkiv1XUNyfTFTAhsV4n8C00GTEhHnv8h4IVPL
         1Zg7Kb/wqQbZtU/YGzmV8vtZ83X+dC+kWMNIKC4qqJVP5zLJKcEnayoCdHN68K1027M+
         ++CjZ8Y1SsG9oz1nbfbBUMkATk+6BBoDl7QlYLMSVe2MWlSvEgs+PSKput+VwhajrxVM
         4Hhg==
X-Gm-Message-State: AOJu0Yy+mrjiWEwAmljSQx/PTV0H3uHFfacQ/hi2+qZnwJrBryeISEA9
	qAQC+XRMNsUtFj0m9iePDiVBK+CzkUwcYAR7l3v89FJF7hw8hkg+ZoWb3sLBO1xfkBs=
X-Gm-Gg: ATEYQzyFVCa2BynBFcOPHhK/rK4EdPzHVuQ6gsQhGFJ6Gy6qDACah4Sx8BcyvBeHgiZ
	Q3k39QQOCeGKdwoQyVM5nMUZOj1ge6FMDLa4ArsCA974DQWem9FFdOrVQqiS3624ZkR8p5+NQ6z
	35Dhg2hQxyndawcSP8WRgomFxc7UldNeTl7mQ52r3MqxrxgboZQpIoNb7RjJ7hH/MfhZaTJ0qza
	p2SsVnWw4NkNpPZC8avr69dOMy/uQvjjqmX6AZEkOjX4+51F9WO1zCDQRQ9NZqkKJFiqGn+TuUX
	n2nbg9B7Se1kNvcOFTG9i1orW6kEOmEMfspzkSFZU7TW6jqbRTQksru3b883vupewn05nlKGdj9
	/Ccuros10KSdaAVvsiug29mRbhvz8k94DWaEXWMzTHBJp9essUh8D+l5T3/CeBMf11U8o+da9vM
	ufc2qudVWjd3yE+DQvaWsMXD8ROalSNMZJYZAkPXROk/6fYHIaQbO3t/ikqgEVXw==
X-Received: by 2002:a05:7300:730f:b0:2b7:f7f:6ad with SMTP id 5a478bee46e88-2bde1e842f0mr1484815eec.26.1772207895222;
        Fri, 27 Feb 2026 07:58:15 -0800 (PST)
Received: from arch.localdomain ([149.34.251.245])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2bdd1cf0115sm3833508eec.8.2026.02.27.07.58.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 07:58:14 -0800 (PST)
From: Jun Yan <jerrysteve1101@gmail.com>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	wens@kernel.org,
	jernej.skrabec@gmail.com,
	samuel@sholland.org,
	mripard@kernel.org,
	Jun Yan <jerrysteve1101@gmail.com>
Subject: [PATCH v2 2/3] dt-bindings: arm: sunxi: Add TaiqiCat (TQC) A01
Date: Fri, 27 Feb 2026 23:57:59 +0800
Message-ID: <20260227155801.211376-3-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260227155801.211376-1-jerrysteve1101@gmail.com>
References: <20260227155801.211376-1-jerrysteve1101@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,sholland.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269350-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,ultrapower.com.cn:url,archive.org:url]
X-Rspamd-Queue-Id: 28E701BA7DC
X-Rspamd-Action: no action

TaiqiCat (TQC) A01 is a set-top box powered by an Allwinner H6 SoC,
equipped with an AXP305 PMIC, 1GB LPDDR3 RAM, 8GB eMMC, an AP6212
WiFi/BT combo module, one 100M Ethernet port, one USB 3.0 Type-A port,
one USB 2.0 Type-A port, one Micro USB port, HDMI, SPDIF, Micro-SD, and
infrared input.

It is a blockchain-based terminal product launched by UQSoft
(Beijing UQSoft Interactive Technology Co., Ltd.), a wholly-owned
subsidiary of Ultrapower. Its dedicated product homepage[1] was once
hosted on Ultrapower’s official website[2].

It should be noted that UQSoft's official website[3] is no longer
operational, and the company appears to have been discontinued.

[1] https://web.archive.org/web/20190409213228/https://tq.ultrapower.com.cn/product.html
[2] https://www.ultrapower.com.cn
[3] http://www.uqsoft.com

Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
---
 Documentation/devicetree/bindings/arm/sunxi.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
index 9e4627f97d7e..e6443c266fa1 100644
--- a/Documentation/devicetree/bindings/arm/sunxi.yaml
+++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
@@ -901,6 +901,11 @@ properties:
           - const: allwinner,sl631
           - const: allwinner,sun8i-v3
 
+      - description: TaiqiCat A01
+        items:
+          - const: ultrapower,taiqicat-a01
+          - const: allwinner,sun50i-h6
+
       - description: Tanix TX1
         items:
           - const: oranth,tanix-tx1
-- 
2.53.0


