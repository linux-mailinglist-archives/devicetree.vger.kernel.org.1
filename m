Return-Path: <devicetree+bounces-179889-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 29CDCAC1FAC
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 11:23:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D8BC5173160
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 09:23:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CEF3225405;
	Fri, 23 May 2025 09:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UZKzALLO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B80D5224AE9
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 09:23:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747992203; cv=none; b=OHVRI3l/qR/HWVmPXVZPDeCAE9x+YZPrDHDEwElmJKycbIgqg+JXBjiqMYGAlua6RyhNwEDJGFSxMlUubw6ehfcrJ2VSETcwUNtkT1/YKFJfmdAstqJTuGyNfOO4nyYc4oSACqT/9OkMoSYhqRE8C4ch8JKtmQ3Ttynr/iGjS54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747992203; c=relaxed/simple;
	bh=CUn6KV17sZ7Eb9UcbxI0D/sfK94gHMqT6TRIRC/MatE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HAhhzS47KvEttGyjVfRj8NPaoXmyCX2KaoWXJZftlMSJvfgEPfelnkeiYAypZt1/7eR4FA/oSnB0Esd22Hivp69CivK8KZRpQvujpzD5SOutBXCpUKnsS3UIRXofZn3CTTDY6hA2Ut+tBqkzUFpp+GtKdd2UlqZtWeOje1WQ8d4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UZKzALLO; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-551ef65ceedso841728e87.3
        for <devicetree@vger.kernel.org>; Fri, 23 May 2025 02:23:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747992200; x=1748597000; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=21c34MXpAXsThi94JNJpP9OEtjcUzE6jTEwH9hg4ooY=;
        b=UZKzALLOajSIaoNU+OX23PQe1znJ1YvtYKZXDlx5r8eq6RsFJFF7V0jT0Mr0XDP287
         n5RLpFKORn3Oo1XZMCaerTbPwtQEt1FkTrunujHj50+saEEwKpYGaeO2qhkzMpcN6noS
         5nOaU/+d1gLoPdBKKsE4tTGJF9x1JFcWkHxkccppn5DMC9HAiPqWzXFbvOfj/cl6eJ9L
         XqfiUwniT+tGXmz6Q6h8rgH9hfPvU7J/0Ighs5JmIitT4B2Np+3yFaPhzhvKEP1Uhm+V
         RVywMctm/u6FIjJlxyLgR4CLf2Wi/uVQZATrKzxtStgIOPtlH/H+Cj/sh3Vt5BI+EawN
         qLlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747992200; x=1748597000;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=21c34MXpAXsThi94JNJpP9OEtjcUzE6jTEwH9hg4ooY=;
        b=CWf6Y5BYTQROFtm6G/W+vXo0lYiUOcE3XYgudnqDzquHuuelMvq23Y8uBZYNZiqcy2
         R1uOC+NdsKEQkCcxq9d09UE/+p0Da4rzdCQzRksFgqhDOk3AnFMmxlga8+o+k2o918H1
         k9EZ0a6sA4lNkYMkbHvXJjxUcolj8PrSc9dtNbZPPJZ65yLKcA/3aeSsbKdA7QhkQN+p
         A07gMY5m1Iw/FoThO6qkpqJ6J+wGVOo8W58Rxcfr595CKaIUv0JS+xURelG4LPEDbuiH
         8B/pZVNBY7wHlwlWH/KveA1Mk/CDqnUUebnA3FmJgsXwfsYFM7Q2eYxQcWd3BfkBSlY/
         oPMg==
X-Forwarded-Encrypted: i=1; AJvYcCXBKTLD7RMrXEKmRU2mwviVxTYmN0yMiD40a150cOeHk4gyHZ9oDSNRVmfqlOuPkMhpms+mB7CW+qlx@vger.kernel.org
X-Gm-Message-State: AOJu0YzQGinYMEk/gI0hExixGOcvuFLHFkn18id9YCFhkw1RYmNROpGh
	M4N40ChrjNU66l33aD/e5dm4UsinftO0fwNyxSOwci3+cs2vo5TgP+o7RhC5Qe06HNA=
X-Gm-Gg: ASbGnctC6pC1H0S8f93Z1CCW4eLvkbxM+h3ToHDcZToSSpLiptD9h+cuabiso6DVh9s
	JIQUOi2/vGz3pHFBZKBbKDa1nbZYg1SaO1oKMOzWnI35sj3qg1PHgmY6gnKjHTIC5h0pbSuv5fv
	b3jlbbKpOiREIq+QwwIjMznMNuUftZ9HkIppYIT1NmgBkEvhDxJREEexrrR4PWVYvCkGrQWvqAV
	dJilRyVYnezVgHgKgoaZfvzr947eLgtbW2/BhxFIPHHuSNte3KrEs1EKicmDT98sm3+9d5Kq5eT
	rXr/1VFg4X8UrdxC2M1lQLBgFX/4Bq7hKKkxSdjvMjFeJK4lnzd7dXH71kdr800F6L23PAKp2qV
	CSXCnysbXNX5wy1EtvcMvjz/3uIMeM1e19JcWUYSy
X-Google-Smtp-Source: AGHT+IEj/2aTKJXnLajLONDfxKSxfnz9aoamHotfaO/o/jZuJpG530XaVASEu9vSMFONsuRjvJs9vg==
X-Received: by 2002:a05:6512:33cd:b0:54f:c1ab:2cc8 with SMTP id 2adb3069b0e04-550e722f7cemr3282577e87.10.1747992199786;
        Fri, 23 May 2025 02:23:19 -0700 (PDT)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-550e6f15d9dsm3779228e87.38.2025.05.23.02.23.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 May 2025 02:23:19 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 2/2] arm64: dts: qcom: qrb5165-rb5-vision-mezzanine: remove camcc status property
Date: Fri, 23 May 2025 12:23:13 +0300
Message-ID: <20250523092313.2625421-2-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250523092313.2625421-1-vladimir.zapolskiy@linaro.org>
References: <20250523092313.2625421-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

After a change enabling camera clock controller for all Qualcomm SM8250
boards the explicit control of the clock controller status can be removed
from the RB5 vision mezzanine dts overlay file.

Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb5165-rb5-vision-mezzanine.dtso | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/qrb5165-rb5-vision-mezzanine.dtso b/arch/arm64/boot/dts/qcom/qrb5165-rb5-vision-mezzanine.dtso
index 5fe331923dd3..771baf7e09e6 100644
--- a/arch/arm64/boot/dts/qcom/qrb5165-rb5-vision-mezzanine.dtso
+++ b/arch/arm64/boot/dts/qcom/qrb5165-rb5-vision-mezzanine.dtso
@@ -9,10 +9,6 @@
 #include <dt-bindings/clock/qcom,camcc-sm8250.h>
 #include <dt-bindings/gpio/gpio.h>
 
-&camcc {
-	status = "okay";
-};
-
 &camss {
 	vdda-phy-supply = <&vreg_l5a_0p88>;
 	vdda-pll-supply = <&vreg_l9a_1p2>;
-- 
2.45.2


