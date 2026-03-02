Return-Path: <devicetree+bounces-269776-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gMysEKfxpGlTwQUAu9opvQ
	(envelope-from <devicetree+bounces-269776-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 03:10:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F02C1D26C7
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 03:10:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 66A8030055C1
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 02:10:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52D59283FEA;
	Mon,  2 Mar 2026 02:10:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IUcopOE+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A382A283FDD
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 02:10:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772417441; cv=none; b=kq3BlSQvXw+cAoLB8WnV/JgFCJBJ+ZhgWK7+yMo60q9SKtnTVvZwGbRE0oKclfqVdAm8XZxwjZVecLEKwjUb/GU41AiM9SvHGKBOUxGUnwK2YNb9du0m5J4V99aHy7Kd3lfzuxl1R2v7Rw5mCTfND2htMPhtgiwaw4mWNJISdfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772417441; c=relaxed/simple;
	bh=ihWtm6BNeZIdHJPxSWdVbPBlhVDJEp9hB8t4Ho65JDw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Hw93FRcPAZ1alSRTqbXc/j6/d79RxOr3njr2rkzCwZo2chgiPofY6jyF1kilu46R3gIdUaPB8OIdoeQcuXBf9JTq3D2x7kcq95IXPw4DgunNiNP+Ru1RgR3WLAbsDxDFdm5xBNNlYqOkYMzhNZWmHVF39hzSuzTYhHeYS47Hsjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IUcopOE+; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-48374014a77so46538915e9.3
        for <devicetree@vger.kernel.org>; Sun, 01 Mar 2026 18:10:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772417437; x=1773022237; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5OSdZggynsJBsU/qtiL9Wji3B58q5QjoIHphGlxLwaA=;
        b=IUcopOE+vcKSMnNHLKvdGfkWX79ojAQ5PiVFtn9oL6FtYqyIel3DuXOG+NzgHfzWuK
         INDyRX2M+7vnvv0onKjLhHUrTmza8ZiyMjRpxmF+NZWrfvDNHokyrHB3PlBp1l1yhktZ
         bhVG2VoOcC7eyzM+RENm5/ePkuB/DE35hcEZ9LnyS792grzSFghwyVViuzHyNM78IMUj
         iNaFX5h14cp5Sw8i3/ndmz4z0jHtJNo/GcKiF4WWu0YQhIFRZdQwkMi3QZAWvi4edFXF
         r4cdd+DO29WN3mx06YzXmFBgmeeWO0+3KOXFTSUaNziscM0f2cLB0WsKT62nr7FtmWAo
         o4HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772417437; x=1773022237;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5OSdZggynsJBsU/qtiL9Wji3B58q5QjoIHphGlxLwaA=;
        b=kAEpsis4Rg3w2NhSZ/2jj7Sw5M+VNY3HxsM9I0N4R9OrTo3ZIJimbLnBUtBu/rUQ4c
         tli6zkZweRvYvRvoQBjn5BmV4eSj1sqo1PZdSLqk02TObTJcw2ONXhLbZEh1qXOFAsEx
         ijab8uPTlGFYZJyLKAbUwQP6oDFR2jXInP9lmlf/+qyGUF1XkEaIWGPbZ/edlgc4mRUh
         johhMWpY4D8h7QYXK82EcOgusS13Pdj1lx8mYj6ONYRLbsquQzRovpC0YyIj7vG8BR5s
         7FVD8WII3UeJTsMU/meg7ePGUwrcEnFCO17QHfClNYmCgKXmObL5dauDGJuDMPUGtXTr
         Xbqg==
X-Gm-Message-State: AOJu0YwwB18r2qMea07r6+wVsD4FtJrtag4eY0aCaNcPqpDhnxb0992Y
	WynMafiLQc1qrsTiw3VftS2r+mBeulnJ4n2eHDIhTs55HR1OLQ2CZuiteCHScACA5MA=
X-Gm-Gg: ATEYQzwmAIeD2t/sBbnKK4iOK7uNcA78hW3v92PDT0qf2gvQDkfZZxt0mExxrrtDLMq
	0HwAg6KVIn+23CVSLFUVvXODekQLuIZXLn+4xTnNNPzIbo7zfmvsEl4z3MorzFXfNFQkmX7KQSa
	b2P7wObzSyTXC5CpY7ptn3nap0Rea8LQpSlkKNH8BO4P8DgLjpxIPCCS5Tl+mNWMUwsdH0g745m
	yzLgsKvuhs1872cSLZY852hNtGiYP56drs9HGJshK/rwi0Gl4OjZFwQvqEgUiW3PBvYv4Lnsz0B
	A7wNGP0xSVVukXIczNIOuHcLvkdK6JD5uydD0T8Kvlmwir5QUfAEnBRYQQEgB9FCKFpP6iOlHlw
	u5Hq7jl9xkOQtCpD2JbNID+DKKOHhWtxGHQOXxcVpzH6znsL4SFfmk5kb4pe5HAUQI8czkZoxho
	Dva2j2XsxT43u2ichQAhqw
X-Received: by 2002:a05:600c:c490:b0:480:20f1:7abd with SMTP id 5b1f17b1804b1-483c9c204b0mr180073705e9.31.1772417436800;
        Sun, 01 Mar 2026 18:10:36 -0800 (PST)
Received: from arch.localdomain ([2409:8a28:a55:9af1::1002])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bfcb9b97sm194451105e9.7.2026.03.01.18.10.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Mar 2026 18:10:36 -0800 (PST)
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
	andre.przywara@arm.com,
	Jun Yan <jerrysteve1101@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v3 2/3] dt-bindings: arm: sunxi: Add TaiqiCat (TQC) A01
Date: Mon,  2 Mar 2026 10:09:55 +0800
Message-ID: <20260302020956.96424-3-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260302020956.96424-1-jerrysteve1101@gmail.com>
References: <20260302020956.96424-1-jerrysteve1101@gmail.com>
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
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,sholland.org,arm.com,oss.qualcomm.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-269776-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,archive.org:url,uqsoft.com:url,qualcomm.com:email]
X-Rspamd-Queue-Id: 3F02C1D26C7
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
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
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


