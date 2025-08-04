Return-Path: <devicetree+bounces-201718-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 174D0B1A5E9
	for <lists+devicetree@lfdr.de>; Mon,  4 Aug 2025 17:28:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 09AF018A355C
	for <lists+devicetree@lfdr.de>; Mon,  4 Aug 2025 15:27:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1C13277C8C;
	Mon,  4 Aug 2025 15:24:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="e7nVCRSY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACAAD27700A
	for <devicetree@vger.kernel.org>; Mon,  4 Aug 2025 15:24:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754321056; cv=none; b=nmBnQ5n0cKqaxbnEFFCGhwTJNOKXOVWo582zfdeiVOuRQ6D393eqz21VFWSBEZ6falbJErwc8/87YKdCdUuy7rfkVoDveT5scwAVvtjHXBkgZaR0KJAUs1idFy/qiAkK17XHqMOzKQX/naIqMO68wsWjiCcUgHJ2pTQ3ByN4dqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754321056; c=relaxed/simple;
	bh=0UvZE3k+XFIsWL7U4sT1dC/irQDhudNW/Glb0WMicdM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=X1GPFqCQKIoMUiQghEprkIvMFi9ta7y76vCOoKRlzx/5FhfUHaW1wE3Z3nVK0sZbab6U7xM0hA1Hq91TiDKfYVWlqIxvUt4KGY30qtzyXk2pQLaFrpdW31Guxgxj/xrrIpToRMWdmPrfBHq/UYTrvVfzLuQcNe6cBgjpGhOc6ec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=e7nVCRSY; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3b78d337dd9so2157419f8f.3
        for <devicetree@vger.kernel.org>; Mon, 04 Aug 2025 08:24:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754321053; x=1754925853; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MSMHDKm2fVBb5I+HzgHVkcktydoNZjtlzbBXl5Tc0aw=;
        b=e7nVCRSY/DwxDc0ow8FMCuAZ2rfNNrTmPb67oCsnoEz4mcv4ffR1cfX+L5Hxgmlu/W
         47F64ulDzA+gHsUlaJ+dzNDn1Ibc2Od36XkrzpWk1eLqmXYBOYVfztxIKEp/vG0i7LK0
         MmkNO7POnBLcXZg1lvHxpYdvzRxibvs4ZRDgh2fBGT0YjihXBqhvAJmh6zkcsIY7A8/j
         aPcKpenefvveIsqQUmSaneBdbEeVYAtic2DB0bCz/reQdPvywdHOt/Q+u35MhJheh9jb
         E0UIzHlBLE8O2+FyaNJF+nfNGEM1BNsPo9N8CUVvCo8MkJznq3nk7N2ku9AkhheWzq6+
         efhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754321053; x=1754925853;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MSMHDKm2fVBb5I+HzgHVkcktydoNZjtlzbBXl5Tc0aw=;
        b=Xfr9jeJvjqVLgNDuP6MrPQ24/U9C+C3Cung7KwU9XUybS43Z/omTyLrAXa6i8995U1
         a3D5Hzs0Vs623eFou1qaoMvRbtqM1kGxbZKvuzQKTU5whNJDfi3fk+/TbBGRcda/a4sB
         k+5s81Telzt2cdYCusiByISpkXk8rsSgER6d5UGdFjhJRmcjgTs8SGdB/1CnQNpdphil
         doWVqGHGq+Gvf0nFTUQ1RZpbgBLwg3AWJnWQ6cHf9Mrle2dhwrjXg2BEEPlsr+AdTWkG
         i/oGkKG4tZB7vS1RRonhQrIQPynTJCPss9boYg4Ftb7BtV4JzELr0TdNSobSsxgcWn5f
         bydQ==
X-Forwarded-Encrypted: i=1; AJvYcCWI/EQJANPJfP0AIlWIhhehm77loPSz3PFSE5NHkpPqrZh/MICfJNq3PiDWKKdr4+WBmjpzwuHfygDc@vger.kernel.org
X-Gm-Message-State: AOJu0Yym4tNLbfkAlDzaKIK56v/2SPioykO4umlb9nzRVAU6TFKqgxkD
	OloRj2EBoHmzMRBW7WvlK4BSkj5j7JtI7oP9pQtsrvfRL5J1AwW0uxuu6eXvPmxMm6Y=
X-Gm-Gg: ASbGnctsdINip65kgWurcfiT/4IDMUOdOFtfH459scLMy6KdxURMXlVuL+3ps2+/EvT
	n8Sxh4JSB9gzVTzEB0vg2r8QFVxnUJtKQJ0MpEEXjAF1lNd17m4YqzKigvB719vUgalOf1l+6Ue
	z4Y6/3+mbbq1RB8yOSzbLM1o7w+dD8/7WL5FEmuKJLr6WI4GKbKyByMotgwWDFPfqhZLyooI8su
	kTFSe7P/bIRLqNPIlTr9UPCkYBB825RqR1CV4eq5ygwIKGQf12coGXQWfe4CN0kIfJ/XZsGCj4S
	RbsQXCTL2QIlTNhbaBTYSzU+f4jnDkfUAlypUUDc/QB8G4qjhSdHa4JAeRLa9OGOSLrltH0lJhU
	ITowVRPcObczw0K0HKZk3t/ne89M6yLolPyChTeCg7sQRASMt
X-Google-Smtp-Source: AGHT+IHHSKgAOk2QSQQTS8KtsNeLFrmfp5jVQGwgWUaRhP71DYG7ooscPk+f2g4vk2n5Dyr8OqNoYg==
X-Received: by 2002:a05:6000:2381:b0:3b7:9c79:32bb with SMTP id ffacd0b85a97d-3b8d94bacc9mr7805669f8f.44.1754321053029;
        Mon, 04 Aug 2025 08:24:13 -0700 (PDT)
Received: from mai.. (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b79c4530b3sm16335579f8f.34.2025.08.04.08.24.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Aug 2025 08:24:12 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: daniel.lezcano@linaro.org,
	tglx@linutronix.de
Cc: S32@nxp.com,
	linux-kernel@vger.kernel.org,
	ghennadi.procopciuc@oss.nxp.com,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS)
Subject: [PATCH v3 19/20] dt: bindings: fsl,vf610-pit: Add compatible for s32g2 and s32g3
Date: Mon,  4 Aug 2025 17:23:37 +0200
Message-ID: <20250804152344.1109310-20-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250804152344.1109310-1-daniel.lezcano@linaro.org>
References: <20250804152344.1109310-1-daniel.lezcano@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Vybrid Family is a NXP (formerly Freescale) platform having a
Programmable Interrupt Timer (PIT). This timer is an IP found also on
the NXP Automotive platform S32G2 and S32G3.

Add the compatible for those platforms to describe the timer.

Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
---
 .../devicetree/bindings/timer/fsl,vf610-pit.yaml         | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/timer/fsl,vf610-pit.yaml b/Documentation/devicetree/bindings/timer/fsl,vf610-pit.yaml
index bee2c35bd0e2..42e130654d58 100644
--- a/Documentation/devicetree/bindings/timer/fsl,vf610-pit.yaml
+++ b/Documentation/devicetree/bindings/timer/fsl,vf610-pit.yaml
@@ -15,8 +15,13 @@ description:
 
 properties:
   compatible:
-    enum:
-      - fsl,vf610-pit
+    oneOf:
+      - enum:
+          - fsl,vf610-pit
+          - nxp,s32g2-pit
+      - items:
+          - const: nxp,s32g3-pit
+          - const: nxp,s32g2-pit
 
   reg:
     maxItems: 1
-- 
2.43.0


