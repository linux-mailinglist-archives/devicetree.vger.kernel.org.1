Return-Path: <devicetree+bounces-272041-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QIY+GWHEqmnVWwEAu9opvQ
	(envelope-from <devicetree+bounces-272041-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 13:11:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 014E32203D8
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 13:11:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BD67E301BF63
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 12:06:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33A0038BF6F;
	Fri,  6 Mar 2026 12:06:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="deu9DuPs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C06E3364EBC
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 12:06:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772798765; cv=none; b=PW353Bn4xlfLLqjaAEmqdAGvpmWFxg6tVFvr7UG+ml0aRkaSz8ZEac25+JOknZU8Na0PPBBME69HJdIyRbpVR8v/6uZdORGyLSLVKHgdEwkSLTCdaFkq8MGQ7xSqLgoiSmp9WVdE5dwbXYOSZUyVo10CTzzrNc4SmczSzYFgB+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772798765; c=relaxed/simple;
	bh=J83EIuQWnuvi57JW/hDPZJDW/A2HqSUqADqfDfUCqtQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=QanXhtJwUFlioyFyWNU0kR9T/RWRaTv7Co4E9YWYzAh8UZXjxfUC/AfON6QeWf/ESOqHiwIl4uX9mIu1DEN1mK89x3iCgE4AUUonyhd6mtpTZmTv/XcXhCaTE1ZcGvn2IODhC2sBkK0mr2USk9GsmYASSjKHLBzbkd0dOEmk5gM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=deu9DuPs; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-48375f1defeso69104015e9.0
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 04:06:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772798762; x=1773403562; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n1Te5dWKyFtHCAsQSaH2ONpVBfHilH2WjO8uBzqlY+c=;
        b=deu9DuPsomq4gkRyPCtlT9+w00KPZN3fSf6cPUUbPTbQKNwLRvmo/YegdiNSmq2cgJ
         NA498QBzW2+K7IXUIW3n5fQ2TyNshyjVa6fcM0sQwWekUWnNBAgU5dnwMVYA0CMvgxiq
         RLp4t0HUThRig3e559GHHTmAA21HwHhVIKfJ1E+NiWxlgqEuFBXa6adMmsPSMpVSGQws
         VfFtht6UWWRHNUmH++3vyzaEekn4rEyeGFY22vYDzX+JgFgCqS/K+LqjYfxK2riYqyRR
         N/4CSmES3EJ6UzPBjJoC0jAy8bIgBZMXFv7aGEsSckXOuCOz0gopKxU84CT2/Ou66wYx
         G1PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772798762; x=1773403562;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=n1Te5dWKyFtHCAsQSaH2ONpVBfHilH2WjO8uBzqlY+c=;
        b=IVkzs7Af/a/+TB7KKkHpCs74bqp7FdR0oR5cVs9HRFNC3p3yylp2Me3pkG6tj+U3RC
         YD7WMBs8XstCfM7uKk4s4IUe1WrubbP10KWS3g8mn0+hX96zLS+0FCmQ1QKsg29mbqEY
         M4Nd4tZDjK7oVbJAyMwVj4UXl0npJF3A8TdKzpEI0OJrO2FgIQSS+oYBQKakjVyjCW90
         jHYKVJp90NpOqCo09a8objNi6yavv7oO65KZ6ISsbJYDIkxFmC2RxDNCp6My/27EaI9d
         4jXHQX3IZUA8pTS/9pXuLfSOpzNbxr4tbWp7lDmmjkuumqvRIJnUcmj6YOU8HQq9fgQ8
         kmiA==
X-Forwarded-Encrypted: i=1; AJvYcCVYqQeUXVJi+BtqehUM1ps72lq+yiixTn5NoORDXegg8IDvs/CsahUebFoMVnNA0q2lsnkUUbPUu/kQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3PCg1R25ZC6t9y4S2UpqF9zOyLcRr9AZxYUI2nk7ZjRBW8VoH
	hbB9wTRf8cCzWTIqjxz2VHn1g/TSRaJDx1++1PlOWZTcCWrqLatQKjPy
X-Gm-Gg: ATEYQzzhq9KprZOdz6FNZCxU9oR8oHLZ3H7BxgagkFd42kUnNGIctAMWmhVII5h55hj
	UmwcTHi0bkKEzPWa5QhJc7iIm9IsvfNQB2+SJMoMoDlTTjOwmm21YF8RkZrIqmjpj7D/Gx21AHT
	CWMEaUMo8BvZfHzsuzNRbHgggrBBHr2SKS6x/UW6R4HKODBlC/UyRx/Pc7oyx0WRCT52D88gO6n
	mnRFQUOsBEI5OqKHPAaJrpQi/GZGRiWFy4rGDk5Jce7Bvoeh6xA4xLqcC7esa1H0WUSNGAgOomz
	KF3QxG7gTQnO5/UDp2wZpM4Nq7iJC+s/oCoQ+BDHEbfdguCbX9o0YO8Th4eiGpqLlef/ndD5Lz8
	u1UzoVBYVSWYTTKhFkbjm4lryn9uK3RPD/kqgNlLfqaJMO6EczfO8Kwo9d+ay63Di2J/DWCMXf8
	G79MUuAdMclTVWoHtKV1A=
X-Received: by 2002:a05:600c:6386:b0:483:afbb:a064 with SMTP id 5b1f17b1804b1-48526918f7fmr31691795e9.1.1772798761805;
        Fri, 06 Mar 2026 04:06:01 -0800 (PST)
Received: from luca-vm.lan ([154.61.61.58])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439dae2b9d8sm3457225f8f.21.2026.03.06.04.06.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 04:06:01 -0800 (PST)
From: Luca Leonardo Scorcia <l.scorcia@gmail.com>
To: linux-mediatek@lists.infradead.org
Cc: Fabien Parent <parent.f@gmail.com>,
	Val Packett <val@packett.cool>,
	Luca Leonardo Scorcia <l.scorcia@gmail.com>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sen Chu <sen.chu@mediatek.com>,
	Sean Wang <sean.wang@mediatek.com>,
	Macpaul Lin <macpaul.lin@mediatek.com>,
	Lee Jones <lee@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Gary Bisson <bisson.gary@gmail.com>,
	Julien Massot <julien.massot@collabora.com>,
	Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>,
	Chen Zhong <chen.zhong@mediatek.com>,
	linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 1/7] dt-bindings: mfd: mt6397: Add bindings for MT6392 PMIC
Date: Fri,  6 Mar 2026 12:03:05 +0000
Message-ID: <20260306120521.163654-2-l.scorcia@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260306120521.163654-1-l.scorcia@gmail.com>
References: <20260306120521.163654-1-l.scorcia@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 014E32203D8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272041-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,packett.cool,kernel.org,mediatek.com,collabora.com,vger.kernel.org,lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[25];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lscorcia@gmail.com,devicetree@vger.kernel.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,packett.cool:email]
X-Rspamd-Action: no action

From: Fabien Parent <parent.f@gmail.com>

Add the currently supported bindings for the MT6392 PMIC.

Signed-off-by: Fabien Parent <parent.f@gmail.com>
Signed-off-by: Val Packett <val@packett.cool>
Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>
---
 .../devicetree/bindings/mfd/mediatek,mt6397.yaml          | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/mediatek,mt6397.yaml b/Documentation/devicetree/bindings/mfd/mediatek,mt6397.yaml
index 6a89b479d10f..c358b2f8059c 100644
--- a/Documentation/devicetree/bindings/mfd/mediatek,mt6397.yaml
+++ b/Documentation/devicetree/bindings/mfd/mediatek,mt6397.yaml
@@ -40,6 +40,10 @@ properties:
           - mediatek,mt6358
           - mediatek,mt6359
           - mediatek,mt6397
+      - items:
+          - enum:
+              - mediatek,mt6392
+          - const: mediatek,mt6323
       - items:
           - enum:
               - mediatek,mt6366
@@ -72,6 +76,10 @@ properties:
               - enum:
                   - mediatek,mt6366-rtc
               - const: mediatek,mt6358-rtc
+          - items:
+              - enum:
+                  - mediatek,mt6392-rtc
+              - const: mediatek,mt6397-rtc
 
       start-year: true
 
-- 
2.43.0


