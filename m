Return-Path: <devicetree+bounces-278031-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eHKhGZVgvGlxxQIAu9opvQ
	(envelope-from <devicetree+bounces-278031-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 21:46:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B8C962D2599
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 21:46:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8D40C3210143
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 20:37:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90FB63F7E9B;
	Thu, 19 Mar 2026 20:37:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="KBeBMIE2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f52.google.com (mail-oo1-f52.google.com [209.85.161.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CC6923ABBF
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 20:37:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773952623; cv=none; b=RXN3zVqU1LhYhMlKXMlpw9kDVl0cFZ4H0o9UmwbEajO0/+x/N9n+7VbQAiOP4CIazS5K+btPA/F3nVexjg1IZ7WHVZJyU+VuHaUPHT02ryUthYG6pHqJEXVeMlhV4CIiW5EevpnHE1YWekIptd7KQWYdZdi3WEXaY/Cla3NsfIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773952623; c=relaxed/simple;
	bh=5skePx64WNITX84S4NyRGOGsgVrQRd/nLA8489wbHmQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=XjbClQfI1u65Ay4WC8EAFDJjFqyj3pOtM//b3wnpcnJmxTV7MCA7p8yLlSvIVYZJ76bosRatAaX8aiFkTysrPjKoiMM1xcNiX2c+OjO7RBQFw65ls1O8Yrwoe+III4PsIlWyt6fvBTh/uUN1MThUv2xLqvFrviMtI5HfiBeEfNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=KBeBMIE2; arc=none smtp.client-ip=209.85.161.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f52.google.com with SMTP id 006d021491bc7-67bac077116so628080eaf.1
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 13:37:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1773952619; x=1774557419; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=EvqUQZCqF37oJV9dJzcVxfSOLY81NlMRRK2XtKQH9vE=;
        b=KBeBMIE2I6yLaVAiKOMOw7MMnsyAYshrIJkk8STe3Jknc2NbHyzX9C+DszaP0oR8O0
         JpQYY5/iC5HpQZ0eaRSpn7l1Zg8cn/z84MSDWz9OG9j2hj7kI2wChvXzcEwuNSIEFkwg
         KbQ62ZGdjeoXZEqxhMXxZo5/OT4RjTOu6R8iVRvwmICODg+WrNORlg2MJo0pDs809ARM
         zh6Z1SdVnKw1ML9ydnNnA1+COHXfZPRifNHd4kmFebpjNDDJQWznoIpW2pFDas7ZcwUI
         hMGruZmZIqcZL6Nrvkjj2la6pi7VkjKkY/8FIDDO/akl4u8WN77b8I6u8kCh9iV1Wy1n
         V4uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773952619; x=1774557419;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EvqUQZCqF37oJV9dJzcVxfSOLY81NlMRRK2XtKQH9vE=;
        b=hcmxtPg6FJYlgeVboOAIGJMonswrDD5wVPp9rXWce6nI8cqJ8EXSG6x3R2og9b70xc
         GuX4WkjShjHADFPnX4P99910hAy1aObGpunmhj5iY1hvX+JdgOD6D/tHkprnUSQ9rRr0
         DC+7i7aP1796NfiTJ8qEjaaNfrrLw2vn/CBw3Cl4MXvkTBOsLleFKoWEWeAi6+JO+OJv
         Mqax/A5LgoChRPJyUXIjefHmbqtBV/2ROB9nDYQx1E9QuOgotWogxybsigFv7Zn4hpWc
         VXjtRiwC04NaZGEtE41P4JFoBqsRbvdZxuP+OwfnHcg+TeJZmlX5pwfqqDPlQ0eeKKUd
         E9Tg==
X-Forwarded-Encrypted: i=1; AJvYcCXEVUv/nmBOQyVJAJPj/zrd7gHgVdlRQGbbQiRQ7p5MFZwi0aNwjjuNMCghYRKodnDvhDhD5uQIl8Ae@vger.kernel.org
X-Gm-Message-State: AOJu0YxgK13Tg1kn5o/rYFFG0XBBL2EPUiEYSeaJdeaVi0e7H8fU2+TA
	afFUG+7HIO0581jlqR6qrTAxPr5te27aUqEsaHZtRVlBRGpUN1pEhAdsEA/hQ/uzIzE=
X-Gm-Gg: ATEYQzwnFMLPjgUxH+0R9K9Q7GGe5+mv8JxqmLNYKNiP6LVY/kfiTdcWyAj4e7FPrXP
	oinTh3SFXzSMs6ld1hbV9PXQxS2VvvEYLe3rmttRptqUnVa1jCmyuGwHndsMf1Jbfn0H8TnkIEU
	jtxB4FzOXIrzzF+jJhduMbazHiN4SvcEmKJBJWZbLnWYFmjtwRs3Zt0BAyMB8lCnexENJ+wTWXh
	qVmsFpYJRa+LRojrKDoba29lKI2ijuEzd1YyOnFw+RLbXMZZNZEfTpDeKAVSlAIfggoucx2tkFL
	Gpf4FXvPdpYfN+zLWifOz6TG9Zuum+sxRuGCdVSQhPP0uzaUKPKEQtjDyK9htObeYjhXKOFmVhV
	GCeBzezwUkl1T3njiE9XxcIlP4HUhx3bVf01aJXLMxRI7vdsx8scfy52Llk7pJrAqAtL6LU/ee7
	XzMDJJtjhFPyoQ34dAO4ER6C7ankRk
X-Received: by 2002:a05:6820:1349:b0:67c:1deb:4f69 with SMTP id 006d021491bc7-67c22bb5697mr599850eaf.14.1773952619310;
        Thu, 19 Mar 2026 13:36:59 -0700 (PDT)
Received: from [127.0.1.1] ([2600:8803:e7e4:500:244c:fc8c:8216:1344])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-67c252acd32sm52512eaf.3.2026.03.19.13.36.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 13:36:58 -0700 (PDT)
From: David Lechner <dlechner@baylibre.com>
Date: Thu, 19 Mar 2026 15:36:49 -0500
Subject: [PATCH] dt-bindings: mmc: mtk-sd: add mediatek,mt8183-mmc fallback
 to mediatek,mt8189-mmc
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260319-mtk-mmc-mt8189-compatible-v1-1-fb7ef2186c92@baylibre.com>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yXMywqDMBCF4VeRWXfARLz1VYqLOBl12kYliaUgv
 rtpXR2+xfl3COyFA9yzHTx/JMgyJ6hbBjSZeWQUmww611VeqBZdfKFzlLZRTYu0uNVE6d+MptL
 W1FRaWzOk/+p5kO+//eguh61/MsVfEI7jBFHNVOd9AAAA
X-Change-ID: 20260319-mtk-mmc-mt8189-compatible-a62da7c5dd7e
To: Chaotian Jing <chaotian.jing@mediatek.com>, 
 Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Wenbin Mei <wenbin.mei@mediatek.com>
Cc: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>, 
 linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, David Lechner <dlechner@baylibre.com>
X-Mailer: b4 0.15-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=1519; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=5skePx64WNITX84S4NyRGOGsgVrQRd/nLA8489wbHmQ=;
 b=owEBbQGS/pANAwAKAcLMIAH/AY/AAcsmYgBpvF5i18RSPpFlTkJhXKuRHU1GKiogcHWVUfImk
 AchlfWq8pSJATMEAAEKAB0WIQTsGNmeYg6D1pzYaJjCzCAB/wGPwAUCabxeYgAKCRDCzCAB/wGP
 wNTrB/wJp0iLTjLMrEAxu7kkALAuENcVqHfsvkgUSrsHT0Wy0MeoXaG9Cp3UIlJ9gNCXOEoAXUR
 3u/C1no4zCoDG0WMepZn6cHej94IB24DQZVNYdeDOl0OFtEDIuz902EinxNow8JfnAmLwX4w4aU
 RDSkC9kLidPbkFS7CsE4fLWlpRW0eY0OzpN55PuNEq+4jfPIYI+z5k3Qr99oTU+HCCCFVTC9j5d
 YdK7+xKXOz1AGfNSztdM7/NFqDtZPmR/8+baKRZQ01ZnuP85PSnqL5zO5rZ6OVqnVNcCv4ourPM
 WopQsPZ8TelzX2HGxM04ez5i53jSAozyu6LUB+V8ya9GVijk
X-Developer-Key: i=dlechner@baylibre.com; a=openpgp;
 fpr=8A73D82A6A1F509907F373881F8AF88C82F77C03
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-278031-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[mediatek.com,linaro.org,kernel.org,gmail.com,collabora.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: B8C962D2599
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Change mediatek,mt8189-mmc to include mediatek,mt8183-mmc as a fallback
compatible.

This has been tested using U-Boot and the MMC is still working using the
mediatek,mt8183-mmc fallback compatible, so they seem to be compatible
enough. And there are no upstream users of mediatek,mt8189-mmc yet, so
this should not be a breaking change.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 Documentation/devicetree/bindings/mmc/mtk-sd.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mmc/mtk-sd.yaml b/Documentation/devicetree/bindings/mmc/mtk-sd.yaml
index eb3755bdfdf7..9160e449aeb9 100644
--- a/Documentation/devicetree/bindings/mmc/mtk-sd.yaml
+++ b/Documentation/devicetree/bindings/mmc/mtk-sd.yaml
@@ -25,7 +25,6 @@ properties:
           - mediatek,mt8135-mmc
           - mediatek,mt8173-mmc
           - mediatek,mt8183-mmc
-          - mediatek,mt8189-mmc
           - mediatek,mt8196-mmc
           - mediatek,mt8516-mmc
       - items:
@@ -36,6 +35,7 @@ properties:
               - mediatek,mt6893-mmc
               - mediatek,mt8186-mmc
               - mediatek,mt8188-mmc
+              - mediatek,mt8189-mmc
               - mediatek,mt8192-mmc
               - mediatek,mt8195-mmc
               - mediatek,mt8365-mmc

---
base-commit: b84a0ebe421ca56995ff78b66307667b62b3a900
change-id: 20260319-mtk-mmc-mt8189-compatible-a62da7c5dd7e

Best regards,
--  
David Lechner <dlechner@baylibre.com>


