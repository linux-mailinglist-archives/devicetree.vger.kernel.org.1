Return-Path: <devicetree+bounces-254707-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D5F2ED1B1F1
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 20:59:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 930DD302069B
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 19:59:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DE4637416F;
	Tue, 13 Jan 2026 19:59:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cUbXZOBB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 043EE36E467
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 19:59:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768334391; cv=none; b=dxOXmEaD51DJ7Rom/AcvyllaAfNQpbOjQsq6EBlw1sqgUVA5u7l/UvRq9IzBPh0YjhboAEnRqR4bX8PVRd4QBOAUz6AJrypoacX9GLVM82Akt4/gGJj676o6cHo406tBYLhNvjQyQ9HXCK1kjTAmljkpKE193ExTqz9UxcnpGGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768334391; c=relaxed/simple;
	bh=yb8TqRYjiWfuNj+GYrPPJYhRhtMitMDZU96WekAHg8Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PBzvaOBAvPoCJK9DfA8Q/PMvhVszMT/Omrg7uPB2hW+kxCZryyOKtce+JuDZ1Y0WSoZ2ofnv3fn51FcJLFkWlND/uG3Z4M31V/vJNSZJpTMlG9lPfu2AIjCjKpG6sX+/VnnQXs9QcF4p6cnRijxYXgSUNNxYzyMwGV4lpxcpa6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cUbXZOBB; arc=none smtp.client-ip=209.85.210.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-7ce2b17a2e4so5127939a34.3
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 11:59:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768334389; x=1768939189; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SqMQUQ/aJfEqDI2GLO0SzFgPGkoYzlQYbdw+E86b2Os=;
        b=cUbXZOBBn27Kgw7PjVTZVAoJYKK6YRNcTQyjaudXB1dpmrveFngOsyvuxp2lz6QoTY
         FVhjatbBUmNrgLBkG8LArXusWovg3/JcPHI3rKZOCzbutbtcbRmqU2cjJ929L2od3ZG8
         E+rXBke3/MKs5AHRsbd6hsqBV5kyVKyUFxuN1sOE/3vMakT4i0tCzpGCTaq0JO4+yXA6
         GRluy2t8cWLYR4DQUdUoveMthfxTtGFvrSysemjIPB8b2u/lBWRHOkiS4wliLuF3TWd9
         2KjlMFEGj+81ZqyAA+ht8c4GVRO7ZrmDgITNDv+jTht4rj0hpbt1u/CuYv0JX2IcBj3o
         Sx5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768334389; x=1768939189;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=SqMQUQ/aJfEqDI2GLO0SzFgPGkoYzlQYbdw+E86b2Os=;
        b=uiYgsHgwFKHY/LkTRMRP0WseQt79h+fOvvqZDD0TqD4I9q8MiduUrnn/SHNMXadKwI
         GjN7SSuyVp2AGGV3R/ULJ8+hkOOxKPSgCAwDCUJC74opGkp8FLj4+XPbeK7SF874toqO
         G+s3kTrKLynF7+D7sUM290l45wUpEi4ms2i5cPVpFhE0InnX4D5wHLnJQCNKYZrWIBV6
         6h10aBfNlUlJCSP+dx2NyG4/25G212vMUQKlJEi8xxJcVwZA4/J/H6FfAPkm4f5HI4+v
         38KUVDmUo6F/6f0yVoscTU8IIc7kPcy+h7Ug5CEX05LTdfqm4J/Tph/uWn3Sm6XrsRdv
         4pzQ==
X-Forwarded-Encrypted: i=1; AJvYcCV43Z51e2RYDlNGn36k5vw23deTzbBmJ8eFtx2tZt6PWp+naHiEVUcdzkSqUqfboAllhUlExDOwRSNk@vger.kernel.org
X-Gm-Message-State: AOJu0YxcCcDpENW3pOnhAKS5xzRuT5yxU0pKQqfWt6/ujVq/UcGXOKPN
	+kuP+HvzhgK7zgm7SmO5AKxr8aRFh2UuxvGRTTEXGuLKFzv+VTx/hqFT
X-Gm-Gg: AY/fxX5P4Q4u4D27n9wSi1yy2In/LD4w6wmKCTKtmqzT3PpyaBlbVA/MOUpVw16HjIv
	d+1AMdIFCd0YXJjK/2iplorR6j+kta+pZzqFDwQJEXF094XSmudJGN7yTHBASp7YJdzQUuRvkm1
	RIFG+rCvyX8zzPLLO9mn2qUkMLAeBGjS6r+l9tFFk5brR6m6Hi/gct5etA6oDiseSGnpZ8qkxer
	aYxajWRE92ULv5pXc9CWgfaRwYP/lhzS4mGxUOViR+4w1h1mOnXntw7dXzI5Unz2u7vls2em15q
	h5PPhWZAy7pEBBiWF9gm3hLVHOHNVaKJzOuYFmES/xQqImTWu2/zTXsoR5n2ffZUQwiKc5HFz3h
	XSEX8JbQP40zMaKmAJfqunRCHb5lHArfBfTKQJ0djxzoGjC5sou1D1ilJh25EvwD2WDmaKjzCd2
	CVxGwjrnsjw8EPtW40l+I=
X-Received: by 2002:a05:6830:4ac6:b0:7c7:701:fb10 with SMTP id 46e09a7af769-7cfc8a40079mr209141a34.7.1768334389066;
        Tue, 13 Jan 2026 11:59:49 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7ce47801d4dsm16221119a34.5.2026.01.13.11.59.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 11:59:48 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	dmitry.torokhov@gmail.com,
	simona@ffwll.ch,
	airlied@gmail.com,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	jesszhan0024@gmail.com,
	neil.armstrong@linaro.org,
	jagan@edgeble.ai,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	aweinzerl13@yahoo.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 2/6] dt-bindings: display: panel: Add compatible for Anbernic RG-DS
Date: Tue, 13 Jan 2026 13:57:17 -0600
Message-ID: <20260113195721.151205-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260113195721.151205-1-macroalpha82@gmail.com>
References: <20260113195721.151205-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

The Anbernic RG-DS uses two (mostly) identical panels as a top
and bottom panel which appear to use the same controller as the
Jadard JD9365DA-H3. The panels differ with a parameter defined
differently in the init sequence.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml   | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml b/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
index b8783eba3ddc..5802fb3c9ffe 100644
--- a/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
+++ b/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
@@ -16,6 +16,8 @@ properties:
   compatible:
     items:
       - enum:
+          - anbernic,rg-ds-display-bottom
+          - anbernic,rg-ds-display-top
           - chongzhou,cz101b4001
           - kingdisplay,kd101ne3-40ti
           - melfas,lmfbx101117480
-- 
2.43.0


