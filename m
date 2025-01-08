Return-Path: <devicetree+bounces-136399-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D2807A04FB4
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 02:36:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 555301884FD3
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 01:36:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 608711A4B69;
	Wed,  8 Jan 2025 01:29:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="ff6CKKif"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA2011A2846
	for <devicetree@vger.kernel.org>; Wed,  8 Jan 2025 01:28:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736299740; cv=none; b=i/Bid6aFhIVej0oNMmSx/ldgDSu2+rHa3TZpmdsLLAHNBYu29FcNfB6I9XApNbP+n2KrMPZ4EdC+YbOdKUN/703YXxl9hS808isQbDqGRMAdkst6p0PWTQs2Mpo3YnlCdV+v0+uBKciWGOsfvdLEIWqcUuiAHLkYP3/LqrxcJ+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736299740; c=relaxed/simple;
	bh=5zubYY3zABlZ5Mj79nxt1+Y1cBxawP+c6+xykDpJnXk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=gefxWVLz36WbOk8dNX0YJlT25dx03jlSKMdt1HtEPGTeJ2bt82kK5yUfzirHc55picf79azsPX7jnbgzmlXyF3JEkhanhHGIUnCShxmUf4VHftXIbWmiDEaWeR1x0KhuaYc0hGVI7++iEyt7Cb4Ry0i6mT3fJvnqkUUkU4Jz62k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=ff6CKKif; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-21a1e6fd923so25459265ad.1
        for <devicetree@vger.kernel.org>; Tue, 07 Jan 2025 17:28:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1736299738; x=1736904538; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ffCbyZidm4yUSXcZ/TPGQgF5jycQyA1Mr5Btdy4Z8FA=;
        b=ff6CKKifk6rzvT7CB+l9IXC57TTANSF2rUpoGziP0szUnCmoaWxCOsYQoLPnKlBI48
         kwOu1lF+wPKc4j7ZtCI78o1OV6Rkjdt8k8+m6FT1kpOwA588BvMY8Pg2Qg1C9pScf7dF
         V84N98MN7ocGSbzs9lfIGt7KubA3v1plKM8ws=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736299738; x=1736904538;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ffCbyZidm4yUSXcZ/TPGQgF5jycQyA1Mr5Btdy4Z8FA=;
        b=SOLcx5XSe/3tq0bZy7alchM83O/KFph7BYgOiM/yJOneudXYW3zIspAXKWky9S+LnV
         ASTE1gZixTpKuBLqrHMttlQJFkqwqnf/b3772IQCZ+pXFeiG06O9krkvAAxNzJBSNASE
         u2EftxTV2p4dd531T3jFsKBVipRJbIZP+K9AZEC2jmFTz4Tnq2UPcpEEXAY7M1+K7zII
         VRt4kK9AT1OXX2RPvQfutByTR1vFQwdSrqGCgzoVQYoGgT3vjJDewys3PYQFpzk8Mdt6
         TVdi38AAhfIGZKbB80Qp3CV3O251pKoWdH2tGC0O0k1fBRSaw4CpFg4dEASRSyGNefLI
         SYZg==
X-Forwarded-Encrypted: i=1; AJvYcCXZGq+xqoQVmwtXnyWXksnn+QUjd78pGxQEDVNrbuaQFMmmP7vtim+CBBpdYskgMiSdnAM/g2/0jCyW@vger.kernel.org
X-Gm-Message-State: AOJu0YxEdYHpJK+alfYB0Jhze3flX1jdnHQcPEs40f+cZVRWWhiCksbY
	WmN8owSpa6tEnkQku2qWkKEdk9KS1D4likeXElTAF6ZXEX5NDhIkHwk04J+3Lg==
X-Gm-Gg: ASbGncsLgePLBUT2AOeGf+CQCFy3Zs74fGdPwaAzM6FTXlBwVzIsHQSzGfLNpXky0/T
	740DUEavaK6DM5XzBJono9Ork4ChxAfwCyy7rUD8C4VxqSMgpMjdZ8rIGGRKFMYnmYSLwFCb2PA
	a+NUz04jkuI21F/FzARv9cI+3+ckeeVUNX9SQc+Huti148BHSKANYVr4rLAUXlU6K80bwJoor7G
	UFAoLMpHxis2M7JiJDW/yVEQsoWWF6exM1qpU6W3E8h8kfCfsWIp1Ayo4qGDoZCXe5okGQIdnEj
	7Pkw6qVQk0r6DHJ6Vi/C
X-Google-Smtp-Source: AGHT+IHCeMvnncVDMOJc7OiMB5lgPXTsD1S7AH7eB+5fQgbjHbeY0walQs9/plkYtVkogihuKxqjag==
X-Received: by 2002:a17:902:b18d:b0:216:1543:195e with SMTP id d9443c01a7336-21a83f3f501mr14970345ad.5.1736299738102;
        Tue, 07 Jan 2025 17:28:58 -0800 (PST)
Received: from localhost (129.135.125.34.bc.googleusercontent.com. [34.125.135.129])
        by smtp.gmail.com with UTF8SMTPSA id d9443c01a7336-219dc9d4474sm318577745ad.142.2025.01.07.17.28.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Jan 2025 17:28:57 -0800 (PST)
From: Stephen Boyd <swboyd@chromium.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-kernel@vger.kernel.org,
	patches@lists.linux.dev,
	devicetree@vger.kernel.org,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Arnd Bergmann <arnd@arndb.de>,
	Conor Dooley <conor+dt@kernel.org>,
	Saravana Kannan <saravanak@google.com>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Subject: [RFC PATCH 6/6] arm64: dts: qcom: sc7180: Add SoC specific compatible to soc node
Date: Tue,  7 Jan 2025 17:28:43 -0800
Message-ID: <20250108012846.3275443-7-swboyd@chromium.org>
X-Mailer: git-send-email 2.47.1.613.gc27f4b7a9f-goog
In-Reply-To: <20250108012846.3275443-1-swboyd@chromium.org>
References: <20250108012846.3275443-1-swboyd@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Allow an SoC driver to probe for these devices. Add the SoC specific
compatible to the soc node. Leave the original simple-bus compatible in
place so that everything keeps working.

Cc: Rob Herring <robh@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>
Cc: Konrad Dybcio <konradybcio@kernel.org>
Cc: <linux-arm-msm@vger.kernel.org>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---
 arch/arm64/boot/dts/qcom/sc7180.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
index 76fe314d2ad5..257890a193e6 100644
--- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
@@ -782,7 +782,7 @@ soc: soc@0 {
 		#size-cells = <2>;
 		ranges = <0 0 0 0 0x10 0>;
 		dma-ranges = <0 0 0 0 0x10 0>;
-		compatible = "simple-bus";
+		compatible = "qcom,soc-sc7180", "simple-bus";
 
 		gcc: clock-controller@100000 {
 			compatible = "qcom,gcc-sc7180";
-- 
https://chromeos.dev


