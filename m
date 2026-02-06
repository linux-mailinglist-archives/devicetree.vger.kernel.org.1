Return-Path: <devicetree+bounces-263480-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kJMVF1ovhmkTKQQAu9opvQ
	(envelope-from <devicetree+bounces-263480-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 19:13:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 05905101AB7
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 19:13:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1EAA43019814
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 18:13:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EC24426D36;
	Fri,  6 Feb 2026 18:13:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="S1TyTumD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f173.google.com (mail-dy1-f173.google.com [74.125.82.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A960425CFF
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 18:13:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770401620; cv=none; b=M6y8de12SG4t5HcT9B4faXYBfTywckROYcin7iWY05mu4gAl7F+fMPHekR7P9RLcHFFlKbrZlylpsxaZvoVQ2eWg7cbothY31S4qP3FYtqlFOny3fEwc8gYi5UqB+acJLx5rCRahRYKqcK+t5iMCIVOEIx04rboUA3Hjr1S/bGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770401620; c=relaxed/simple;
	bh=NzDFBFbCVGzKBFvJlT5stD8040LteH5XcM9Cm8vtdFM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=MMJb+Z5ki2aKoe4cDRsv2WJHqD+SZwJxAj3q8BhAo7d/ihRi2Tv4smsQ7fGeXKPTzqAIKHXy5A/vWfg/nSvzjRXMxMY3aucGqEwF6aTk4cHecq8r2zP/fVAHcr81G7cNB77Z7CRnzReBx5YL7uubKOYlnjDf5QsstlxQCZq/BJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=S1TyTumD; arc=none smtp.client-ip=74.125.82.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f173.google.com with SMTP id 5a478bee46e88-2b7070acfdcso984573eec.0
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 10:13:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770401620; x=1771006420; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Plp3Yk6cNKttphBRZ6WkXav3acKM+/WvJHxDeTend20=;
        b=S1TyTumDHl1nOU4mx0i4839gl1yw72r5z/RVmQlUVzVOItSS4k1DLb80HNxUddph+T
         gs2X75eiUOkBEAKUtlWoB+vtOjTicmXiyYd9D1Kt2F6ixMbVUgeetonNSc+O6HUbRG1u
         qglyg2BxV3dRJg7ZZ+qmmwBHH+aoS7CnW7MFXPM02rRWq/n+WvlafmudP4+oEckxyO+K
         tSirB/BrOyt00HCWDPqlP454LDQ0CQjInoZMMO5dm085X4dQ80t3JiI96Iq2UrI4AIjN
         iETBMmp4/yFl1aWQYuBvbSUIJNgH2Mh6L/HUT2fplpbD4DRU981nmBiBzQ/hQqViCzwv
         vA3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770401620; x=1771006420;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Plp3Yk6cNKttphBRZ6WkXav3acKM+/WvJHxDeTend20=;
        b=w+Qm6rpQtgdMlvcsETw/CEv7SyU3ga12hB7tgAdfoC7ef00n5L6oKL33ZyqoQz6Ulq
         1mnCDwzS77ghGzcTPNd7qm+jZTMiy2ZtpGjOC7t35iWKYOFOQEGUY4zzU4pKRazkfRnj
         S6mtEDi955VpZw9PiCuvnwxP0KxBsMpmhbatJCB0TWWYJBzwibVlcEV4oRvWDf83ojJa
         TWTdFVyS6UrxkYRcWGJdYzGP3k9YWMMRo5phVoUE2p9RSw9LQ1fRc0Wnxb/LY76/aeyp
         EICaY/SRXzVjUcibDXBNB441byEUfif7sGJmzOMQpUh/m0Jywu3+sH1M6Ea9I8QadVsy
         9+WA==
X-Forwarded-Encrypted: i=1; AJvYcCXbqulsGDe335OhG1ZVisWD3XKEUJQ+83QbheetWCkUkmEaZph95PjsPLtc5vZlerQfUFAn/iuJ3DcB@vger.kernel.org
X-Gm-Message-State: AOJu0YwkqG2iPFkp3vaoUcHAAX335aKT436DDv6XFl71aViRO84+Ahvi
	k/yjpzDDAq6YRz/dQxbbzPPHD73n+7tXaK4NKGf5Tyaa4cNFqHp4zazv
X-Gm-Gg: AZuq6aKW0YIhdClulyZhAmJmoTFPD7uKUafU4lT8RHr4czqMO0ZO8wl9PMu0tYtv+wD
	QZW6vxaPAtUsB2jycFTCQYusWuhmjfpzK7okp0YVuPGZGOXzrQmORouFbKWR6CNSHf0ZK2k2EH+
	L/At8z97SxG6ywNylFRMnXx5VSWo8PXB11TW4TQ+JGf3AdK4MGSsrwzZGDX3N3CzdYNKDL/Z2cG
	Z7fv4IA1p/fXx9FPa9wUmhQ9K5FJKDRDZKgsxhU0XKMV9L1s7ewsku7UKj/GrKZOo7JExgVfUoC
	Cy4IlZL0miLJ+tZFgF34ac9M4OVOlCIuEKU9XKR6DvYq+932hRnvWnV2klujKTNDQY13r0a0LCi
	zVJwA919p9wkaAJ++PNu8UHDeoLY0TvNNKCVHd0wDQgTvJ+6aXnZvZ+WFCfx/6n9nTfikBXG/4O
	2AMWhrTNVhkHE7O+4z/yIbIJga
X-Received: by 2002:a05:7301:19a5:b0:2b7:24ad:5c54 with SMTP id 5a478bee46e88-2b85644ec11mr1930047eec.9.1770401619551;
        Fri, 06 Feb 2026 10:13:39 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:44a3:2bb7:a035:fd7e])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1270433ab31sm2782500c88.11.2026.02.06.10.13.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Feb 2026 10:13:39 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Fabio Estevam <festevam@nabladev.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	linux-mmc@vger.kernel.org
Subject: [PATCH 06/11] dt-bindings: mmc: rockchip-dw-mshc: Add compatible string for R1103B
Date: Fri,  6 Feb 2026 15:13:04 -0300
Message-Id: <20260206181309.2696095-7-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260206181309.2696095-1-festevam@gmail.com>
References: <20260206181309.2696095-1-festevam@gmail.com>
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
	TAGGED_FROM(0.00)[bounces-263480-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linaro.org:email,nabladev.com:email]
X-Rspamd-Queue-Id: 05905101AB7
X-Rspamd-Action: no action

From: Fabio Estevam <festevam@nabladev.com>

The dw-mshc controller in the RV1103B is compatible to the one first found
in the RK3288 SoC, so add the RV1103B to the variant list.

Cc: Ulf Hansson <ulf.hansson@linaro.org>
Cc: linux-mmc@vger.kernel.org
Signed-off-by: Fabio Estevam <festevam@nabladev.com>
---
 Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
index acb9fb9a92cd..a75209bd2710 100644
--- a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
+++ b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
@@ -43,6 +43,7 @@ properties:
               - rockchip,rk3562-dw-mshc
               - rockchip,rk3568-dw-mshc
               - rockchip,rk3588-dw-mshc
+              - rockchip,rv1103b-dw-mshc
               - rockchip,rv1108-dw-mshc
               - rockchip,rv1126-dw-mshc
           - const: rockchip,rk3288-dw-mshc
-- 
2.34.1


