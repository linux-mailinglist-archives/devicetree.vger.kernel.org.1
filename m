Return-Path: <devicetree+bounces-144976-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CB7CA2FCD8
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 23:17:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7CA801888536
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 22:18:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B995250BE0;
	Mon, 10 Feb 2025 22:16:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=patrick-wildt-de.20230601.gappssmtp.com header.i=@patrick-wildt-de.20230601.gappssmtp.com header.b="yiSLSWpZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f100.google.com (mail-wm1-f100.google.com [209.85.128.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94BF12505D5
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 22:16:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.100
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739225772; cv=none; b=KnCAYjG4SFPuULXT/RgOw5qEpBMouBF3extqaEmbMcuLbLgMIw6cc+duo8f/7Y1/o+H+SZNkobeiDuFEFCSqDN9aHHWGJUWnp8F3yf0pTwTEbygw989XOAVcDCY3vSBrn2sNOhQQH8UIFJQveYO8CKez/Pnq+PYhyBa67Wh29NQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739225772; c=relaxed/simple;
	bh=TYE+R0o4PJzDw11q+VbX7TMEPpjPL9oOdN9/IVvEeHA=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=SBufOd1VL8wxygaZB1EiGFIuRS8eX5Ngk90Hbe83ixH+96m19e3JPyIWLJ0otf3Md/ZWT3zcQIW2NXu+9I0gokXLFcsQ47vcJXpCY83FxxIFKK3blP2jFkoqL/mY5IwvO1K6SNPNG3H2v/mZHR/IpWxLwEq7Tt0qRSTYtMvb684=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=blueri.se; spf=pass smtp.mailfrom=blueri.se; dkim=pass (2048-bit key) header.d=patrick-wildt-de.20230601.gappssmtp.com header.i=@patrick-wildt-de.20230601.gappssmtp.com header.b=yiSLSWpZ; arc=none smtp.client-ip=209.85.128.100
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=blueri.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=blueri.se
Received: by mail-wm1-f100.google.com with SMTP id 5b1f17b1804b1-439350f1a0bso14024385e9.0
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 14:16:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=patrick-wildt-de.20230601.gappssmtp.com; s=20230601; t=1739225769; x=1739830569; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=13HhyQSKe9R/ysYBmBYlN/OC3FOpvN6dJIQ+dDqvrXY=;
        b=yiSLSWpZ9E6KMVg7R05jh5Kg97lXdrgigpe8vwkY4yxWCF41qYF0mcJv6M2dVoSuw9
         xY0H+j6wCkg7VDXRAQTY1t9YkSImp0jawqTwT0IRED0Nf+iKYydlG1B1+JPhHtUdKFQs
         ZJWlpJuczojUPGoOvdTPJ9VuXWKvOeFEJxTR1sTXsMInYj5mVbn1nnCA1aa8mFc2XDq2
         W61/yM91/nTdT0rF+8bRurpfBQDVq21Yf/yrR7cLY65urluYOZ8DLmWuLoRJqiqIHn/D
         cCemHM6nOKZD0PcMODc/JGb9NUDEvgVEylcgCXD+vz1+VvuSYscudpA3m2n0OGak+how
         NpfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739225769; x=1739830569;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=13HhyQSKe9R/ysYBmBYlN/OC3FOpvN6dJIQ+dDqvrXY=;
        b=K5Bipd9aTh8HKqdqK1ECP92ya/oarHS0eKS3MT1VH4YW3+WQnotuhQKYd8VlgJ5yrZ
         L6FKszVVznuwkYdt6hATJX5B2UAaFrIL0HGdm6ux0Z4YHa0mGxt/P5lEV6e4tngigJ6j
         8Vsm6BzVFtDnC6Ky98A1OU9fG7Tf67yvXVXhAVPvZj8KLTJbUxWkB15aZtO5YvR2noAu
         CixmWIltZOGG5CYg63G0jYmapaVekJN6d176/eo4TIYcNWGBXJHnsXY1HCowjbEOwbMO
         bpQfUJJqygquCF5mWoWZdq115/CecXMRmim8j7P1Hev9SXyN/ZbhKQuruMLufdfsMUpQ
         M5xw==
X-Forwarded-Encrypted: i=1; AJvYcCXiuILmPwW/fFWzaJ4OHhQXEkAnBvG1tlZ3D4kCekmrirQ3f5Brn3W8lAmG1zVRvA2ldeYhU5E0IZ9Z@vger.kernel.org
X-Gm-Message-State: AOJu0YyIsYxJA41kCF96uheoPXkvVm1kpem80ZNrhkW5nDuZg38eUivM
	dSK0OoH5GAQWCUgYhDSOQ6ejmofT8T1rBqzrvVGatHhTinVsozaxSXbAuMdkOn42shbAKicj4Xn
	W17LFuhyEnuFS/3ZW9rUVmXFml6SPOrHO
X-Gm-Gg: ASbGnctVS9sVWh9DTUCgsVbtpysMdd+aemtlFzaQD5Ksn2AV1HWHhEhBlAMFNfhOOl/
	s8Gz8jSRBiMf5y5y3At0ig5UKikIXeuYBwUi8O0fdgrYaIPTf9XsGtGU40OZt6jfOMixeRxU77o
	wTldqBCX9zZ72/LgV9VmoqCPrEKsU3MraXc/rZOXD07/Nnxi5mr7A41otYxT7yprk87eRoCYfnq
	Bmp4/MfM4zbktJKKKR6C85+e67HQAEEqkuitfp2pq8Gr0O2sgMh8AAtgS+NNIReum+zGDnmdzvW
	W6Xm++n/3aH/gPLdB8rb9YfWS80T+OX6
X-Google-Smtp-Source: AGHT+IGIpesWPH995t5ObgCbest3RPXsMCOOqvkk8OX3wG7izUgYYfXIQA1gziN/MFCY0sX5NzInpnZxX2s1
X-Received: by 2002:a05:600c:2d0c:b0:435:edb0:5d27 with SMTP id 5b1f17b1804b1-4394cebd10emr8852015e9.9.1739225768451;
        Mon, 10 Feb 2025 14:16:08 -0800 (PST)
Received: from windev.fritz.box (pc19f8e2d.dip0.t-ipconnect.de. [193.159.142.45])
        by smtp-relay.gmail.com with ESMTPS id 5b1f17b1804b1-439324eedf7sm5407785e9.40.2025.02.10.14.16.07
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Mon, 10 Feb 2025 14:16:08 -0800 (PST)
X-Relaying-Domain: blueri.se
Date: Mon, 10 Feb 2025 23:16:05 +0100
From: Patrick Wildt <patrick@blueri.se>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	Kever Yang <kever.yang@rock-chips.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH v2 1/2] dt-bindings: arm: rockchip: Add MNT Reform 2 (RCORE)
Message-ID: <Z6p6pdoLwvXYxkCK@windev.fritz.box>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Document board compatible bindings.

Signed-off-by: Patrick Wildt <patrick@blueri.se>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
Changes for v2:
- No changes, apart from Acked-by

 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 522a6f0450ea..bc995db8cbfe 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -710,6 +710,11 @@ properties:
           - const: mqmaker,miqi
           - const: rockchip,rk3288
 
+      - description: MNT Reform2 (RCORE)
+        items:
+          - const: mntre,reform2-rcore
+          - const: rockchip,rk3588
+
       - description: Neardi LBA3368
         items:
           - const: neardi,lba3368
-- 
2.48.1


