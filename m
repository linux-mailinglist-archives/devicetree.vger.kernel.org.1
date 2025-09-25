Return-Path: <devicetree+bounces-221530-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 287A4BA0AB7
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 18:41:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2DC66622058
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 16:41:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4710130B50E;
	Thu, 25 Sep 2025 16:40:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XWmYQdQe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 765E430C365
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 16:40:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758818459; cv=none; b=ONlRmavHc9pqcHKp6/xA6LZqJ+jYogypBI9EYCwhlEH7AGMFh8c1cNzrCe2mLYzolg4rm0MIiFvUePOjWncE5BSg+8FcM8C5EVZeGxvDZ1rvwQeFhDQ+2JIJWLZew/VINEp1yZN52MXEGlNqcpNURn4HypSZ0tGHxZe8MJmjlSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758818459; c=relaxed/simple;
	bh=v7/bGU7ZHCKWwoPLxIX6yU+W6cwtgrDMpcJa/blq4Ig=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=iam91O2ZZh0xPdYAh1WaRtfQgutO4SamZ8KAqVVY68VzS0TUBgFRIYmqWtAv1BlPJtMqhckey2OnuIJ5mb4Rsvw3Simqgdgr1/9yrQLOoo4wYPx1nPP181UwsBuxmnlZL7pRMEB5NAQ3VmdYFHqThXImNIEp+ryvhcwsqzeCxDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XWmYQdQe; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-3ece0e4c5faso1213164f8f.1
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 09:40:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758818456; x=1759423256; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LOcrIoNr25HDz/QJv/9nz1km8B+JKQd3A3tnWDgtjkQ=;
        b=XWmYQdQe39PjSYHTPfQ8BN8pIXpLGrUwjcy4s+P2SIQkq1CDiIsZ/ivXG80BvKdPf2
         0YEp6AwNRZNF3Qfy3axo7zfu5Q+zAFRuSY/toJLvRa/l2uSf4Z1Yp2fR2vcf/TOe/e/A
         r4G08N/d5aJlPwNXX/Nx+uQ5fk+f87BsXjmjxWdvcaQ4RrXmilNdSi1D6ENpUXiZPM1u
         c7FLQiAqdpr9xexiVRdelXH32dsWLQkuXbRzt0cuwmFUjELJO5wcofLuubbvBYOwpnHf
         6QuK+z42d5AX7GXFlFCLHgofUpE5v+yWUBMzigUnowWU3WvQnrogzi7ULa3KNGq5p//h
         Cmzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758818456; x=1759423256;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LOcrIoNr25HDz/QJv/9nz1km8B+JKQd3A3tnWDgtjkQ=;
        b=Y8PNVQvMjhnCYU+CHf9Ic1dx/bQnzRGzSAUM0s1Z3nR0ZJZ8MZbE7VeOpeopta1XOg
         7UNq2ZDohyarIe6QKBo0vsPUcL38uGo5BlFvw+tnFD5/XIiH5lFCK5XwcQ53Ed7nlKWl
         AXAoBcYhCm8cgo+/TTIl/AM9w/zZO8hHe0GHB3n5MOKxXri7MG4HMUy4SQ+4R08+JTtq
         t9MRmfUVy60hE1ex1kce1QxLDcXMV8gP+aNjqRvIaWesGtnQojXRLoCGzhsdo3LzhV3f
         UfLNypDwdks67+mDlg5SFZlgR1MWIUlSTSlXF+QOqppvDEyshpiuT3R9ITkZrbHK40UP
         SQ2A==
X-Forwarded-Encrypted: i=1; AJvYcCWd7FAHqO7nvOfht8tYXJiPPLPQePMqcCHn+ogTgoRHT+CC+U6fqe5f3Cqo62oqioe7meyPv/6oRUTV@vger.kernel.org
X-Gm-Message-State: AOJu0YzaJo2NQ4T8YjGkAjs8XkDhkfTCFRCtNwCxC6NUy7WZo49ka5Tm
	01bVQMuJj7eXdoGK0ll73N65Ka4XA7ljNq0WRpq8XFB2llJIB6/rjjEM
X-Gm-Gg: ASbGncvnm92r6DK7MnOfo/+VK0MDGU7ju5hCmnOLgOh34bAXzAHzgwR3ZxEYtYi4vCh
	EVchZxq7bJkZB9jXAUV/9P5gwOQEWpnw7ynHXE4ywulghPZESIpnW/MIE1j1zCxRn292Trr8VnZ
	agYQlqBEyW3w0BeGn8gMMBuGZ1/1j2ZvJwKyQC6D0jZf/DHUYO/MI5vT65EaN1b8atEGvLdtGG2
	v2CSp1ZvV48ec1DFwTRKqeC/Wa8cS7E5cvhzoQ7Vq3UDdGYB7fDdJaz9PrQ71J03HPlGERuBDdA
	XpO+q4lz9IlJrkd8K1hEQzBG31qR4dHhd4HTnyhwWTkup8V5PFbV/Mv+E2ofnjqKBChOmIZ2En/
	0MtiHGMzvg4AEaQy8VywyLsSAasVBUxWquJ0sx7OJC4sAIb4g6KPWwzqbBuUYFCJBqh2Thbs=
X-Google-Smtp-Source: AGHT+IHX/CI2L/vfg9Dj8p1oMbt+FsoCRcXjcK4DCzITBXnWVWzmuBAbvqxNfCx8Z5RM2iRB5ODlEw==
X-Received: by 2002:adf:8b88:0:b0:410:3a4f:1298 with SMTP id ffacd0b85a97d-4103a4f15e3mr2182661f8f.15.1758818455924;
        Thu, 25 Sep 2025 09:40:55 -0700 (PDT)
Received: from Ansuel-XPS24 (host-95-249-236-54.retail.telecomitalia.it. [95.249.236.54])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-40fc6921f4esm3591904f8f.44.2025.09.25.09.40.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 09:40:55 -0700 (PDT)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Christian Marangi <ansuelsmth@gmail.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	"David S. Miller" <davem@davemloft.net>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Felix Fietkau <nbd@nbd.name>,
	John Crispin <john@phrozen.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	linux-watchdog@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v3 3/4] dt-bindings: arm64: dts: airoha: Add AN7583 compatible
Date: Thu, 25 Sep 2025 18:40:36 +0200
Message-ID: <20250925164038.13987-4-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250925164038.13987-1-ansuelsmth@gmail.com>
References: <20250925164038.13987-1-ansuelsmth@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add Airoha AN7583 compatible to the list of enum for Airoha Supported
SoCs.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---
 Documentation/devicetree/bindings/arm/airoha.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/airoha.yaml b/Documentation/devicetree/bindings/arm/airoha.yaml
index 7c38c08dbf3f..df897227b870 100644
--- a/Documentation/devicetree/bindings/arm/airoha.yaml
+++ b/Documentation/devicetree/bindings/arm/airoha.yaml
@@ -18,6 +18,10 @@ properties:
     const: '/'
   compatible:
     oneOf:
+      - items:
+          - enum:
+              - airoha,an7583-evb
+          - const: airoha,an7583
       - items:
           - enum:
               - airoha,en7523-evb
-- 
2.51.0


