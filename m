Return-Path: <devicetree+bounces-181340-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 43AD8AC6FA1
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 19:45:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 13AB317B4C9
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 17:45:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FD6828DF59;
	Wed, 28 May 2025 17:44:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="gffNcBIR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f73.google.com (mail-pj1-f73.google.com [209.85.216.73])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4ABE28DF53
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 17:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.73
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748454296; cv=none; b=lu2vsti63Hf95ywkTv8tU5ldESP3EqIjAuXTZvDgG4nyfJuHHp91zLXwHsh8G8GAg6e5IiWQhJF8f6KhXd4S/1o7SK3eotYBcfiBydvHtfDX0ylmz9+sBzWEl2sXWHns8iMDoXkr2GNd2uvD67ScOUisoMmrvpkh/rQASH1kn4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748454296; c=relaxed/simple;
	bh=tYdsZ0eZeGSjydj2c6TY6kEuy3RilDMui8Sm27gIZOI=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=ANty0xG0HKEo39HzpFUHPkZWER4ZKKGwDMpfMx9WlZjKtt/44Jt361LTvLBfnsmuGPP91WaXtMjCKVJ8IMevNLvsw1xN1bplnq2VFmQrH31Rs5cdMMeQ+eoHtwfBLW1bLDYJdFWkv5kbqjF5iC/3TPe02ep+Boi5Eb20/26jQoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--dtokazaki.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=gffNcBIR; arc=none smtp.client-ip=209.85.216.73
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--dtokazaki.bounces.google.com
Received: by mail-pj1-f73.google.com with SMTP id 98e67ed59e1d1-310c5c2c38cso17260a91.1
        for <devicetree@vger.kernel.org>; Wed, 28 May 2025 10:44:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1748454294; x=1749059094; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=U8AteTtctIWx6h9aoSScY/JDCxlCRSuoc8ZWugz21Z0=;
        b=gffNcBIRyojLkL2iF4iGNrSNx5GcDb6s0ON7J37Y1nBqtkGUdG6Dw+e5eJp2zf5elK
         A7ulihgHWAQDHS7HH+2I1baXzjuPf29C/ScvYL4hGv/LKrfKeeU9/T77pJGW2N9brkeD
         CwiUNv6YrfDYqllWv7KkZReAgFkx9fk8F8LK48ops5SaQ+cS8tfc6M2EVipdhe2TRbse
         n8+VPMEk6DuJXU6N/dIk4eB/Ay7Lf5pdicFvnJN5oe2wgIyIaMRue2oqb1iO41VyB4De
         kdnA8ggfdGva1E+EMCk9SBCYS1Cn7qUq2I4TjhAHmOexD6rRoL0KZf5btMM8gQzNbe6c
         zKJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748454294; x=1749059094;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=U8AteTtctIWx6h9aoSScY/JDCxlCRSuoc8ZWugz21Z0=;
        b=vWu9dKkG2hDwaU1F2luwaCNiQ6bWdbfWXFsiLvLeiBnPH+2+/hMEt2zGquQET433jR
         JkqYXOdljoZheU9jMxZ6iN2HQiWXhO5BUsErcWR9jSa1og0gU32K3zX115MYzWlSurgv
         xs0Q2W5RQjpNxMUXFzp3lS3FLtuHPGISxAYk48HiMkQxAZTKJddWK3hiYo3uw+zS8EH+
         J/zI06r4p1Iyxh+tv4bHUPNeuVryd2eKeOdwt5KazwEOnJgQQTBUoZCh7G5w4REqL65T
         up+WHDaO7x3Tb2lVFlN9Ew4CxIlj6rpuzeTn15FF+NHAHrve2+UcPKBpj75g9JvwVTF/
         U1vQ==
X-Forwarded-Encrypted: i=1; AJvYcCXEU03V1LKPs0T7BIAqLPkJ0fWzAHomJhYew/i1JbF3ubMFT2JZMDgyfJRC5oNVmChdUtRWp4fU8IX0@vger.kernel.org
X-Gm-Message-State: AOJu0YzkOy048RjpSzcs1sSYeKWBgp/XqKM5QzgUbJw/jxsu5bvvXWAz
	CKbIx5WwMbJr47HEy5P6+812lg8zf0+vziA608fqDcg0jhtJJJAzZ95r/HkEg/iyYA3EIYfxfQs
	IO80vdgUkZXnrLoWMCw==
X-Google-Smtp-Source: AGHT+IH4qmilJcy/YpD2gHC3eQJIqw/F2Ghw8xg9B2Dp5xhXh/aI/Q39StwCpy0g0btihAkSdFONXo9bLIM7JSM=
X-Received: from pjbrr8.prod.google.com ([2002:a17:90b:2b48:b0:311:33e3:7a1a])
 (user=dtokazaki job=prod-delivery.src-stubby-dispatcher) by
 2002:a17:90b:2790:b0:311:d670:a10a with SMTP id 98e67ed59e1d1-311d670ac7amr5477774a91.21.1748454294140;
 Wed, 28 May 2025 10:44:54 -0700 (PDT)
Date: Wed, 28 May 2025 17:44:24 +0000
In-Reply-To: <20250528174426.3318110-1-dtokazaki@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20250528174426.3318110-1-dtokazaki@google.com>
X-Mailer: git-send-email 2.49.0.1204.g71687c7c1d-goog
Message-ID: <20250528174426.3318110-2-dtokazaki@google.com>
Subject: [PATCH v1 1/2] regulator: Add regulator-output is_shared property
From: Daniel Okazaki <dtokazaki@google.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Zev Weiss <zev@bewilderbeest.net>
Cc: Daniel Okazaki <dtokazaki@google.com>, kernel-team@android.com, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

The existence of this flag removes the exclusive requirement
for the supply.

Signed-off-by: Daniel Okazaki <dtokazaki@google.com>
---
 .../devicetree/bindings/regulator/regulator-output.yaml      | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/regulator/regulator-output.yaml b/Documentation/devicetree/bindings/regulator/regulator-output.yaml
index 078b37a1a71a..9bc4c68b9978 100644
--- a/Documentation/devicetree/bindings/regulator/regulator-output.yaml
+++ b/Documentation/devicetree/bindings/regulator/regulator-output.yaml
@@ -25,6 +25,11 @@ properties:
     description:
       Phandle of the regulator supplying the output.
 
+  is_shared:
+    description:
+      Indicates that the regulator is shared and should not take exclusive control.
+    type: boolean
+
 required:
   - compatible
   - vout-supply
-- 
2.49.0.1204.g71687c7c1d-goog


