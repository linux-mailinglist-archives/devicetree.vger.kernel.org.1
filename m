Return-Path: <devicetree+bounces-181187-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E20AC68D7
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 14:10:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E7A2E7AE231
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 12:09:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1F76284681;
	Wed, 28 May 2025 12:10:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=openpixelsystems-org.20230601.gappssmtp.com header.i=@openpixelsystems-org.20230601.gappssmtp.com header.b="fnoVvoK+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B631283FD6
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 12:10:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748434227; cv=none; b=oh5rCdycVk5QOYax42qT3BYYw9yoe2N6aNzoNDRTRDdScnxxyUNDhliPIkppqLgaVyPJqsGWCFyyrBWn+82vr+ujsCUIic09oyyGTF7LPyQn4nAx1SN1IeXRUMRx6X72tFTEa6cAN3GNGg48n9PKrZRGf2SWgyMg3A1d/TsOgmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748434227; c=relaxed/simple;
	bh=L2QoiMpgOAYzN7j7NsvzKHgBXzYZoaXqi8JnrpWblsA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=I1IsD40Tw+DeiJmRXwIyrXy4y5qVNmdxLhy56Ga6VjFBDU2Ld/1q5J3+qDgjhbYF9DNkC0oEHzE1hlsEbIXbIugC550jxA7q7k+ItBjplQPei4zF1F0lZ+8DLwDV/5RtpdpIcoThKsOA/3rEq2VXJhvj3Ffsxe2IiaFK0utS448=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=openpixelsystems.org; spf=fail smtp.mailfrom=openpixelsystems.org; dkim=pass (2048-bit key) header.d=openpixelsystems-org.20230601.gappssmtp.com header.i=@openpixelsystems-org.20230601.gappssmtp.com header.b=fnoVvoK+; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=openpixelsystems.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=openpixelsystems.org
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-3a36e0d22c1so2957653f8f.2
        for <devicetree@vger.kernel.org>; Wed, 28 May 2025 05:10:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=openpixelsystems-org.20230601.gappssmtp.com; s=20230601; t=1748434224; x=1749039024; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xCHwIJitPDNtzV+MO2vPhGWV1mftwYBcoejgITmYhyc=;
        b=fnoVvoK+RKDsr6kjPWOS9KgbW7tQDaB3uRgk0z2DtTzbQ4B7Gp3RC79wlnc78j8++a
         zrdD+PuElYd5/rhSNii0W2caT2/KKzLy01yCtJ6NNY+7+ZcRe7VcR/uISAeCV0cbW2uh
         0B+ijIxly/Zd17O4KnXdL7gc7nZjXxw1P1yd7vgWHdQ9O1bL5T8pE7ZOzZt7MUyAnZEY
         Myvw7QF9lmJzRp6+HOxDIqDUBnYIuc9icWgljwl5b2nmV+Vum7JTcVPpdOLxI1issX2a
         cQzFPolDC4CfxW0H7Qovr4c+jyD6vu40eFZw7f/2NHGMacAMUaHptx4EtwpBJ68btsYp
         jXzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748434224; x=1749039024;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xCHwIJitPDNtzV+MO2vPhGWV1mftwYBcoejgITmYhyc=;
        b=i42kQFkJSjR3D0x5Ohe7GPego9Tg1jXfB9VO0zhN1wKbbwndLwKJLXyhbXERnMTBjc
         mm5jqwuVI0D5hs5ipw1LmVpUKjONp9fLVUR0o3YEv4L+irearPcxsiUfBmVQqOB9XpjF
         hJVbm3SxA5sOzmzNQkJrVkI9/pWXWG6n6PdOS5mPt8g0/X7KH3uwHw0+TnQbxiXpOL0h
         qrKwOSnilxB0xGGPpe2S2CNxz+XWqdsZGhe3ixYH/UHubzQOes05d1J9FvpT1HMX/qGx
         0WUsRM3njijZjzwY6+x9HQYCKMlIgVpjw/4zEOIEN+Cfgbi9pBtWjQ1r+LAZagc3q2GT
         X+Lg==
X-Forwarded-Encrypted: i=1; AJvYcCVhjpO+L1nZjaEjzTkv2EPziapAP6TOE0rvgn0gYl4Uwo5cqew2OHHg0OLXjfWVEPQLReowzkcjmo6S@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0vzpqEQ+ChJqjWnlcsAOPPdNkqPU8rcpoy1jerI0PECZRLLct
	yFJ5K0NcoDLLV5M8CbvK/GzCc87Jub5wBcXVVul1nG8hmQHNtEuKYH3gMyPNeQBRQCE=
X-Gm-Gg: ASbGncv+s3zehFvh48/nH21z6XJor7qpWxDYtOp1yNAaLcLsRHctW08vXvd7immU2II
	tnbRgF3J/29y0Te4QNlUeQ5LRFSARdZ9IA5OnHX9QCRzTtZ97FOG4Wu/UT7UYs1uuTatt1xWgRz
	58f6QkxwFmWkmucwiNJozdp7kEw2e9AdNgK2hYfhpirrq2hBYsUVHlEnc5mxWBUbgdVt6A0MCjS
	bSXNoKYOV8peu0SHjMKCAefN1Bqb2ahvFMBBVzWwr9NrFUjn7wSqKrVIajYD9Oi+4OxSJe7ciKI
	fhdkIB3UqMrVOekXoCDiRsSUXCs0LXY2TvvpTUGhn07cVSWyz7mt3r3YTxK6Wc4Fhi/OdrlZjqJ
	kGishOWp3r1oLib7Pay120c3C/A+nsRmoOc/bKMfQ4dk=
X-Google-Smtp-Source: AGHT+IED45FQM2vua2vIu7C3PBz+jaHdAgReY/lAMgqoxxgZ4KBbr/mmdnIHszTsfaSdGiBGi/ntYA==
X-Received: by 2002:a05:6000:2c11:b0:3a4:e6e8:ac1b with SMTP id ffacd0b85a97d-3a4e6e8ac5amr2972942f8f.51.1748434223753;
        Wed, 28 May 2025 05:10:23 -0700 (PDT)
Received: from [10.0.12.41] (253.124-78-194.adsl-static.isp.belgacom.be. [194.78.124.253])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45006499727sm19874145e9.3.2025.05.28.05.10.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 May 2025 05:10:23 -0700 (PDT)
From: Bram Vlerick <bram.vlerick@openpixelsystems.org>
Date: Wed, 28 May 2025 14:10:09 +0200
Subject: [PATCH 2/2] ASoC: dt-bindings: tas57xx: add tas5753 compatibility
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250528-asoc-tas5753-support-v1-2-a50c3f6734ee@openpixelsystems.org>
References: <20250528-asoc-tas5753-support-v1-0-a50c3f6734ee@openpixelsystems.org>
In-Reply-To: <20250528-asoc-tas5753-support-v1-0-a50c3f6734ee@openpixelsystems.org>
To: Kevin Cernekee <cernekee@chromium.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-sound@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, 
 Bram Vlerick <bram.vlerick@openpixelsystems.org>, peter@korsgaard.com
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=920;
 i=bram.vlerick@openpixelsystems.org; h=from:subject:message-id;
 bh=L2QoiMpgOAYzN7j7NsvzKHgBXzYZoaXqi8JnrpWblsA=;
 b=owEBbQKS/ZANAwAIAblauka9BQbwAcsmYgBoNv0t8tlsWJHF6JYAINe/SQ1/WK7J7WDtFULhk
 aN5eiyvExKJAjMEAAEIAB0WIQQO7PtG7b77XLxuay25WrpGvQUG8AUCaDb9LQAKCRC5WrpGvQUG
 8Bh1EACE40ZRk1UccTLzW3s93Xm4PFR2oG9NTmDHZ8RYCVJqcdnRInm302dSwHxSUZ9kiLaKIS8
 cnchN8+UU4Ry8scY+fyzeTTQYIC9p7xXnLRfUxRYZ/BQcgIruPy1PAxN0yoEG0lWJn6ajLPPnl1
 MTlgP2VDvG0rEwQDavRFpxmY983+kNAaeeoyJ6VGyfSbZozJyV32nJq4Mo39Ptt2OAgN2xxQJJ6
 m3fdggpWULzuD43FlHyBgt4TrW2cMjTyDcLh4ayk7qTG4BmJMbRyeqwoKiDL5TrgttpUk5KXaVX
 I+4bcpC8IBOgvs+DAfA0cSIUhznHfOVDzhgji6Wn9Y4M14t81UYOFBDqOVJXg4SpFUY4ZegHp1X
 RKAX+aM7jjNDDPMLC35guHxD2un86YCsTIZ8ARfo43bpE3PMQcV9KwyvWqHUMjBAL0AZCrTphIn
 is717hztgexbARZanZb8ooOsrp5jdsfPkt0TADW2XKIs1NOlv+/6WEsTNDrdUGb9ZS9m2Z9NAut
 ieJgPhhIynmrrtTqolSgZzfvI6fiyUP+kP25jaOxglurHZEqlFUrlgf/vVBpCW1te2SStaRWaWa
 Lu29/Z5I2bP9pB8YEEFGhFEQ1vtl3F5gtM4fDxu2s+NuCBI+dUh4AlSSAnvmpGipBq2rSj5fRPL
 L/oZ228M92bw9hA==
X-Developer-Key: i=bram.vlerick@openpixelsystems.org; a=openpgp;
 fpr=0EECFB46EDBEFB5CBC6E6B2DB95ABA46BD0506F0

Add tas5753 to ti,tas57xx devicetree bindings.

Signed-off-by: Bram Vlerick <bram.vlerick@openpixelsystems.org>
---
 Documentation/devicetree/bindings/sound/ti,tas57xx.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/ti,tas57xx.yaml b/Documentation/devicetree/bindings/sound/ti,tas57xx.yaml
index 74f7d02b424b9c5d5fd7ea573d7beeb5a2253337..0b013a34e2c10787cf7627a84565078c49bdb7b6 100644
--- a/Documentation/devicetree/bindings/sound/ti,tas57xx.yaml
+++ b/Documentation/devicetree/bindings/sound/ti,tas57xx.yaml
@@ -18,6 +18,7 @@ properties:
       - ti,tas5719
       - ti,tas5721
       - ti,tas5733
+      - ti,tas5753
 
   reg:
     maxItems: 1
@@ -98,6 +99,7 @@ allOf:
           contains:
             enum:
               - ti,tas5721
+              - ti,tas5753
     then:
       properties:
         HPVDD-supply: false

-- 
2.49.0


