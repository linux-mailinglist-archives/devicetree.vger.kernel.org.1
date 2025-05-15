Return-Path: <devicetree+bounces-177550-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 90280AB8047
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 10:22:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DB9463A3E7D
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 08:22:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E3ED28643D;
	Thu, 15 May 2025 08:22:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=inventec.com header.i=@inventec.com header.b="fRYIDk/5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9ED56283FDE
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 08:22:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747297360; cv=none; b=PKqiRPggJDWVORLEQyfsTjilUB5hjdDLzZ2Up2Kj23W53kGBp0tWeBJsF/5bEN2+RFMqIudYGI/3/xQWbPrSFACS/1OIgj2bs2wlZ3BEUObIQl5OfX1XD3IKXMG4MRu8Q1kVf6hH6CJzXYznJW8BbrmsB3uqvO26dH2DOs+9P7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747297360; c=relaxed/simple;
	bh=zMrdY85vTW7AjrdO/rgWi/3gl5aBB4d3jxsiKmIX+C0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=OEGpHcOxel6fMB6FRbccjEKZciCjKChRXqnyLP/vHOCe9C8ss0BwfVP+bbL2LhmwpuqivLZwvKU5ZKnnpMHYiHVv0ostZYo1kwDoDW5dEXVuQ7MFZGFRnoqICSV/vGizkvAvY4DCafxoTSUvY51c1wfpPQyM1jtj3CUrWBXfZh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=inventec.com; spf=pass smtp.mailfrom=inventec.com; dkim=pass (2048-bit key) header.d=inventec.com header.i=@inventec.com header.b=fRYIDk/5; arc=none smtp.client-ip=209.85.216.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=inventec.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inventec.com
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-3081fe5987eso553245a91.3
        for <devicetree@vger.kernel.org>; Thu, 15 May 2025 01:22:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=inventec.com; s=google; t=1747297357; x=1747902157; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RjF4WIlhUumHwR0LyuhyQYbCxkjlUl+il1BderSLi1Q=;
        b=fRYIDk/5jBjKZ9akqevwnDrwdnanqkHi6W4KiH2Kmg+Qg4Q6aqaT4g7M74PGZh+Uws
         DNYGElEZyP6HPRTxpPeT8/Fqq0a5/s1gjVM1OW8/YqmsDdFB1zThpkwG8TC+aJmO86ic
         voY30NZFNjS+8xxum0A3DuAMW4a9U/qD12y4bb9B5H3Hf7XLNbsN8PLriEO8a52mItoV
         z+zEiFq/Fur9kzFLO6dRTEf+PyFBN9hbcqp4gB5dBHNCnM+MWntgGue5DrG/+EXUNgGP
         mugpFeS7bvXdoXRX9tl1KX2SqUV8OCapYusZow2JzC8nyHHfZ2dI3m71ddM6VruHgsUK
         VbZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747297357; x=1747902157;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RjF4WIlhUumHwR0LyuhyQYbCxkjlUl+il1BderSLi1Q=;
        b=EQ774+GnAdtQgzXyk8uxOduq76dhM7jqTwTMEZlGCNV9vIJR8RN6otZ9jQq+XtenEE
         bpyqPVc9J/NowkJPTAzApt1ffsO3bd2DHSODZxAEzQtCz2h/8O5R/LXWI9ZhBhLtXDWU
         nE+CyYvWWaqRUS7hhvoTlaFEKCdFgyc+uY9phhvVAJrixEnZGKFXNgd73f+iDMG+khL7
         jFFGMEoWExbQ2Ur+Hy8qlkub7TqROiFg8FlRWAqfBPAakqcSQH4UgtgvLR9+SKXzSUyP
         VfCJCPR0OagIa7frYmjuX4FU/1uR2fnC9o78a/5rxmO7UfanpMwbChCOFQeLTxEjBqoK
         6b0g==
X-Forwarded-Encrypted: i=1; AJvYcCUMypCCoCtuxm66AK8OwNQp5Yfeda70k4XQoHJoR/QvqM0kprjkSOQTWOwNKxg2XHZ3JU4q0uaHMkYt@vger.kernel.org
X-Gm-Message-State: AOJu0Yyruxb3o2EA14YNNY/Nb7xiaRYcJbij4oQoRoJ8irKXAae330Fc
	dNw/C6NseoL3Ljwc6WWBlakRejwyROEVfkAxWUi6znhglin91wfQoGS4xiR2y48=
X-Gm-Gg: ASbGncsyTUT/HgTNZzXmaWW7r3w0UjR4z1ZxCy8Senh2Vm64TFLNnpaiDArE2NVCMGh
	z7/mbz/6V2hdbu++/41qBJLJF/tUdI84TEkRj3mkd3EJ9KDi04DQNR7XL5GTWIssy2ysFkZ12Ul
	hzFpA43Vtd6d8BpEn/4RFSBmRizJUQSEG0+srajpr4i0YaF++MtpJ1qXIujR7LcNWxGBUU9xouU
	243HIiOMGFMJdYde1lx0NdYBJcTSItvs0x17ha5KbPZewx0yNaJr+IekUz+fYPykkuPeIgA/XAJ
	odyc2dYhzQYEwQjPCPMVkl8muI2BC8AzUcQwljbTz+06IztciP4wlOoqtIFIODujI6r8p0zLm/a
	+r/lPhumNBA0ZHvnKqMUK9NlVQLnG91Cq
X-Google-Smtp-Source: AGHT+IHOxDStraajciuLyI4J7kcSxLAVxYjblykyEsVhvb9CDyVTj6T8upo7h85qFEQd+SEWUbif/w==
X-Received: by 2002:a17:90b:3c4a:b0:30a:255c:9d10 with SMTP id 98e67ed59e1d1-30e51586fdcmr2384038a91.8.1747297356694;
        Thu, 15 May 2025 01:22:36 -0700 (PDT)
Received: from localhost.localdomain (59-120-179-172.hinet-ip.hinet.net. [59.120.179.172])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-30e33451e97sm2909715a91.25.2025.05.15.01.22.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 May 2025 01:22:36 -0700 (PDT)
From: Chiang Brian <chiang.brian@inventec.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Chiang Brian <chiang.brian@inventec.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/2] dt-bindings: trivial: Add tps53685 support
Date: Thu, 15 May 2025 16:14:38 +0800
Message-Id: <20250515081449.1433772-2-chiang.brian@inventec.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250515081449.1433772-1-chiang.brian@inventec.com>
References: <20250515081449.1433772-1-chiang.brian@inventec.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add device type support for tps53685

Signed-off-by: Chiang Brian <chiang.brian@inventec.com>
---

v2 -> v3:
	1. Fix the order of patches
	- Link to v2: https://lore.kernel.org/all/20250424132538.2004510-3-chiang.brian@inventec.corp-partner.google.com/

v1 -> v2:
	1. Correct the subject and commit message
	- Link to v1: https://lore.kernel.org/all/20250314032802.3187097-1-chiang.brian@inventec.com/


 Documentation/devicetree/bindings/trivial-devices.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
index 8da408107e55..e0017ba594dd 100644
--- a/Documentation/devicetree/bindings/trivial-devices.yaml
+++ b/Documentation/devicetree/bindings/trivial-devices.yaml
@@ -392,6 +392,8 @@ properties:
           - ti,tps53679
             # TI Dual channel DCAP+ multiphase controller TPS53681
           - ti,tps53681
+            # TI Dual channel DCAP+ multiphase controller TPS53685 with AMD-SVI3
+          - ti,tps53685
             # TI Dual channel DCAP+ multiphase controller TPS53688
           - ti,tps53688
             # TI DC-DC converters on PMBus
-- 
2.43.0


