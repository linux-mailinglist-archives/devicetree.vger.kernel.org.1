Return-Path: <devicetree+bounces-78861-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 24B5691391E
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 11:01:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 492831C20B90
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 09:01:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 676FB4CE09;
	Sun, 23 Jun 2024 09:01:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EzZ7XTqz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8A7C2D052
	for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 09:01:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719133282; cv=none; b=Bw31Xszyr46V8wj8FgVLFMpFDo3iatLa8f43+B9092s19E9FX3FiKXJNKjQuqVidUtMORSfQwUEz9ilt8406G/X1vDLZlTwFH8ITM/XR/8/JOkYiHCpA8kJZqugJ+kENg4CJ1PbUHvrDcjKgjxdJ6qubQ2Ohqc2TYjKE3t3lNEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719133282; c=relaxed/simple;
	bh=U6OOr5OpMrSdAgnkkCYBgC2RVtOBIbLQA9Cd3XKahYs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=f7KBJJYY7ly3XHtX1+jGr9zO5HKBpAwvxH8YO6sA/oZx1IEy5aeW8Lr4ynOmOYp0lHFjWxCtuXN9WUPO1XrjGySXcwa4HBfs/NasjYz78+8+ubLE+eoZI9qh9yo5zpSBIkD1E4dL3ev9DNdwXsjQvb345Do6v5pLh0pdJv4bT0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EzZ7XTqz; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-57d15b85a34so3583672a12.3;
        Sun, 23 Jun 2024 02:01:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719133279; x=1719738079; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BnFNSmeXKE9Xbj/8rB7DUybiDejAAysFdgDDOjzrm44=;
        b=EzZ7XTqzGENjjyvwQoCXplwYTU7f26ag5Jjb+k734PQhgRZEHFMHV7l4mphvZrA99G
         nBf9I78uqxnpwzO5ickk3yBsWtZUZFpIvesgHmZ8mUjFYToSvD5x8rxj0y0/PujiUb9V
         HvduhFt3vtIHaCXrOAyd5JWeICpLvAvtqPt0FR2X1s5yx0gJls/eB4ceF6MiZNilIpmH
         3g4aMfs5JBM6EfrvXSwjnENrPKZYmeDLUYZ+tPQEBLk4bsiEoJ+7MArXI1Ytr6498Oh5
         uuY8mI6gTsGneDeo9mK0NuIpuPPkKW1sWnx/QpUbcBNtXMPpbw3LXGOSIGWmxqXYxzLf
         3ulQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719133279; x=1719738079;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BnFNSmeXKE9Xbj/8rB7DUybiDejAAysFdgDDOjzrm44=;
        b=dv325EcUc1L9eNHNS2I2+8BJav8qkd0CZf+HkvjQncu06/9WLpXCr+fMjEZK9IwNRN
         uRPTmHKxyO7nqwKAcYOIOeW7Pb6Mhfq2U5cI9L376FroQ4cc+T1JxqKIbXsMb34kCU5d
         7Otp/0nDW5zw6yOy84gQnd4oR/RR0hE/bBIJN9gTmWFQLaBRY9sMSHvSSBaeZAcewB5G
         kklBU4qHBpyAXUvrL4cD7J6qjiRhWvBlWh6auxJQhwK2XcbuXCyc9UAAdY7QbXX0Fexv
         E327W6GSNB1Imv/qVSNdubJU36Z2qDEYJbbIzo/RlD9TCc+EO8m6o+BBtud5dr5nQtzU
         Tw/w==
X-Forwarded-Encrypted: i=1; AJvYcCW+iaglLDA68X+RWl45Bcl1TIynXGeIfWsvhAjwrRNrvvW5V4nS74Poa1Mi+pLutSW3uhJmQKhA4KXzZkR/MjTDVBQ5ChksvVN45XZPk75aqZLHPmHvQPLwWv7mEyF+2aPFUXAuN+sN
X-Gm-Message-State: AOJu0Yxy8VXLbNFt6wpK2UnqnBaBTvPJUYVzj+77DNZ8tAZ9SEaaqD75
	cfYydKOwrK3HvqLVMlah0BYfOwDz6X9/Ccis5GWkC7vOcLm2m1M=
X-Google-Smtp-Source: AGHT+IHk5b/y5TB+6CCC61uFRwDTgKVdKv1ghN5pyDe3ew++W6QJFzOjhRdHXQgvO3IimQyQvbV9sw==
X-Received: by 2002:a17:906:ba82:b0:a72:5010:bd87 with SMTP id a640c23a62f3a-a725010bea8mr30806566b.61.1719133278715;
        Sun, 23 Jun 2024 02:01:18 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:eac1:5757:d323:9544])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6fcf549385sm282003966b.105.2024.06.23.02.01.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jun 2024 02:01:18 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Sugar Zhang <sugar.zhang@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	inux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2 1/4] dt-bindings: vendor-prefixes: Add Neardi Technology
Date: Sun, 23 Jun 2024 11:01:13 +0200
Message-ID: <20240623090116.670607-2-knaerzche@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240623090116.670607-1-knaerzche@gmail.com>
References: <20240623090116.670607-1-knaerzche@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add vendor prefix for Shanghai Neardi Technology Co., Ltd.
(http://neardi.com/)

Signed-off-by: Alex Bee <knaerzche@gmail.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index fbf47f0bacf1..6e879abec71d 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -995,6 +995,8 @@ patternProperties:
     description: MYIR Tech Limited
   "^national,.*":
     description: National Semiconductor
+  "^neardi,.*":
+    description: Shanghai Neardi Technology Co., Ltd.
   "^nec,.*":
     description: NEC LCD Technologies, Ltd.
   "^neonode,.*":
-- 
2.45.2


