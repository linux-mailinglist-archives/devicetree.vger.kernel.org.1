Return-Path: <devicetree+bounces-227513-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 331FFBE233D
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 10:43:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 874A04F1A1E
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 08:43:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FFCE307AFB;
	Thu, 16 Oct 2025 08:43:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Cd/3HhWa"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7192F30102C
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 08:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760604204; cv=none; b=JnYj88sqz75XjEpumiZY3q0rQbW5JkfBG78smOLymLYzjjf47tKpt2ZIcwsNFZNFNy4/q7hr07i3LBL6/K20ma/Ww+mtoTFiAWlqtLUqfH0t+/qQTwBiLVcUWhbC89Vy/iGFtccLVnKLiFpKV9rW2OF+L6X62sB7OktvKWzxE4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760604204; c=relaxed/simple;
	bh=GwdorghP7pkx6jrL0xNhcOjrQ7rW+RmSi107hDe95KA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=VBuTVp1/Sz++Dc6fofVqgJJeo5POTREb2jdxzBaBZ9VNxa+ELDxq0rdAynIRzcz18wFfyUFASuAIBt9XDtVEcbnw+AP/72Hi+GXvrEYvKLZHyzHQLuaRYKOtmw/ZTZHHITqQpcU89ErZBnoifXzndXBJ4ot8gCywZ3i/ibLlz5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=Cd/3HhWa; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1760604202;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=NyZc7IIr5uPHqqlmg8fs1xLiepRwuPem5qvpkm3Ay88=;
	b=Cd/3HhWawbhGPJ9BfJnz93TbfAWvHa3y/QL5XkCi7V1mknQCkSvaMlWSwSOg47aYBaGb0s
	IMDIo4p7VuTJFk67HqqAUlpGI2ZPKkZsCkgZ5C8lEYmD/D4UlHO3r1m6mUNI4tX2f6kcEu
	dn7ev2pgTlH+l/mVqlfCuwrF7ISHO9I=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-324-g_rbgT5PPmGSi4geypAR_A-1; Thu, 16 Oct 2025 04:43:21 -0400
X-MC-Unique: g_rbgT5PPmGSi4geypAR_A-1
X-Mimecast-MFC-AGG-ID: g_rbgT5PPmGSi4geypAR_A_1760604200
Received: by mail-wm1-f69.google.com with SMTP id 5b1f17b1804b1-46e3ef2dd66so3205885e9.1
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 01:43:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760604199; x=1761208999;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NyZc7IIr5uPHqqlmg8fs1xLiepRwuPem5qvpkm3Ay88=;
        b=YD3hDoAaPabQ5N4tgGJraxbAB8I5qB0GaKQE2ZanM6EwjcuT8AcCNjWorR493ZfcID
         ypMOYcm2kcnL+XqF6fd+hgNunAZr/WD6p4n67k2w/P52wS16NKUU5wWbcI9Au91OJ4IS
         25WaGY7/+KCnCCfxjD9XNtLwPW/kUasIYbf6lfm+5dxJIZQlw839ELzSCFBFjnkhITHy
         VhTmVox9mhut/d13TrNSZAictuh2AbjDCMCGK9cZAzK2HN2JDMC4OMRfKDHGBjzw9DAI
         Q7GTuB41h3HD0eZyZUDvU5kYCx/4oUwURD99PNUOf0KSm2I0PwIFqt3wOaBvqPvm2Jop
         Wh9A==
X-Gm-Message-State: AOJu0YykYOuyWjgi9VBbSM9vi00I6KSUwRW9oiqIj/bTHZahFjJN8+LD
	BMS3a2ICQ4MGKv7LGmzKRyLII4HjVlDEn9jJaq4w5dho0szejoP/JRuaYd546lCHDns8Q0/am4j
	/nHFJiW6a88D/zpC5JiAUgCcrkE4eKtZfDasBRqJfY8o9LkfH2tDitXVmN2YFvoAXH7wEUTC9Jj
	aCQIoXAdB8WVuQlhSX+J0H92+NZurcZR3niykU55rm3BgODGUI0A==
X-Gm-Gg: ASbGncta27a2fFj2cfAl1QaogITZq0y2Z0ZLUN9Oyrs3rZRzDpZbEiurwNcgeM4BFIF
	ZybEOBwVJvCLcx379uCq62P9ciGiG8Fyj9nrW4TTKxcUej/I7+mWrlJ5IuojP7Mg6T4aZnnfCCg
	YUOVzW4+d8JM5OgnahIKt+t8WJHBD6l/MsxYP0MklHG/2uFFkyF98J0Vr6mtEo8XnOwpXTEGYsr
	KpcRyGVsHEFgqV9xKp9eRxpJoZrUGAjRCrqb6yPFOrb6NZyFWuH74caoNVrg9R+yLJTyEvu48Xl
	0enok55tiUowSN9+Cxpk8Vv9nvFUvRyK/+PGWBxgr5vnEejP4TBirFYtk7dXW0X7Bnqe7BFeuDn
	2wTDv5d7V
X-Received: by 2002:a05:600d:8350:b0:46f:b42e:e362 with SMTP id 5b1f17b1804b1-47109b5f2b7mr15373955e9.19.1760604199612;
        Thu, 16 Oct 2025 01:43:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEmApA8Xn0mWrWAdsDCHfPRyxd1aa6agiKyJgov+9nbvSF56luOsz5TtoeRoXkFTcWe5tAr4g==
X-Received: by 2002:a05:600d:8350:b0:46f:b42e:e362 with SMTP id 5b1f17b1804b1-47109b5f2b7mr15373555e9.19.1760604198708;
        Thu, 16 Oct 2025 01:43:18 -0700 (PDT)
Received: from holism.lzampier.com ([148.252.9.235])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-426ce5e1284sm33047565f8f.45.2025.10.16.01.43.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Oct 2025 01:43:18 -0700 (PDT)
From: Lucas Zampieri <lzampier@redhat.com>
To: devicetree@vger.kernel.org
Cc: Lucas Zampieri <lzampier@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vivian Wang <dramforever@live.com>,
	Charles Mirabile <cmirabil@redhat.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 1/3] dt-bindings: vendor-prefixes: add UltraRISC
Date: Thu, 16 Oct 2025 09:42:54 +0100
Message-ID: <20251016084301.27670-2-lzampier@redhat.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251016084301.27670-1-lzampier@redhat.com>
References: <20251016084301.27670-1-lzampier@redhat.com>
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


