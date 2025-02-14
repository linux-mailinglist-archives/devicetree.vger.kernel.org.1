Return-Path: <devicetree+bounces-146762-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EB23A36153
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 16:18:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1B7A2189033E
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 15:18:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8935226739B;
	Fri, 14 Feb 2025 15:17:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="fa7LrF0I"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B019D267383
	for <devicetree@vger.kernel.org>; Fri, 14 Feb 2025 15:17:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739546260; cv=none; b=qbS5mbulXqyP9tkaly3Wrtp3oHHoWDY7tkKl2OIkTlla1eTnDIY58rViufcO6SYGibCoSH0Uwj4Uv8+3IR2H22eWgo/uDNzurWbAXsV8v2xFOpO0M/1d5DyDM9vnk88JlM3RSB+2ZQ8FieJIx/rv1b69oAWC1VHQyvm+vwBmIrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739546260; c=relaxed/simple;
	bh=YS3dBzS1TIYwOXLmFwToghgmQCECpJ7fllGh6NUtinA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BhrI+oWzgEhyTomT1PkzNLyf+lnI5HIJY1jI0ABKuSWdEDr+hDBP3SIHraJdsJdsiBsi37CDFTu2jyf8fdL/Vsxxbn1+JEs9paaUY6PIpwi332yyQZRKp060kUFVFdjLUVU75+d7VkqhPux/dLlbqnSTEpwTqiSTGDQ/qi03AEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=fa7LrF0I; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1739546257;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=rvaWRuIqMubpY/jSrhphDNgLxyWwrcegxArhQIPFoO8=;
	b=fa7LrF0IFgz1q9WDkzMz2BkVgMt1AWCB97ZCafN/b1DOpEnPVvsI17ZrMbPByuynG8YbZY
	nMrRtFL1y7tpor5NB6vQsAcZlBnASx5IOLzhPtK1+V8xeDjc6ko57aNZtmVq69cvx1r2rg
	qMKAORcPzQZp36PIQ7gAX4qmXWdQiDw=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-518-nDTPs1i7N6yqK01ekyW-tA-1; Fri, 14 Feb 2025 10:17:36 -0500
X-MC-Unique: nDTPs1i7N6yqK01ekyW-tA-1
X-Mimecast-MFC-AGG-ID: nDTPs1i7N6yqK01ekyW-tA_1739546255
Received: by mail-wm1-f71.google.com with SMTP id 5b1f17b1804b1-4393e873962so11716575e9.3
        for <devicetree@vger.kernel.org>; Fri, 14 Feb 2025 07:17:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739546255; x=1740151055;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rvaWRuIqMubpY/jSrhphDNgLxyWwrcegxArhQIPFoO8=;
        b=ejiHS1dCF7aygMBbc4jFylA71d1AcHTgNheqJwHZsHojYxvjRbzfKRTMMzhPvqaQf1
         DqK3xJULDS6/QvfCLxdgXFAbvJ3+cJAyeWeWMulSeLrB3VriWaRjU62ROStPnNT6ryLy
         ObdWdw+CeJJ2/NHEh9ytsQvGg4PVqKKxOme4vl/rpY+bBPf1uVi6UgZ2RyWM1tH/ik8W
         GQH5p6JqiSCgfFcwxmY5Y3+2zZ28qA8/EQ2TZ20rGpoe/E0KLYR4kpKWXhLfe/eS+ol1
         yNlEUfLhgIARJqMzwXcgq9havz+7YXDkkU3qerMqKkusKtc4MD7lZopPFc74kxIYLjPY
         TdZg==
X-Forwarded-Encrypted: i=1; AJvYcCWqAk39ArUko765JfvuqrxMomWlczhln42OppaflNcf3oDs0qOqEFSuezM3L77PeszCjNzNXJqY0bC0@vger.kernel.org
X-Gm-Message-State: AOJu0YwBnyREbOUcaewgVlc3sKWvEXW2aKpDs8XzbMVuqt3DmOVm0sQ7
	eOeIS7UzpEHkKx2K/GxcP1Ouz1q+e7pC0Lv43qUloLX4tyip54hGuSaWEQNfDRRIPz0L8c5oLhY
	D/NjtD3zlCDn1EAt1uRfEp17sLiLG+4rbQ3xsu++6Cs7Qu+L5z23JDWKWcy0=
X-Gm-Gg: ASbGncsDvZizYLjwTnaiFAbHhraGAnG9XJ8ILvarH0cAdNswo1EmlrI64IkVXDHqX5w
	p4z/6NoRQv5CRZxfg3fjBGx889v/iTduaJIy6wwVNqCi7BQdrtHxcyimS6ky5LUDuCG9tHNjnAN
	/sGe7WoXTrMVoRcwZMr1nENrQjtJUG2ubY8NoGKHaZA865Ia1m16sHymFhfp8BNzEq7dSnNGkAW
	efNZWILOAsTJBVTs6EsOE1TJTkULYCrQiQjcq5jwaZE6Ml1HZJ19SYV1050VzSk4xC0yrqM0Q0N
	BfjwmFrrBx58mNptj5p8bLfedPcVkg==
X-Received: by 2002:a05:600c:8509:b0:439:4858:3c77 with SMTP id 5b1f17b1804b1-439601a12b0mr94439415e9.19.1739546254793;
        Fri, 14 Feb 2025 07:17:34 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGZ4cE6b9JE7HQ0foGmfeHs83Ot4ztX8SMgiEIT6K5P9Xu9N3qu7/a9sqVogpzuJ8xgB1pwiQ==
X-Received: by 2002:a05:600c:8509:b0:439:4858:3c77 with SMTP id 5b1f17b1804b1-439601a12b0mr94438755e9.19.1739546254333;
        Fri, 14 Feb 2025 07:17:34 -0800 (PST)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38f258fc7ecsm4808546f8f.49.2025.02.14.07.17.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Feb 2025 07:17:33 -0800 (PST)
From: Javier Martinez Canillas <javierm@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: javier@dowhile0.org,
	rjones@redhat.com,
	abologna@redhat.com,
	spacemit@lists.linux.dev,
	Javier Martinez Canillas <javierm@redhat.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Rob Herring <robh@kernel.org>,
	Yangyu Chen <cyy@cyyself.name>,
	Yixun Lan <dlan@gentoo.org>,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: [PATCH 1/2] dt-bindings: riscv: spacemit: Add Milk-V Jupiter board compatible
Date: Fri, 14 Feb 2025 16:16:37 +0100
Message-ID: <20250214151700.666544-2-javierm@redhat.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250214151700.666544-1-javierm@redhat.com>
References: <20250214151700.666544-1-javierm@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document the compatible string for Milk-V Jupiter board [1], which
is a Mini ITX computer based on the SpacemiT K1/M1 RISC-V SoC [2].

Link: https://milkv.io/jupiter [1]
Link: https://www.spacemit.com/en/key-stone-k1 [2]
Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
---

 Documentation/devicetree/bindings/riscv/spacemit.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/riscv/spacemit.yaml b/Documentation/devicetree/bindings/riscv/spacemit.yaml
index 52e55077af1a..077b94f10dca 100644
--- a/Documentation/devicetree/bindings/riscv/spacemit.yaml
+++ b/Documentation/devicetree/bindings/riscv/spacemit.yaml
@@ -21,6 +21,7 @@ properties:
       - items:
           - enum:
               - bananapi,bpi-f3
+              - milkv,jupiter
           - const: spacemit,k1
 
 additionalProperties: true
-- 
2.48.1


