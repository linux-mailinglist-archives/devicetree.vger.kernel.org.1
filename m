Return-Path: <devicetree+bounces-143973-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C8AD9A2C6AE
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 16:18:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E41EC3A73E5
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 15:18:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 200031DEFD8;
	Fri,  7 Feb 2025 15:18:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="INbPK3Uv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 362A0238D5A
	for <devicetree@vger.kernel.org>; Fri,  7 Feb 2025 15:18:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738941493; cv=none; b=ZVt7blEwYrki1JlYj3osIemWsZZBEQctLzGo0yJJtE8iA8WvR1KHN/3mvKw/iskZoajdWj1xCpj1J/Pj6ksgc9OhCesJd4eUuH8B6rAkJd6I1sae8GduERIN40xk8GQjm/3MzTFPNRGWjqrU6f9xezdtZOIxsvUSwEvEMD22lV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738941493; c=relaxed/simple;
	bh=ySJ57oK9YumgrJ5dRy7ysZMOo4QrDcpqRpFc3at84vQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=n5INmPKBQ0GGUo9SMofPA4nadbc09LddTuYCUh+f/YLZt5x14FuwxC5I7tkAY5oC5fr6chlOQ4k74Un9aXB5+N1DNvbXPognTRiS2b+xbcPyYa3AcOru0SWFlLPm9iI19d+SLXVZIQPA353Q89TPRYgw0oCy/9OfdwplLDQgrwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=INbPK3Uv; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-38dc627eba6so961414f8f.2
        for <devicetree@vger.kernel.org>; Fri, 07 Feb 2025 07:18:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738941489; x=1739546289; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=XLOxmza0Xh37kooLPEsbeXAASrabtW2f4a8oMEz8hs0=;
        b=INbPK3UvWTL4BPlq5Rx6Lh6I9I7WsxhTSLbtGSqyz8eJl2FpiAvAa+lX6+CUMEUNC0
         7itiy966lRhUhNnZRNnE5KPp6mU4TfVGzlosMkPkLAspVELYVgnkznEaNP3Vg1gL4M3P
         coJUdqNXbqYRIYAGBjCrlnQKDGAPHe/QPdl+UTAHELKs0Sb9kPQYClc+qfQiOeaqWv2W
         ioJZtR+JhxhuSBK4T9LY9H7hSfb3aCggaZhoJWgADYpO6qsIn0mvJyQA1ITybQKrZZG0
         N3e+C+z7qIlNIOmwfIunHlXjuEUl1q7GZMefDYQPeiWtsUpg6HlJzXyjPm5laIOhA8ZX
         hlTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738941489; x=1739546289;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XLOxmza0Xh37kooLPEsbeXAASrabtW2f4a8oMEz8hs0=;
        b=baYCHnm+bvjCEQff9CwrYXyFTTbrT1jHZ3jfNlLOXYJTmpSx9CHSYMzN9dQZDDnYeG
         qulicfx8qokOmTJvP3QfxePfDw8Vx7k3cg4FtumZ3jFqimJKPT373QM55N9i+D19bVT+
         82e8zsfxsjpoN9/AO/6zBz4Lckyf+n4WBmlhVaOt17TusL5BSaVrRv0ZLARGSBxoJixK
         6St5Lhid5f7vADDCzwgnqFghj4YYAMdy6c+4eFNap8uLycWzaxB5m6NJpi+zSKD4286I
         QER9ODN4MGK73Vw6vHOAaPexb/xaSaX62e59Gb0WZGSo5Mr3aCgHsWSOCuDwSsnHlLO2
         4YAw==
X-Forwarded-Encrypted: i=1; AJvYcCUlgGiZy2CoIo6ViUlytBhDqdTyu0Ie56jw6bETksndpSucf39Umjryw+/H3Zn5fi9hHek30Vu9igi2@vger.kernel.org
X-Gm-Message-State: AOJu0YxJZf6lNm3qbIMkyl+GAtlQxXZgrlsLvTSe1H18DxUzZk4jgZNk
	HzRdbJfL/JBAyzddDhwCn/9mOrRIqzCe6FvwjpC9enj1EMPhjUg79cYp4LUrVHA=
X-Gm-Gg: ASbGncun4P0FS6OUdOQ0dmtLaIo+iSotvNSBvroHOoOA1yYnyn0SUKUCkc2TC21nApo
	VLqQZveqGSwgFZColwq3rQE1QPx8p0FQX6t8aZ8PPju8Ys3XthOX3ijbAqD+a8EhLhAOrELULhr
	lp2t3tQiY6vWGvQTH0Yiry3ZpaauJz0S8btsMyV97Ohg7ktdU6aOmMLkS30v8Jp/kTAN0TNibJO
	z+zDg3o++PyOKqbzxXmXGKq6fi+CoJ/PTM9rx2i37trKFbPJgZR+1En5oqZ9CtNPBiU+U+WoDDb
	FWwmbQXx8JN7B8GBSSnPa25J4faZ
X-Google-Smtp-Source: AGHT+IHxBbwMJB7wl6gARXNhgXpu1MMqOG+uVf9n1tUHvZWpaGxVfL2UNQ+pxRLlPoeJMqaUCrNgsA==
X-Received: by 2002:adf:e6cb:0:b0:385:f72a:a3b0 with SMTP id ffacd0b85a97d-38dc9357796mr1940658f8f.55.1738941489344;
        Fri, 07 Feb 2025 07:18:09 -0800 (PST)
Received: from toyger.powerhub ([2a0a:ef40:1d11:ab01:88:c96c:f11d:1729])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38dc4d00645sm3545350f8f.66.2025.02.07.07.18.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Feb 2025 07:18:08 -0800 (PST)
From: Caleb Connolly <caleb.connolly@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>
Cc: "Dr. Git" <drgitx@gmail.com>,
	Caleb Connolly <caleb.connolly@linaro.org>,
	devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org
Subject: [PATCH] arm64: dts: qcom: sdm845-oneplus: use guard pages
Date: Fri,  7 Feb 2025 16:17:03 +0100
Message-ID: <20250207151706.45031-1-caleb.connolly@linaro.org>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: "Dr. Git" <drgitx@gmail.com>

Rather than manually define the guard pages, use the
"qcom,use-guard-pages" property for rmtfs.

Signed-off-by: "Dr. Git" <drgitx@gmail.com>
Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>
---
 .../boot/dts/qcom/sdm845-oneplus-common.dtsi   | 18 +++---------------
 1 file changed, 3 insertions(+), 15 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi b/arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi
index 46e25c53829a..6a2acbec68ba 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi
@@ -70,33 +70,21 @@ key-vol-up {
 		};
 	};
 
 	reserved-memory {
-		/*
-		 * The rmtfs_mem needs to be guarded due to "XPU limitations"
-		 * it is otherwise possible for an allocation adjacent to the
-		 * rmtfs_mem region to trigger an XPU violation, causing a crash.
-		 */
-		rmtfs_lower_guard: rmtfs-lower-guard@f5b00000 {
-			no-map;
-			reg = <0 0xf5b00000 0 0x1000>;
-		};
 		/*
 		 * The rmtfs memory region in downstream is 'dynamically allocated'
 		 * but given the same address every time. Hard code it as this address is
 		 * where the modem firmware expects it to be.
 		 */
-		rmtfs_mem: rmtfs-mem@f5b01000 {
+		rmtfs_mem: rmtfs-mem@f5b00000 {
 			compatible = "qcom,rmtfs-mem";
-			reg = <0 0xf5b01000 0 0x200000>;
+			reg = <0 0xf5b00000 0 0x202000>;
 			no-map;
 
 			qcom,client-id = <1>;
 			qcom,vmid = <QCOM_SCM_VMID_MSS_MSA>;
-		};
-		rmtfs_upper_guard: rmtfs-upper-guard@f5d01000 {
-			no-map;
-			reg = <0 0xf5d01000 0 0x1000>;
+			qcom,use-guard-pages;
 		};
 
 		/*
 		 * It seems like reserving the old rmtfs_mem region is also needed to prevent
-- 
2.48.1


