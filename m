Return-Path: <devicetree+bounces-174830-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 03FD1AAECFA
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 22:23:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CF21C9E2685
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 20:22:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B50E228ECC6;
	Wed,  7 May 2025 20:22:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JnbPtlUp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 195DA28ECFC
	for <devicetree@vger.kernel.org>; Wed,  7 May 2025 20:22:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746649365; cv=none; b=ptTaSMsgzM9T6aToHAQTMnj104cFu2X0K+HbM4GY2hXFIuAu0sD2T7ygrmeFP5M9SUazZGniJXrAavJDNIt4JMmYi5bjXBQBvn+vvyNaoMd0TKe65dMjRVPJX4i6FQkeKWU1ub7pHjoK3yt4VDV5/U2JPLsvSacZXtTIhSn+uY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746649365; c=relaxed/simple;
	bh=bdDxkirV7/X304PhJ/J3+teqYXZovdfE+ye6RKbN0xg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=bkUVsNML0R7ZNVWopj83A+E1L6LZ7wM/gJi7Esae6dSU8SIKI5UWl9I9NgQ0pcYwY0Gma3f3vB2vBCAoOkomF/w50rVdwYrX4EaUqgGY9gVvsSp/ENcQmFdTfBpjQwgG6m31C6WHHOR5RpsgzZIVkjXHXeiZceDS7aRH08vrhSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JnbPtlUp; arc=none smtp.client-ip=209.85.210.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-72fffa03ac6so170232a34.3
        for <devicetree@vger.kernel.org>; Wed, 07 May 2025 13:22:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746649361; x=1747254161; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l94voh9nFi8NC+FZhT6bHJgs5D7hhrZlzdK4jTqxAoo=;
        b=JnbPtlUptCssby45E9/UUkvNabje2Igwoda0bha5YzH1+F/3obU3YQ0FI0WGjis0ID
         iBMb/5jwx9Cx0SPnPRD8w3N2XmdxS4lSOXlvEAmPuVLdPy7xZyp9AkrynH0g0nP2hUVq
         Kxu62dTrDaIW3h/HWzFMSrpnv5ba+eA+987bIagW97/i0rHDNwLDuSFhsfP4m2mQzAL/
         FSp+nOMod3p2GOEqqwNR0ytd15+zJqgTMRkeSTKpIlvUbKOGI5L7HWpAFITN+MS/mqj2
         WwbpXNxGh2XEVbAk7vkQe/rryrB0m1U99ArY+mLMfY9qTyj8rxmVH2mbX8UXKz8SBfnM
         dHTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746649361; x=1747254161;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l94voh9nFi8NC+FZhT6bHJgs5D7hhrZlzdK4jTqxAoo=;
        b=na+JJDrL+5oz22lC3KO23fpZTuz2ZPKl7dn0pz6IdylkYPsS74OKJX/AcT8tF51Zxj
         D8i7p+VvHziOJxobdYVdzi/Beb2wQZ0Tww9Eth7Ga80IB02YN+bjeQOqcmAwnZonme/h
         iNXa0jfIA9EGskABuad/JTkEMuE2Lms475eDpXpDNOfGcrQL+ia5WcV9/CHQ6n/nVFOD
         vpMLuSZRD+QtKcNJQm6vbQE3BdRBZIiVJfjubCN3jmVbhRGfaoI+Z3KagkowY9Cd5fLV
         eGoVAHptdG/eIaX5hhoMtZF+ULdFH4swiG5CptLQOqYWaO//7MSTGTZLzTmF6FGowKTP
         u7yw==
X-Gm-Message-State: AOJu0Yz2n2RfvIxY/D+iCEJHbI7EP5tZtHh/mGLAVv6Yp8JfemuVTP/c
	653iExoE8BpSFtgLlo7MSc2e0ac6pLRohGmY1xKTluObbwVrFMX1
X-Gm-Gg: ASbGncvtsWYw0x1uSTm8+DN4w1LZpC1i8GQpCWrLpymkNKFZLQzaC1VeoJjLUY8Ulpq
	PAWrUvAKvm8MQyC1hSjwoxm2OnwIeTH8IXmREvijOg/ilIdx1dZM50sv3q0ZbHaBvjrwrJyxDZn
	eNpoX0+4afQzJdD0PurKjSZWkfAusGsOXJ9xLXh18nkH0gH6Qel3RitsjFMNodBmnXJZ8DLJtPd
	ptWHQkUHWwkM40ehGynwkmusls7ndfMxPh/qSkYPCOHRp0FT2zD8hqK9bzlxbdY+kmu2PtD1jre
	NdXjBaVJujQTntyPRwGFM3xWXLYiwZLUsXCBjcvXRO+jVEO3dPw+Kp3ZBTTi
X-Google-Smtp-Source: AGHT+IEVQSwtup8hGlcNXSdOKoaKgaTojdmH8y9v80kzgTfNqzsMyv7A4MwSEPxNN6DhO6wxF1WRAg==
X-Received: by 2002:a05:6830:418e:b0:72a:48d4:290b with SMTP id 46e09a7af769-73210b239a5mr3495482a34.26.1746649361106;
        Wed, 07 May 2025 13:22:41 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf:e46c:46ba:cecd:a52c])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-732109df2dcsm725945a34.9.2025.05.07.13.22.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 May 2025 13:22:40 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-sunxi@lists.linux.dev
Cc: devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	ryan@testtoast.com,
	macromorgan@hotmail.com,
	p.zabel@pengutronix.de,
	tzimmermann@suse.de,
	maarten.lankhorst@linux.intel.com,
	simona@ffwll.ch,
	airlied@gmail.com,
	mripard@kernel.org,
	samuel@sholland.org,
	jernej.skrabec@gmail.com,
	wens@csie.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org
Subject: [PATCH V9 18/24] dt-bindings: display: Add R40 and H616 display engine compatibles
Date: Wed,  7 May 2025 15:19:37 -0500
Message-ID: <20250507201943.330111-19-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250507201943.330111-1-macroalpha82@gmail.com>
References: <20250507201943.330111-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Add display engine compatible for the R40 LCD controller, and for the
H616 TV and LCD controller which is functionally identical to the R40.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../bindings/display/allwinner,sun4i-a10-tcon.yaml     | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml b/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml
index 724d93b9193b..caed517c68de 100644
--- a/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml
+++ b/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml
@@ -29,6 +29,7 @@ properties:
       - const: allwinner,sun8i-a33-tcon
       - const: allwinner,sun8i-a83t-tcon-lcd
       - const: allwinner,sun8i-a83t-tcon-tv
+      - const: allwinner,sun8i-r40-tcon-lcd
       - const: allwinner,sun8i-r40-tcon-tv
       - const: allwinner,sun8i-v3s-tcon
       - const: allwinner,sun9i-a80-tcon-lcd
@@ -53,9 +54,15 @@ properties:
               - allwinner,sun50i-a64-tcon-tv
           - const: allwinner,sun8i-a83t-tcon-tv
 
+      - items:
+          - enum:
+              - allwinner,sun50i-h616-tcon-lcd
+          - const: allwinner,sun8i-r40-tcon-lcd
+
       - items:
           - enum:
               - allwinner,sun50i-h6-tcon-tv
+              - allwinner,sun50i-h616-tcon-tv
           - const: allwinner,sun8i-r40-tcon-tv
 
   reg:
@@ -231,6 +238,7 @@ allOf:
           contains:
             enum:
               - allwinner,sun8i-a83t-tcon-lcd
+              - allwinner,sun8i-r40-tcon-lcd
               - allwinner,sun8i-v3s-tcon
               - allwinner,sun9i-a80-tcon-lcd
               - allwinner,sun20i-d1-tcon-lcd
@@ -280,6 +288,7 @@ allOf:
               - allwinner,sun9i-a80-tcon-lcd
               - allwinner,sun4i-a10-tcon
               - allwinner,sun8i-a83t-tcon-lcd
+              - allwinner,sun8i-r40-tcon-lcd
               - allwinner,sun20i-d1-tcon-lcd
 
     then:
@@ -297,6 +306,7 @@ allOf:
               - allwinner,sun8i-a23-tcon
               - allwinner,sun8i-a33-tcon
               - allwinner,sun8i-a83t-tcon-lcd
+              - allwinner,sun8i-r40-tcon-lcd
               - allwinner,sun20i-d1-tcon-lcd
 
     then:
-- 
2.43.0


