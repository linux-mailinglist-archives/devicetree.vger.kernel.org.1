Return-Path: <devicetree+bounces-274027-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +NtKDkBUsWlHtwIAu9opvQ
	(envelope-from <devicetree+bounces-274027-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 12:38:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E61A6262FE5
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 12:38:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4AEE2304D16F
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 11:38:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 375E43DDDC2;
	Wed, 11 Mar 2026 11:38:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZeBt1krK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C434B3112C1
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 11:38:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773229106; cv=none; b=dZrdnvqI7hv2CCupVdZ2fwpNxx1cgrmC2P0k67x4HR8TzD4paWSviOzgQ0nUz2nc62P+0VJHwu9ARzg7ziAC0tq1CgT50jgP4v82U8w6jf0NfvSe1yOiK+Lxje80f0/n/DayhrfmPWTZ+3JUF2285rpoVnc690YrS1u2aKRuzRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773229106; c=relaxed/simple;
	bh=2iIh6/jj/6H6G9sjbI72U6v40DlA/kmaSOoZzH3A9CA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=s8SYWIztwJgnfmH1xmm2UEmZtUhpmj09wn9RQi8jpX2NuNr4US8VVYQ0mlD4YOBNWx3IHw/9f5C8X+YRnP+7meO351iuezJSCBd0VVcAH2xWtMs1F/9H2wj0JjLCFlfqCUca/46dGY35BGgLWWlLf0iVJCxS6WMs+JgbEpJ4dcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZeBt1krK; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-48540d21f7dso26284085e9.0
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 04:38:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773229103; x=1773833903; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gk8qVbjj9bf3D7zS5clldQ8atXUlML3S3z10DBlLuFw=;
        b=ZeBt1krKhEnfZFyHZJoA8Se9GBzjGuv9GTh+GbF1YehtebUytaipEJhQJl4k9CHkp3
         AFDoj0uiZqn/i01mCV8eFoJY55y5An4VAslB1Q2eHAIKe2QIgld5nY/YnfkLFreBeNFL
         G9OFWPuX4ZAM9YXMmIzqyTDVHTLBi5sBloYY+euoRJqOQQ+EC48tWSBSi7nsBW4tkMPm
         7BdMEML9c456JHaJ5Nphj82FmD52TrKpIGFcUn2ggDcOFUoumzbnr3fy7E3/bpBLasAy
         7q8LLkpFyI4Ji32124CrtxG1qOLe32iG6Ka8AsjttSghrf23SMF3IavZx/YPgTfN2fbh
         oqjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773229103; x=1773833903;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=gk8qVbjj9bf3D7zS5clldQ8atXUlML3S3z10DBlLuFw=;
        b=GoeLFDuOD8aVntE2BYiEjfs+Cy5APpRBbAVZyfNii8OsjvACFKKLXJFTrkXUjr73Da
         3Q4kUsNFrucpqQH4JJ9Kt+8yJtaubIkTi6+PCp8y62ABStSiIgDaZwA2Tv0nYUrt9KFt
         Kh1gDNTbynNvJz0wSEiXPFYA72aDIsLN4L1I8XDA4taMPhGWd6XQjRg5IK58n8HJcBjA
         WTIz/GkUOcGAwSGA0Fv7ha/SQl8egog3gJss9EOhcmMhFrurz0I8W4nFYtk7HdS1EM48
         UwNpOqwy0xhkXXH1ho7aPi89A6D30fmbOL3S22yca3Kg3mdxjNrLnk7LrM9nL1qOViXL
         X+QA==
X-Forwarded-Encrypted: i=1; AJvYcCUOP0eZ90Q2cmrNJyRr/q481AfMoQAbCadDOZc7bKfC+0D9nUPivPF7rvWJKoMVzcBpgqMJGVh8uPOT@vger.kernel.org
X-Gm-Message-State: AOJu0YwjxX8aJjh4Sclj0TjSGLuJTq3jb+qUoeoJ1g1kmJceSU28a2Of
	UcomH/3SJNV7F+VZ6G59977ru1sFgquv2OtKFsgF1KaMHNc6iNoi6A5y
X-Gm-Gg: ATEYQzx4VjAWcfFaG/vnOsssvyKN3RUu+zANfwVDAUsOQLfI2UG4j6Vj5oO3XkYjpbR
	1lnrcjMHlhjbwsh3hftOE9RoRc2448RLdByiy/97kN62FT4K+Cb7Bp9imadrZpExJ+dzrhoAc0I
	wXFDFOgefQ9Fnykxz+x+lZJKMGGHXVnNjOVcPjr6sTy+MR+1QkhBkkr+C9OOzgeb5dAY1QNhh8E
	g8EkNYgW/OV1VGxMskGxj8AVwwXaPcAFJkM1GN9R2cePptislgkHyLYkof+YDAHn3ggnPe9dCKg
	SJBWCoj0GJPFs1vNAJT9EIa8aKmY9mWIVsRNRT1A0xlXD/URBM5Q0tBQa6B39DoV2Eg6lw+doCX
	JXjbfsJXRU/6YFeZv0/1GKWp1husy+K9VaTuXNJ7dd2D9xcfalwYdiJdWpoBb7AcCp+JWXAVUBZ
	TaK40aOLd9etvc0Eu2lN4cF4uv4A==
X-Received: by 2002:a05:600c:8b13:b0:47e:e48b:506d with SMTP id 5b1f17b1804b1-4854b100d98mr40593355e9.16.1773229103182;
        Wed, 11 Mar 2026 04:38:23 -0700 (PDT)
Received: from [192.168.0.39] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48541b6f6b7sm188681855e9.9.2026.03.11.04.38.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 04:38:22 -0700 (PDT)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Date: Wed, 11 Mar 2026 13:38:02 +0200
Subject: [PATCH 1/2] dt-bindings: iio: light: vcnl4000: add regulators
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260311-vcnl4000-regulators-v1-1-66b6038ce563@gmail.com>
References: <20260311-vcnl4000-regulators-v1-0-66b6038ce563@gmail.com>
In-Reply-To: <20260311-vcnl4000-regulators-v1-0-66b6038ce563@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Peter Meerwald <pmeerw@pmeerw.net>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 phone-devel@vger.kernel.org, Erikas Bitovtas <xerikasxx@gmail.com>
X-Mailer: b4 0.14.3
X-Rspamd-Queue-Id: E61A6262FE5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274027-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.sr.ht,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

This commit adds regulator properties for vcnl4000 ambient light and
proximity sensors.

Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
---
 Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml b/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml
index 2ba4d5de4ec4..a1b4c02db246 100644
--- a/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml
+++ b/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml
@@ -33,6 +33,10 @@ properties:
   interrupts:
     maxItems: 1
 
+  vdd-supply: true
+  vddio-supply: true
+  vled-supply: true
+
   reg:
     maxItems: 1
 
@@ -54,6 +58,9 @@ examples:
             compatible = "vishay,vcnl4200";
             reg = <0x51>;
             proximity-near-level = <220>;
+            vdd-supply = <&reg_vdd>;
+            vddio-supply = <&reg_vddio>;
+            vled-supply = <&reg_vled>;
         };
     };
 ...

-- 
2.53.0


