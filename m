Return-Path: <devicetree+bounces-224787-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id A1408BC8052
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 10:22:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id F20614E45C2
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 08:21:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 994972D131D;
	Thu,  9 Oct 2025 08:21:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="JxgBt+/4"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F3A027B335
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 08:21:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759998096; cv=none; b=u6BRaBWzYTjCVEMjxgAEHE0FYuHF/rf/2LcrOaQOeX+a/RJugk7RljJwdQohwTPj/toFmUHWwLV+Ri+6MT4vfuwB9DQbqNqXvkheGFG+X7fqMuHeM8GhJWsjDWhO8cyRpSoGoSFV4w9fIy0dn0qtoYXpIRrAXrAxd5feYvRyqB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759998096; c=relaxed/simple;
	bh=3NWYAaHRAHCqu2RxswRl/r2DPM5W5OJgweUTFiPX4Oo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=MUCwGp3LXgwnJ3/4DannqJ/3ZjWoimzsWyiX47AcFZElHSsnDiw+pHXzCNzswFawWV0s2B8iDhrQFF37HGeyJ+kqv4ufIz7ekKCA4c1Zsj0v57nQPxgP5kf+seHWiJPdgeO0wqQYFfPi2/eFjK5xm6JpDCruZxTjUITAaokoajU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=JxgBt+/4; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1759998094;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=OJVyxgI9Fg/pvM8nQUTMBYCnsJurTQ/jDlhcr7O+2R4=;
	b=JxgBt+/4jQJxvV2jl334/xgzd8/sJOX59wVWY5ZldBHqMiW5whcA4Yx3z1zr8qUy+uD9vI
	5A6LUUyJ6BG+1sanrsBPjcW6zTkijzCBDvV214bUxMt2csk6zvGOuVtpXLxCigVvKjMil4
	+0wUex1lkrD1So4moHH4qHe3F1tKg4Q=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-629-kdbieZOpOp-_ZCw1JuEvdQ-1; Thu, 09 Oct 2025 04:21:32 -0400
X-MC-Unique: kdbieZOpOp-_ZCw1JuEvdQ-1
X-Mimecast-MFC-AGG-ID: kdbieZOpOp-_ZCw1JuEvdQ_1759998091
Received: by mail-ej1-f69.google.com with SMTP id a640c23a62f3a-b504dd6dbf1so48845966b.0
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 01:21:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759998091; x=1760602891;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OJVyxgI9Fg/pvM8nQUTMBYCnsJurTQ/jDlhcr7O+2R4=;
        b=o1DtYY4SVHrLaVzprDEJ6wQ+JsHjCAJB9rM4OWlhDXXpNQb7NLuRGTZRVx5foiJBRU
         4zC/VIMWlgAE7/F5/70Vaewwy0LrmUsOPaHXeck62o5rlsQHaf9xt3M1foTNeSPulh6M
         phd/2Jw4Yug3cNyI4omXiXcRM8+qVmFuzTHSK2X7pMBLLQKQnEhM+N4gb2OzmDgNsgfG
         NGccYtQWaBG/EG61TzagYZsDHoC0I3w7F8vTbujGTFNGvlgU/JG2XTndHMMGQoiIrUMw
         0F0XHjI4PjKGwmPnP94mg/riu1na0VvPfNyL6DHyrT/2BRQllQibK18No76FhNiThDpi
         Mvng==
X-Forwarded-Encrypted: i=1; AJvYcCXv+q2w8StnUcgg7lSS0zKQoyRaZaWy8zQkkVVdBhI/Y3xiJg7lTciKzeyWLInVNcT5SuNotAN55C7Z@vger.kernel.org
X-Gm-Message-State: AOJu0YwkwbzvnHO1NkJzEW/1vVU9i5t7/dqFsE0nvUMriEEfWeAqQtqo
	GFttUKJ/7n0CN8W18f39/OpIttWQAWRG9Bb92/L45yY3b+357voEsiWFudYuOJvVgkRExyOvNNV
	zM01sKSJ3PNMQLrB/9dQ8zFYC5Z9DlGw5P+EbOsAmCMymJPmSLuzhmUC8Aoe3+Ew=
X-Gm-Gg: ASbGncuHiFExzoCJybHoFMvjaNNz+PV0nyMncIbqFSRsdnPfj4xDp+2g5oUOslohvhf
	d/Go+c7Jg98mAEyfhXk2WmeEZ2Xkiqw9AxSo+KA8fkTwPp2I9ZkatHckcOYNU1dFNgQNl465jXD
	Pe29W6hXK1lLKD4D0phVMyzQ8P/sFIddSrtYNyBhuW/nL7dYgmqcpQmwLUkjW6wD76/uQ0dQkmB
	IWFjudUUiC3AwYriKnCkj1jsiQSpcLvlRUcg6KTjIcuXofInut+2TkVU7h9jYfLKL8s13aYgESR
	jeVea57QbWdTz0e65+ieHCHuJqESGvQoXJQV2OeMgNsdRgnhG25d
X-Received: by 2002:a17:907:9349:b0:b3f:f6d:1daa with SMTP id a640c23a62f3a-b50aba9daa2mr758264466b.37.1759998091235;
        Thu, 09 Oct 2025 01:21:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IExcmQ8eTxCm2s2PTF2ZEP2FFTRKkcyMU7KFMgI3ry7TZh/TDeJ/CUdqVKsrHFgFuODCXnOZA==
X-Received: by 2002:a17:907:9349:b0:b3f:f6d:1daa with SMTP id a640c23a62f3a-b50aba9daa2mr758260966b.37.1759998090808;
        Thu, 09 Oct 2025 01:21:30 -0700 (PDT)
Received: from holism.redhat.com ([148.252.9.235])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b4869b4e27dsm1832988266b.70.2025.10.09.01.21.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 01:21:30 -0700 (PDT)
From: Lucas Zampieri <lzampier@redhat.com>
To: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: linux-riscv@lists.infradead.org,
	Charles Mirabile <cmirabil@redhat.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Samuel Holland <samuel.holland@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>
Subject: [PATCH 2/3] dt-bindings: interrupt-controller: add UltraRISC DP1000 PLIC
Date: Thu,  9 Oct 2025 09:20:12 +0100
Message-ID: <20251009082013.1331361-3-lzampier@redhat.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251009082013.1331361-1-lzampier@redhat.com>
References: <20251009082013.1331361-1-lzampier@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Charles Mirabile <cmirabil@redhat.com>

Add a new compatible string for UltraRISC DP1000 PLIC.

Signed-off-by: Charles Mirabile <cmirabil@redhat.com>
---
 .../bindings/interrupt-controller/sifive,plic-1.0.0.yaml        | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml b/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
index 5b827bc24301..a419de50f5a8 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
@@ -74,6 +74,8 @@ properties:
               - sophgo,sg2044-plic
               - thead,th1520-plic
           - const: thead,c900-plic
+      - items:
+          - const: ultrarisc,dp1000-plic
       - items:
           - const: sifive,plic-1.0.0
           - const: riscv,plic0
--
2.51.0


