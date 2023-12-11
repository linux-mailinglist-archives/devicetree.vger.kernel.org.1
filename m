Return-Path: <devicetree+bounces-23980-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 92CB780D1AE
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 17:29:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1682F1F2172E
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 16:29:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5388B4CDE1;
	Mon, 11 Dec 2023 16:29:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hVeXC6j6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2FD09E;
	Mon, 11 Dec 2023 08:29:02 -0800 (PST)
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-1d05199f34dso27266735ad.3;
        Mon, 11 Dec 2023 08:29:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702312142; x=1702916942; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1rqtKe4v8UjvBYiGw2tAEywSMjLXJ0nr19S1NY3ev5g=;
        b=hVeXC6j6oD/a3CLbB3mScAS6v2vbgAElea3lh7skWXiHWv7kUBBgdhDE/A7QZlKCiD
         hlV75rmItmrL4WO8FVmWMKHkhQAdyv1g0FJ78PyPLg5ZjS2C2PRKyKjI04085CNxEdqa
         HaEPwkyqLpQ/Vlgy/RMmC/bG+TIuvWUUqNKpzckhRZOvlVk3IUIY4R101Rqpr/FgbSP2
         uR7j2Wa+9Y0XFCHz3Lzu0EGCA8FjF3CeEIEY+c9xBhS+aoOALKe1p3wTJeu2pf8+nn3e
         wuhiKaLZ8UQa1QOFBbtVo92ZTTc+nIIPE/vVLwhHHOcFuJlum0B9PqbwnVCu3uQU1u3u
         nleA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702312142; x=1702916942;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1rqtKe4v8UjvBYiGw2tAEywSMjLXJ0nr19S1NY3ev5g=;
        b=UZPNrS2FDWbtCvJbzxXG422/ilAso5ys0ZdLoA+u/pHedsqupkJ/RmsLiouTAe7Nox
         l7lgw/glTAS/QlKe4NNMpCkwvI3Fe+5ffFCdV7bkxZDvbVLWzwD7RZf8JefAPEtVEh2+
         0RVHrWoSO1YIl74lofgNQiBUah6JeOVlrkGZNJ8K2/5uO4D2pc3Wcl9K2VY3T/B8Sa9f
         nNc2G3hFnKXkERm0CRqyrUSr4Gcc6ptKxI8uBELVi3J/7OrQelzeOUBOteWGTztTVWQb
         S026tvlpaImPceml6X3aHDGZlspUUmqxO3NXpJMkinSFKpuRnDZF1mSC9BnexG0mqnrR
         bc7w==
X-Gm-Message-State: AOJu0YydyMtr5UWfsNLJCg/bhEOBNFgKP6QLU7Tz+07edZHEQ3yWwx2f
	vsc8CF1jDJjoDnTlxWYzFoA=
X-Google-Smtp-Source: AGHT+IE8XpJDocFAKHHGFpxrgDq0ug6k0fy23CqEFOE5ghkrImi45EDoVbTeYgTMYSHYXh2+EvwZgg==
X-Received: by 2002:a17:903:26c5:b0:1d0:6ffd:6e4e with SMTP id jg5-20020a17090326c500b001d06ffd6e4emr2234953plb.70.1702312142392;
        Mon, 11 Dec 2023 08:29:02 -0800 (PST)
Received: from peter-bmc.dhcpserver.bu9bmc.local (1-34-21-66.hinet-ip.hinet.net. [1.34.21.66])
        by smtp.gmail.com with ESMTPSA id ja1-20020a170902efc100b001d04c097d1esm6867888plb.271.2023.12.11.08.29.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Dec 2023 08:29:02 -0800 (PST)
From: Peter Yin <peteryin.openbmc@gmail.com>
To: patrick@stwcx.xyz,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@aj.id.au>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v7 1/2] dt-bindings: arm: aspeed: add Meta Harma board
Date: Tue, 12 Dec 2023 00:26:54 +0800
Message-Id: <20231211162656.2564267-2-peteryin.openbmc@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231211162656.2564267-1-peteryin.openbmc@gmail.com>
References: <20231211162656.2564267-1-peteryin.openbmc@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document the new compatibles used on Meta Harma.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Peter Yin <peteryin.openbmc@gmail.com>
---
 Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
index e17b3d66d6e5..fac3cda3f487 100644
--- a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
+++ b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
@@ -79,6 +79,7 @@ properties:
               - facebook,elbert-bmc
               - facebook,fuji-bmc
               - facebook,greatlakes-bmc
+              - facebook,harma-bmc
               - facebook,yosemite4-bmc
               - ibm,everest-bmc
               - ibm,rainier-bmc
-- 
2.25.1


