Return-Path: <devicetree+bounces-221906-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DD23BA3F56
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 15:52:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 29DBB2A1C7F
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 13:52:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 768CD2F8BF6;
	Fri, 26 Sep 2025 13:52:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="m/QYugo7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9B902F7449
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 13:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758894745; cv=none; b=UHMx7n7F5wX6f9ZjHoAIlboWJUbK8tNNfjeJaoDRiJbzT86HDB8FPCwAE0NQ37eLZ7ioR1vzLtKziG4sJJQs2+vzbIwRayLAgxZO+0yfNmxX9+om52yCPJmvxzBb6VyaK25hSg58QaiAEqY8cJr4JUurlk1ekQaw2IKdiVjvaAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758894745; c=relaxed/simple;
	bh=29QXbFbslPmiTPuGlQ9L8/1DrSw32wFB7vLBuZhcYNg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cyNdNR3L7E4crsaXoXbjCi0ok4MPHbcVjokQRvTXUXOCPz4eWfyZp/TOdeUoOSnf8XLXVCuJL/hgQ0181gqRmXqj4YQOqI0o6YAXR4qIRxFQ3GCggNs4tXxh2Bj4CGhh+Qx8937ZOpYKquyuwRYeGp1ov1QKYxyqoy91V2mMRPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=m/QYugo7; arc=none smtp.client-ip=209.85.216.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-3306eb96da1so1793221a91.1
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 06:52:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758894743; x=1759499543; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SLKZ1PGtShbPQ7Db1+LnIKpZ5s1PqjR2pTFgHGOqcOI=;
        b=m/QYugo7vy7Ia7uJRasbz+ftf6NmLuBxc2IsBX+4NVJOk1+eUm1JYnHSo7yNwo++7K
         o17YKYN5MIF7weD4z8XxVDkXqm9EbVt2ONQtNDliZVfi9wRF/xpblUyX6VWbgVBZYSW7
         tCx8naFlv+ceJ/3bo96LhhPaFTQgfTHFvu2eX5Qxt46qJn4/kvySyVCQpXPAg5m3HGcc
         x2L+lThXR3Qv/DPG7Uu0iSBXq75r0dsdLuz7QltAE97m3BIrrnVoEOLkWp/SyOjXYfVD
         FQgewdOdHfEMcwbiTYKyf0Ti95P5VXEEmgxoeBVEvB96kydVXCFg99gD6+PE815vdYVR
         vCww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758894743; x=1759499543;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SLKZ1PGtShbPQ7Db1+LnIKpZ5s1PqjR2pTFgHGOqcOI=;
        b=LcH3enMaXmarnjSWSOyGiip2CSagchiY1SODgbM1O2zFqyhsC86quQpieAzkGRPv7w
         itCKrL49b/gOtV/p6q9fzVc/bk/xze1EnNKzCej17YBjI1BJ8Kc4xjVrto0Yri/HDIVx
         C2ioAONIl02OkzRFECZzIUnQpDSmfgwyOtO2RPR5MuBXStc8HRv+uW74UWOhPCSZron1
         Kt3rdBzbfeGz1Jp8bDV6Esq2eTC65PHw3SEvtIHLU1bHn79yu9SlVZ7c/y0NqEXqrzvU
         lCrGOvwUYSe4o2nASrdsaitcmVWOeLFcqkso0RipW220vQ3445INxd+ODpHHqRBEru6c
         4KxA==
X-Forwarded-Encrypted: i=1; AJvYcCXsDCUrMs5JwzPUcNsLFY/hF/Kabv3pelHYkju8PLvKZLuClYtsjOnrDJS+0Ga/AIcOivs+eoAaXBwO@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+Usli+QGm73yKxKhRogKesN4vhEg8+hLqV8KUOzZP6K80Lk8M
	HYTRZk+nwI3vRPwqPWNsWi5jrC88/7nYPh8fnn3Lzfe4Sx3llbixY61r
X-Gm-Gg: ASbGncuqVpY3HVasCLjoTvlqkrJcL7uwyaHawlW6i3AjySDaz0fXcbX2qdJ/Jwa1eDO
	ToXCIUib1P8XIYFhNksCwTORE0rtIBGheOuDu69Vbc+KxABNlZ5MyOXJ++SEXPqdLzc1/PsllBl
	/wHmWGVjRa/2tJEMTN4Q+QYGsVWjw22lYIAm20spMVa9PlkxL0z+cw35saSRkd0u7VKW1yqhkZ5
	+J82QO+gT0J/3y2/L2ADEHSOKQ6V/dYtJStNa6fOK2p3W1eWW6oRsJuxDsztfo+mdEW3xKKb/P6
	Z/bcSaWDIaiC5Xkggg1lZdX+VFE62UyRj/Mz7XdJiRKlV05iW8KpTnzUjn++2/ptZ/b5mHqtghT
	ZCoxHSI7jRtTVu+3P85uZYUjBwO8K5D3O8PlIXiH1BILbHnlLjuaG24jRqzM=
X-Google-Smtp-Source: AGHT+IESJmB1vCWK3wxFxNmHyAQofqcQGSOzEcCcasafXC4dETuw1ch/4qn4KS4mLk0uMo3QlKYA7A==
X-Received: by 2002:a17:90b:1c8f:b0:335:2b15:7f46 with SMTP id 98e67ed59e1d1-3352b15b573mr3443116a91.21.1758894743274;
        Fri, 26 Sep 2025 06:52:23 -0700 (PDT)
Received: from d.home.yangfl.dn42 ([45.32.227.231])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3341be2338csm8997217a91.22.2025.09.26.06.52.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Sep 2025 06:52:23 -0700 (PDT)
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
Subject: [PATCH net-next v12 1/5] dt-bindings: ethernet-phy: add reverse SGMII phy interface type
Date: Fri, 26 Sep 2025 21:50:48 +0800
Message-ID: <20250926135057.2323738-2-mmyangfl@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250926135057.2323738-1-mmyangfl@gmail.com>
References: <20250926135057.2323738-1-mmyangfl@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The "reverse SGMII" protocol name is an invention derived from
"reverse MII" and "reverse RMII", this means: "behave like an SGMII
PHY".

Signed-off-by: David Yang <mmyangfl@gmail.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
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


