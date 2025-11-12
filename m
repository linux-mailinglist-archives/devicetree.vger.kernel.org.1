Return-Path: <devicetree+bounces-237813-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D6AAC54917
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 22:13:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 7B2BB347FE4
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 21:13:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1031A2D8393;
	Wed, 12 Nov 2025 21:13:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FstuIoJk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FF8D2DE6F7
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 21:12:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762981980; cv=none; b=sEddU6TGzB0Nm5skZtRyBVbgM2KNjsHrvoWthHQeBSc4MU+yDnXXw3Ji9e9SDVCYnf29+QRwIc1IQlGwtXOEzGpMRPS7EQl52o6AAZdBmIynnUVqSnZ1wjoT7QbKwWqU04uQ9CifVXAEjrCONwCnzf3QSsq7KjDV7FCNn/bVh5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762981980; c=relaxed/simple;
	bh=CbgLR+LR4tT+7lEikMxwinz+7xt2UO1RFMUh/9q4YVg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=SH98V/ekHOVcRQ91MOa1nhO3x7EuKSTTdRzyU+1U5BloXljwr8i+jRev4OSd2BY7tJr602pcw/x3xiaGF0nbmfLN8OIbyffC1Mmox+aQR0T0eXU1r0vfRp98GXLvq89S25DFYnaK/R9tYaroMej0FDQM+VbXYnJlXjJQS/tWha8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FstuIoJk; arc=none smtp.client-ip=209.85.215.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f180.google.com with SMTP id 41be03b00d2f7-b6ce6d1d3dcso55268a12.3
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 13:12:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762981978; x=1763586778; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IjuDF77Nvin9wqVFgToN8rViAxLn6q03uh/wAmweEAk=;
        b=FstuIoJk3NFaVJTyNOmmb3FtzXdEMTS0JzvO98sNNyb2+sAuvkF0aJAVX1dSp36v2q
         FrtKtyufB6/5YhBCLuTdd+ScT8iwbCf/SNbnk2h1m+zL9K81ZANfo447rYZX7aMolRi4
         XmyCDflLTuTWSWfqkJCrnPJOznhfXa4lVYgKcM9IixoZ07MhBnUnyIJAbNHDAjP35ySI
         8cNvqbXVMZJWJpohd3zoq6R19ZTJCw+UUvDoFQJL/4nmMOh9vhTZsCj03xZxBCL5aqIL
         C78m6OjwVDFnr/QVXfE2P1qRPHQKdikE7Gyv3OuO3cT+xHH+vZ4NbIX/F/PtH8utjHUy
         sP7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762981978; x=1763586778;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=IjuDF77Nvin9wqVFgToN8rViAxLn6q03uh/wAmweEAk=;
        b=rfq/J9Prjx7kTS+68tlBLRHMxXh9a+j1pK4hr4h5w3f7+UBoFW+ej5X9T9qd0LO87N
         7xLXJQNNhHdwF1ZFlVBiERjKivv82oNV/kdJCRg7RJVvfVA+L7TyRsaumDWVZIkjvAhh
         LfeNbMr2/d9SQm2McFI/5gQDg2VkpDX2lkcKOPvf4nv9p6M8A0e5oWrEMK+igumGwLQN
         IDXtJy7+VSt2s2jQKkXv4+F9Xm8kpCKCYb2wj5D6YFtOT17eX9r4NBDVvd1XWzoRsCst
         loEa9TwJb7ovqGZZ8p6OvSoox8VvCWzKi2O4s2OgLNJkEJoJ5kNG6QEXlH5WVCynCGhm
         Geyw==
X-Forwarded-Encrypted: i=1; AJvYcCVl34vbFBwAYKGEsliKG3GmqtxTXxvF4QTMB4DyLYkoFKeLZVj65GB3L86mnPbO9Sdavc/eMgMLebc1@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5Hltirbc5k9kZXDn+2qjApy2LVIkr6iuwAFTjbrWpMhTaZ+Z+
	m107dKG1RNsj1cqWSLvHkeq34WwcrKkUqOa0KMFpKL9m4Yd5M5F7cVSFjBYgcSNkdWA=
X-Gm-Gg: ASbGncuCSRGrEXbSRo5JoV612o8hyfs76J6JTZCleudP81PPaFpxccqiVeQys37H7ax
	Yikf0ct26iAtqPkqOBEpiX9TfZdVNMHXIfh18/xK6MdtFMj6YbQWjjW4mPuYSizHLDOpQ+eQ6lH
	M7dLgJ6thD+IZ/47lirob0+XUOHsLn0v22ht8POlwWBrwT3jftrJ+N1oDS3ss2r+i/lSybO7al/
	J2ofaYdZV4cuQfNplq5hCDxncANJrttIQy2c+ZP9vCNG7UYkU+ZYykGmC8oVhQ8E/PVmSwWSE0A
	N4yEbcS0NrxestAPwOjvdHkRcnbcCeFmZMn9eHxFxjCzO6pwWcMZu/Lieeu4DM9ZZAbDsq4bJXL
	MOzX4q4eTFcVipn0vCOY2UcM9bbcW0Uh02cj4JPDRS26sEQDu/9kVGiMcep2riQgy0lg=
X-Google-Smtp-Source: AGHT+IG+mV9xg3XsxHHZk9IEjI2mp5r4vWAmColXzizBEHkP0uzY8AdSktbXnLxB4bTq6cCi6YDFug==
X-Received: by 2002:a17:902:d551:b0:295:6a9:cb62 with SMTP id d9443c01a7336-2984edaa8a2mr55489145ad.35.1762981977752;
        Wed, 12 Nov 2025 13:12:57 -0800 (PST)
Received: from gmail.com ([218.32.81.133])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2985c245ecdsm1011525ad.32.2025.11.12.13.12.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Nov 2025 13:12:57 -0800 (PST)
From: Peter Shen <sjg168@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Andrew Jeffery <andrew@codeconstruct.com.au>,
	Joel Stanley <joel@jms.id.au>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	peter.shen@amd.com,
	Peter Shen <sjg168@gmail.com>
Subject: [PATCH v6 1/2] dt-bindings: arm: aspeed: Add compatible for Facebook Anacapa BMC
Date: Thu, 13 Nov 2025 05:12:47 +0800
Message-Id: <20251112211248.3711889-2-sjg168@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251112211248.3711889-1-sjg168@gmail.com>
References: <20251112211248.3711889-1-sjg168@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch adds the compatible string for the Facebook Anacapa BMC
which uses an Aspeed AST2600 SoC. This is required before adding
the board's device tree source file.

Signed-off-by: Peter Shen <sjg168@gmail.com>
---
 Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
index aedefca7cf4a..bcb874ebd9d2 100644
--- a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
+++ b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
@@ -80,6 +80,7 @@ properties:
               - aspeed,ast2600-evb
               - aspeed,ast2600-evb-a1
               - asus,x4tf-bmc
+              - facebook,anacapa-bmc
               - facebook,bletchley-bmc
               - facebook,catalina-bmc
               - facebook,clemente-bmc

base-commit: 24172e0d79900908cf5ebf366600616d29c9b417
-- 
2.34.1


