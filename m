Return-Path: <devicetree+bounces-254238-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 180DFD16612
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 03:58:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 68CFC301C0BF
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 02:58:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 337842ED17B;
	Tue, 13 Jan 2026 02:58:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QXIv+9aR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E11202F5A3D
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 02:58:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768273091; cv=none; b=IBzyZn6ulk5jRMY/5ebhgqbRoun7gqUmOysnzKM3rMF2yR0fA7vbYr8TjcILfOJ47Qeth4TzSodsYtwQ8kvKuf4y0+A2sIm5Uv7VVTgTc4H4XxPamLl+NojnmPDqHBNtVWMPmxteyKog3KOutGa2zT1mve70wNx0tfx1jcheUDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768273091; c=relaxed/simple;
	bh=VIUy/ojlhS11xqGBbDRHLcMgrMJfETQ5L8/p2m/YihI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ji35OSuNCTSBL6uxL8IQRwiZ45R7NCiJ4sSHAICjX6g8QRBp+9YNh+Xx3VWYxNzm+mKfbDzolFFMipD/e8z6ePZXwUUOxycObvmjR6Agir9MPIMR2l4ugwmhVk3ctIqtXG3tgt9VODdgahVOC/unAXArrhcmv6eVABi/gygAZBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QXIv+9aR; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-7b22ffa2a88so3425873b3a.1
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 18:58:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768273089; x=1768877889; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GHQDWCh+NRgqnWxAXwGi0xidd1PaBziYcGzk9y7BoLw=;
        b=QXIv+9aReD2WVwskP/OARQtc6H6AuUuZ8mk24MWiM8dyu8llI6otzwpZCPnSq+IBer
         q+th/ZvmGlkcZ+AVTYeYBREm2zHrYPeVL1fASyDCGZa/VHVxrY2OSPMAkDkYNXuHT0ut
         EgcPFcDGvZfRdijpIxVGY/I6XXmYzwcWEEHONstwWo2h6kBR6rvD8pXTdxxjlZEXKlJl
         92U4q91GwuNTDQEOXj7d2Ic4nXrCGzCTehjE7HQZylSD16lx+Dnd3rcAiWKgnnzc7guk
         kbFk8f38PBeaESmFTIHfrRlyvys96WX1vdb1CLSkRe0X7v8CbGyr7cI4AqRlyTIX3s1j
         ZUJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768273089; x=1768877889;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=GHQDWCh+NRgqnWxAXwGi0xidd1PaBziYcGzk9y7BoLw=;
        b=WT+AJhGDwuMfxMbNSFZ9alcAq+NdnCpEW3CbOZDttW94vQWSsMmJufHOHGEDfCtmah
         2pRR1LpcHPztSMoS6Io1Eo7hZLP871mNbE3xTu6R2ccxsPTK4SPQKyzw/rU8utgN3U/T
         13hZSHG5SyDv+cja23vW1D1yvZWVYYaBQcrGa+jfXAk6444Lkra6Y3TuOLi6J3pLlOLw
         cqgqMRy9mI7Wedac048fanydSe9ad1VGoT+ZgMKIffPcyTcJCtz9vIlufewmv3gNPujQ
         N7wxcuW1+JUuwq+62NzMwKQfPwK75sBl58MXH2JLD3nV7a7rZKqF4879/hk1ET2t6JlE
         sYmQ==
X-Gm-Message-State: AOJu0YyZqSCL1odMyylMMfgrEwWDcB2Wy1pBR+YavwKQY1Tx6kW6DKuv
	BeC8krWfmJzmqmkBznj0/Q6xSbAMYeXu1FNvXrx6dmOLIo/59GjfDU8G
X-Gm-Gg: AY/fxX4ViOAK1p3RFX/6GTlm+NP8KVPHqqVQlwBgG+GnUtLEWiLgv9XNV1PFUQt0ISU
	NHgIzMvBRcRoZXVtU1wUEunSholehE7geiwpn+vZOVUe46kePCyRgb1wgAoZEoAVZPN5Y4409H0
	n+iwePjJ+FssvDzPTyxAaES4RwUcgJkr1E1maWzzmV4MgNqTCS5NO/m2xmAYjO9dy9gteQfW859
	/CRPUl4g/EY7oxqtyROkP8y1OEuI00bocInc55ZNFj+Tao4o6DqqRsGTOWiI9kO8t/tJfQ5nQjR
	a9Itp5e9FXlSELIS5P2RpS9FR00oC19/rZZmnwj94nedJtfQgvo5/7jxxqSAuxHXTgB9HMHer4O
	g5QCjQeUqIi3oCPr3Vp9In1MQ9IqRuox106L2dPsfwCGVM9HS03FLrunsaEN3evJeCh5xGvQRP6
	j2YeFiq/xa3Q9vOk7Rgvxjrbyh16NNgvRb+DydnOVIeoWGmqZmHy09tU+fr4ZW7g==
X-Google-Smtp-Source: AGHT+IFbfsiwk3WMmRA98lrcTj05l0HYZLZt4FJsgOL46xAEGL9tHmyDVUsE6JBArvoMUM//+uW2Yg==
X-Received: by 2002:a05:6a00:6c87:b0:81f:4a06:6f5 with SMTP id d2e1a72fcca58-81f4a064368mr5838699b3a.4.1768273089128;
        Mon, 12 Jan 2026 18:58:09 -0800 (PST)
Received: from [127.0.1.1] (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819c530133csm18702724b3a.31.2026.01.12.18.58.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 18:58:08 -0800 (PST)
From: Kyle Hsieh <kylehsieh1995@gmail.com>
Date: Tue, 13 Jan 2026 10:57:58 +0800
Subject: [PATCH v3 1/2] dt-bindings: arm: aspeed: add Meta ventura2 board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260113-ventura2_initial_dts-v3-1-2dbfda6a5b47@gmail.com>
References: <20260113-ventura2_initial_dts-v3-0-2dbfda6a5b47@gmail.com>
In-Reply-To: <20260113-ventura2_initial_dts-v3-0-2dbfda6a5b47@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 Kyle Hsieh <kylehsieh1995@gmail.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=839;
 i=kylehsieh1995@gmail.com; h=from:subject:message-id;
 bh=VIUy/ojlhS11xqGBbDRHLcMgrMJfETQ5L8/p2m/YihI=;
 b=owEBbQGS/pANAwAKAaWDQrcJVsSBAcsmYgBpZbS8dfk3NFCNHd6m+XrVE5Wa9rvTmzC8B2ZPs
 /sYTNpUCQ+JATMEAAEKAB0WIQTJHsaNZOdY+THGqJelg0K3CVbEgQUCaWW0vAAKCRClg0K3CVbE
 gZQuB/42UkYp21m/7ZZCMwoYuNYMF+tzuCHT+265cU9fnLv6RMB1XvbuPOv2WTMC/Pfl9F6/i78
 fYlkW4IXiHMe4ubSl8p3n17P9pihudh8gKaOkI+sA7CWDHJ+1PVpUC6ybbVkBEYqdlBpZ9unCcl
 WXHm019M8JhxDLUw5791HC76BVGDtowDeI0UqV0pzlseM8PcR1VCKY/eU3XAXViNMtFQFB39bV5
 Q+VVQbcYWeil9gw9IVq0tpoSSrP5fblFSo8w4ZGt1/EColvQUhAfeC8+cM7Sd3KoLH2jd+QqE/y
 Fdp3zBG1827Ptry5cijbloluw1R6kAwp95MLtoM5XR9retL/
X-Developer-Key: i=kylehsieh1995@gmail.com; a=openpgp;
 fpr=C91EC68D64E758F931C6A897A58342B70956C481

Document the new compatibles used on Facebook ventura2.

Signed-off-by: Kyle Hsieh <kylehsieh1995@gmail.com>
---
 Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
index 9298c1a75dd1..d48607c86e8e 100644
--- a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
+++ b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
@@ -92,6 +92,7 @@ properties:
               - facebook,harma-bmc
               - facebook,minerva-cmc
               - facebook,santabarbara-bmc
+              - facebook,ventura2-rmc
               - facebook,yosemite4-bmc
               - facebook,yosemite5-bmc
               - ibm,balcones-bmc

-- 
2.34.1


