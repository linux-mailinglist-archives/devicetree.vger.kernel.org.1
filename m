Return-Path: <devicetree+bounces-245502-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C9DDCB1916
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 02:05:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D9A8A3018423
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 01:05:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7576321B91D;
	Wed, 10 Dec 2025 01:05:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="IxzIIUHC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A59C021ABC1
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 01:05:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765328744; cv=none; b=fr0T3to5bJk+6DGvxWWDWGGpJmbJgENYh/TwSYDkUE7IXZJEJbdhYBgXwLdJpvOdBzjBlyEcAJBWxb5I3gMusNikYAu8PsmRLPsOMo0tEwBa2SHUjf3OmgqqEMxeY8SIKQ6Kh6y16//A6qq43vIO718p4u0tR3Az4RZcSeLraKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765328744; c=relaxed/simple;
	bh=J8jdRyxN4pHi5HwGXl4WVjETvZhi27YUV8vuAHkKjmE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KGhx5IAMEdxHvMXnNRkP7Vx8j18NhrDYO6kt7/JeKspSRkewHa+PsbKXIV286kkcN7zA4hn6LzAn7HzTVWxJLWf65JzwSLc2bW6mMJ+Q0HD1+dzdfe8aM3+DG92x4XD/iL6rxanfEWweimQhlTMT9pTt+lmzYuGW6J2L3eGhR9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=IxzIIUHC; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-47118259fd8so50535795e9.3
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 17:05:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1765328741; x=1765933541; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tMLxoWB0gDu+hYqFcCi8C1Ebr4DsG+tpvO7SBM73pts=;
        b=IxzIIUHCW/DeNp6ilaOVI3QAnUh/lyTK2xZAeINqiZIshDdzefx9POEMaa+aFfAX/o
         Em9YE8m9sbZ8A2PTTCOnoqguSdsqyTG6z1c1YPNNGrMTzVWjf0yCgkeUQe1LAUqUT1lG
         b4carawG6rCsq/fqOclA3YB3bk4DHlCvWeK2XF9KNNsQF1V+ecBa7uuM+EsohEFIvkSl
         TFoPiAcp12P0E9VKiS1uXTF+6XTJl75z83unhfLCisx/M5gop3nc6fep+4vvEKh9zp1+
         rW6uvkMD4H7lHVsSI85nV+u7lSZFX5BYOjArtsa8l1VbdLnx4bt2RnTsYF2IU89AsPVa
         utnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765328741; x=1765933541;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=tMLxoWB0gDu+hYqFcCi8C1Ebr4DsG+tpvO7SBM73pts=;
        b=ENhOBcyafya/bXaz2b42qD+gSrawx4fs0/zlADcoPqPpED4BH4DHEkO9Hv8nOUPfIQ
         Tk9tMXoYgIhp2Iv+qSg1RWZ5gxK3qQAkz3WTvCA/d4Ekmgbf5aViDfZ4+kbBHu8g26GO
         /3OcdGqqC+5rA/bzMvNRODfo61OguH8JWnedSqAC3IaXYU16m4c0mJWPTLUzDYmDGIfJ
         DaLJF0lXArG+p1RSyxb+pFueBF2DGIetRnZVyKhI/ZRgXAQ9pJtBOs/xJPumsaY66I2t
         Re646aDAq85f21vGpBclg8Tmu6A8QgVRriX0XZc1JXsKUV6b3YUG+X8pHDUiM8uNzy25
         B3ng==
X-Forwarded-Encrypted: i=1; AJvYcCXxeFl4Ovsd9snmruDdkhXUDpz9ho6KqFGLnaDcF/V1vxkEVUq/1qGS2NrWz9nge6g0H9Uvir6FDY01@vger.kernel.org
X-Gm-Message-State: AOJu0Yylxpp8N6w/iNJ1KlvIxDUWCXAY2uZlMdseXCQqgRxtkx1fyoCC
	m72D7Bedemz7QIccEqNglBVFJDkDHnw2D1/SYyH3hH6T8r/mtlRMMiulMClcs0TtE2U=
X-Gm-Gg: ASbGncumUuGN6T08Im4rjT9cy+GPB/xrc1oOjQWHhc/OzFJlbg7LDY7HWys35an+5u5
	6TDgqxSCVvsZym/uaTb6xor3EOXmMgvDDah6uQQWjqQaw0vZAjhAIRnIr6gZcba++H6Z//Z7S3/
	a9JtnnZIvPk9lhULHcGf8vkdGevlRIDRaRxKO6gS44oNy32jQvudQX7yMA8Fqz/WqKa281ox/i3
	yW2MZn3XTePHTWqkfGWpawCWWs8C0JldQ+RLLxf9et8PV+1V3pXc9TBuFe8LrUzzLZLfjXCj4t/
	Zu1WwhieN5GzNuuN+0aEFzk2HkcqZRoFQ1Q8lOlW1YtDd/kvLfoOyecorMket6OQ+mkZsS4yu7K
	mwQ0dKfCZkWJFea8Mnco6ztpLV/0XNXOytMOhunz4NlxcpqtDzpgWO794kJCHM/lkSomZuwz8+5
	7PTRvMo/9IZ02bS16hRqkIMrAv9bJ6zBOiSR7o0Ec2537RY6r7Aqq2l3eJBTN3
X-Google-Smtp-Source: AGHT+IFYMluiQ4OKPV5Xr6Cra1B0NB6igYOb8auHiypnamFYSFB9jzG6KW2GARdfJZJFx9+vko2ixw==
X-Received: by 2002:a05:600c:1910:b0:477:b734:8c22 with SMTP id 5b1f17b1804b1-47a8376e3d9mr6486015e9.8.1765328741065;
        Tue, 09 Dec 2025 17:05:41 -0800 (PST)
Received: from [10.200.8.8] (p99249-ipoefx.ipoe.ocn.ne.jp. [153.246.134.248])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29dae4cf9acsm163206575ad.28.2025.12.09.17.05.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 17:05:40 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 10 Dec 2025 10:05:27 +0900
Subject: [PATCH 1/4] dt-bindings: eeprom: at24: Add compatible for Giantec
 GT24P64A
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251210-fp4-cam-prep-v1-1-0eacbff271ec@fairphone.com>
References: <20251210-fp4-cam-prep-v1-0-0eacbff271ec@fairphone.com>
In-Reply-To: <20251210-fp4-cam-prep-v1-0-0eacbff271ec@fairphone.com>
To: Bartosz Golaszewski <brgl@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-i2c@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765328733; l=737;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=J8jdRyxN4pHi5HwGXl4WVjETvZhi27YUV8vuAHkKjmE=;
 b=mI6wLjWaV6kPINJVrW6xd+goS/oplPOblpiCMDfCYKOyYykcFKB5qA36gXDy031uD9RaEwiY1
 Ga78FKqUPyXA7d53Wc9YGCgs64YyHEeehU3zD27+Qo8eFR8CIdnQRR2
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Add the compatible for another 64Kb EEPROM from Giantec.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/eeprom/at24.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/eeprom/at24.yaml b/Documentation/devicetree/bindings/eeprom/at24.yaml
index c21282634780..ce63acb025e8 100644
--- a/Documentation/devicetree/bindings/eeprom/at24.yaml
+++ b/Documentation/devicetree/bindings/eeprom/at24.yaml
@@ -132,6 +132,7 @@ properties:
       - items:
           - enum:
               - belling,bl24s64
+              - giantec,gt24p64a
               - onnn,n24s64b
               - puya,p24c64f
           - const: atmel,24c64

-- 
2.52.0


