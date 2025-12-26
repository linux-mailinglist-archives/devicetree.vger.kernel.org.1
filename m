Return-Path: <devicetree+bounces-249740-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E2593CDEA5B
	for <lists+devicetree@lfdr.de>; Fri, 26 Dec 2025 12:32:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 696883013EDD
	for <lists+devicetree@lfdr.de>; Fri, 26 Dec 2025 11:31:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1272331B133;
	Fri, 26 Dec 2025 11:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="B/fwVLeT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4046331B804
	for <devicetree@vger.kernel.org>; Fri, 26 Dec 2025 11:31:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766748713; cv=none; b=C+vqY9KQBGcOPhgx7fMjvmMGSwkqQVntmnlq5CfiMLCGal+dtrNjeJMRxEdSDfLJ7lDFzJtYIbc3mta1bKKSyHhh3OzdAoK23rvitcJV5r5HXi8NRLl0yOY+hfbiznydqYRNjfs38sut4g65HK6GuzerG4P8BRrN2Sh7NiYNDCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766748713; c=relaxed/simple;
	bh=pUZReCh+vIpgfrGMTYBFp5j2uqehUu1pBP7haht/rr8=;
	h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=P/0IXVP31pTpvI1J/TmlfmK7MAtrNP7dUfLKI1TiNfFmxVKmvWNxijb0l6ekDxEgbEzKrUTUf7+k/wRxn17XhSS0i6N5TPu3XU2CTXFPmZXi1/5K1122WB0xDAi2nFmkiMXEsUgzzE2zudP3mNkZQLIjvNUZI1fJha8OtK1TFqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=B/fwVLeT; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-42fbc3056afso3837051f8f.2
        for <devicetree@vger.kernel.org>; Fri, 26 Dec 2025 03:31:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766748709; x=1767353509; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KuMCPB2Cfnw96ImXExWXbYx4SWWW9bt6GASD3DMHGsA=;
        b=B/fwVLeTKJeh+Pv914E1Dt6oJ1zR3khzKFFE5F5mIwOo6VFYiuOC4JtFWVF4w0YSnp
         uzYA/tOdu/zHbbf7AMku1PN1L1NLzX7AUi5ryQOpy4pG5/LEpos3qKQH/HNjLqmuG0Hf
         EF6V8bOPvMiu73dnwjvYxj/0UdfmO2jk3aoxxP0veNXmR0OBfadShfL1K7paSCNrb+BO
         SYxNi4yFI07UChrNrS1SmRPaWSh0Nvua+9Od8TkXNFf5t2WRQ4BfjRtTVo7OI7rL45qI
         /w5Vhi2kg3yRYk6R+PIXYO8Mp+wk6qN7NHx1QZz/SUJyK92POmtVocVZ7Doo0jiOKTvh
         pOlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766748709; x=1767353509;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=KuMCPB2Cfnw96ImXExWXbYx4SWWW9bt6GASD3DMHGsA=;
        b=QBkivmw1iDW6WGTshADtVqj2A5oUEtSVxdRph3PSyUbf7nK9VvdQ94CKh2OLtAKOX1
         6XhVFkL2lJdiNZu4VzYkIE9rqNRLXePdsKmSqbB3k5/MooNyqPsf4xRnb658Hi3Ise6G
         W+rN87eCIAFE+nIJ8pKng5nSJlBku4o7zSTQPYXFIfSKWJf0VPUkXBeBAkns5Kj8GPf0
         2he9YPJ+9vSEHjattlf24ongFgmbYWR5vCWY9C9zo3ejnY59dwyyfIzMsdBBvZ15oMss
         k65/QbcldB3oII1NZ54RVWrvrM7xa6z7UQwvkMP50ZHJuwDCmxKhDWjQjQiWV868FKJS
         PHhg==
X-Forwarded-Encrypted: i=1; AJvYcCUrK+Zv2I5rVb2u6sBkR2JLDAZojf0blZwcVKHJRBSjtA0S2IPKQVnWW3UXVLpCfH0G2ZUdeYOoATO+@vger.kernel.org
X-Gm-Message-State: AOJu0Yz825JYHHOmeOLlXfAJPe51MCpFCrrdQ7U3U+uX011sOyKcdy9d
	L/ryzNylxqHEpAK9DvXq3m8TDJm/Eu+mgtQkMUIEYBziHFIWzAVPrnPi
X-Gm-Gg: AY/fxX4lwftlFYZ/MS5rOS1atD5kBvrMrjFhXpsHMfgdp5Y6rKbHFwc8G82zbhaLUpT
	+7E1itcKlczTMthiF01IiqYEPuZFGUyu4XwE2gk3eGrqTfH1ayBgfAlr5EOQmjWW5IxNY/rTokU
	zH0X8NqTqXkx2KxJQbWTz/Hsh/FPNzOpHMIOG5nTaQyKbgpdj6AYNLyUkIqP3ZhYfVmYG+/U1t8
	TLTX0Feg+LKlYWztIBlAJYYhGGEGWKaq4RXfK/1iVncw/Iae5jq3oVV1pO80T3A0bzPD0wxtM3h
	BRKQbPzGlKQz8GYb25xZXlajeP8BdeE7iwpHnTFwnPkY8uLYrUoRgArK8ty+QaBqWL3TOuYEIa0
	kBei3V2+XwWN/ovl4OMPS783nJFNMxZ+JQ5tKS6spvNs7ThPxQQPb3Y4zk/PYXe3G/03EWgWfzW
	nOns9HuHRjlYFrLxY=
X-Google-Smtp-Source: AGHT+IHgXf/up4jkfIeElgBTb357EsgC5MRWNtr9/aPdG43pJwbtZ7QqWeH/nFQ6nQwGUv1j8qob1Q==
X-Received: by 2002:a05:6000:2c02:b0:42b:3246:1681 with SMTP id ffacd0b85a97d-4324e4c97d7mr27121460f8f.18.1766748709464;
        Fri, 26 Dec 2025 03:31:49 -0800 (PST)
Received: from toolbox.. ([87.200.95.144])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4324ea1b1bdsm44182107f8f.8.2025.12.26.03.31.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Dec 2025 03:31:48 -0800 (PST)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Detlev Casanova <detlev.casanova@collabora.com>,
	=?UTF-8?q?Olivier=20Cr=C3=AAte?= <olivier.crete@collabora.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Diederik de Haas <diederik@cknow-tech.com>,
	Dmitry Osipenko <dmitry.osipenko@collabora.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Dragan Simic <dsimic@manjaro.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/3] media: dt-bindings: rockchip: Add RK3568 Video Decoder bindings
Date: Fri, 26 Dec 2025 11:31:38 +0000
Message-Id: <20251226113140.573759-2-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251226113140.573759-1-christianshewitt@gmail.com>
References: <20251226113140.573759-1-christianshewitt@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The video decoder in RK356X (vdpu346) is described in the same way as
the one in RK3588 (vdpu381). A new compatible is added as the decoder
capabilities are a subset of the vdpu381 capabilities.

Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
---
 Documentation/devicetree/bindings/media/rockchip,vdec.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
index 809fda45b3bd..656ceb1f116e 100644
--- a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
+++ b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
@@ -18,6 +18,7 @@ properties:
     oneOf:
       - const: rockchip,rk3288-vdec
       - const: rockchip,rk3399-vdec
+      - const: rockchip,rk3568-vdec
       - const: rockchip,rk3576-vdec
       - const: rockchip,rk3588-vdec
       - items:
@@ -107,6 +108,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - rockchip,rk3568-vdec
               - rockchip,rk3576-vdec
               - rockchip,rk3588-vdec
     then:
-- 
2.34.1


