Return-Path: <devicetree+bounces-220020-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 837CEB91541
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 15:13:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CCB4518A3F14
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 13:13:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D60AA30CB4F;
	Mon, 22 Sep 2025 13:12:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QdVfyIXV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A69730CB34
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 13:12:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758546779; cv=none; b=kFfqqTI0rsUdbIMluSX9ybZHSVpRWLgMFgE9bNgnRk5zcG/m1+ZIeHlttbD1tROSQnAOEhHrckcwQHOHxnGI1G1erb/F11fqbeso6boyf9sIzFNTnmuOz6AwbiJuvGjpNDa0s9iNjxluDtz9EmhjDPaxpDwcRX0j+6HNelCtG4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758546779; c=relaxed/simple;
	bh=SAyUnJhCwMKSbhb7U5p01vudm4sy13VmR4oxIBmj0nM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=UZQdRmrlcDUzOj3vn9+Oa1PmPRpctGlkVfQu2oScwfMLmfMRKyPzFw/HGCb7A9pCrCOC94QBwyxIiIK9/6FlAAMhVC8IsHBmIPFF9uz53Yhb40fF9juakESOONVUcm/8bx7eXmVLQ4Js068Uvb34Ux5THiogPL73eHH9t0xTxoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QdVfyIXV; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-267fac63459so41380575ad.1
        for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 06:12:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758546778; x=1759151578; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P2cvRp1weqffRPvbmfOkQaVMZbMjAj/UHkPXTSQ25jI=;
        b=QdVfyIXVQgD8V8yNhNeo9v6DKyeuWl+MgNnxdDCSczYNxeL/ujp2p8PjCvFb+z9BB+
         RU8S21IyMa1tELKR2JYFTyhZiveOq0wt5vxuJh7n9agTjeBjntrIo3YcGfuhFqL6R14w
         eKunBNbsYuhzmkoPdsWEHDU4ccRKK+DGBweWYAxd4gW4OBNH85s+m+UJq5QEYCXVYTUN
         zbz1EP7XEiLxGiyfyJGuopoeg/6hC4v69Xf7Svxg2D3YlXHVbdU+4u+2I/nKkZXKFABB
         0BXbhY32YHxRzEEh+5MfKbdankBKagm68E2tPIPCbo7/p3F1KE9KhXXATjAVJXoiMDNN
         tlig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758546778; x=1759151578;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=P2cvRp1weqffRPvbmfOkQaVMZbMjAj/UHkPXTSQ25jI=;
        b=xMJxM2vPtE8+R5yHk7GETIaj+Ldv0EYEYpAiTCN1cCUPOC9TY/+OTUStL6ksVVkV1g
         UoqCVPDdX3RH599oHZG5dAHn+4qS2d+9bEw9Va/75tGU86FO67St1iQ0Ur/9DLjY+Fvo
         i1sHZ7nJvRS5wEN8BWGXZ2GcpGN7etg4/+AJ2fKBNP6gJNDiKrf9hdX4KWDb5nvO5Fmg
         pVmfEd3sP5aPfqRGkk+M5S4wKmR1ZiGu9juLQYEmDepyjEMHQoiwznfkXQY2a9FOuj6a
         dvod7vjSimLwIVSCb7HNE3HOQrPzGw9tug25wCtwXD4ikLghUM5O9r0ulHfMDsM/0oI/
         lypw==
X-Forwarded-Encrypted: i=1; AJvYcCXKJsj6oBiEw0yWgLRkeW1OH+PqH+ZvC5Om1eUInWev8VxiScV2uG2FoG60XpPmbGQ9Ab0Gij9+QDWv@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6lc7WBEu7tIKtYjY9GzN8nKu1Ww9Se+KOkiLhgzSvCDqBKc8F
	0I7I8NACmJf3j/kieMeGXf9aYncnEp8Ehr7mTquiCLvN8deW4iEVB99F
X-Gm-Gg: ASbGncsZ+iFHRqo12zIZz0bFIp3+z49efCxgiIvJIim9IfxW2VHkx3n9xGKTSwqmFbK
	mgrmOnLWO4aWy9YRIWh7lCES2daTZ+EJ89VB2OFEUEW1IJyQytawuO3OHtfm/FN214AIcFhhNZn
	nrPRsOtGeSZkhRbSSdl5yyeRM/HZYxTjNR8hF3pFD8VKoRdYU3f8ajqLMYlSOIm1NbOv53RvHX0
	BkUqcputtonBbf4EbbzfmmEYYBTAU89M3U6+nMvmyhCB1uFNyka12rndSaTUKLkJWG9fCeVCqrK
	2uGr53xY7Nqu2Ul7zJY0VjkApsVR1zj6G/eBKsmlqp27yEQ1dyo1Rw0laLN8wwXQqRIFY6ZQEJX
	hgVLiKVwGcAGm6UIj8ujysO2pHArVEg==
X-Google-Smtp-Source: AGHT+IH6Ot1LK9QjB6FeC20glUfGDL/Gnk3tPXUiEAOeZtENxIjiU3TXsAP1et3k8LlFBwpL34RbSw==
X-Received: by 2002:a17:903:1a0d:b0:264:f3ed:ee10 with SMTP id d9443c01a7336-269ba40abc9mr164331725ad.11.1758546777656;
        Mon, 22 Sep 2025 06:12:57 -0700 (PDT)
Received: from d.home.yangfl.dn42 ([45.32.227.231])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2698016bff2sm130200055ad.35.2025.09.22.06.12.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Sep 2025 06:12:57 -0700 (PDT)
From: David Yang <mmyangfl@gmail.com>
To: netdev@vger.kernel.org
Cc: David Yang <mmyangfl@gmail.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Vladimir Oltean <olteanv@gmail.com>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Simon Horman <horms@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH net-next v11 1/5] dt-bindings: ethernet-phy: add reverse SGMII phy interface type
Date: Mon, 22 Sep 2025 21:11:39 +0800
Message-ID: <20250922131148.1917856-2-mmyangfl@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250922131148.1917856-1-mmyangfl@gmail.com>
References: <20250922131148.1917856-1-mmyangfl@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The "reverse SGMII" protocol name is a personal invention, derived from
"reverse MII" and "reverse RMII", this means: "behave like an SGMII
PHY".

Signed-off-by: David Yang <mmyangfl@gmail.com>
---
 Documentation/devicetree/bindings/net/ethernet-controller.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/net/ethernet-controller.yaml b/Documentation/devicetree/bindings/net/ethernet-controller.yaml
index 2c924d296a8f..8f190fe2208a 100644
--- a/Documentation/devicetree/bindings/net/ethernet-controller.yaml
+++ b/Documentation/devicetree/bindings/net/ethernet-controller.yaml
@@ -42,6 +42,7 @@ properties:
       - mii-lite
       - gmii
       - sgmii
+      - rev-sgmii
       - psgmii
       - qsgmii
       - qusgmii
-- 
2.51.0


