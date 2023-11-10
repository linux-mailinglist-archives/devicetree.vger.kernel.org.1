Return-Path: <devicetree+bounces-14904-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id AF2157E7664
	for <lists+devicetree@lfdr.de>; Fri, 10 Nov 2023 02:05:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0ACE5B21215
	for <lists+devicetree@lfdr.de>; Fri, 10 Nov 2023 01:05:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72FF2628;
	Fri, 10 Nov 2023 01:05:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kVm1Gepx"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2B1D1363
	for <devicetree@vger.kernel.org>; Fri, 10 Nov 2023 01:05:00 +0000 (UTC)
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1756B4229
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 17:05:00 -0800 (PST)
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-507a0907896so1881872e87.2
        for <devicetree@vger.kernel.org>; Thu, 09 Nov 2023 17:04:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699578298; x=1700183098; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cYQvDtaR1Rq2jfedJTX47JK1X6rSYRRgJAozvHJVQR8=;
        b=kVm1GepxG7CjuP/CSk3gtvvT6PzrXnahWDwPtHTJpiEa3x7F+jrEZI8WmzPysqmSoE
         OjqPb850bxrsXOly21iA14glW2B07eBnIes7v3WKnRwbUccHLVLlRx6teXZQQZArk0pB
         SyL+UZMspwOu2DtCRRObK/7TkoAAuakXzocNbj/HOQ0OspmEgLAJ83KEIfXnYiwvFl5r
         /lAxHQIEb6aLHsuMvirZN1yuuu6hRDEYGw1yhrZVvpwEbNqtf5cgKrQTnUJbkzSVFXrq
         lrKvqPj0SOTKAP8NbjSPx6tDn7FnmRAxpSwVKhVwlmupJrEBtJFQwwTp4nJhPmyTS2Iy
         ND5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699578298; x=1700183098;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cYQvDtaR1Rq2jfedJTX47JK1X6rSYRRgJAozvHJVQR8=;
        b=TNdM6JU+xB45psfrV+UfPsOOZqbu111YJSej/KsBklGSF9kA62EmIpYD7WFD5unW+r
         In/2aR0cZ/0RqgwH9mKdyttLXNJLIZ832RL6OVhVdSkzoQN1f1cjOpGLMJRD5AIJGO0K
         kjWlJM+btLdMcJocynSFMTRMRTYmcfCqnl36rXs8uOq6y/wR0Q9rWYVWqZi722BmqDvg
         VcKxkXPs2HqLQeOXVkfn3bLuyW4pPahDNXFzTcK7vQu6c9aKvdfiSZYpJ3P/pB25lifg
         gKTau5FTioKCi207TUvlqhI/ADL4BIepliD3W97u3sTQ8KVAa22cQPnJSSaGQRCbArLe
         ij7Q==
X-Gm-Message-State: AOJu0YwFM+XzxD+/j0ZUOeSN8laU/pn450lQv0RFTAu2ucCxjLHIjzRj
	gFg+AD8HF6D+I5vjFVKqzTCjCQce/7WrY4lTKd9JCA==
X-Google-Smtp-Source: AGHT+IGO6UmvZMd+QDCGUZMGgoA1QAKWo2qz6+2Fs6vQvRw/QvQsKdJg7ZqNXqHhXGL9zsVGvNFJlg==
X-Received: by 2002:ac2:4306:0:b0:508:1332:558a with SMTP id l6-20020ac24306000000b005081332558amr2632106lfh.2.1699578298239;
        Thu, 09 Nov 2023 17:04:58 -0800 (PST)
Received: from [127.0.0.1] ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id d1-20020a056000114100b00326f0ca3566sm820562wrx.50.2023.11.09.17.04.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Nov 2023 17:04:57 -0800 (PST)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Fri, 10 Nov 2023 01:04:51 +0000
Subject: [PATCH v5 6/6] media: qcom: camss: vfe-17x: Rename camss-vfe-170
 to camss-vfe-17x
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231110-b4-camss-sc8280xp-v5-6-7f4947cc59c8@linaro.org>
References: <20231110-b4-camss-sc8280xp-v5-0-7f4947cc59c8@linaro.org>
In-Reply-To: <20231110-b4-camss-sc8280xp-v5-0-7f4947cc59c8@linaro.org>
To: hverkuil-cisco@xs4all.nl, laurent.pinchart@ideasonboard.com, 
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Todor Tomov <todor.too@gmail.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, vincent.knecht@mailoo.org, 
 matti.lehtimaki@gmail.com, quic_grosikop@quicinc.com
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.12.3

vfe-170 and vfe-175 can be supported in the same file with some minimal
indirection to differentiate between the silicon versions.

sdm845 uses vfe-170, sc8280xp uses vfe-175-200. Lets rename the file to
capture its wider scope than vfe-170 only.

Acked-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 drivers/media/platform/qcom/camss/Makefile                             | 2 +-
 drivers/media/platform/qcom/camss/{camss-vfe-170.c => camss-vfe-17x.c} | 0
 2 files changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/platform/qcom/camss/Makefile b/drivers/media/platform/qcom/camss/Makefile
index 4e22223589739..0d4389ab312d1 100644
--- a/drivers/media/platform/qcom/camss/Makefile
+++ b/drivers/media/platform/qcom/camss/Makefile
@@ -14,7 +14,7 @@ qcom-camss-objs += \
 		camss-vfe-4-1.o \
 		camss-vfe-4-7.o \
 		camss-vfe-4-8.o \
-		camss-vfe-170.o \
+		camss-vfe-17x.o \
 		camss-vfe-480.o \
 		camss-vfe-gen1.o \
 		camss-vfe.o \
diff --git a/drivers/media/platform/qcom/camss/camss-vfe-170.c b/drivers/media/platform/qcom/camss/camss-vfe-17x.c
similarity index 100%
rename from drivers/media/platform/qcom/camss/camss-vfe-170.c
rename to drivers/media/platform/qcom/camss/camss-vfe-17x.c

-- 
2.42.0


