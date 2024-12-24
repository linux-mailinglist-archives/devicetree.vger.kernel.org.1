Return-Path: <devicetree+bounces-133792-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F15359FBC19
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 11:20:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 053B2166796
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 10:13:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7488F1BD9E4;
	Tue, 24 Dec 2024 10:12:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ktlePcFt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8034A1B87F3
	for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 10:12:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735035162; cv=none; b=J+Gc8msJul6hVVfx7t/3mllLNCGjR9dD92jqXDjcMRKCsAtadfEv2NlhaXrTGA7mXsweVX8jnPcOfnCkzNg9BLJHwhVwX+ulaLWlFclnOF5HQq/qony80KSSYbQNiixp8YyJAFKkfE8r3Zz/dN3Kfs9JbzjrG38Q5rzNhTtc1rw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735035162; c=relaxed/simple;
	bh=AcwQoycLm9utovHACbpm2AffXKTkfX3suXvNPJyE84c=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ChZ9Oq2CCie3BPP6S6nG0Zw2skTxTcjQgjY3FOWj9SQeCNV1toNmSrYXkcRluUVtcHrH0hawtSmMvXjHvPRaXLxGmawNKTvv2sYy2PExzlNagYwmw3Dj+xf9XEBAdcOevsKEppueAdca8xE9Ny/5PRGUYci4Y1vpdcNBVGpNAuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ktlePcFt; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-5401c52000dso5679316e87.3
        for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 02:12:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735035159; x=1735639959; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TR/QxOQXvLizWT86sa/2IoshodRcxisn/V718Oa/Cd8=;
        b=ktlePcFt/AxqkppC5BPjnXa04YBvK7Ce57ebCZ3kcWXBdKN23MjFkQ5DIDT3g4LEjb
         /RB5C19ZTuMm3LIrZhpxtop7AspVce+2mAm9WjDjCod06VRliF4mjsXfztKJTLFAFNu5
         ujQMxfAGXtxxw+c5FF2XmpdTh8g27bUx6qPpk7J325Kj5+utvamaJU16mpBhIeghmOAi
         4x88MIjK3qiX4Nw4IK7iJV/Z4laH7tyteZvQn6DyljWpyUFkZiroSE21uTksmUgUzjbC
         D0kX146As7XJn8vseizjDi8pnZlCUjgiJNijqaCxgtwFALk4yTW254aFWN79qXu3DFhm
         8nuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735035159; x=1735639959;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TR/QxOQXvLizWT86sa/2IoshodRcxisn/V718Oa/Cd8=;
        b=dRfFTIJJGavljydpMvXJuXmaQ69ehsSTrfS+/lNfrumGJmhqzCgnbRzy+o6+zdO6uX
         E3/pwL0YHi7i4SXxerR1o6egRB+/uihaj5oxNRLDrducR7QZBiSWqivNVlXhKMbmy3zA
         eNBfqiQ93MEUIZIrUR+0ctMmnob2feK2E0zME4Uus3VG4QybsKueVFcmoMBwBBrHapWt
         Nl17Gu7xUNqqdxhhCQTRgPAByM3AaI6cRNyeuJdtOh7YKZtuEe9bQwDpNDTSKpEUF4Kn
         Q9t5mAbH2y/VrbWug8563oXmXH0M1BKNr7BiybyFCXHTxaaUajmEUjCriWnIGK50yd3j
         bQOw==
X-Forwarded-Encrypted: i=1; AJvYcCUYzZsuKuNPywVQCk2qUHJM0k25StzNlKIVJW+DA9G7ixvE33sQPC9xIjZ2GVHLZvOFixM1TqYMYCWV@vger.kernel.org
X-Gm-Message-State: AOJu0YyAZkGa64GiyQFMlkLXEpHWxpjClHEXNSfUbj5clTXg5wnweizN
	Dpovyc5kFDKXiZlQ+zq/GzzZVA5kqnUFWkVOUdEDEMcAuGRe3JB34+X9PZGbm3c=
X-Gm-Gg: ASbGncvrLST8uMQXcLqMpEHU2cqgwVLfFA+s6npS/7H37Zfa76J/26x6VUoImFQUpcR
	DT7qqGxkqbp4cP7LaqD+KqRS7FsZNS9vmD2b6arp9BRXQLavJ42wtL/5Pk/RQVnnRqXUXD+C7cp
	pEqK4tuAmMFUEQR3IKuIIk4ldEMyHjnomvqNDDNIXGlBheDQO/ftU78kPFwPZMraFNIRyX0tN46
	7g0yYTp/B40SRCLASX3cRg+ZPJ+VAWr1piZwLSt0QgmK1723NB/X+J4BBPaIVYE
X-Google-Smtp-Source: AGHT+IFOfeFBK10sJlw4WmkI7SiGjao3GcU5smVbFwzxZ90JTpX/d0rEVksH5XM2BGFoRQ+HtpnzfQ==
X-Received: by 2002:a05:6512:3192:b0:540:1f7d:8bc4 with SMTP id 2adb3069b0e04-5422956ba37mr4720310e87.48.1735035158708;
        Tue, 24 Dec 2024 02:12:38 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54223832073sm1574233e87.260.2024.12.24.02.12.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Dec 2024 02:12:37 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 24 Dec 2024 12:12:15 +0200
Subject: [PATCH 3/4] clk: qcom: rcg: add 1/1 pixel clock ratio
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241224-apq8064-fix-mmcc-v1-3-c95d2e2bf143@linaro.org>
References: <20241224-apq8064-fix-mmcc-v1-0-c95d2e2bf143@linaro.org>
In-Reply-To: <20241224-apq8064-fix-mmcc-v1-0-c95d2e2bf143@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jeffrey Hugo <quic_jhugo@quicinc.com>, 
 Taniya Das <quic_tdas@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>, linux-arm-msm@vger.kernel.org, 
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=664;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=AcwQoycLm9utovHACbpm2AffXKTkfX3suXvNPJyE84c=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnaokMw7znaaeRfLp3dc2QiRSO6UNpEmNAkDgCm
 t7hIf/KEO6JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ2qJDAAKCRCLPIo+Aiko
 1bR3B/90PaxN1G8SEdn+3uQIdBsQPLCZHWmFrdUYRImseITgrw/LjNaNZx/ClQ2kvW+LY4GTU8P
 vIPrSM/9u5Z1eRVP0Pz4KrgGSQKyd/ZArG3ntuht5dSgu+y+bKDH/0FIkA1fckwPJkpXkY1kSIU
 W6hZUjd372r61FxDaXwKe2fqGUXcHlWQONZTS2kXpk060E6GmZL7CVOd1XS2qTuzT+jZ6mYg06g
 fH6A53lvic8fLdvtG8qaUs87QNT0WYn8PLZSRHMGbWbpZUYDxECndtYOd3jN5DaXHrLZzCWA9PG
 PcRYpM0YJtNXbB9betP0CEDZqPbRTotPNrBTHKu5spDCAZoi
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

LVDS clocks require 1:1 ration support in the table used by
clk_rcg_pixel_ops. Add corresponding divider to the table.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/clk/qcom/clk-rcg.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/clk/qcom/clk-rcg.c b/drivers/clk/qcom/clk-rcg.c
index 88845baa7f84234b8554ef59cbfe2322870f1f69..987141c91fe0bc323d84529afbf6c96d247a55a3 100644
--- a/drivers/clk/qcom/clk-rcg.c
+++ b/drivers/clk/qcom/clk-rcg.c
@@ -597,6 +597,7 @@ struct frac_entry {
 };
 
 static const struct frac_entry pixel_table[] = {
+	{ 1, 1 },
 	{ 1, 2 },
 	{ 1, 3 },
 	{ 3, 16 },

-- 
2.39.5


