Return-Path: <devicetree+bounces-219228-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D26CB88BBE
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 12:01:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 42F03625F16
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 10:01:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C28D22FC029;
	Fri, 19 Sep 2025 09:59:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="vEoqylhK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7BB82F60C1
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 09:59:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758275965; cv=none; b=ErmkGDIjdgQwWbbtL8bVLjK/BDLSOc68iupUA5dBv7csbxjCUyRJ/svlztxIHLX5+mjMrSfDUXOqz/eLBY7tEmcehK6jxm4ikjJQbsUOa7umq/gaUCu4FFqT+K9jESXoQH0WfkJ54E5tlDD8mQIKio+nZJ0EWWI2805Dc+zsPj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758275965; c=relaxed/simple;
	bh=DzHjTfe+PvsMShionbNF9cKGgZXDYYuDcp3aGm7pFps=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=au7MuHyHWJmq6TlKMnmK1hFNEifBVuoGqw+VXqLp91kCo4CJo3ZVRsVkusvINqQyeYU1PXU8nL+Dle18FPje7uErkcKj1S4sXC0V/0X5ofYM2Am3aWjeD6ki5oPeKLTrR46uIetnRvnPla/e3otO1LHM3909yav25lfSjrOkZQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=vEoqylhK; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-62105d21297so3450477a12.0
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 02:59:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1758275959; x=1758880759; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=skAcju7YKAn8s/A/GRR4ZrH/gmSwELGHRwczNOae0t8=;
        b=vEoqylhK3QJazf5NhrcZZt3WNxESyRdy3QXc0hxN6SGRoaxH3SNzqSmBa1JyVyq0DP
         mko20UlB9PDTJ2eosrlbF3FymXdOxdz7pgZO0I4QmttIYO5EtDBK+gqXI78gEeHR4PVL
         +qqtU/jZ1m6y/wfLsfe6/I6PQc1bFKh0iym8MpzEcIal8PjyBuxTvBEz2qfNqxmtgMZw
         Te/QECiym/Nd1OGb2iqcgZGFuI2BYeZ3ptR1lfnzXWZ55qHsOddu9hBci4kh2nFy4cBn
         739fSdi4roOOUYk5NNtQvuyA9VhRtgBI+G3uXFldoiDbYH9++6a/EBPLs2L+klDpgvA5
         ZOvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758275959; x=1758880759;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=skAcju7YKAn8s/A/GRR4ZrH/gmSwELGHRwczNOae0t8=;
        b=qgnnOC6z+wmLql18ri68b0L3FN613oFqdlrMCgSZbLuY3LJWFk76SjEmTF99wXekhk
         3Xt8s73fbfkzkAggLLxoI0EnG8iYQHQsC2+X47C0BSKjYjSgvM36dV1Vw+pkcwD41SB3
         VEZ4F6YLSqFRro4euQ99E3FQse1bqrVHk8YrFm0XV5A0K3Hx6iAzrmKmzyp+l312Od8x
         df5b8PB6LOwsIKNK9n9Xvho9ONl+FAOiNbHnF8OKBw1Yu2iPbQFfu/VR4IC0H91fqzfG
         xxSaJMT7eNSab741AbqpkRr0LpkwzB4YyrQv8ao9aGbwl0gz4GxwMDyy2haky8t2RPyW
         pmgA==
X-Forwarded-Encrypted: i=1; AJvYcCWhFLwhLF4zw9/W3Es2RjQqsJVTie3VjMn8u8uy9lBMZSJvkcP6NW+8I6M87yshs0f4fpIeUJ9kSUWp@vger.kernel.org
X-Gm-Message-State: AOJu0Yx448M/H7mBahpXIyUr56rzb1hb5YxXaRyUklDUHRLn65AhVo6A
	ff2Fj+DLye045uZSf6oOgm7FyFa/EyPMa+SSlsupNoMQ8FfVKBfxvn857ScUHoR0J4c=
X-Gm-Gg: ASbGncv9AMl2ZGsPwbcBvib+Q5g4DFvKx4p5Pss1YQJ+l7o+ELAERQQpIedD/WndHS6
	A5vS+PJ3BlCUqv0/kxF66BAWDZiJQgIg6sDO68dAAOzxtVokrmZ+n9jve7q6uimrysV+VKIFuuu
	2uOHnGRvDD81YPv2gT6+C/PdknHCsXByBqZQHJAy/nrNYEgabuE2B9MtvjTO3pw9AEo2l1Eu3XI
	VJDUaKAudsSDdGA2oU19Em4tPUAdF+D9bB/go/6RYaiE2cveGj5zQcdPqKW2inNGaTDwUB+6hBp
	cBhPovpEjF8AryqJ7kOOK5A8zRJgG1NiC4BjR3HxrklzZu1HsettbgtDQDuCf2b3wW2B+w39N7G
	xE9qdMwdX3DBwvEFBSGdIw+0kyrt5sxvtz348jkoIGJQ5fryeEktfaqpcAv688wtcf3mlXw==
X-Google-Smtp-Source: AGHT+IGcg73bZYLri35zpeSxGcbf84lNjzcJ9lVXYFxYS+H77YE64UdSEUtkMOObdzMncpDcwGV+LA==
X-Received: by 2002:a05:6402:4590:b0:62f:af:60a0 with SMTP id 4fb4d7f45d1cf-62fc0ae770fmr2120994a12.28.1758275959086;
        Fri, 19 Sep 2025 02:59:19 -0700 (PDT)
Received: from otso.local (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-62fa6f03008sm2972107a12.7.2025.09.19.02.59.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 02:59:18 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 19 Sep 2025 11:57:23 +0200
Subject: [PATCH 1/3] dt-bindings: clock: dispcc-sm6350: Add MDSS_CORE &
 MDSS_RSCC resets
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250919-sm6350-mdss-reset-v1-1-48dcac917c73@fairphone.com>
References: <20250919-sm6350-mdss-reset-v1-0-48dcac917c73@fairphone.com>
In-Reply-To: <20250919-sm6350-mdss-reset-v1-0-48dcac917c73@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758275958; l=769;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=DzHjTfe+PvsMShionbNF9cKGgZXDYYuDcp3aGm7pFps=;
 b=9VFYR0Pqu1iH5ar5ZlAGzd8yitkjjLnajYHWb6JRqnUWIorerIbWE+NyUoFK9xsMG83xD7v2s
 JFGROYBycauB8OiG9vpOylV18dL8CshQCYTm9MAqYN8hlrRs+EK1Eh+
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Add the indexes for two resets inside the dispcc on SM6350 SoC.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 include/dt-bindings/clock/qcom,dispcc-sm6350.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/include/dt-bindings/clock/qcom,dispcc-sm6350.h b/include/dt-bindings/clock/qcom,dispcc-sm6350.h
index cb54aae2723e8f20ff3eebde3e15e862be750712..61426a80e620ac795b6f0ccda173654d7e47e59d 100644
--- a/include/dt-bindings/clock/qcom,dispcc-sm6350.h
+++ b/include/dt-bindings/clock/qcom,dispcc-sm6350.h
@@ -42,6 +42,10 @@
 #define DISP_CC_SLEEP_CLK			31
 #define DISP_CC_XO_CLK				32
 
+/* Resets */
+#define DISP_CC_MDSS_CORE_BCR			0
+#define DISP_CC_MDSS_RSCC_BCR			1
+
 /* GDSCs */
 #define MDSS_GDSC				0
 

-- 
2.51.0


