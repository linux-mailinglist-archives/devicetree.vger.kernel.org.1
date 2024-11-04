Return-Path: <devicetree+bounces-118775-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 545119BB828
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 15:42:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 85F711C21F1A
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 14:42:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97A7E1B6CF6;
	Mon,  4 Nov 2024 14:42:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ONxtur4F"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF35E1B3929
	for <devicetree@vger.kernel.org>; Mon,  4 Nov 2024 14:42:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730731330; cv=none; b=BchUC0bth+IzRxu5pVkIN32jF9MPniUg+oMcJV95nD9BKx/AOzIgkoui4VvPEot6WHpP5TNpDY2wHSOxbtx1N60gcIk1H8HDsqIolQo4/5JMgm3vOZMSCZdl/980r4/9RRrjUuL5z9lvDKAARtIbOMNlA3hfXmWj9dmmzeORjus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730731330; c=relaxed/simple;
	bh=SO84wGYFqTt+rUJm2RCZaiMvDvMTJZ/y9NNnuC1FJVk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=L6oVFSv6rZdsHAwXpp6zsBIRtHREmBgL0dYhgUuHGqiKMCtCkkZp8b0kLq+st69LHPS/v4MyuLA3944PbDSwaoYK3jq6mRIiuUCHZ/4UOwq8aYR7wJDvPKLUcaCzd2/m34lL2ddDxiqk3QkHH60aHja10UWJk+kY1t/AtOKAreU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ONxtur4F; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-37d43a34a0cso425478f8f.1
        for <devicetree@vger.kernel.org>; Mon, 04 Nov 2024 06:42:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730731327; x=1731336127; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xse+8Y0ibORmsTXcFf9GAQ7JBYEUIvDbYNRpRr9Ulac=;
        b=ONxtur4F0Uc/Lj2z4Dh0/gNIiyTzOyvdC13RTYFL5xgOdtqFAM7d+rcd2sun182n6r
         v94furB8hvnbViOoqPhn3A5b+GHoDZlSCXnaYpz0EzrpBlHgWiG5/p120pCvPVDW+Mzu
         bJMd5IZnTPx29zKDhpZEHPf7wwGtCbrVkKLSeemRLh07263//KfpdIesmDvPjy0V0Akn
         CKVbOofAM2T3dIcpkMcx5ZRlWn6cIqYvTCXgM3BAOClPz9m7zrr7MAVNXZQ6sq6JXQ33
         6C1n6AGdFtz7JsS557EVvTnSYy54+kE4zFrcja+3Q2HPhYs7oBh93G2VnvLvUAjUNGCy
         g0tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730731327; x=1731336127;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xse+8Y0ibORmsTXcFf9GAQ7JBYEUIvDbYNRpRr9Ulac=;
        b=sUNsglWmRhnaMZmlIcjXfG314Idx2HFYg9f6JoLlqDHlsX769NoTgAKv6Y8xyg/CD4
         BP2IZyofIq2ukcZDcTyUGXF9Km1ayvS/gvkyvqhhAVbGC0ffzyCkkgHcq87J2NQZqm2V
         LIGDAlmbUcTOIjWmoiEdjcNsi5UfOuvujdXVYjElUlXBceyfvvIXsn4QZN4RvF0WeM0i
         zIfjlPOBOBxBg8DaajC5HprgBNNRO4IaJoiCEa+9+RNgBGjMakANc+DO3gf6uney2KTi
         /aNWYPAlijrxxhmq3cIKTMW6lltYznm9Yi0PbheMROh4ntxTlkHhS8cLK+7OX5V3UjhS
         S1EA==
X-Forwarded-Encrypted: i=1; AJvYcCXvzVjgsTqVg6tIQBQ2ijFPkMUNoFhGyejhtnNGt+sc/22xBhee+WpJDxJ/GkjRTZ08fYtitfJBk9GE@vger.kernel.org
X-Gm-Message-State: AOJu0YydaEbbymPIpgHpnwQaPu39IX2bLOYNOq9VtB2vPpQ44nM7TwIl
	/Va1SjqGWbHs3CA9UC5MbCAkvozH1jOWtYrCP58eDztwKg4LTyqzNx5ESyIqO+k=
X-Google-Smtp-Source: AGHT+IESYHxXdCiy8abyGwDONyQaWjmIt1sRqKhV+PO4KcL3AbtW4so9yq3KTHkBFOIwm2tU7Vmelw==
X-Received: by 2002:a5d:5f94:0:b0:374:bde8:3b46 with SMTP id ffacd0b85a97d-380611a7665mr12316766f8f.2.1730731326951;
        Mon, 04 Nov 2024 06:42:06 -0800 (PST)
Received: from krzk-bin.. ([178.197.211.167])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4327d5bf225sm154433685e9.11.2024.11.04.06.42.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Nov 2024 06:42:06 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ling Xu <quic_lxu5@quicinc.com>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: qcom: sm8650: Fix CDSP context banks unit addresses
Date: Mon,  4 Nov 2024 15:42:04 +0100
Message-ID: <20241104144204.114279-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There is a mismatch between 'reg' property and unit address for last
there CDSP compute context banks.  Current values were taken as-is from
downstream source.  Considering that 'reg' is used by Linux driver as
SID of context bank and that least significant bytes of IOMMU value
match the 'reg', assume the unit-address is wrong and needs fixing.
This also won't have any practical impact, except adhering to Devicetree
spec.

Fixes: dae8cdb0a9e1 ("arm64: dts: qcom: sm8650: Add three missing fastrpc-compute-cb nodes")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index 3d8a807a81c9..367fdd090768 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -5622,7 +5622,7 @@ compute-cb@8 {
 
 					/* note: secure cb9 in downstream */
 
-					compute-cb@10 {
+					compute-cb@12 {
 						compatible = "qcom,fastrpc-compute-cb";
 						reg = <12>;
 
@@ -5632,7 +5632,7 @@ compute-cb@10 {
 						dma-coherent;
 					};
 
-					compute-cb@11 {
+					compute-cb@13 {
 						compatible = "qcom,fastrpc-compute-cb";
 						reg = <13>;
 
@@ -5642,7 +5642,7 @@ compute-cb@11 {
 						dma-coherent;
 					};
 
-					compute-cb@12 {
+					compute-cb@14 {
 						compatible = "qcom,fastrpc-compute-cb";
 						reg = <14>;
 
-- 
2.43.0


