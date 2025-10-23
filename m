Return-Path: <devicetree+bounces-230355-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 85AB4C019BE
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 16:01:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id DE08035B230
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 14:01:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4893F31D733;
	Thu, 23 Oct 2025 14:01:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="GTyKb0ij"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C78B3148B2
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 14:01:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761228072; cv=none; b=EakDULlwEOzEoRGRAeDfJuSBfl0IJIodhcglLy58k09PcLtTqk8Za6Jzyg8hn+QIc9EcllVGzIJYIM1Uyks4biruESuBP+o1Ao6mHD9LW5xITUHSfnhWDRpL0I+HkODRc/nPOPaiI0VcXR8chhMDp9yzmkRMCf/aoDA3NvmhipY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761228072; c=relaxed/simple;
	bh=GwdorghP7pkx6jrL0xNhcOjrQ7rW+RmSi107hDe95KA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jJy9tHtnKvb0FBQAF43uwV2Zetm+Q9BxrIdnvdLDJQ9bRnWrqtH63E0A0kMVQ6wZ/AB2vszHqtZFXbI6LskD5C/AxY+fMv5ZSqwcznmAfPr7Nqwcel8sPYLWNBOK4sUtMvkC5wT2U6omyqEEpis/rFhnwekowbJ5Uz8GRNNY9Ds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=GTyKb0ij; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1761228069;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=NyZc7IIr5uPHqqlmg8fs1xLiepRwuPem5qvpkm3Ay88=;
	b=GTyKb0ijOITObzWmfjaVrCeWbMbGjRJa7W+9xErFj3+OSm9Dg++wT5tusBEMCEmVXgVbQx
	NnNeEMVWM2XJtG6eztSo79YxHQ8FH6lwvzb6kGYxVYV95SB6NsSpvM1oTz25a+AjrNyvqr
	FaGsuq+atMxrtmNf6iUoxcn6+4ztKdw=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-664-6zaFIKqJP3qVOPbVqyeerQ-1; Thu, 23 Oct 2025 10:01:07 -0400
X-MC-Unique: 6zaFIKqJP3qVOPbVqyeerQ-1
X-Mimecast-MFC-AGG-ID: 6zaFIKqJP3qVOPbVqyeerQ_1761228066
Received: by mail-wm1-f71.google.com with SMTP id 5b1f17b1804b1-46fa88b5760so3325785e9.3
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 07:01:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761228065; x=1761832865;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NyZc7IIr5uPHqqlmg8fs1xLiepRwuPem5qvpkm3Ay88=;
        b=FrTXfjVaeqMnAt0nSh8E8rgIxlN88pvK4AzJXCzSHLgCLDa5DLv8Bo53qTZgaMlICu
         Tr0IszjIPb3fIbUmVKCDaidAQ3OUyQmDp0XfdsQtT5ZNCS81o5L6ArbCXfuGgyeaSnrn
         lJBvnCyLEz3vFAwO7cKEvaDwu7s0oUIKqDMsM/Nt8RhxnrsWKN0K3vCgQQ19a+jWmMh5
         4eOCKv2MwZbCKkBdfmj4ClqRpBwhDbb++S5P7U6kNof3zxIqdJIrP1h5a7m0/Hq3lhkj
         klrSETFSY5u1I2YNMVsIsDXSEOL5y0Ns/F7fH7g5S+PWB4cWNWItNJ+Qx45Uij48/fHY
         IlUA==
X-Gm-Message-State: AOJu0Yx+w3cHyeyXxFyPlVSlKlaDXU12/j7VxiLzp21WqQfVeEKNdddn
	PLdB1nbk5h8yCxjBLMPddmK4uXvG3ImVHFL0DT6o7bghqmXttV5V8u6iVqeQqSRqKczkNjqHez4
	lJeYvcFVj6V5YXtdfSjUSIP7Uz4V2gLWFn/gdI0eDQ1Czw/wfMey0CWaPGx8QiiFieiPWZ3jTea
	masaUEPv3AA0cGx6VzmpsmIM5thgOIYsIXd3BmRkurLyv/4gFpmw==
X-Gm-Gg: ASbGncvXhgZdAE9fTWJVB8nxJxV+6g1uhkkveBgS6m07LCXzPxA1ovbX5lRbXISRq+C
	OyR0J7u9HL8eH4S4kD+9zRoYWlVMJfbLMq/8Pae6/YYcN30yypTkA0ZfHMyxOmorVBp67OESUub
	GSBZQbJAbEHIcVVZ1bhAi6VE7l0Qg1Fx3bQpNfZNv2Ta7OvtEumIzV/FxJScJKo+d1Gz1WdJx0c
	s9bHf+Aot/wIgzJts0vlGeZiF1Nl4AJBJZORJ+xMVAP/3dkPR+8LvWDAAMq3T3oTBCe09KYmhPW
	uEdESZmnelk2AYN4AlvWeI1c6zfb9Ju+yvCqeGLAevLH/+5zdZNSmz+QyeIDFqu7RQbV8nlXkod
	IXiM=
X-Received: by 2002:a05:6000:310e:b0:3e7:5f26:f1e5 with SMTP id ffacd0b85a97d-42704d623acmr16053914f8f.23.1761228065153;
        Thu, 23 Oct 2025 07:01:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFUJZMivJm75Uw39dCdUfRrfDXZwOWqWp5mZ7JKvKlDw5WhQsR7ZPZTgl0xq6VXuPm4KMweVg==
X-Received: by 2002:a05:6000:310e:b0:3e7:5f26:f1e5 with SMTP id ffacd0b85a97d-42704d623acmr16053863f8f.23.1761228064464;
        Thu, 23 Oct 2025 07:01:04 -0700 (PDT)
Received: from holism.Home ([2a06:5900:814a:ab00:c1c7:2e09:633d:e94e])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429898add96sm4116154f8f.30.2025.10.23.07.01.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 07:01:04 -0700 (PDT)
From: Lucas Zampieri <lzampier@redhat.com>
To: devicetree@vger.kernel.org
Cc: Lucas Zampieri <lzampier@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vivian Wang <dramforever@live.com>,
	Charles Mirabile <cmirabil@redhat.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v6 1/3] dt-bindings: vendor-prefixes: add UltraRISC
Date: Thu, 23 Oct 2025 15:00:50 +0100
Message-ID: <20251023140057.204439-2-lzampier@redhat.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251023140057.204439-1-lzampier@redhat.com>
References: <20251023140057.204439-1-lzampier@redhat.com>
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


