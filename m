Return-Path: <devicetree+bounces-271694-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kLgYEhfRqWmYFgEAu9opvQ
	(envelope-from <devicetree+bounces-271694-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 19:53:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B8F73217246
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 19:53:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 322C9309C2A6
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 18:51:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7D102E06EA;
	Thu,  5 Mar 2026 18:51:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Y/ngB4BM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A68AF2D9ECD
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 18:51:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772736708; cv=none; b=OWGtUjN1ZqlRmeAuMhxjMbIOATElZh3qQwFcQ4WFiO0u5rV7awo1qYSIcRR98hDQKyidLP4DYMISSVO2IOPG2g6wrNgw02J77HEMOgLNsE+iMjw3t4pEBw2JXyPxnTV+UaXtuwBF/LQkta/XMtGeoJ3DxtuCLk+XHAx9WKn/GqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772736708; c=relaxed/simple;
	bh=bkN+jWxk0AYNCeosxk9H9HpqaGRqOY5rYphuQDtqBGU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ECzlNo6BykjhVHQKM4yvO0CFQQPn7ARwj5GeBzP4NY0SG+QRobn529onJxeQ0UQ7A8Jv7D9ckHzejrxY47YBx6jSdTRsf9vC0bPuGTwYj57SYQTGSYfUQZwqxsQWsbkG40Xp93e/wbwWhyHXDTYgTBYdcP3nthbQ0wNcdoB7fjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Y/ngB4BM; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-82746ed8cdcso5544872b3a.3
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 10:51:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772736707; x=1773341507; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ccr3eFLctFLRm4T0J5zP7W0RnljL80za7RGedxkL3/I=;
        b=Y/ngB4BMX2FOBss2UNlhC3FXWWmwulTrRKAiR/vkZp2l4FNCIhdSP65s9SDqVQVpXj
         BtDgG9E2J9tdF9gi9tX9pCT43SCF2nERNnJ+XCcAgan1dG45r6iczseBXGjVb/+r3mNw
         QJYAgo/vB+2WdaFXxki9Y7R2Zuc9ryALvh89z5iNCQw9lgXmrRMQvf0lWS2uLJsvm3Go
         qxUMlejG+86w2M8gpatnw6b2JP4DXy3PAw6o7m0zjTiAHAF5vwprKgCaBfYpHePahkUG
         mw95CnxZIOKUsAwZLi0+qrtLOW61FQHIRnCrEfRH54zPLbJuAJgmoe4oeKC5McNqGr/V
         I6Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772736707; x=1773341507;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Ccr3eFLctFLRm4T0J5zP7W0RnljL80za7RGedxkL3/I=;
        b=qgjDPiKfb5TCNzX1ZPrhf6J0JVKbDk1kw0hisQFq/sBEEy6hkv5X1J1mGpSC44M+3f
         7VNOoG8ZW/TjVhcQ8RmwjVVYm4UyRD9z67rD/rvGk+E88PNiBmIlZ2btxBLo2+9zQGW9
         YRV9ROnq30z9GF1uWFYu9h9XKrd/MdEkT/9BQAgKUDVWqyMyJBP8F/VMGCoz3vWdDdBH
         Ea4/v8FCT+Uu4DfI2bA8R5SDbz5kYOVLsiMsgUyv0dr0piczsnoTnhOSBW4/gM6VJu8/
         rwGcDDQy/k0Z6NSSxZ9UDm02ce24GYOq7kce4HkjItJls4nKZGdUrBCtWnkuoFcFPgsc
         aMBg==
X-Gm-Message-State: AOJu0YyAxQ029QNAtFc2gJv7VUus0HysanXePq28ckCuU8vibQdRPumP
	u0+4KxkwtOjW0fPDehKxpinnkpbtGlvR4wrXnMEOwiEYNOC+aITv4++0
X-Gm-Gg: ATEYQzwWSIgvEl5roamrLkfQcN7pHq4ZWj/n4deBrjViVO0EMMqOa/QhmFnUyH7BjEf
	RljgxRTX95dXrFYM1b/Dy6RTqaieLcUdPsUaIWzI28s1ISuSIJthfzcX7Ec0bn0VUQ69ukwsPew
	wHTE+2h/PkIuALwndZ8RFC07zBn0bGmbuYTKlgT1QqcyQwPi084j3cgqsoFrA+aWoIod+4oGO/y
	FY1b0Ju9/ONORzM0RuwqYgFCw9AeUMpCHZJOiY8dXYcZA3Bt6MQnR3eXUJzmRCzU/rDMD0SbQmI
	DU5QN6yBzDDM8kXfm5TWsVcaWA3USr6GT+ythX7HyyZoxH7asi4i+SzQYvqVsKUWRyp/BeK3l3v
	PjVwLkqsjbzfKkweiu0w1geo1ntQRvS9JDcpXlBm56i/1bPurJLwdeI+xv2Vt/boQHQH1GmT67O
	53lP0wjXYCA4kiQYz46GvponKhsy1qsgKBicA3Oz0UZvqerkTvaO5n7mX0ZhgtjF8cDZjU2ziMk
	HmnAZo=
X-Received: by 2002:a17:90b:3945:b0:359:94d8:34e7 with SMTP id 98e67ed59e1d1-359a6a7ea1amr5228450a91.32.1772736706964;
        Thu, 05 Mar 2026 10:51:46 -0800 (PST)
Received: from buffalo-ssd.taila54753.ts.net (M014013071096.v4.enabler.ne.jp. [14.13.71.96])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-359b2e14821sm2769158a91.17.2026.03.05.10.51.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 10:51:46 -0800 (PST)
From: Akari Tsuyukusa <akkun11.open@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	sean.wang@mediatek.com
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	Akari Tsuyukusa <akkun11.open@gmail.com>
Subject: [PATCH v2 1/2] dt-bindings: arm: mediatek: Add Lenovo YOGA Tablet 10 (Wi-Fi)
Date: Fri,  6 Mar 2026 03:51:15 +0900
Message-ID: <20260305185116.781184-2-akkun11.open@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260305185116.781184-1-akkun11.open@gmail.com>
References: <20260305185116.781184-1-akkun11.open@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: B8F73217246
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-271694-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,collabora.com,mediatek.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,gmail.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[akkun11open@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

Add an entry for Lenovo YOGA Tablet 10 (Wi-Fi) tablet board,
named b8000-f.

It belongs to Lenovo's "blade" product family, a codename found in the
stock Android "ro.product.board" property (e.g., "blade10_row_wifi" for
B8000-F and "blade8_row_3gdata" for B6000-H).

The "blade" family includes several variants with different screen sizes
and connectivity:

YOGA Tablet 8 (8-inch display)
B6000-F  : Wi-Fi
B6000-H  : Wi-Fi + 3G (Data only)
B6000-HV : Wi-Fi + 3G (Voice)

YOGA Tablet 10 (10-inch display)
B8000-F  : Wi-Fi
B8000-H  : Wi-Fi + 3G (Data only)

These devices feature 1GB of RAM and powered by MediaTek MT8125 or MT8389
SoC. Since these SoCs are tablet-oriented variants of MT6589,
they are grouped under the "mediatek,mt6589" compatible string.

Signed-off-by: Akari Tsuyukusa <akkun11.open@gmail.com>
---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 382d0eb4d0af..ab3c5b1152f0 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -44,6 +44,7 @@ properties:
       - items:
           - enum:
               - fairphone,fp1
+              - lenovo,b8000-f
               - mundoreader,bq-aquaris5
           - const: mediatek,mt6589
       - items:
-- 
2.52.0


