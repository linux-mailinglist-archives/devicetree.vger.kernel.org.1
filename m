Return-Path: <devicetree+bounces-234509-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id ED3CCC2DEF3
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 20:46:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DC9C63AAD15
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 19:46:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2329729B224;
	Mon,  3 Nov 2025 19:46:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JA4Fxuhs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DA97296BDA
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 19:46:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762199174; cv=none; b=OAYYcaJSqtA+QUH564i/8ggdjdBoWsnz4lOMQ3inyp+IKI2MxbwE+MIZVz5gfnf2Ek1i9GEtbSJu5fEmDltX+hQ8lZmcXvO5c6rkymfZLEdOhom7xYvOMsd1V/iQOFPPxAe7EgRAtGPUgqIMadidtl1W1PjoiP1My3fHPBT1Ipw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762199174; c=relaxed/simple;
	bh=MRXE7DT9OxccPI5TsXsQ7xdXXyvKUg7JkhqyAg18Mhc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=GwuGeVu1+IZBXNjJD3oEnsxKRdkZYt4/N9+n3vYnN/b8xdhlT7QzSl34cozGT6Kw660ZV5fBTfIowHTLwCQrheVGYnVNjxRgilG/9iarsHu++fkZmrAduxAc03QpGWWZo4AXBVxgNEjH8LD4gpDBDw+BzGrUcRBQBn+XC6oFmbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JA4Fxuhs; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-781206cce18so5159338b3a.0
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 11:46:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762199172; x=1762803972; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=RMKjToI1cPGuPb6glfsZd8eb+wK7aS/JWYDCdguKThc=;
        b=JA4Fxuhsu6ZXDHA6opaJhTNwhG5h/qFlKv/l/LW6sX+a2Vj7u+GrHQmeAVpQ8k8Gdr
         uE9szcQCqIJAJ9g0CAz2Vkn5j4HRLDF9/0nlAhmlfPQVCF+Z7ZcKsvl2NkpL2Grlkrvu
         VqlPPkZiTWnhfxeM3R3Asibqk/TbJeDnsNdFCTSg3FIHDI4BcK5v8op4sAzSREHyDra7
         rGZGVbyh9Vmhu1aLohoXm2qrADG6TFthned2XSoEtgGa5QITAsBVsSMAm3n670aSb8Pq
         wjWe1r4+yCidXvyEKBKmH1pHUFwTNNN/DUU2t009KsWoVKidUckfJ53xLqSDWb58lfT3
         zBGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762199172; x=1762803972;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RMKjToI1cPGuPb6glfsZd8eb+wK7aS/JWYDCdguKThc=;
        b=oR+4mKQ9yfGGuP7W26+tGVCJUOa3WjxDi1khyoL7RW3Rq4LLjLRX+3jwUEFWWXVP/d
         Oj1zPgsTrGvehM8maoooY/dnkli+uIL9TjUAawWCFSPsFUNoxVDt/Yge+PFVFT44zDFE
         gbsyc0rcHm8uPIJGEC0P5o/LJq7HRHAErv6ZpWw+MSWp9TBiMSlxowVDotxVHUEJBx4v
         j8RYvCF9bevncN3uhn4breM9JNQhmhRzxpO03UC9nqnkFRbiHQ959rmNvV3HNQDSn0+F
         K4dgNpbPvzXvCNR4kgh0lfGyDRrJN6kyv+hnQ3I+ZWsVmhiT1473INwJkQr11++lv/a8
         yt9Q==
X-Forwarded-Encrypted: i=1; AJvYcCWraUaKt6jY2ng0DPMT1wpU9hXGFAOPZRY7ZoHnqBLQ0N9usloaayRp0gCjwf1Kn/7M7R1Lxm8kdPhu@vger.kernel.org
X-Gm-Message-State: AOJu0YwCfpnR2or21t3u0DgCWS3+vpz3Qn20C3gkQ86IB9adGP/O6sxJ
	3hnRHO47Mr/1gd5r2CajLNPbPAmCvIUsLT7RpkRDDtWxaHU1aBvB6t2D
X-Gm-Gg: ASbGncvGFiicDXAZ6SjC8NLdySlAiQhEeeeCrZDany3Kuv5Xxyg27NdOYk7QaPXdcpg
	ecOyIcwvrKyeZzQM7ObpMieoLGTXFDt1B/9pKzQrGXxhc5hGlkcuhw0O3dNOy+R6/Bm8l50QNJk
	+s6q4gz+h8LdBtDyMWli4F09DmDS80cXXlhxELB51uhR2F1RFoxxXMdp9jGbLbK0iyeLjYHE0yv
	Z/lOAdPaLpQa8OOeq8DfExADqrmVWx+NpO/iSVb/duUKt5ALyb9wf0iwuDnKPwxiiKMx/LLG7fi
	hPnrhMV1ncR4pkF43yVfUUVGHdda/HGPT43Tx/MwfzQlxeuMCJ1J1nvwA/A+wVGXdLlScOFe4I0
	kT4ACw4ICqD8C8MAuuaw7isclJX2+9oKUzOmgLCpZKTSpASc1rn/jf6i6kTa47TFe0kBnA34zkc
	XBwLN4hcF1NKpVMhFIJuiCzicypo9jEzo=
X-Google-Smtp-Source: AGHT+IGs/phsqHMf7vgqUydH/kHUo9Pu6wt15y2CjfYpOAPnQUisNU2Uqoapi6ssdQv3N85Tdviw+A==
X-Received: by 2002:a05:6a00:c96:b0:781:1110:f175 with SMTP id d2e1a72fcca58-7acc1a2d907mr700653b3a.14.1762199171727;
        Mon, 03 Nov 2025 11:46:11 -0800 (PST)
Received: from iku.. ([2401:4900:1c06:600d:df45:8e1:7a61:1482])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7acd586bf62sm199588b3a.48.2025.11.03.11.46.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 11:46:10 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>,
	Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
	Hans Verkuil <hverkuil@kernel.org>
Cc: linux-media@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH] media: dt-bindings: media: renesas,fcp: Allow three clocks for RZ/V2N SoC
Date: Mon,  3 Nov 2025 19:45:54 +0000
Message-ID: <20251103194554.54313-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Update the FCP DT schema to permit three clock inputs for the RZ/V2N SoC.
The FCP block on this SoC requires three separate clocks, unlike other
variants which use only one.

Fixes: f42eddf44fbf ("media: dt-bindings: media: renesas,fcp: Document RZ/V2N SoC")
Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
Note, there are no current users of the RZ/V2N FCP compatible string in
the kernel tree.
---
 Documentation/devicetree/bindings/media/renesas,fcp.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/media/renesas,fcp.yaml b/Documentation/devicetree/bindings/media/renesas,fcp.yaml
index cf92dfe69637..b5eff6fec8a9 100644
--- a/Documentation/devicetree/bindings/media/renesas,fcp.yaml
+++ b/Documentation/devicetree/bindings/media/renesas,fcp.yaml
@@ -77,6 +77,7 @@ allOf:
               - renesas,r9a07g043u-fcpvd
               - renesas,r9a07g044-fcpvd
               - renesas,r9a07g054-fcpvd
+              - renesas,r9a09g056-fcpvd
               - renesas,r9a09g057-fcpvd
     then:
       properties:
-- 
2.43.0


