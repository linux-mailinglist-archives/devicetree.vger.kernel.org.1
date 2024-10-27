Return-Path: <devicetree+bounces-116147-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EC049B1EFA
	for <lists+devicetree@lfdr.de>; Sun, 27 Oct 2024 15:46:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3480FB20881
	for <lists+devicetree@lfdr.de>; Sun, 27 Oct 2024 14:46:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8065E1684AE;
	Sun, 27 Oct 2024 14:46:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="Ny2WaNmi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E6721552F6
	for <devicetree@vger.kernel.org>; Sun, 27 Oct 2024 14:46:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730040404; cv=none; b=oVfmOtJW7W1b3OzsR6vtRoEJFDQ4Z/7jaZkMEHDpfTDXx0myr38WtrQ1UrD/L1Jsyqul48PUOqKiALnIp3rnbjji8uv4kEOwJ4Rp4fcUBlCNNX7iD88Gew+1lJkaCFpmsIIzDu+r9PDeaP5/HA/NABt/huDgrI6z1gOzvNlfnRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730040404; c=relaxed/simple;
	bh=K/qcbcagV9tUdN4s6JaKFTU7+lvnZtXQMnwzUPYvmjA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=LwLvkymf5ltFwrnppjH1M5RtryNgoIAm1p2KgIaf76Uvkrdpz/Chim8l7slqjHCtl4Nfx8wMxgqw6S52MMqp19tZEhCA7A5widR+QbsQkI+Vl6rNxWcz1okDQQzX4JGoGSqEAFsoSM5XVxvxkOM05rwsX6prWX21NPWEn9ENwtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=Ny2WaNmi; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-20e6981ca77so37368955ad.2
        for <devicetree@vger.kernel.org>; Sun, 27 Oct 2024 07:46:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1730040402; x=1730645202; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VOnSm2C/X5gMpHd1icM+bHrj8Z4viAW8O/wWabP58r0=;
        b=Ny2WaNmiQ+YIKtlTKZWxsglPpOR0WlOigbtgtvo3U8q9eFTyaHGG2v3vaqRI0VuJkl
         4Ay3iPJ84JUQFiOpnDp+ubqoNLUOOb1aTQgVZQ8mztFW05Uq+KOHuQj/M0QFBVBSKuKs
         l2I8X7b3XSGyOz95xHRLjLTbE0O3Hg+g3+iwn+unO6L2A/id+xAsrR+BZccKAIPo9n7M
         13VekJI61uKXAaHfC/G9RNU6ivAWw5SQO5wEbsny1oXjH4GsxE1YE8eJkcjTLP+AhT/V
         TllcSL49SNThW9uxSj/dzS1Nj7YGnHl9jIXnIs6Lgne3yDGJEoepakgEzRSIqa1MeDX4
         4dag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730040402; x=1730645202;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VOnSm2C/X5gMpHd1icM+bHrj8Z4viAW8O/wWabP58r0=;
        b=snBp6pQIEkdvtPKJx8hJlG60tBDaTzCQzD8+fNdLyERHwkgKurPV6nvWp1eJL1h3v5
         3/GJO3AebdX3W1zkiCF1cppyO9h3VGH99052SDTCKNtjcbrwP4ZduQkugawPV6QDj96Q
         S09esL2yOMEY8E+AChxio732/ybpd30/1r8F4RxibzCu+qdk88RfV3UFaThs6zxsm1GR
         B30FUVkpWbsIDrmQ2E06eCpPNoX32lSMUEzx76Va5cIT5MvUP2dmQt1ncBKGNk3PlVq/
         evRd464b7kZK1h4l7UGML+oSyOQLoZGKlDe6EruVa/1pWa3tRNeTQyo2+g5IRNg9UKQf
         jRHA==
X-Forwarded-Encrypted: i=1; AJvYcCWx1KbC4avrWtS+C0c1DTIPHTZ47CQl9owCkSf5ECuhpYIzWS/47wMnHOvwvdBs/9AqmxqPIXybICdb@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0UlXGVJu0ipKARtrI5Q9Iesnim2qLN9pqpKZ1GwV0YBTG44g8
	mDbO647QZpj8lkgS2grK6XJSA1TV8Jf2ZFT4V0P3JmwtchW3O82bpDqirsZiK+4=
X-Google-Smtp-Source: AGHT+IEMhckcSpTykUxTRgkirS7h3AG2OCqYwI+Il0+GmdsMBAeGzkYyuVJZ8rvBXKCI+SEK5+2V9A==
X-Received: by 2002:a05:6a21:3a42:b0:1d9:1334:27ca with SMTP id adf61e73a8af0-1d9a840afbdmr7641465637.22.1730040401932;
        Sun, 27 Oct 2024 07:46:41 -0700 (PDT)
Received: from localhost.localdomain ([2a11:3:200::401b])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72057a0cb06sm4065110b3a.115.2024.10.27.07.46.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Oct 2024 07:46:41 -0700 (PDT)
From: Guodong Xu <guodong@riscstar.com>
To: Conor Dooley <conor@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Emil Renner Berthing <kernel@esmil.dk>,
	rafal@milecki.pl,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Heiko Stuebner <heiko.stuebner@cherry.de>,
	Michael Zhu <michael.zhu@starfivetech.com>,
	Drew Fustini <drew@beagleboard.org>,
	Alexandru Stan <ams@frame.work>,
	Daniel Schaefer <dhs@frame.work>,
	Sandie Cao <sandie.cao@deepcomputing.io>,
	Yuning Liang <yuning.liang@deepcomputing.io>,
	Huiming Qiu <huiming.qiu@deepcomputing.io>,
	Alex Elder <elder@riscstar.com>,
	linux@frame.work,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Guodong Xu <guodong@riscstar.com>
Subject: [PATCH v6 3/5] dt-bindings: vendor: add deepcomputing
Date: Sun, 27 Oct 2024 22:44:46 +0800
Message-Id: <20241027144448.1813611-4-guodong@riscstar.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241027144448.1813611-1-guodong@riscstar.com>
References: <20241027144448.1813611-1-guodong@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Sandie Cao <sandie.cao@deepcomputing.io>

Add "deepcomputing" to the Devicetree Vendor Prefix Registry.

Signed-off-by: Sandie Cao <sandie.cao@deepcomputing.io>
Acked-by: Krzysztof Kozlowski <krzk@kernel.org>
[elder@riscstar.com: revised the description]
Signed-off-by: Alex Elder <elder@riscstar.com>
Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
v6: No change
v5: Removed extra "From:" line in the commit message
v4: Updated description
v3: Add Krzysztof's ack
v2: Add deepcomputing into Vendor Prefix Registery

 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index b320a39de7fe..f8bb3df65797 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -356,6 +356,8 @@ patternProperties:
     description: DataImage, Inc.
   "^davicom,.*":
     description: DAVICOM Semiconductor, Inc.
+  "^deepcomputing,.*":
+    description: DeepComputing (HK) Limited
   "^dell,.*":
     description: Dell Inc.
   "^delta,.*":
-- 
2.34.1


