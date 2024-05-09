Return-Path: <devicetree+bounces-66079-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 174A88C12C0
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 18:28:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C04AC283C71
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 16:28:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A53D31708B7;
	Thu,  9 May 2024 16:27:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="Cst79pxW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3918F1708A6
	for <devicetree@vger.kernel.org>; Thu,  9 May 2024 16:27:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715272059; cv=none; b=J4rNj1219Q3hO+wWlVr7RblOt6KqenqKOiFO/ZMtYMuOryo6H4vBWDwtnN8C6tFDjeNT64OC7qVxaoXOKvI4bkTfX1XzwvoBs9EcHUCzVYw49EtOvG2bswkcgo7Sntvqr4M2JtK+ltP+7tDhbUNuIalo8zw2T4VSfcgDe0qGiKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715272059; c=relaxed/simple;
	bh=h9e60qU951Qvm2FC7p6XzmI4LIb1DbNk3veMfbQk7y4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=iLGg+qkIczfaKeFra9bcSVqVBdom0fWBiXee6hvgU0OzmQUQbMLmuptf+4CQGiXqTKMuDfu07HO2AQM8fORjJl+zHtklh6E5s08CBwQp3jqODX8vugwLtfSz/QJS6gQt9z8GwVJUtsoPFWIywVAYF+uIi56EMsomVGfuvoy1ZeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=Cst79pxW; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-1e50a04c317so5837795ad.1
        for <devicetree@vger.kernel.org>; Thu, 09 May 2024 09:27:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1715272057; x=1715876857; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jlKJTA+y4FZTs32pZYAJnhXlsU7CxhYFnIn7J/LCVc0=;
        b=Cst79pxWu/gQhJd1uXEapfQXn3XSi7IS4eVFvLGiPkPVtf6VOuvr/EE5DoFUxY4MN5
         UrPcyAvBF+Tj9hcDEB/efeMpNpsjpuc5XCifdKoQ66Aydp4qvnIcO5Jm03LDdhafyLlb
         k8euHAmrI17GpKcuTdF5eBQWdE7UO7Md+IM5OSbZ/IttepaODSBvfkoNIl1jst7TXR3w
         dwQ3UgiQvSCCBQP289ToC3QtCI1lK6M1sJoh/sfHVwmJMtIVB7kQbrGtzAnqhjjR3Ehl
         ik3JZrFULotwcawp9mfSB3KM+N+u6wBKWYk5QpUao2IFs090AQrFv6gu/5LNjNN+Y0y1
         TMSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715272057; x=1715876857;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jlKJTA+y4FZTs32pZYAJnhXlsU7CxhYFnIn7J/LCVc0=;
        b=XsZo77/CkZkWPFzGGrDsnbPX8qBEjuuJbMTWEIZQfQGAgNXoi5UiBz+lGUPicgc9gV
         zY2bsc91IeTLakT15PNxjU1myeiR4w96yZNwChIiEW9Mx7axlVpkuajfRifFlUWwFmjT
         6qrwD7WpPPPnvFPcDv0Fw5wLtJ2pwszONFIwbyo2B8na4//cBxJ4Ml1W+4MeUAjbakbI
         ujI30H2Uoxi98S6sXvYqZ5yCkJskO8L/T2jfkO3ORQ1deh+prjPIVIYyMdA/DbU1ANU5
         OeJ9wBGtmzcXhN0RRljgOXLMN9eF/9qzSzhYQi/6so+rdYwevrUfcJ0d6bmT8LpcelnO
         g9Cg==
X-Forwarded-Encrypted: i=1; AJvYcCW+KSn8LVMlOVVBQ2ZygM1zZx6K4Vhy+ypCD3TEChYErhc4r0KnY0/6U/wfjtkOltx+o7jp/JpgHhLzlcQmPL/b3Yc6kJsITE5Tag==
X-Gm-Message-State: AOJu0Yzvmj44n+tola6haib2dDL+H+HtEXU/FyaQO6x7dFcm8W1kfkxN
	51k+ZCmnXqmg1Q25hU5SoFT3zTC6Ws1aU27e4oASEH60352TaxfD+A1Z9VBP38Q=
X-Google-Smtp-Source: AGHT+IEszGbwB/vNXrttRGOidBoOwpuhaJiBy+bYw1u/tAahtS9W1vF9JRL7sPHMpNOzMB5IXCQqvg==
X-Received: by 2002:a17:902:c086:b0:1e4:8c64:33a2 with SMTP id d9443c01a7336-1ef44059be4mr1058755ad.68.1715272057380;
        Thu, 09 May 2024 09:27:37 -0700 (PDT)
Received: from [127.0.1.1] (59-124-168-89.hinet-ip.hinet.net. [59.124.168.89])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1ef0c13805asm16210285ad.264.2024.05.09.09.27.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 May 2024 09:27:37 -0700 (PDT)
From: Andy Chiu <andy.chiu@sifive.com>
Date: Fri, 10 May 2024 00:26:54 +0800
Subject: [PATCH v5 4/8] dt-bindings: riscv: add Zve32[xf] Zve64[xfd] ISA
 extension description
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240510-zve-detection-v5-4-0711bdd26c12@sifive.com>
References: <20240510-zve-detection-v5-0-0711bdd26c12@sifive.com>
In-Reply-To: <20240510-zve-detection-v5-0-0711bdd26c12@sifive.com>
To: Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Conor Dooley <conor.dooley@microchip.com>, Heiko Stuebner <heiko@sntech.de>, 
 Andy Chiu <andy.chiu@sifive.com>, Guo Ren <guoren@kernel.org>, 
 Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Jonathan Corbet <corbet@lwn.net>, Evan Green <evan@rivosinc.com>, 
 =?utf-8?q?Cl=C3=A9ment_L=C3=A9ger?= <cleger@rivosinc.com>, 
 Shuah Khan <shuah@kernel.org>
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Palmer Dabbelt <palmer@rivosinc.com>, 
 Vincent Chen <vincent.chen@sifive.com>, 
 Greentime Hu <greentime.hu@sifive.com>, devicetree@vger.kernel.org, 
 linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org
X-Mailer: b4 0.13-dev-a684c

Add description for Zve32x Zve32f Zve64x Zve64f Zve64d ISA extensions.

Signed-off-by: Andy Chiu <andy.chiu@sifive.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
Changelog v5:
 - Reorder this patch prior than the first patch that uses them. (Conor)
Changelog v3:
 - Correct extension names and their order (Stefan)
Changelog v2:
 - new patch since v2
---
 .../devicetree/bindings/riscv/extensions.yaml      | 30 ++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index 468c646247aa..cfed80ad5540 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -381,6 +381,36 @@ properties:
             instructions, as ratified in commit 56ed795 ("Update
             riscv-crypto-spec-vector.adoc") of riscv-crypto.
 
+        - const: zve32f
+          description:
+            The standard Zve32f extension for embedded processors, as ratified
+            in commit 6f702a2 ("Vector extensions are now ratified") of
+            riscv-v-spec.
+
+        - const: zve32x
+          description:
+            The standard Zve32x extension for embedded processors, as ratified
+            in commit 6f702a2 ("Vector extensions are now ratified") of
+            riscv-v-spec.
+
+        - const: zve64d
+          description:
+            The standard Zve64d extension for embedded processors, as ratified
+            in commit 6f702a2 ("Vector extensions are now ratified") of
+            riscv-v-spec.
+
+        - const: zve64f
+          description:
+            The standard Zve64f extension for embedded processors, as ratified
+            in commit 6f702a2 ("Vector extensions are now ratified") of
+            riscv-v-spec.
+
+        - const: zve64x
+          description:
+            The standard Zve64x extension for embedded processors, as ratified
+            in commit 6f702a2 ("Vector extensions are now ratified") of
+            riscv-v-spec.
+
         - const: zvfh
           description:
             The standard Zvfh extension for vectored half-precision

-- 
2.44.0.rc2


