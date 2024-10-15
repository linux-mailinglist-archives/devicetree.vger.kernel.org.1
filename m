Return-Path: <devicetree+bounces-111374-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 556AF99E5B8
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 13:33:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 18F4F280C8F
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 11:33:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CC1B1E412E;
	Tue, 15 Oct 2024 11:33:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b="ZXYYYkl1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2CDC13F435
	for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 11:33:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728992024; cv=none; b=QwufPlWrJXHqjjvQKZ52r+HEbu9UBPFH71dSZloudtyGGZvFPnKsUwtVuE9ipTCS4eC+BhPtx9TW7eh255YrmjNFvW7C03i57IqQyjIH5QSD2yajduUWk11+7bUjyFcJ7ZWs/ugjfq/tS3f/FiuiHJJRCDNAr4m87rHuzv+LP5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728992024; c=relaxed/simple;
	bh=n7SubaJSHWnwzmJYVg+/hDDzkKVaUYfo8oF8RburLY4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=bMxQM5WPIcWat9fzyx1x0rd5439Wbopaj746DFn1dA/NwlyHiALL7c+v0mcr/85VQSp/l/T7YIxrR15kZRdGgscVk5aWfR7bvCjhaKvh6615FALKJ8FZqhix2+sNrNqaZx0hk7W7q3sdhFVKD+R+AFvHMETXcPE5G3eIpTygX1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=9elements.com; spf=pass smtp.mailfrom=9elements.com; dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b=ZXYYYkl1; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=9elements.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=9elements.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-43120f65540so28212895e9.0
        for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 04:33:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1728992020; x=1729596820; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=XdCKGciVd3zo7aXijLR7SkbYORjmO2SkRR0OXaKBfA4=;
        b=ZXYYYkl1yVmwnwfRNwgZgoonyqQNWIYJGvywQLXQbygmpJrYQ7awY7NPre62PU8oZD
         4ZVctQmGG9gKYAC8gNKSaSwxO2mHv+1kabqR23OEgkxFelpa9/YAGe2ltnKFF2/AkXlH
         xZNxyt6vlIvSkxzzGg1KwPIg2/xoeh8FWb/INWH38y0a0j1jcOFKzw5FjwoFrQNkus/p
         En+xFOnhIMpbWVgVNHrW4mhHHqbT44OpHr35TWBPSlpmJN1X+q0dQJP/gUIb+m8YxFga
         UZ+fhYMEueHFrNwtJdvyzA5HW1nt1hL9KvjiVuwY1b3sfi4B4mQdfMp+PjquMQLw0nAW
         oKFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728992020; x=1729596820;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XdCKGciVd3zo7aXijLR7SkbYORjmO2SkRR0OXaKBfA4=;
        b=Az0oUbLpcupGaK9TpouIn31ZI7ED+mSo2spWiQ33/P2aKhPbbyhZqU8fq45gbQZfJy
         qUnYaZsk6g7RZCVJ+5BYbq2MqwxbO4Nnx9/yK6w4k69o2ZIswcxNHi/Oa/yYeWzhPpDJ
         eCw7/xm7cOOjC+9ArHeIiPKSZ3sIqk7Om6sA3Q1lv923SlU4zLRU6rNqj0Vr3YUE7C4+
         7J//8jFDKNaOQkNuQHSLx5FpwMvVbOK2w4N3J6JmL0dsI2e/YL7cAb0vtXoz/dTZWNPq
         u8xnXtJ5iGgAKO5KdeG71B9qPvtdFzZxfcpJKumgICLVNEaAzARhaLQEomMB4NRGLe4L
         hvCA==
X-Forwarded-Encrypted: i=1; AJvYcCXrA+okHBWE31xfDup2SckHI2Y4CilrItVDbeIVFQdf6FyoVU1exjzEXSFjapNd3kzk7kjN/RjzHn69@vger.kernel.org
X-Gm-Message-State: AOJu0YzRYkt3C7bY7U8pVEnhuHRTX3cMRh+QGKO0cnOuRzEAfi43W9KJ
	+SAEaw8g3rtO4zw+mIfRsRgyOSnarUTTDC00BfJWccKZkyP3gVImkAtvK0X4Xx4=
X-Google-Smtp-Source: AGHT+IGR5tFZm0GR7qpxw/Kb3XIiEjCDeEb+G70DGLBQHIJHw0mVQruB08eq7oEtjBF0dsMsz+djdA==
X-Received: by 2002:a05:600c:3543:b0:425:80d5:b8b2 with SMTP id 5b1f17b1804b1-431255e4113mr104447345e9.16.1728992019892;
        Tue, 15 Oct 2024 04:33:39 -0700 (PDT)
Received: from stroh80.lab.9e.network (ip-078-094-000-050.um19.pools.vodafone-ip.de. [78.94.0.50])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4314209688dsm12579695e9.14.2024.10.15.04.33.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Oct 2024 04:33:39 -0700 (PDT)
From: Naresh Solanki <naresh.solanki@9elements.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Naresh Solanki <naresh.solanki@9elements.com>
Subject: [PATCH 1/2] dt-bindings: trivial-devices: Remove vicor,pli1209bc
Date: Tue, 15 Oct 2024 17:03:26 +0530
Message-ID: <20241015113329.667831-1-naresh.solanki@9elements.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

vicor,pli1209bc doesn't fit into trivial devices as it needs additional
properties.

Signed-off-by: Naresh Solanki <naresh.solanki@9elements.com>
---
 Documentation/devicetree/bindings/trivial-devices.yaml | 2 --
 1 file changed, 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
index 15f89d7ecf73..00361b5cfc3c 100644
--- a/Documentation/devicetree/bindings/trivial-devices.yaml
+++ b/Documentation/devicetree/bindings/trivial-devices.yaml
@@ -404,8 +404,6 @@ properties:
           - ti,tps546d24
             # I2C Touch-Screen Controller
           - ti,tsc2003
-            # Vicor Corporation Digital Supervisor
-          - vicor,pli1209bc
             # Winbond/Nuvoton H/W Monitor
           - winbond,w83793
 

base-commit: 7ae5eff46d61cc9b4674920821cb31e8c8fadf36
-- 
2.42.0


