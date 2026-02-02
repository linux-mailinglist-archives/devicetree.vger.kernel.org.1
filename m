Return-Path: <devicetree+bounces-261868-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qIhDE3XAgGl3AgMAu9opvQ
	(envelope-from <devicetree+bounces-261868-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 16:19:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EB82CE172
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 16:19:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 22CE7300F1CF
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 15:04:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C46D337649B;
	Mon,  2 Feb 2026 15:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dH0ucw/7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D1CC36B05C
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 15:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770044694; cv=none; b=HG37Zz7ykvtETl6Jzx3BhTHzgjKzPQ4nzmFaVBW5VB1Kh4blZJW5MKwZqmbHwewZahd72SFd1Smo1Mfzbaxyralz9rSiWe7o8HYFNqx0uXQZw0V8nPEYZ9X9KBRh+oBj+ChoWAI+1VqOGOieWahmDgCyPvz0S3xNIc8WLNpVOFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770044694; c=relaxed/simple;
	bh=1y7D4onWg7vd2ciVcf6lJP8qnMRRLJefrY2kuptvTiw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=adhRyxdDmjULeIVhmSur5uqet6d6VGmvQJvbckiy5MyBwvnHciniht59A1Fmu4riFb/e8VgIlx5ipRg7NJihS7WbDUp8x9JyMKkge9Wtylw/Xmu/STVkEE4iqRch/ofYRTxxLaRCHeQFFH3bVq/O2nxmgMJ9O8UDufYGeKX0ysk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dH0ucw/7; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-82318702afbso3815684b3a.1
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 07:04:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770044693; x=1770649493; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7LWELuTIWWRa0xPEQkmivdJUD1uoiNrgwtqfeTq/8BA=;
        b=dH0ucw/7+vOlzxCFKEPgSmqreVmrTb/aTteGRKwG7eCVqNwsCRs8lJUFYIjSFWHFtO
         Vb72eE8f25DjQKSUcfvmZjRPrI/ON2JY9WnGz872meBlsACJC9p6QmX/TXU7KYPSIxv5
         0q6gOcEeLQ27VHqAhXuUTlH8elWKciMfksq47Yk4wQSffQE9f5qCpKej4px5WZQQL5UK
         sp9AeaRQqKjPEQBKFZ7lynVErwODLsVqX6/PkWz0PLHG4Erp04q0yQ1BKpzJmtxuI3Dz
         p4bLDhNdx9bytGxjbuN9UVUVMhcfcFiNFCGnFok+jvdAL50VrUs3yDudHJSoGR6di12b
         CknA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770044693; x=1770649493;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=7LWELuTIWWRa0xPEQkmivdJUD1uoiNrgwtqfeTq/8BA=;
        b=LQw8ICRpsxjB4cxVtOh0epwlt2ZEUm2ZAEMCiC4gicMtlvmdSA4AEhRmfJcJw5Irwh
         gO++xTNUnp2UV5HrN65ilIPJW9JzhxclBcJa+/mA2+GiBPZjebi8eiCkIY6Ca8+fXetZ
         4Ovks7CbcMVpVw9HIBCq1jaFQ9pJdiRd1lg8wcvdAR7xmVWUIr7e3tCqGbv4suvCnGNb
         CEppRMruYLmuXcW8ZJPrRqxpYiWSvivN3AwivC1CpoODaZcM4aqcWgzQaDs+/i97j1BF
         DOdHL4qSyE7wj7e/9/28fwvRwFIbZXLcoqV8z39ZKYRP+Zc1ESqwwJzleWtWfDooHIS1
         gqWQ==
X-Gm-Message-State: AOJu0YxQSwAgjxnHlobCQacA3d1Le6XfBv9XCRmbTtmjhd5amrKCmdep
	SE5VmrsbKLnoqZ0huP4IrJzpAvNTFnDD4f6gAJo0TYNquWWmA9Khd1yP+8CUDFXp
X-Gm-Gg: AZuq6aLH/Vf9bYXiVfgzVuXKapBwrEsm4LWSQz/By/4jcbDmKfiNmPZAPQRmqJnh8Ko
	zPDTG0rYfnhwhpwcFCfz4XNFcFzIu4UdVUPt6VwqUyCq/i8GUW7AjxYKxsgs5LDiqlnWFm4tp8f
	7hqg5haHvsRvgh28C9LfOl2C+BVLhDl9R3chYPRk1zLckdVM/0fh4bamxSKforbb8036Cwmb8m7
	+SM9DdKSVcQ+11OoB4VQ8HdcF1rBfN3TNAQ7WwD4kxvCebe43+QOymtDy9/JH/Zx+1N1iVThelw
	ikaCsg01uXnzfynRhNnKn82XxVan5d23ZdVyH0NSAweuzc+RQZBWNCiI90RkfqP7DS5XOJqS+yK
	KCo28pZhAjyFr84QvFWLFU7dJwfdOkU+sGovtMYqcqi6U7d3aUt4CeQh07GCb6AGh+ejudrep2x
	4mVTfgCDJK
X-Received: by 2002:a05:6a00:1482:b0:823:1580:7914 with SMTP id d2e1a72fcca58-823ab72f0c3mr10277504b3a.50.1770044692582;
        Mon, 02 Feb 2026 07:04:52 -0800 (PST)
Received: from arch.localdomain ([2409:8a28:a52:d2b1::1004])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82379c21112sm15948480b3a.54.2026.02.02.07.04.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 07:04:52 -0800 (PST)
From: Jun Yan <jerrysteve1101@gmail.com>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	alchark@gmail.com,
	dsimic@manjaro.org,
	andyshrk@163.com,
	Jun Yan <jerrysteve1101@gmail.com>
Subject: [PATCH v3 2/3] dt-bindings: arm: rockchip: Add OneThing Edge Cube series
Date: Mon,  2 Feb 2026 23:04:02 +0800
Message-ID: <20260202150437.270567-3-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260202150437.270567-1-jerrysteve1101@gmail.com>
References: <20260202150437.270567-1-jerrysteve1101@gmail.com>
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
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,sntech.de,gmail.com,manjaro.org,163.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261868-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 6EB82CE172
X-Rspamd-Action: no action

Add devicetree binding for the OneThing OEC and OEC-turbo

The OneThing Edge Cube (OEC) series features the RK3566 SoC, 8GB
eMMC storage, and supports one SATA interface, one Gigabit Ethernet
port, and one USB 3.0 port.
Among the lineup, the standard OEC model comes with 2GB of RAM, while
the OEC-turbo features 4GB of RAM; The rest of the specifications are
identical.

The OneThing Edge Cube series (shipping with the vendor firmware) is
originally designed as a PCDN (P2P Content Delivery Network) device.

Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index ae77ded9fe47..5cbc3bd31676 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -813,6 +813,12 @@ properties:
           - const: openailab,eaidk-610
           - const: rockchip,rk3399
 
+      - description: OneThing Edge Cube series
+        items:
+          - const: onething,oec-turbo
+          - const: onething,oec
+          - const: rockchip,rk3566
+
       - description: Xunlong Orange Pi RK3399 board
         items:
           - const: xunlong,rk3399-orangepi
-- 
2.52.0


