Return-Path: <devicetree+bounces-138894-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C0414A12D90
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 22:17:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 59B153A1FB9
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 21:17:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EAC021DB365;
	Wed, 15 Jan 2025 21:17:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="D48GjjM8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D471D6DB9
	for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 21:17:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736975862; cv=none; b=V/k8PjK+QeF3FJOu4VFhU0gKoH9QOk4AhnvVR22eCZV8jac33BKV754pAw14CwSW15HDee7gj4SsbsGicC3hevIIP7c5d0W63hQL6XTiMru0LKbNEK3J+92W8SQ7hhSFkZ56YB8eLqrdix87fhZwhmO4PSjbsY1XtcAcbBEAbGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736975862; c=relaxed/simple;
	bh=G5n9ZiY2/vDd7bhPQ+YrUW8MY4JkZpTfrTsjpDqSXG0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=UhDetHgkVZyw189Ph7xUAl6n9heuYHP0Bikjal3iT4c5tiVtnq9lzNZyTTxXU/vqr3LMh9wl6HmFAK47GglpMgjpqohXNYygXekoxYZFTTp2jmPBRqLDKBMSJUNfoD7DdIrcDX7OMi4H5FU2V2xABt93mbjlD5SHhLYcMmAz3Io=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=D48GjjM8; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4361e82e3c3so230115e9.0
        for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 13:17:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736975859; x=1737580659; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TCfgl7vGmKArk+EJSGegWOcVoBZ7U1jmz6/Mioq6zLE=;
        b=D48GjjM8DHqst63PP8nsTjEYqEzzRwHPrDkB23hhmuG8I8u8+WzZY20787tSejv0Sd
         WF0q5EddJS8ZVbp+fKsr69nsXlk5FqAuscWTD2Hs4zJ+pYXyAZipLdT17jMManmHcl+a
         F504UaJ5Bx95z1SorpZKsJWwkeRkHHme6tCsg2KWwGcBSl2UzMxSikZ64LTd7hBScb5s
         OqdEXp41PjI5jook6T0Uvsf5v+AgiR04cXlagvBc0Hmss6hvusFSzXOhYH9lXMRZ3iLu
         +ArtsOKK4nrSamsbI7NwUTbKNTR98dZ0s0awgdFxcsGsb4/CBKm8tyhlHZYPXfLRGyfh
         3e1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736975859; x=1737580659;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TCfgl7vGmKArk+EJSGegWOcVoBZ7U1jmz6/Mioq6zLE=;
        b=wAMM4ubY4qY3PTUOk3CjnDlP9oVswTPORDYICSBKOY6cxIiK+LvnMNyDc/721fTHc2
         abSg4MRiPRVZ9ZcytY5l/L/+DfPYbcfegtGMxoCy1xv4y+wComgvHUHX5IlRwpRwnanV
         KyUKlPjS6939e60EHoEjpufB7W4vshvjljpJmKMCr+jHZJK91qBBXawPcyTXFm61kaJh
         XU/azkvagmqgvGmJNuoNSLytZWndmFZomyEeypRbeqZGhjSVf5aI6ZPcCH5oFEzyRbRS
         sk+N6r7fvzM7zYTVmx7/XoJDQqedM6HptDvH+IJy9/Sh2sM4pj/T6aANl7VLpiH2ZTus
         AWbg==
X-Forwarded-Encrypted: i=1; AJvYcCUIbIFtVH2bFSTwmb5h7dF6Yx5bZ+M9IHJV5Os3u5j2iTEFOl7ox9NLaAeJ9W0MmO33BvqqoQwqjESC@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8+98MaD4RWQjJRuM/Ow8KmmW9fce3lGvaVmJVp7Wwxryt+SFQ
	1qg/UKgBuwFKfDIJkFZeXqkfFnIA9mHjlWtx3bDYrfXUBkIDH9PGBac5qA8yhE0=
X-Gm-Gg: ASbGncsNB/7EqyyXOL0Es0ONvmyyThKk7lecIyNhJ1o1dN+3C8ASCcRi4veI109w6ZX
	v/I1ry5350qRzM5Lhn9nN+Cpo549HkMv4g/uO6p8fw4QBazwcwEknPi1raFba0/EyCx699XIyzO
	DgxwSDpBn8+TQ2jMZA6yaMs1O1wNvM6F9jm1Z1kes3yjs9nU88BI1i6hyNMZzzqtRsymJkp6VNU
	y9g1qr0j4oi8PM11WbTWCINN9fypVVjyH9qEpzTX5vCfqPCRK2swXJspkrKVCv7oHqmaiI=
X-Google-Smtp-Source: AGHT+IHsZzRkw4vtn4FVAn4kRLRS3nmMRocOva6R7Cj/qsNTQrWb/u9lbDAFUEclI72beLDiczSrtA==
X-Received: by 2002:a05:600c:19cc:b0:434:ff85:dd77 with SMTP id 5b1f17b1804b1-436e269be52mr111914805e9.3.1736975859530;
        Wed, 15 Jan 2025 13:17:39 -0800 (PST)
Received: from krzk-bin.. ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a8e37d090sm18433838f8f.2.2025.01.15.13.17.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2025 13:17:39 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andrew Lunn <andrew@lunn.ch>,
	Gregory Clement <gregory.clement@bootlin.com>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] ARM: dts: marvell: kirkwood-openrd: Align GPIO hog name with bindings
Date: Wed, 15 Jan 2025 22:17:27 +0100
Message-ID: <20250115211727.194142-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250115211727.194142-1-krzysztof.kozlowski@linaro.org>
References: <20250115211727.194142-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Bindings expect GPIO hog names to end with 'hog' suffix, so correct it
to fix dtbs_check warning:

  kirkwood-openrd-ultimate.dtb: p28: $nodename:0: 'p28' does not match '^.+-hog(-[0-9]+)?$'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/marvell/kirkwood-openrd.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/marvell/kirkwood-openrd.dtsi b/arch/arm/boot/dts/marvell/kirkwood-openrd.dtsi
index 47f03c69c55a..9d7cff4feada 100644
--- a/arch/arm/boot/dts/marvell/kirkwood-openrd.dtsi
+++ b/arch/arm/boot/dts/marvell/kirkwood-openrd.dtsi
@@ -53,7 +53,7 @@ mvsdio@90000 {
 			cd-gpios = <&gpio0 29 9>;
 		};
 		gpio@10100 {
-			p28 {
+			p28-hog {
 				gpio-hog;
 				gpios = <28 GPIO_ACTIVE_HIGH>;
 				/*
@@ -71,7 +71,7 @@ p28 {
 			};
 		};
 		gpio@10140 {
-			p2 {
+			p2-hog {
 				gpio-hog;
 				gpios = <2 GPIO_ACTIVE_HIGH>;
 				/*
-- 
2.43.0


