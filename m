Return-Path: <devicetree+bounces-167686-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F0B1CA8B5CA
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 11:43:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5592819042CA
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 09:43:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD9772376E0;
	Wed, 16 Apr 2025 09:42:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="LmqeIDl8"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25F71235C1D
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 09:42:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744796571; cv=none; b=tvQJx5LB8Hcjmr8tgY3yFISAKSHyg3HAn8mULMslrG2lX/5miZGPiagGu5oILAKjX4b7fRBYv6BoxEnTDBGHFIOEYKL9YbTZ5AFmnKpqbxcG6YmbgT0M7LOR9oQ463sAwkVHWYcrN47glgqbkah7sxn4UYKQZyiq1vidWbmIJnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744796571; c=relaxed/simple;
	bh=joXhwY6sYcNm/tHWtZiox99xSvecyLlxL3fyWaP6GCM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=KN92fD3JNHBJiqmVUKLVMwi5QFf0p5ZUR0J8MBfF5WOZUETonnpP4Sb/kpKfoLXXdcduFgohecKie2Ix96j186lxIhCffq6XRy9X8MEijHqyu6HWeEPABGP8GDHj/8HzxyQeAX4ruiUNtDI5eAeDZRu/aPFQUEpt9jcQfkAOqeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=LmqeIDl8; arc=none smtp.client-ip=185.125.188.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com [209.85.218.72])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 2AD2E3FB50
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 09:42:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1744796562;
	bh=luxCLj+tQK4OIUVASojgpuBNRUz4uNC+3lDnRXiwNtk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version;
	b=LmqeIDl8YyFsf5iwBdUXXQGoiDeMK9ttDTVDE7S2Wup33Mb1B2AdRQYG5LSegn9da
	 iq69tqFz7PS6RvJuhJOekBfLjHEJ0cDEZcBXWBea3KI5stKx/SVaQAqufLcfih2BTL
	 5LA8r5+aTrPgKktFl0HA4+AiwlXrpKtErnK90AIJJhGNCfPwk/8sG3j0vVr3ypL+T9
	 AoGydQZ8WF5T5EqmYWUzlqZqrpNrY8vsM9M30pjH/XRwJh0jsZYwKYxAZiuh9TpRUu
	 XIkVLp/UQqFMpASfWo8J8dEUMsG/Fvr+92c1ZT1Foa9vAYFda32UyaDLSZEYXhiOdj
	 FLrhuPa5Marzw==
Received: by mail-ej1-f72.google.com with SMTP id a640c23a62f3a-ac27d8ac365so452897666b.2
        for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 02:42:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744796560; x=1745401360;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=luxCLj+tQK4OIUVASojgpuBNRUz4uNC+3lDnRXiwNtk=;
        b=dMJCP7p0mFdyAJnKeiJTTDB0MjjwfqmST1IhahwuNE+RiL9Sa4+/cAGQ+gNc0FxweT
         ocjdnj6G01zWBVH/j6FN8Gy80zMiuZHSK6ZLGhUWAhnLrT8dnVGcseZDtKhY2hzSAPOd
         WPbZAP6ZwF4LXuXZhxXuzv5tPjRiG7rxb9GF1tcQCgiEInMIFL7q7TD+akNzoobI6xdX
         Ok+ykYE0/AdOTCjN+2Tp5qG+sQo20a/EQYsr5ilSTJyoqqUSG05JwOdEyrePU2hSH/3A
         8eH6fLbbtFvYWImovpy2EkX4hxqev657ogo/gPtE/FnKdY4Cxfk/k6DULvhDo2FjCJPn
         ERDA==
X-Forwarded-Encrypted: i=1; AJvYcCWxMA1VCLsxns9bKNIcGLrrOQOQRIXxO7vD8kKvtOAN92gppT+yxn7+DOJ7U8HdCzTWjD8Kzz0edBiJ@vger.kernel.org
X-Gm-Message-State: AOJu0YywbOXTeSyKolotgNfBiBU7QPu7fdjomqhqG61NGX5rsOjEAS7V
	oFZgnDtpBH0v5DGfPE02rnheFEtviet64RSBduzVGHaxY41mqW50+lNd5z4OeYNfGQvujaqbrpp
	59Qc0eN+we8IVTIJA7GBJznFUHR0V4FIhHBeJyFlMvraiOUhDa3D6Xs/mwngByVH3I5tpghBF/p
	c=
X-Gm-Gg: ASbGncuHGFucOkByOvBgBHoCNXDnllP9Q/i7elHjhc9ulnMm/wsWadABfhRe5CHMuFM
	+lJnbQszZPJYqj96l8FbZYTlvqN+hagyZ3bruEZhAS/uyOWNmnSWRA3ceX5xMA3YHSC+WLoKNRp
	sHZNrxsh7fmTQnxDtyPZ+WBFjoYVdvt38cU8W67ABLK24387uz66c0vrOTf9WGfgN8KGNK+Gf1y
	tZlpQtQFWvX7UFVNDR/eyCm07H3b55+hpf11Wap7O8/y3S4X537SAcreXqlQ37BQWQNUKRaJJdk
	DydU/QxagjpikOl1Q+dBxALpP51KTgDzwMI1J2FeKU4GiYnwctsuE40h
X-Received: by 2002:a17:907:3cd5:b0:ac2:c06:ad9d with SMTP id a640c23a62f3a-acb428f9f8bmr84151566b.14.1744796560251;
        Wed, 16 Apr 2025 02:42:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGloZCVTcizStQEncptXd4CPcpgv6Q7I71rXkznCplkatmt7MFtPBthKWOn58dpevVzm4CyJQ==
X-Received: by 2002:a17:907:3cd5:b0:ac2:c06:ad9d with SMTP id a640c23a62f3a-acb428f9f8bmr84149266b.14.1744796559891;
        Wed, 16 Apr 2025 02:42:39 -0700 (PDT)
Received: from localhost (151-243-191-194.pool.dsl-net.ch. [194.191.243.151])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acb3cd629absm93643366b.3.2025.04.16.02.42.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Apr 2025 02:42:39 -0700 (PDT)
From: Juerg Haefliger <juerg.haefliger@canonical.com>
To: juerg.haefliger@canonical.com
Cc: andersson@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	konradybcio@kernel.org,
	krzk+dt@kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	robh@kernel.org
Subject: [PATCH v3 1/3] arm64: dts: qcom: x1e80100-hp-omnibook-x14: add sound label and pull out the model
Date: Wed, 16 Apr 2025 11:42:34 +0200
Message-ID: <20250416094236.312079-2-juerg.haefliger@canonical.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250416094236.312079-1-juerg.haefliger@canonical.com>
References: <20250408145252.581060-1-juerg.haefliger@canonical.com>
 <20250416094236.312079-1-juerg.haefliger@canonical.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a label to the sound node and pull out the model name to make it
explicit and easier to override it from other nodes.

Signed-off-by: Juerg Haefliger <juerg.haefliger@canonical.com>
---
 arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts b/arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts
index cd860a246c45..9595ced8b2cc 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts
@@ -174,9 +174,8 @@ linux,cma {
 		};
 	};
 
-	sound {
+	sound: sound {
 		compatible = "qcom,x1e80100-sndcard";
-		model = "X1E80100-HP-OMNIBOOK-X14";
 		audio-routing = "SpkrLeft IN", "WSA WSA_SPK1 OUT",
 				"SpkrRight IN", "WSA WSA_SPK2 OUT",
 				"IN1_HPHL", "HPHL_OUT",
@@ -1691,3 +1690,7 @@ &usb_mp_qmpphy0 {
 
 	status = "okay";
 };
+
+&sound {
+	model = "X1E80100-HP-OMNIBOOK-X14";
+};
-- 
2.43.0


