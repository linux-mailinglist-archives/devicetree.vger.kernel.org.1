Return-Path: <devicetree+bounces-242152-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 11618C873FC
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 22:45:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id F354C4E0216
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 21:45:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 799CE2D23BC;
	Tue, 25 Nov 2025 21:45:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ay1RJdVh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD3C2217F36
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 21:45:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764107138; cv=none; b=WridYdU2HvxQ2R+nrYciNtFNprWePqWXRYFCUSPl6mmZn/ezsOXhtvwxZs/RAYGW0olHHhw9ZkzjYvGnXBMtn6hOidf6CHtG9iuQ4gYnI3IcjpMXCkE7QH6f4f/9ihiADAn1kgtmAKzxJO40gz1gqzgxdCJtClbY8UG8BhafVEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764107138; c=relaxed/simple;
	bh=VlxfKwb6drAkJYTHHriEjc7I47o3xKGHFN4xlLeNgxE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=HhF5Fp4hPjTZmTihr4M+gP1IaYadcQlzYWXFz3LvKv7S3R9zOKXTI2ZoE7smnP4R9fXNIfqxcoRpTr3N25V6mine4L+4PECiJzbRAncBtyv/3U1lT4CiFA9HFVoIbuITCjTT0XOHJjIeV3Dh0hRCMmYdohIqO/zcMM04ptQL5aQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Ay1RJdVh; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-42b387483bbso4560452f8f.1
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 13:45:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764107135; x=1764711935; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=L975bxm4Gx+EyVsxiE9RIjBJmcCJrfpso+xG2/B2N9A=;
        b=Ay1RJdVhEsspO+prwIyjrpgiHK2s1wPYvnloOMgX6XOPe7fy6qJFtFqAN5jXO8WtYJ
         6QluPnnBWnEXFkgB1dDGzHA0Z13Pppdsr8QRnEeTOAWPLKv25JFddMYQcJf29Jm89esm
         3ho3YTDKJ8h3A6uQxZig11zkmL5lU8SWp6+4DCKAxCbvmV+2jBDvKg21VZZ1skl6iQ7a
         PnI9T4NCoX0oGpq/m//FPx+F86yYHXL876c7RYXkLmCeE8nLd209gUbT8qGxepiLqF0Z
         OQde3riNDCucqZKsx8gQU8ovkKILq1n85oJpMvDHI41qKCYZ3tiTkqFPiJXg8RGGN8ZO
         dZbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764107135; x=1764711935;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L975bxm4Gx+EyVsxiE9RIjBJmcCJrfpso+xG2/B2N9A=;
        b=TVFF4P0t3w8yhQnX1rMopEGYGqIpEJSvDSmK0jw8hWz/YU12AQ42EksOT+x//aqPZo
         CHM1vyRywHgrt6GIH9bbmz5XpSz/fVRuQCqqS+m9vsAR75XmR9nQ8dG+Vl5DhONMJe+7
         hUu7ssPVx0v0fJVek0sDDGoiMF9gDkM0Fz/XPMea87CzATRquk5EYiOXo/ZYj4xMRuUU
         izObOQ3lOelKTtvIq36gPEpXHg+8H69+g+YlYBrCcUWqg0pldC617/rYGnjjSGfn1krn
         EyqRWjJ7zoZI+amKPIM2YEqBPuR3H9Cpx4QTfsLkyGc6bSXpdBt1ZQO+DzRC65Zz09kM
         LwWA==
X-Forwarded-Encrypted: i=1; AJvYcCWYmEfJGePBi3N7VRxoSgxiZti47C46Sk7eSOz6c8i2SGXGdT9hg8jSCwzNQiEojg3x0ttMtw0pma6O@vger.kernel.org
X-Gm-Message-State: AOJu0YzCLwZ8aCaEP5Ggo10Z0PwxdjZpdOtfCwXMxvIhgTlqcQvFv6ur
	sRqEG4X+oTmK7r6jGWdDocFvQKqEuEzuOYK6CsiE9iUIaquaLfkJvu+S
X-Gm-Gg: ASbGncs/iq8rSz9Mo2qi45ItJtfqoNJ0pDQ4Yqiy1U/0OabZcGwc4n+iWP6FuwZX0xV
	5Pax7+qO+XW6SCKjtQFnMCQMYZ92j4191YJoFq7lmLIq0TF9nXW1l69FqK4PlEERLOzjBhmcsz5
	u9mfvuXKzPSnmPlA1x181VSgAZFfJ8cyWZsRtv+FcmnamNGT2RajUkNjug2CputR+FD9Pfc197r
	LjtWUXr+ncYAh91xLOsCTYItPV/VpP1Mmr5P21q4V1an9DwTgNf978a0u79lvKZTlLfF3yzdlAT
	2m0ZdJ15WqV8lOxOSUnqqY1VpjA/r0Wsfviz3bA4BHEQxnqXD9+imxeyB4QQo8P52yWZZCreO7D
	xJahWQx3alDyIabust81rkzH8GPpaRCSpciSYHrVHfE1reGv0lV46P0Te9sWgjF9iw3kiEVnbnU
	MPBK8qPyVn/a71QGK76dzWVqdfepPabC9E2w==
X-Google-Smtp-Source: AGHT+IEYQySQcwxUg9tDkdvcawtVF/nhiWKoBYOu7uxaLo4Nkvt6XZX9uPHdB9ZyxPvEO3tkQ2/oag==
X-Received: by 2002:a05:6000:61e:b0:429:c617:a32f with SMTP id ffacd0b85a97d-42cc1d51a63mr16565265f8f.52.1764107134970;
        Tue, 25 Nov 2025 13:45:34 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:325:d7d3:d337:f08b])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42cb7f2e432sm35494596f8f.9.2025.11.25.13.45.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Nov 2025 13:45:34 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: linux-spi@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH] dt-bindings: spi: renesas,rzv2h-rspi: Document RZ/V2N SoC support
Date: Tue, 25 Nov 2025 21:45:29 +0000
Message-ID: <20251125214529.276819-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Document the RSPI controller on the Renesas RZ/V2N SoC. The block is
compatible with the RSPI implementation found on the RZ/V2H(P) family.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 Documentation/devicetree/bindings/spi/renesas,rzv2h-rspi.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/spi/renesas,rzv2h-rspi.yaml b/Documentation/devicetree/bindings/spi/renesas,rzv2h-rspi.yaml
index be62fd0841aa..5f2672625c30 100644
--- a/Documentation/devicetree/bindings/spi/renesas,rzv2h-rspi.yaml
+++ b/Documentation/devicetree/bindings/spi/renesas,rzv2h-rspi.yaml
@@ -12,6 +12,9 @@ maintainers:
 properties:
   compatible:
     oneOf:
+      - items:
+          - const: renesas,r9a09g056-rspi # RZ/V2N
+          - const: renesas,r9a09g057-rspi
       - enum:
           - renesas,r9a09g057-rspi # RZ/V2H(P)
           - renesas,r9a09g077-rspi # RZ/T2H
-- 
2.52.0


