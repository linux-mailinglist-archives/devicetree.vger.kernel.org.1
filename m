Return-Path: <devicetree+bounces-250884-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D308CECCA1
	for <lists+devicetree@lfdr.de>; Thu, 01 Jan 2026 04:45:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 44CBB3047189
	for <lists+devicetree@lfdr.de>; Thu,  1 Jan 2026 03:43:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85DDA25C804;
	Thu,  1 Jan 2026 03:43:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=0x0f.com header.i=@0x0f.com header.b="CDsKKN6t"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3F27254B1F
	for <devicetree@vger.kernel.org>; Thu,  1 Jan 2026 03:43:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767239021; cv=none; b=BQZQR8CCjITNMx1infHqkcgWxxNUArqTbjCCSTAtouCQlT6MwS9HGiR5G0L10PpXLKYPW0gBGcOvwqcbgkLUvjZJyyG4jeavg2Sa0O1Jc29HVp7AYv+TIe5GWvnT5XLwEL/hOfotrk1UVxC6CnbJz2NUBDGv8BwJPUFEBvAf+7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767239021; c=relaxed/simple;
	bh=o+0qex6KuLfx4G5lsYAwG45dtHrqRFTjFljWnDgX0J0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=EHxILJBm6gpS00uNWwnCOK1YF3Ko966XEE4KkaT7Fb2wt8wgxUki73M0DyZ6g1IIubNGgx9bx8KKhdD+cIqINHmoEtlZX8HVSt8l2axZZmOlLEWINuVkY7s0ebuI8TCxn/JOd+25BA97NbBn6TqOM/H23RSmerFvg2n7Fss61JA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0x0f.com; spf=pass smtp.mailfrom=0x0f.com; dkim=pass (1024-bit key) header.d=0x0f.com header.i=@0x0f.com header.b=CDsKKN6t; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0x0f.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=0x0f.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-2a0ac29fca1so94929475ad.2
        for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 19:43:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google; t=1767239019; x=1767843819; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bWMyKK2ygqMKtep8wPExCQcNZJJYioQ3HkAIOidcavk=;
        b=CDsKKN6tFlvdNdD+lxhS0zPbccgKnbWAjcx9nyQHsKtAZHvISUg51f2buSTMdiYfqr
         n51qC0CdR2FQTzPJ6I6+FP8KxVUsbDjv1ePmzGNbxttk+rHWpZI1ydPvZeFTjsrRMWfA
         twZRYbF3xSmHErzKgFOjRm9Z3qkALEHDslunM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767239019; x=1767843819;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=bWMyKK2ygqMKtep8wPExCQcNZJJYioQ3HkAIOidcavk=;
        b=lqufxNo4GEnYptuqI/ZcMFD+fuA7O92ffbbvaYGNpOBGiiOwFSEZ8tJrMwMl9uekpr
         g7Gu5ZiQRuB+VCvFJf7RyYjeLZOTM0sWHMDv8xR8EAypUN6gFXpmcnH1pu3XynGEGW/e
         vTqrd31REdNvNl/0QcZbxIFSS1NJNfK6SA7GCMZLdXIT1/nyz7y7pENw12wcGZGX4h+F
         X6PwmRllTwfRK/7aiuSuhz4L2VRgVYiEX38vd7Xd54SFe2ixIG3/eKqTM5JjXiAiDitG
         PxAhCTEiDgGdq1koZHUceTvaH7vmAQxe7+zjGFz2iY2u3KzLCpSRQHsZE90rfDyfkQk0
         ld2Q==
X-Gm-Message-State: AOJu0YwAiS8kA5cO8MkE74hvfmxCqDr27BbxojMRXsYndilsWdlzH9mX
	reTVf2WVPzamISpeAiGZqFpxjwzmuCqoFEeTwGperIqShuui0OTJBSJW1BLi0YdI4qo=
X-Gm-Gg: AY/fxX4C83AGZ55sbcan2UUWYTSGciiWGpfDm+esQooO8y6wlF9H2RwR83LoQamqBSt
	or3izeSye1Mp5JGEplyceHCIRZKHYuoTWRtK/ihMXAaCe2SeXxA4lOLUV41vbcPjTef5KrJipG3
	FuAXkNKsZ8jkjOO5UZDRfSFHsPJWfh+gKbFyRSxdvsMJSHQRMwPmPJj+nlUEF22WY3sBD1wO5Jx
	GAW+f0FcH5tFOF+ltjun6iZsL0qXPJ10D+VH5mx+pAu0n086/08z4Ik7fkRO7E+8FEu8FjwgMC4
	7E1MLl9TfcOf9hdZ4z3HP+LICa4wjP+V8hT981x3KIW3uei4szrULvvkOoDb4gv22ctci6Nc1p/
	xTspCxZ3u8/TF3Ds8uWj6fYOU6opVoUPpNWRD7M6jdjss4LyI9CdZ8+9DiCfZujlqFYGQYBTAhO
	htfW1SrJXOQvWJKSbchIs9CGhfI3Vb9uiOwiGJW8Kj0vLgBThuyWs1
X-Google-Smtp-Source: AGHT+IEIBXaAygueTWxJNAUied3BgqfMTeSt+mQtoXDY4HsMTM2B1djVm4ABb7qzMPAl+DjFRSHexg==
X-Received: by 2002:a17:902:e849:b0:2a2:bff6:42ef with SMTP id d9443c01a7336-2a2f2202e4cmr437213265ad.7.1767239019278;
        Wed, 31 Dec 2025 19:43:39 -0800 (PST)
Received: from shiro (p1536247-ipxg00c01sizuokaden.shizuoka.ocn.ne.jp. [122.26.212.247])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2a2f3c8286esm340437965ad.33.2025.12.31.19.43.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Dec 2025 19:43:38 -0800 (PST)
From: Daniel Palmer <daniel@0x0f.com>
To: krzk+dt@kernel.org,
	romain.perier@gmail.com,
	robh@kernel.org,
	conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Daniel Palmer <daniel@0x0f.com>
Subject: [PATCH v2 5/8] arm: dts: mstar: infinity: Correct opp table name
Date: Thu,  1 Jan 2026 12:43:03 +0900
Message-ID: <20260101034306.1233091-6-daniel@0x0f.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260101034306.1233091-1-daniel@0x0f.com>
References: <20260101034306.1233091-1-daniel@0x0f.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The dt validation stuff expects the name of the opp table
to match a regexp and it currently doesn't.

Update the name to match the regexp.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 arch/arm/boot/dts/sigmastar/mstar-infinity.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/sigmastar/mstar-infinity.dtsi b/arch/arm/boot/dts/sigmastar/mstar-infinity.dtsi
index 441a917b88ba..40e38d995542 100644
--- a/arch/arm/boot/dts/sigmastar/mstar-infinity.dtsi
+++ b/arch/arm/boot/dts/sigmastar/mstar-infinity.dtsi
@@ -9,7 +9,7 @@
 #include <dt-bindings/gpio/msc313-gpio.h>
 
 / {
-	cpu0_opp_table: opp_table0 {
+	cpu0_opp_table: opp-table {
 		compatible = "operating-points-v2";
 		opp-shared;
 
-- 
2.51.0


