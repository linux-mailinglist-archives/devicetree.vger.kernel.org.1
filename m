Return-Path: <devicetree+bounces-168281-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D4B6EA920B3
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 17:00:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5B49C7AFDFB
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 14:59:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DA16254AF6;
	Thu, 17 Apr 2025 14:59:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="b0n/PhxN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A65E253F08
	for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 14:59:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744901955; cv=none; b=aLb3sMbkBE8pg1TMxP3FcFHMhuP3U7yY3gLNRe9V7JOTeQqU9Avig7jskU/jFe3csmKE7BAZAU121CbIayJsQzPlpzaafxQE3/Lxm5H/zYlV9ozW/2n/AJPsCSaZ2upsY2JGHSmiZVFpdUC8P1N7TZMYOxExarpzKN2PekpyhFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744901955; c=relaxed/simple;
	bh=BkPI/jsquuEutSKBtBhp6i3QMEWYVqAxUsn/1OzDN8g=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QIyKI2ggLQUj7x1i2ZQGpE2gk9BbtO7g/Lt3f0yYSlqUGXfb6MQH3tHciJjSA0VWnAyidi/gHR2p1FlKaLcjsqWUcwr3eUT70BqRHdI3nm3KdN3tTxLTRJ4QHqWcbfYXlhburzd863hdno/TJAaV6Zu3UiUt1X47lWZEjRGnmAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=b0n/PhxN; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-43ce71582e9so7459055e9.1
        for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 07:59:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744901950; x=1745506750; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VyzpF2Qut9pQweK7+yF+cavtVIaW5lSQPao3nmOF6h4=;
        b=b0n/PhxNkfGySEtAIxir60Fs5sOpTMpply1lt0+jKVw8RV8BB6LXWDMtXGCE87lRz9
         Izjuwp29N2vjULlw1otnzWUQGD7oXQqu0zCSkLxVnXO8kxOSUjs2ErFkEJnpveqiP0+i
         nQsDtr9cquSM/XQ8XygCNNYifDD4OhXgwcR+JYt8ZZckCC2dWnLsQAV6aMTodKcs31Hm
         LCKs8MFvXHgrNYHnOEemPhrkYX0GJXJXtwcRnGewBTjkmQQzKuyB0RQ3d5/aF8EBxGO2
         +er75+UHGvfNN7SEL4HikQWxGATrZ7yTA6M0D3W4Ni/HYeUXqoDC7ywdyd/6QFB268gd
         Q6uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744901950; x=1745506750;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VyzpF2Qut9pQweK7+yF+cavtVIaW5lSQPao3nmOF6h4=;
        b=IzcRKUIFWT4r5lsCMmymvJDois+Lo4deBDY9AfY9AICmrHLQybMb13MGNNz6vartP9
         tm5nhzkP/DpVmbTjvVrIcXA8IUUYBTzCqe337zhhTIR720+M1ozD0q5NX7fb7wAFQiGt
         Lp8VlN+F4gYrwkcOTQMavzANJhxIqGQ7PM5W4/PPMAoOJziVqm8XvVFCVnVzTUZlyImK
         /UIE/TjZ4724uCH+NDycLzhRKI9kTXeMjykKZKiOsgCth+xq9rYFk9JxdSnqVB3tU9iw
         W4DYV3a/ln1m3GhxwXI6bOflnrzGubjYsg3TxVUtyNdMDrlgN99seBpszx//l8oofu04
         IXYA==
X-Forwarded-Encrypted: i=1; AJvYcCV01lic2Rw0xQC0AOiGkDKfNZq8m+XbVI/N4Ab3RzrAbJ75w6BGkhN/BmMG6v9482y/KhXYjNdMyMHa@vger.kernel.org
X-Gm-Message-State: AOJu0YyOo96kqlH783d9deCFSY0eoUNirTIF3j2zNeh4OdhoizV9jslq
	jLhn+1h9+DGjD7KcGGmzAElliapjTTVX0snj1gAYu7Hq+H7OblkahjkXwQPpHhI=
X-Gm-Gg: ASbGncvs5bG6abrvercOiS1p/Rc1VF2ilKajmJr4PtA49J0aicvHD+rjZUaOBZbCVVp
	AQ/DUMKMTrMbqOPxkESuz3/JgCLU0BLOr1u/dHjxSIDJ/e3RXKl4P3pXcUw2rjgASytDDbdbyWe
	zTv+RLwXF1hfqOdGuscpggCZjtq7iVHXWWABmnrLXNdrJcJnAs7xo/wjvVluRNEY5rZRm2MWC07
	gvgEFadLFOIDhHIpVtwXmxdQlohwZkozuumzaCIGVMbboRFl10tYjH4ayYEgSGQN8YJgGt2i0+d
	zHIl1ZBqXUDr3x+pYdPfw09AVa88X3GYlwlz+NsptSq+6NVRCiOP0v/GTIynnQ==
X-Google-Smtp-Source: AGHT+IHsDlEgq/lXBB2FGijLI5IwhPP+iocnNLoFicssvtZVoJBPOCmWPgpivKarz7tpAXj0r5KIEg==
X-Received: by 2002:a05:6000:40dd:b0:390:f460:77b0 with SMTP id ffacd0b85a97d-39ee5b3718fmr5582972f8f.26.1744901950441;
        Thu, 17 Apr 2025 07:59:10 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39eaf447914sm20497743f8f.97.2025.04.17.07.59.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Apr 2025 07:59:10 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Thu, 17 Apr 2025 16:59:06 +0200
Subject: [PATCH v7 6/7] media: platform: qcom/iris: rename platform_sm8550
 to platform_gen2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250417-topic-sm8x50-iris-v10-v7-6-f020cb1d0e98@linaro.org>
References: <20250417-topic-sm8x50-iris-v10-v7-0-f020cb1d0e98@linaro.org>
In-Reply-To: <20250417-topic-sm8x50-iris-v10-v7-0-f020cb1d0e98@linaro.org>
To: Vikash Garodia <quic_vgarodia@quicinc.com>, 
 Dikshita Agarwal <quic_dikshita@quicinc.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1497;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=BkPI/jsquuEutSKBtBhp6i3QMEWYVqAxUsn/1OzDN8g=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBoARc3TBe13AsFo6AQ6CZWAhNvmpz77+OGK0fIPZKL
 shxtL36JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaAEXNwAKCRB33NvayMhJ0REaD/
 90OpMPjwxDBgo33Uvw+sRg3hBxJkn1b0HonR/FZiZall5doa0bQJrzTGWx3d0nVQDCeaWLt2xHcf1F
 nkfW/7fwdQOVJqt/0tXzPBll+m4JG6KU9M0ek5p5bMQWKfq2GVcQjRItlk+3a62lgsfTP2hW0wjxSg
 czS0yAFzncpz1vXjdtMfBc3vpLtzVyS+NGNl2uDdASei/gvzzMyXlNoz8fk/htLxXjL+tAiCcavFwv
 5V8e8J21v652IsXm0vpjUMtLYBI5D97cx9H+vV6/SrKxRT/+fvg36oplYJ6i8uWqJhC66IfS6hvWZp
 dQtGyLxm8rNLfyg6KEX1IHTE+G9ln2TXDzOC9AoD6M2BvjOmyBUTZ0zPGPaEclOA51KNaN2HVfsXE/
 R+Hz7L29wZzwbHRGe4lCdTLSJKeJB+McyTanfTi7YMla/1/7o6HH+gO9kxizLftefGo5XTexMriWQk
 WkVPnjuWVURRmtDk2IUPVlZYbakt/7ytoEitV48ODKdlQsNbNHLUAgo1cgMYYI2Z3UXLJ1pgTXjPCC
 v6hxMMiKjB52q+RXbyPO0wiA9wTzhOxNXczV+bKQ5E2IqRyieUoq64xH0I6oYjZ+M9cbpQ9Tf3yqZ6
 5VLNWb4t1Gf4ZnIf2klzrS0tTt+8fTz7NaG408OkKsichLviHfwEXNu9GJKg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

In order to prepare for supporting the SM8650 SoC, move the
iris_platform_sm8550.c file into iris_platform_gen2.c that will
contain all the common HFI GEN2x structures.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Tested-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org> # x1e Dell
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/media/platform/qcom/iris/Makefile                               | 2 +-
 .../platform/qcom/iris/{iris_platform_sm8550.c => iris_platform_gen2.c} | 0
 2 files changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/platform/qcom/iris/Makefile b/drivers/media/platform/qcom/iris/Makefile
index 473aaf655448180ade917e642289677fc1277f99..e86d00ee6f15dda8bae2f25f726feb0d427b7684 100644
--- a/drivers/media/platform/qcom/iris/Makefile
+++ b/drivers/media/platform/qcom/iris/Makefile
@@ -10,7 +10,7 @@ qcom-iris-objs += \
              iris_hfi_gen2_packet.o \
              iris_hfi_gen2_response.o \
              iris_hfi_queue.o \
-             iris_platform_sm8550.o \
+             iris_platform_gen2.o \
              iris_power.o \
              iris_probe.o \
              iris_resources.o \
diff --git a/drivers/media/platform/qcom/iris/iris_platform_sm8550.c b/drivers/media/platform/qcom/iris/iris_platform_gen2.c
similarity index 100%
rename from drivers/media/platform/qcom/iris/iris_platform_sm8550.c
rename to drivers/media/platform/qcom/iris/iris_platform_gen2.c

-- 
2.34.1


