Return-Path: <devicetree+bounces-90765-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A130946C4E
	for <lists+devicetree@lfdr.de>; Sun,  4 Aug 2024 07:40:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F2F60281B83
	for <lists+devicetree@lfdr.de>; Sun,  4 Aug 2024 05:40:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80CAA10A3D;
	Sun,  4 Aug 2024 05:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="D8gmPCeg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 860CDB653
	for <devicetree@vger.kernel.org>; Sun,  4 Aug 2024 05:40:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722750023; cv=none; b=hVZT9oMHUGcsE5Kb3Z2V2Gp9Uuv/EqizYyV+/x9t5HqMDvk2+zdL1piwfZ3EVEOA1JOo9rNvn6oC1Aw9bNXXmV8HRyIKM9wjPnf64pYGQHJiX3OfHFANxmY3taBnbigMg651t7l0zY0S71OqlV9w/v9bWklwuD/ge55rqLG6fRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722750023; c=relaxed/simple;
	bh=t+tMTzX+SM35TGMLlS8U+3Typ2b9GAQHOxtHcxsEDtY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=BVy4uBOowB48e9Cqst5+ccsvMLfttc2qllFJSy5Mk7i+ACFRQGE1K/zURqcYmtI4mooWZpCGixS3oZckgvp2QFsEfCcBhv4iZM+RA9/GaRS7n0HrZRXB4E7C7Sc9HXUbv6G3N/Rslv3mF/+LUfDEzfkkcu6hSRi9tiJ6A7heT50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=D8gmPCeg; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-a7a81bd549eso870333166b.3
        for <devicetree@vger.kernel.org>; Sat, 03 Aug 2024 22:40:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722750020; x=1723354820; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ysYzFvs5nz+WvJxUYQ+2QczfFsuOxY/5HM9LuZLHg+Q=;
        b=D8gmPCegHv8AxpuqYhyc4Yuio3kZT1+Yyyc6F7EPzUw2j42RD4bLM3Uy/8x1V5JwXG
         uICH62OX8Z/xbLkU8SyGNyA8iVJ9s30FLnnof16/JY8nut9YkYmDqOaBYMuscjv1pQQe
         MrV++V5EUNzVfzWQq56jIokaCSlANJP1M6oDqim9rM0OtJjDXezkgEXTGfQkNbBG420L
         shckkrkx4xGshPUN9KtV9ak1Odg4QVbatVzBORXmWrPPJSptucgsNvTXOSRP3ssEcGHQ
         Q+uk9qIf3IdjvwhjC/fjmG9Bxpl5dC8UVv3Y5aztFEDjb9tOwyTQaxOgd2Di+h0Mfp4V
         jszg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722750020; x=1723354820;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ysYzFvs5nz+WvJxUYQ+2QczfFsuOxY/5HM9LuZLHg+Q=;
        b=rQ1l901hXy1ernehw0NyYKOo8M60+PTljhrS5MmDOUA6MZKn5VOShqFwp8lsrMwpjs
         ++PSQUKY5E/38Pi1XKFqErDF2+vwBsrRSxbOrvqzLgnGHEdE34xP9zXDbPNpmtaR6XEe
         tTzUs8rx9xCyB2/mdVuQ2NmwG5bDYkcXgZ46IyyQ9NCa6W8KvgnfFSowPwGZPZt0LaYe
         7zEg1Pfbh3p+CxKr+nvaCAqYGVYZT90JRBECPZMfXCGmgd4TvRoNCqk65qGoJ/3hGfpZ
         UpPe0r6yXlnGq0qH72qDpo/O9xuGRWJWscI45rySr9nms5mGeN8e0PxvyyTaQstHUCQF
         vdQQ==
X-Forwarded-Encrypted: i=1; AJvYcCWSrxFSk6b4AGOB+C/IRrKXVjqr4EBZNh72sSUB3ZEZLqH6cORJeJPluZFqG0rUlo5HcpBRZxsK1URmswuZjvA0LsZO3pCVm+i93Q==
X-Gm-Message-State: AOJu0YxNEK8Npg90pjSViZfVA8SC/jv2QOpsl64ic9jLUkZn4kV7i/7X
	Pjr/qmAxS+wGuacEgkGnFqWWpu4eAZQ1Rsds4r2JjPkL132Ea8ggpb19TqH98xE=
X-Google-Smtp-Source: AGHT+IHJn6+1jqc0ahvJHM7K4NrLWHr1zsbLKGyqs6RoLVAK1GPH/qUlqIcWAn4yddgy8+w8Ih8egQ==
X-Received: by 2002:a17:907:97c9:b0:a7a:aa35:4089 with SMTP id a640c23a62f3a-a7dc4e87671mr627357466b.24.1722750019793;
        Sat, 03 Aug 2024 22:40:19 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a7dc9bc3bd7sm292248466b.34.2024.08.03.22.40.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Aug 2024 22:40:19 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 04 Aug 2024 08:40:05 +0300
Subject: [PATCH 01/11] clk: qcom: dispcc-sm8250: use CLK_SET_RATE_PARENT
 for branch clocks
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240804-sm8350-fixes-v1-1-1149dd8399fe@linaro.org>
References: <20240804-sm8350-fixes-v1-0-1149dd8399fe@linaro.org>
In-Reply-To: <20240804-sm8350-fixes-v1-0-1149dd8399fe@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Jonathan Marek <jonathan@marek.ca>, 
 Robert Foss <rfoss@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Georgi Djakov <djakov@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Mike Tipton <quic_mdtipton@quicinc.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, linux-pm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, stable@vger.kernel.org
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1328;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=t+tMTzX+SM35TGMLlS8U+3Typ2b9GAQHOxtHcxsEDtY=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmrxQ+Ojq+KjeMNpaJEqMBBa4cusWyrZKtW0x0l
 Gg26p9OB/SJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZq8UPgAKCRCLPIo+Aiko
 1fR3B/4uCLNre4w7YVTFSx9cfyW6gnVvsmmbvpOvS3ZzLKsqrob+fkNOW4zMQe0FdXktkSgd/ty
 QOPkK0yjPxHlDNC4x3MivgMr0PyMCbeiuZkXk/MZjtfYf4ly3ii6+gT2rx+640bkdPyxKWtv0/L
 NW6g13t7c2O1nFd/0i7HXwEqjoVVikW2RrENql/AR7LUMjRWpQTqdUoBTo+gBK0L9oUspLHwu1D
 4EyfBP0KcHkIo4OQdBh7juAQD/ltGj9MCDZd/ym3bjWKI1dpWcXXuMHIUfc1pjLyj2YIZVUpige
 dvqeT18Z3ZEoxYL/dN2CfoEsxZ3S/DSJpub48/+FxE6bKSzy
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Add CLK_SET_RATE_PARENT for several branch clocks. Such clocks don't
have a way to change the rate, so set the parent rate instead.

Fixes: 80a18f4a8567 ("clk: qcom: Add display clock controller driver for SM8150 and SM8250")
Cc: stable@vger.kernel.org
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/clk/qcom/dispcc-sm8250.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/clk/qcom/dispcc-sm8250.c b/drivers/clk/qcom/dispcc-sm8250.c
index 5a09009b7289..eb78cd5439d0 100644
--- a/drivers/clk/qcom/dispcc-sm8250.c
+++ b/drivers/clk/qcom/dispcc-sm8250.c
@@ -849,6 +849,7 @@ static struct clk_branch disp_cc_mdss_dp_link1_intf_clk = {
 				&disp_cc_mdss_dp_link1_div_clk_src.clkr.hw,
 			},
 			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
 			.ops = &clk_branch2_ops,
 		},
 	},
@@ -884,6 +885,7 @@ static struct clk_branch disp_cc_mdss_dp_link_intf_clk = {
 				&disp_cc_mdss_dp_link_div_clk_src.clkr.hw,
 			},
 			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
 			.ops = &clk_branch2_ops,
 		},
 	},
@@ -1009,6 +1011,7 @@ static struct clk_branch disp_cc_mdss_mdp_lut_clk = {
 				&disp_cc_mdss_mdp_clk_src.clkr.hw,
 			},
 			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
 			.ops = &clk_branch2_ops,
 		},
 	},

-- 
2.39.2


