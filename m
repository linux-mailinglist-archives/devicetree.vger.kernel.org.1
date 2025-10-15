Return-Path: <devicetree+bounces-227136-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 961F7BDF16C
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 16:33:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 91AAC484124
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 14:31:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E459296BD1;
	Wed, 15 Oct 2025 14:31:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="ag9ZXUXI"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 521D5284B2E
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 14:31:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760538681; cv=none; b=pbRAjT2dozaHkz9My0jC+Ajj/LfmsZWjr3Gp2k7ZxVNQF5ZUPySaa6X5ZhYYzH0VSWmQ+wV+Q+EZWwsFQYswP5Z4AEPry9dX7WzlNXylQauugay6lzHDzsbkqW7H6qtheRkGfceGk6zDE6HougyL7yAjh5B+5xxHgh/d9MPIQ0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760538681; c=relaxed/simple;
	bh=GwdorghP7pkx6jrL0xNhcOjrQ7rW+RmSi107hDe95KA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=N2mo8TgLy+BHimtzVqWZIvusfwcUVfb5qLYwFKRGXbpjmbpoz205/EYz39mSo7ih2nuJWru/XG4lN44s0cNfcO6H0tut6MUqbfqaAk0IXMT95zEI5P1KDzrsjBuL0hn6iSKPaB95gYAYnc0GEBa3K/NKeVZqz3Ngm7AJHhYwNIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=ag9ZXUXI; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1760538679;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=NyZc7IIr5uPHqqlmg8fs1xLiepRwuPem5qvpkm3Ay88=;
	b=ag9ZXUXI5VbC9rR11hvnsbcEOlbQzNhGlwWswaLlA4oL2/PhTLUl6Bz5bDc/KxNKzNq0ZQ
	gXnyn4NOnZEsZVEhFukFpG43lJ8zHOBX/eGzLnuj7WsaVKif/fiCwsliMXJoCsaWLcz48x
	Qqpqo7KYa5H3n40xiin/Kb+QEuurph4=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-426-0HZCOMBkOpil_lGSbs0kgw-1; Wed, 15 Oct 2025 10:31:18 -0400
X-MC-Unique: 0HZCOMBkOpil_lGSbs0kgw-1
X-Mimecast-MFC-AGG-ID: 0HZCOMBkOpil_lGSbs0kgw_1760538677
Received: by mail-wm1-f69.google.com with SMTP id 5b1f17b1804b1-46e39567579so33258565e9.0
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 07:31:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760538676; x=1761143476;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NyZc7IIr5uPHqqlmg8fs1xLiepRwuPem5qvpkm3Ay88=;
        b=jwnnDs6+cXEnfDyBAB7ECWYKGMljfoaLPhd2Uotz8/PDNuLZLSQXKNyUF+baxzXKC8
         fqJEU+isXxw0RzYZYhgBGLBPaAhxaMHhL+r+HkAsmAWUtJi722ddvPNVmV4KPHIwWDsj
         xR+J5s/tdxck5DkF0jgeuD/jRQlsS+g0ZOQFIq711Ox20beJdNFehWY9bdW7fS3IY+e7
         z4wyroiYJNlXh+N3eFpGYSNEKU0M5xiAhQpQnoYc4N9CJ0E4xZ6zO3XOEyPcUHkKF5Ke
         7dRtENHqPLhQkPiCxZJuVFXc5Ch5XAxH073E1PSeQENMqgUO/SR+pKhISpsQEk4EjCPC
         jHJQ==
X-Gm-Message-State: AOJu0Yx5b1ae2+548GEt5ZWVSAwUruJrgisqmzozuO8Pfsm8u+4za6sG
	2Fm4XsMNSGyYqBP99dK2t+b5QvFsUh0D6k9gxlgY0zq7eOjQj6X/JWXw2PhtW2tPWLzmSEEzgib
	rrETzRXm/0PSmFW1gjgo5/XmCO4/argoQAexVUmHZrYqs21nLDsLZj5C+bzFTlsnkTBOKNAb8ni
	+8iQDL3fquivvvAXrRVoxl9aLBTbkTVDL1byekIJ5zN+VYm2OenA==
X-Gm-Gg: ASbGncuAUAhqjnXZAgUZJ2e4E7WqCYFxUfym+1fizaPAJPeTHTfI09eNk6QCokX5T+7
	dwWL4i7M5T9bTuNYRvLEUs0vE4+4xgE8BoZLyXItxJgl8vGZWX+Syb4/3NOhh8YKhaSx/LaT3Xv
	9EIRshzclfhNFhh8pFcvkwL1XOPq+qTqj73o3d7hrBmqegcFWoOt7vqsmwkP66N82VahHyooeAM
	2wrBHC2h2xp9hsMjumuMjUb/uXn8tggr0LZaHfcUUyc2KzcztxUkGY/MVc3P3uCte6j8t+WPMLL
	oQBhcKcVH5TUmsMDlNRgQI3wKsT+JuDztJGkVxHqdVdDiGNyrdKxmqI=
X-Received: by 2002:a05:600c:1e87:b0:46f:a95d:e9e7 with SMTP id 5b1f17b1804b1-46fa9a22e8cmr198824255e9.0.1760538676268;
        Wed, 15 Oct 2025 07:31:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFbhbPu7WeSNuCo8Nsr9nlyoHz+U6/8eNZskwKh5mPgPSo2143HBfoEIRLP8xrfsw2uXJNMhg==
X-Received: by 2002:a05:600c:1e87:b0:46f:a95d:e9e7 with SMTP id 5b1f17b1804b1-46fa9a22e8cmr198823865e9.0.1760538675703;
        Wed, 15 Oct 2025 07:31:15 -0700 (PDT)
Received: from holism.lzampier.com ([2a06:5900:814a:ab00:c1c7:2e09:633d:e94e])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47101c02377sm32617005e9.6.2025.10.15.07.31.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 07:31:15 -0700 (PDT)
From: Lucas Zampieri <lzampier@redhat.com>
To: devicetree@vger.kernel.org
Cc: Lucas Zampieri <lzampier@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vivian Wang <dramforever@live.com>,
	Charles Mirabile <cmirabil@redhat.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 1/3] dt-bindings: vendor-prefixes: add UltraRISC
Date: Wed, 15 Oct 2025 15:31:05 +0100
Message-ID: <20251015143108.441291-2-lzampier@redhat.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251015143108.441291-1-lzampier@redhat.com>
References: <20251015143108.441291-1-lzampier@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add vendor prefix for UltraRISC Technology Co., Ltd.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Lucas Zampieri <lzampier@redhat.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 9ec8947dfcad..887bcb792284 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1642,6 +1642,8 @@ patternProperties:
     description: Universal Scientific Industrial Co., Ltd.
   "^usr,.*":
     description: U.S. Robotics Corporation
+  "^ultrarisc,.*":
+    description: UltraRISC Technology Co., Ltd.
   "^ultratronik,.*":
     description: Ultratronik GmbH
   "^utoo,.*":
-- 
2.51.0


