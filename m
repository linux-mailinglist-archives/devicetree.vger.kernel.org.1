Return-Path: <devicetree+bounces-225991-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B816BD2BFD
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 13:16:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 267994EC258
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 11:16:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1702A259CA5;
	Mon, 13 Oct 2025 11:16:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="K7sNQVMM"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F9822580E4
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 11:16:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760354165; cv=none; b=EX6rmX0BqQ/8O9udlboqyjt8eOOYJr5ujO1l5R+FApALznh303rZ6B4KIidv+KOhL70v7ZGDtTWidUxEBvnfdayExGEVIPCSXndFRpK+y39x2KSzOmvV+mIJYunhA9Bx5DrD6cyXHyoaJsDsYeGFqGPFExT6apopgJTJB1wQkVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760354165; c=relaxed/simple;
	bh=+6VII37RHqDNfppTlqwcNFr2ZT+PLo6yM/8orE91hkg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=OzqbypmcrhVq/jVao9b8SxqIRkuhdfqBExKZSE7owFLz6siRBSfdQG00LYIxtNx6VSgab0mUt9k/Dx6MLTMCJhrhKBkTGjlguhE79qEeaBvUcqu39Y44iqhT5ZeRzxWXgG7oHUQvpi722YJSDR+PT0Lvybs+jb81zHHyinVzMqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=K7sNQVMM; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1760354161;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=4womYyfAPXvRIazIdsWxNUOGmmlPDZZgpu1ixU0rOaY=;
	b=K7sNQVMMLa/WXrPOcRqnCp+tkgxXJoUT7TGNQOCvcclVQoLqCOm79jM8YRSg0McBq1sAYl
	UCVvl1PVw0l2kC4jxtlZ4jb/Ls/DLRBjZDleYZwq/EZvt0AO/NSrsRlzavT4XdZKCnZ9zD
	Pn7+0T/POSjCJ8CEDFvKdJZy6Oa9aaw=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-414-icnrf1etPhGv0JI1cEdNtQ-1; Mon, 13 Oct 2025 07:16:00 -0400
X-MC-Unique: icnrf1etPhGv0JI1cEdNtQ-1
X-Mimecast-MFC-AGG-ID: icnrf1etPhGv0JI1cEdNtQ_1760354159
Received: by mail-ej1-f69.google.com with SMTP id a640c23a62f3a-b3d21b18e8fso342046166b.2
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 04:15:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760354159; x=1760958959;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4womYyfAPXvRIazIdsWxNUOGmmlPDZZgpu1ixU0rOaY=;
        b=F9bfJMagg610BHys6AMty2gKNsApXS9NwUAqN9IBCnr/ba6noXUrPNOXeKYtRwOrq8
         LoPJyfv6JNqHjP8Ij1L4vAICaCp8uiZ7NiocxyLi5HJLF16j55UrUBrzBxGlXEiWrg9e
         njWyURLrUnR54q2Nqu6PF/Qhx2gif7xZYaspa+zm9pqFuOQ9GcICODvbb2Z5R7najZ4j
         +AtbnVheh/L/l23nZdCeVRNC0ZtI5FKKNd2YXfird62+6SRJb5lq04JI5B3GqEQQFwyV
         HW77ASivKUXUcNyWQWmbdl3cT4gEGqa6ecm9mqADu+xCu6ZBbWgXPoXt4/a8LMb4bkmt
         3GsQ==
X-Gm-Message-State: AOJu0YzzwguKTVJhQTN+y8IiX472a1j7OR+QAn/9q5e7c5osmO26i4iv
	Wqy3fm9J2aWl+3EUpf5IA9D8jhD6LREUUcUm8OtiK8OzMVu3FVDU3mVPLZa3lcFUpyunnQQ/Y0R
	3AQG4g0O26IrnywVWkxOLvRqzvd83Z/8F0DomowssrZl5AKGfGpgKlILHTRluZRiTP94vnwkyfh
	sNn2QkXv0iQXZG7mNBPMa3v5oLV0TwWNYXlp0zb45WZmH6+zgQWA==
X-Gm-Gg: ASbGncuAyEXA8T9vgw3fTPT1U9oWK3c9HRpBc08gBtcodrLlNvZUPl9/oeNk8Op7hzL
	FOj6xP5BvxOkqPz0U6R6sINb+RpKeuxwYkSsULfmojbVnXmFka2i8nKX0qfkIKP+d0BsOHCDEWf
	5VXv5DJMn17HQtwYxApYDZLT71/KKnKUA7pBnGTxcEZ7S/0WEoP9EcL7vUC2cknUwmf7kyx2d5d
	Fl5AD1QfzVGuxXnyQzwowAgxfJz4WhBlpF2nGtsVLPfCx6+7ibgMu9mY7bVlUgVgc3S683ogPO/
	20K3gZpnYigET4byF+fFAVLYkEFDz9e3dOcfWIkh2zQi
X-Received: by 2002:a17:907:d06:b0:b2d:830a:8c09 with SMTP id a640c23a62f3a-b50ac6d0efamr1942222766b.44.1760354158664;
        Mon, 13 Oct 2025 04:15:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHg8rg8dsq7zJfh6gCzyRijPZxMfRfezjJZnz19r6DIJjozGij8WAfJBWxcI2QpDp4IppwBoA==
X-Received: by 2002:a17:907:d06:b0:b2d:830a:8c09 with SMTP id a640c23a62f3a-b50ac6d0efamr1942219466b.44.1760354158153;
        Mon, 13 Oct 2025 04:15:58 -0700 (PDT)
Received: from holism.Home ([2a06:5900:814a:ab00:c1c7:2e09:633d:e94e])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b55d5cad8adsm917336966b.7.2025.10.13.04.15.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 04:15:57 -0700 (PDT)
From: Lucas Zampieri <lzampier@redhat.com>
To: devicetree@vger.kernel.org
Cc: Lucas Zampieri <lzampier@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vivian Wang <dramforever@live.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/3] dt-bindings: vendor-prefixes: add UltraRISC
Date: Mon, 13 Oct 2025 12:15:36 +0100
Message-ID: <20251013111539.2206477-2-lzampier@redhat.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251013111539.2206477-1-lzampier@redhat.com>
References: <20251013111539.2206477-1-lzampier@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add vendor prefix for UltraRISC Technology Co., Ltd.

Signed-off-by: Lucas Zampieri <lzampier@redhat.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 123456789abc..234567890def 100644
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


