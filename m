Return-Path: <devicetree+bounces-182932-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EE31AACE8E3
	for <lists+devicetree@lfdr.de>; Thu,  5 Jun 2025 06:09:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E7DEC1892872
	for <lists+devicetree@lfdr.de>; Thu,  5 Jun 2025 04:09:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC2051FECB4;
	Thu,  5 Jun 2025 04:09:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=inventec.com header.i=@inventec.com header.b="MbUqVah+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED701FBEB0
	for <devicetree@vger.kernel.org>; Thu,  5 Jun 2025 04:08:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749096541; cv=none; b=Dyfo+gC0ufs740YFgllGD770uP42WfujsUEwrL4lSpbVbIASGb2i5M7/0Rlua//y/mNxgyI3euU/VT18v+Dc8liJy7YN8LjG7B4KjGzcixyU4C2FMaEv98Gq85q/NTlY5vlHLu6rvjjfN9SnceJGqe1Rx50cqF1xg/f4cYGm3ic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749096541; c=relaxed/simple;
	bh=a9vspmwOZwaz+AyzjgcDWgvZX8fCbnDmm62t4KkqheY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=dtxl9I5xAYBHQqmY7cyuCCfsSdC5jrkX4pZV+6qwThgncHqBB/oPVW+Xfp7OSLKorMxdDWOmqPkcd+ghAFK0EmPIDA+hBr0jajqPdVKBm5Fmb4aJYh8LwJkY2vcU8wJj66h+L2skNDcRHbeRYlO9yr2yJAUvt3N/PBLL4bPkJKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=inventec.com; spf=pass smtp.mailfrom=inventec.com; dkim=pass (2048-bit key) header.d=inventec.com header.i=@inventec.com header.b=MbUqVah+; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=inventec.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inventec.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-739b3fe7ce8so517525b3a.0
        for <devicetree@vger.kernel.org>; Wed, 04 Jun 2025 21:08:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=inventec.com; s=google; t=1749096539; x=1749701339; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zjfsNmetPpQZcvk0DXM+9sLzYuAqIccObvN/JpO0d60=;
        b=MbUqVah+lK7MXo5D9b75EAAiO3RxL25XvgKnX3d2tfAGIJWU9X2cgZ6cOnYP+btdeL
         sxX1RWPDTiRC681CL/0yGaH6mernQu9ZansHs5yxLVfoKVHb2bySvLiZzN23Lmma8OrA
         B3LaElePpWuXrPxc7gV6jxXsfA/H1dYrqO3YfBD/KGBbeVURtNkWQzg22zzh0iPDiG53
         o74ARzsneQFNAYCyRpyOBaIOP2T6FfbBZ30p4MwKaGJA6fpoaTqz3b7FIAFPE9vdDiy7
         10rN3EUD5rrLZKZfwlsD6Z66sltmLKSWwsFcDl54dTfBfKSVc99p6EUOs+67awo27PXV
         hAXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749096539; x=1749701339;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zjfsNmetPpQZcvk0DXM+9sLzYuAqIccObvN/JpO0d60=;
        b=ApBleRdP4GijBRt5dms2kHFdXBKQ6d8BAtUJZCmNDETquqx5Uqxyb2r8/cldgAnR5k
         oM602zyEboivKkea3oEBgBcfEvSmtTUUmT/e08XRQpHjxFYaMOxU3jrEZTbyfL1eFSIi
         eQQZAgdsZkzFXX17CuJVhDUETvxkg5vNpCXTaDLaz4/Lm72my9a5ZRHMVRUntzPyJao2
         xVYlGYA3VmfjT+dJFifziNh5Jdo77HLOpFxMqC/yleZ0rmwFWqTJyrEQ9elveAjCY1+r
         cCM2tyUabmqURc7uwi9EX+04k2GoTGc4vPr1qBIo3lcDijFx160k6pr4CdORxiN95j1g
         fCSQ==
X-Forwarded-Encrypted: i=1; AJvYcCVX65UIqT+JPIZif9602KJGiw0NjdYB58KQkRY90Z05tcIz8eLq5jZkxkTXcX8EWT9Duz8bODm+WXKL@vger.kernel.org
X-Gm-Message-State: AOJu0YxbFHZqtvGmMJZblLDqyDfW5uStXKS5wCISF6tnLItXLO+29L9B
	EBdsAeBf8r0eP/K8+DvUQG4XVGwvrv4YVRu3Q08AbSXJeuRREgS4/ZNTX9piTJFBfiY=
X-Gm-Gg: ASbGncv4p05GAmcilQduLORef5IlvlCvlpEVnMFzkgNlA+FdJV6IFo0C9Wpx4WbiTIy
	W4d5bR3H8GH9mM/9E2jXymc6aKLTV3xjX3wZ2pQHgavAwQNbeJF24aNkhEop8FDbg9ofm7PFEAh
	LhOC6xhov5zDGkBaF+DjLWZVbWsUssumRwrze8SWnLjxi4gnRRDCtdOHF6ud05R5x9YyUZEBiMZ
	I1jjgZ1/Tdqmh0Hae324KdJ7Vc2j7fpT0+N0y+e8iBeJOfcvFfMaKX1ZPyaTRwCi/5TkER7vSz6
	Ln2aur0uemI5ZAlMchheNGPVTBQ5vy6ehakRj/X/h4qjO03O0o3u1MnNsdAL1xTo/lRd4vAB7O8
	iumfzmupnjFB4lv7b7/QyRCq4wlmTFw==
X-Google-Smtp-Source: AGHT+IEirjuNisMSQ5l3eLZXrOk0WC7VdmxBT7nUZIwftQy8n8ayiAsp8QGY4W1u4FXoCgiVkkh9VQ==
X-Received: by 2002:a05:6a20:12c6:b0:1f5:7ea8:a791 with SMTP id adf61e73a8af0-21d22c0e03emr7290700637.10.1749096539440;
        Wed, 04 Jun 2025 21:08:59 -0700 (PDT)
Received: from localhost.localdomain (60-248-18-139.hinet-ip.hinet.net. [60.248.18.139])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b2eceb029fbsm9480924a12.13.2025.06.04.21.08.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Jun 2025 21:08:58 -0700 (PDT)
From: Chiang Brian <chiang.brian@inventec.com>
To: chiang.brian@inventec.com
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	geert+renesas@glider.be,
	grant.peltier.jg@renesas.com,
	jdelvare@suse.com,
	krzk+dt@kernel.org,
	linux-hwmon@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux@roeck-us.net,
	robh@kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v5 1/2] dt-bindings: hwmon: (pmbus/isl68137) Add RAA229621 support
Date: Thu,  5 Jun 2025 12:01:33 +0800
Message-Id: <20250605040134.4012199-2-chiang.brian@inventec.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250605040134.4012199-1-chiang.brian@inventec.com>
References: <20250605040134.4012199-1-chiang.brian@inventec.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add device type support for raa229621

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Chiang Brian <chiang.brian@inventec.com>
---
v4 -> v5:
- No code changed, included Acked-by tag
- Link to v4: https://lore.kernel.org/all/20250602050415.848112-2-chiang.brian@inventec.com/

v1 -> v4:
- Correct the subject and commit message
- Patch kept in sync with series version
- Link to v1: https://lore.kernel.org/all/20250314032055.3125534-1-chiang.brian@inventec.com/

 Documentation/devicetree/bindings/hwmon/pmbus/isil,isl68137.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/hwmon/pmbus/isil,isl68137.yaml b/Documentation/devicetree/bindings/hwmon/pmbus/isil,isl68137.yaml
index bac5f8e352aa..3dc7f15484d2 100644
--- a/Documentation/devicetree/bindings/hwmon/pmbus/isil,isl68137.yaml
+++ b/Documentation/devicetree/bindings/hwmon/pmbus/isil,isl68137.yaml
@@ -56,6 +56,7 @@ properties:
       - renesas,raa228228
       - renesas,raa229001
       - renesas,raa229004
+      - renesas,raa229621
 
   reg:
     maxItems: 1
-- 
2.25.1


