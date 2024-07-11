Return-Path: <devicetree+bounces-85011-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A931192E85A
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 14:34:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 64353284576
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 12:34:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A09B215EFC5;
	Thu, 11 Jul 2024 12:34:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="N9Z/wi9f"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFDE415B97B
	for <devicetree@vger.kernel.org>; Thu, 11 Jul 2024 12:34:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720701256; cv=none; b=qh0fIZnx4KJgAqwOuaxePKz/ikffgEIXA7GACtKwoJuRgwRUthT+tzE0MJkjlS+ObfbUiSOzWHy2WGiDaZM9lHM737ppaGc9l4OUZXSP2QVPWfmRPqS0wZjaGA6oGfqMtg9U8gKMzkl4KLF9gmnj83P6ShFecivDLkYmc0twC8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720701256; c=relaxed/simple;
	bh=anyTZDR8z5WRrk92lV1AqqFVw3vzwnayWuwr06UEE/o=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=oPpBMg20wp3qh5f+JY2CSqgqTFxNr6ZztM5hwh1fcy5B6x9pQP8vimo9l3NcThmMIgzEuu8ZICDYJQHMwoV9jIXRn3fXEi+k9yQ225aqpW6geyahiMm2T2o3ZyTtVmI6EQLtw2Sq9FngUBKGP1dI//DsnZ6hULH+jBBgTA1Vgb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=N9Z/wi9f; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2eea8ea8bb0so14271501fa.1
        for <devicetree@vger.kernel.org>; Thu, 11 Jul 2024 05:34:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1720701253; x=1721306053; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FRm9MV2QsUuuDK1Fw5/6bS0CUgxR45/yetEFUEnJL8w=;
        b=N9Z/wi9frPDUvPTG9PsRi7UpNbA0022OOJcO2YzVzsVoSusRbd8DJDve2m0ZEsPjYs
         g9bN2qKrau6F07j4BJg4bgrREQ7LCrIiQta2Z1gS6kI81VrUx3W4Nb6Bnd9ldg+oBLQP
         PB/UV77EUIkbGuHdwpRREHPnZ4EuWQeL0FS/0gafEZnYgb73M1dvqGSfDw9lKMoyRDxm
         /y2QS97cXa3cY4dr2rjplJ1sxV7DIgjD/g01gs6NUE+KJA9i2VbOe3W/SSumvByuTlV+
         c5yzEHJDPWwQ5fVkwi+pMY2zJIbWfVN/ryx4ihJdoDY8bCiJeB8OH2Fp9m2r/5dC/tSR
         eflA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720701253; x=1721306053;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FRm9MV2QsUuuDK1Fw5/6bS0CUgxR45/yetEFUEnJL8w=;
        b=XF0dtC5e3Y1ih+RoVbwTW6NW2U/Hff3brwg+tJRxgUvRdcs/tx5LT0xZ2b5lMc2T0X
         TqfOKxBi4kIwL841xXsvWnOnNNymKQmoKCYjTeyTL/478fOeXqi94aYm+4IjQ4/CxEzB
         PiN7YMgJyFdc0gGO5q1UKTBxeK2RQWudIW7wvkI+an0ldA4Rt592g5a3xYBC9FiPdLjq
         ULKEkEKja960jrAKUZ9xVV0rMkSJ2sTOaAfOWG7nuSDJL7SItKRpmF6GZf2i8RlGXpxl
         A0rkfGTHGVKXP6QQsB7lLJTc1vPDRqopRdk3508bB9NgH6hMcx7xnJtJirwcermvq+YA
         LBmQ==
X-Forwarded-Encrypted: i=1; AJvYcCX5//kBQzDoMwE8Z0hLN7a/to+brwPD6GQJcqiYEQClgwJKIC4vE/fKDqTsfDBa6BDIm04ZlFNjFkBSbyQMvr3y4/H1PZbo7MZEag==
X-Gm-Message-State: AOJu0YzKQyWjkyJzP39o50mJ9owp7NPRXIdx8LScBect/5p+jDImoe0j
	fUgtHRLqYwsQ3aZgTRspQHctl/m3gW5afjcYb9Ohje90S2aOAJsDgMCJ4M9OxbM=
X-Google-Smtp-Source: AGHT+IHlStw8pkUI0m/gKpxbqlO3SjmTUiBXCsceti/P1YsQWpbFVQ75dwQXkOgOjQaJi/XIXvVCsw==
X-Received: by 2002:a2e:9695:0:b0:2ee:8817:422d with SMTP id 38308e7fff4ca-2eeb30bae90mr68233611fa.5.1720701252954;
        Thu, 11 Jul 2024 05:34:12 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.171])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4266f741fa6sm118583955e9.45.2024.07.11.05.34.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jul 2024 05:34:12 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: vkoul@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	biju.das.jz@bp.renesas.com
Cc: dmaengine@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 2/3] dt-bindings: dma: rz-dmac: Document RZ/G3S SoC
Date: Thu, 11 Jul 2024 15:34:04 +0300
Message-Id: <20240711123405.2966302-3-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240711123405.2966302-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240711123405.2966302-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Document the Renesas RZ/G3S DMAC block. This is identical to the one found
on the RZ/G2L SoC.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 Documentation/devicetree/bindings/dma/renesas,rz-dmac.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/dma/renesas,rz-dmac.yaml b/Documentation/devicetree/bindings/dma/renesas,rz-dmac.yaml
index a42b6a26a6d3..ca24cf48769f 100644
--- a/Documentation/devicetree/bindings/dma/renesas,rz-dmac.yaml
+++ b/Documentation/devicetree/bindings/dma/renesas,rz-dmac.yaml
@@ -19,6 +19,7 @@ properties:
           - renesas,r9a07g043-dmac # RZ/G2UL and RZ/Five
           - renesas,r9a07g044-dmac # RZ/G2{L,LC}
           - renesas,r9a07g054-dmac # RZ/V2L
+          - renesas,r9a08g045-dmac # RZ/G3S
       - const: renesas,rz-dmac
 
   reg:
-- 
2.39.2


