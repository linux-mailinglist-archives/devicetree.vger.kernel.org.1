Return-Path: <devicetree+bounces-254366-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B470BD178CD
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 10:15:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3B6CC30146C9
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 09:14:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4465389DF0;
	Tue, 13 Jan 2026 09:14:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZGTVlRjb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0867936BCFA
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 09:14:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768295689; cv=none; b=Dr3r65qF3+wXx1E2boQtlq491Z6sVlnKUsYaG/DGGXP3403wOihIYvmSecLJadzd8mx2SOL+T671u880Q/JlmfQnuOuBxD8Zh+pw0+rw8b3s2Ij9KJB1489zw8rnSLfAT6W3cC5C2E8GSMpmSHVS/Z9i1K7EyLW3GWNKMRFibBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768295689; c=relaxed/simple;
	bh=rPtVf65kJ1N1TywGctCCtpLt0SJGZD6s+R+h8f8siOg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=ruIUx7MiHmLKJbn21LSE35OtRrZrIRV7uc5pbpdNrHkwBqA2MAsN3UM+ZCz0y7V4I+qR21YPrTXB2BZyxtJVds93i4Vq9o9BCCZaRmSQq+/XgcfcXkJUlnwb94xL/Z90kt4VR3dxUfPp89q96oNRzK4ebj+4isXZqFBAlBISseM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZGTVlRjb; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-81f3fcdb556so1355274b3a.2
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 01:14:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768295679; x=1768900479; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=bot5yzHGRpdORn4dGLGp5ZsMsBNZegUjwbOB3QegdQ8=;
        b=ZGTVlRjb2C/V77rpbPzFq2KlSa+JlX3FIRghjheILcpVSduNtf+q2FqRvpX/Qoj0sG
         z/rOqhvFDJbAjAKZHaTMxVVpQ67zkm9J7nnjTCJHXiRbRcQooK4xHBLhWO8AGyIl2xTB
         +o7X5uoAD2xmfJipCc9KgZccewl2VeeXUbvCdjXVIP/PuHaI90+GnzYgZhvZepqJHMp/
         5VunLxURTnLwJywr8tpsGeGhoF5bKxt0FunLBwAZD7j5wRZAwhKfh1C/ASMu+LXFy6hc
         SH3IzHpQP5i0K5dzYTStcRzT352mhLa1r0oUOkzUglc3zGQg3yZUKsCpicoDHuhkOSu7
         qyrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768295679; x=1768900479;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bot5yzHGRpdORn4dGLGp5ZsMsBNZegUjwbOB3QegdQ8=;
        b=uYdsljchrZhqqY5N7TvYlBTrnZjUIOLCr8oF0+oA4MhBIf9JAlrNJX23Y/6/cz79Fx
         OrRfaNOxwaiQ/d+t2XJZ2XTb+kC6J2PMx15REycJzRE86dzp/vBW21CPPJin8a7AHnBb
         orhTSdB08odc6b8DiCbu98NpOTduUxFM0kY80BD/SeVhMb2/855JdxXQrps3iMeX5O/e
         iLMhof+S70gfqK8PkwxIzU7T3m2XOWidKIZbRsf6AvP61JMu/Ojadj0/MRt1QFEX1WOA
         2367E9j8G3bIVPwkQPKbLDEaWuZQmTFrARz/zkVuIJFCcAax4NvUunMAOwYjwKQMpkCo
         n5Vg==
X-Forwarded-Encrypted: i=1; AJvYcCUuQR3LON/jLUnN8DEBSqBgPaqlPHwMoo8T0QsezSpMpqZeZ/zf+MvUxQ+BsuRWJV2/azjt7vq+TeEP@vger.kernel.org
X-Gm-Message-State: AOJu0YxkMW5w8DQbtYEVE+UdFmfe5ljbajApREtBL2VOyIxMLgV3Ejby
	0yyHySFvEHdqieD18CDU9Nekp1Tf26LwRQM+4xv+o7MHZXh1kilfh8ZA
X-Gm-Gg: AY/fxX5gZqQ5nAFfoJIEblvsmPgfoyZa4UUj2NsgHrFs46bfvY/bX3PhH3wkU9Oq9oL
	v0bSJdDK3kPqYE1hluetI8UWSv8a2IFdNiTm1zd9knjNZUjff9E9RsR6/UVD4mttHkXOqwfCYxa
	Ncd7utFvaE1zx+d5W57H9bVT767Xva7oDXqzYGF+rQqY7nxSYN+h2c1UzQ4P4vnrT9rNG08SCbT
	AsnXgF6TZdquVdVmmBXhm2sqTvqVjdLsJVeK4VF3VYkITDOXpG5ukJuqb6XiUG3Prwo48wJOO6j
	4+FqhwBT+IYBXclH/I1+vvQ5IxQBPEephKstJBGtXisyR0T3Bvl3827jwUB54D09Vxh0WGUkmwC
	+I7YjdRKWGJrTfLHyk0r4NktqgXDOgXB3yRf5vWy4Eit1uAKOgahoEp2rc2vo7CiYvFCv0D0Q+D
	5AZexgQAQ=
X-Google-Smtp-Source: AGHT+IGsHeyylseX5uTR0Zuev3x2aRQU9RlBAKG0seW0iIbuL5lWyCYCsms8xRBNCrhbFAf8lGITDA==
X-Received: by 2002:a05:6a20:2583:b0:366:14ac:e204 with SMTP id adf61e73a8af0-3898fa57649mr15886967637.66.1768295678911;
        Tue, 13 Jan 2026 01:14:38 -0800 (PST)
Received: from localhost.localdomain ([47.82.78.41])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3c48c0bsm15293915ad.31.2026.01.13.01.14.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 01:14:38 -0800 (PST)
From: Nick Xie <xieqinick@gmail.com>
X-Google-Original-From: Nick Xie <nick@khadas.com>
To: neil.armstrong@linaro.org,
	khilman@baylibre.com,
	jbrunet@baylibre.com,
	martin.blumenstingl@googlemail.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org
Cc: xianwei.zhao@amlogic.com,
	christianshewitt@gmail.com,
	krzk+dt@kernel.org,
	robh@kernel.org,
	conor+dt@kernel.org,
	nick@khadas.com
Subject: [PATCH v1 1/2] dt-bindings: arm: amlogic: add Khadas VIM1S binding
Date: Tue, 13 Jan 2026 17:09:50 +0800
Message-Id: <20260113090951.35928-2-nick@khadas.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20260113090951.35928-1-nick@khadas.com>
References: <20260113090951.35928-1-nick@khadas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Add devicetree binding for Khadas VIM1S board based on
Amlogic S4 S905Y4 SoC.

Signed-off-by: Nick Xie <nick@khadas.com>
---
 Documentation/devicetree/bindings/arm/amlogic.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
index 08d9963fe9259..55663e0f7f915 100644
--- a/Documentation/devicetree/bindings/arm/amlogic.yaml
+++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
@@ -247,6 +247,12 @@ properties:
               - amlogic,aq222
           - const: amlogic,s4
 
+      - description: Boards with the Amlogic Meson S4 S905Y4 SoC
+        items:
+          - enum:
+              - khadas,vim1s
+          - const: amlogic,s4
+
       - description: Boards with the Amlogic S6 S905X5 SoC
         items:
           - enum:
-- 
2.34.1


