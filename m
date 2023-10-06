Return-Path: <devicetree+bounces-6459-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BCA27BB728
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 14:02:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BD623282474
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 12:02:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFF3C1CF82;
	Fri,  6 Oct 2023 12:02:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AToBu3VO"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 168341CAB8
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 12:02:09 +0000 (UTC)
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC87CF9
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 05:02:07 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-3231dff4343so1274137f8f.0
        for <devicetree@vger.kernel.org>; Fri, 06 Oct 2023 05:02:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696593726; x=1697198526; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vPx5XIROD0uk2BJ+/kWMJ+ECquKjMnEvjFyUvfWcStI=;
        b=AToBu3VOjWX6B7/+Ot0c/T97RhKQWgK23KJ8AcZ0r+UZHmCS0MfzLGQeeBkIq46hUi
         breDYtn1IPyFs7F3yT8/Be7ZBC4oDmT1kku5TQA0VLBrM6XCTuDZmQXpBeLpr9CLEvSM
         OhXhJeifkH8h4KBew+CFjYGj+c0yrS+3yqowuukrApqM9poqMftcyhrqkD1PEfso237e
         C68BzHVEp/dPNKbjJqf41ODpCtkE2EvQzhiKmdaMZen8nQDvdkeeSh8UBXSS3PMSOZeM
         o3y90AoSxmjgOAlSXS0O9IA8KCq+irzq5MAIYuWGBXcjQRzw2drDIJOnMgGuj/qeYoQ7
         a46w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696593726; x=1697198526;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vPx5XIROD0uk2BJ+/kWMJ+ECquKjMnEvjFyUvfWcStI=;
        b=vzFIn1VbZzSPNkEsFxe4nM3AVRXqm89ICN2hGstaYjdBBeBgxnS/xf1W2MZ2a4SAgk
         13ytUtnhcXjRvdGAM3s3iB3ludyiFn9kRACGxGk5g4hbT7iUhrYMkhQcdg4aiFCSa4UR
         b5Q7vUCSnJ3wopf8o0/LEYfrm6kZr7hPgrjnTg+/BHYDp6b1ecKS3t+uzmhIOU9w06Zz
         XPDEVbkBlKdZRKwQbz7lelEKDtZXX/3Rg49skasD8BvBKSmqkJksvDrJY5UIcvalxaIr
         sMSABVKgCWNAS1G89sjWuVulGC4II3BJXEcIvSnItbNhnIjZPvl4YTuP8ts9f+Hdq09e
         uBWw==
X-Gm-Message-State: AOJu0YwbPYTkcAwXziUd5fXkmZo9D1Re+53T2c5ipQCDST2q0ixCBbLY
	CHTOpyZ08sVqA4nbhjZF9HEfXA==
X-Google-Smtp-Source: AGHT+IGiUVNyzR2JIXoZkF52E5pn5Q9iYVla7N3NhZeecZoMGDksUfU+uMeITERRJXGsZdFJITVsJA==
X-Received: by 2002:adf:a4c2:0:b0:329:6b63:c3 with SMTP id h2-20020adfa4c2000000b003296b6300c3mr1142125wrb.22.1696593725989;
        Fri, 06 Oct 2023 05:02:05 -0700 (PDT)
Received: from x13s-linux.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id m8-20020a056000180800b00321773bb933sm1491061wrh.77.2023.10.06.05.02.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Oct 2023 05:02:05 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To: agross@kernel.org,
	andersson@kernel.org,
	konrad.dybcio@linaro.org,
	loic.poulain@linaro.org,
	rfoss@kernel.org,
	andi.shyti@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	todor.too@gmail.com,
	mchehab@kernel.org,
	bryan.odonoghue@linaro.org
Cc: linux-arm-msm@vger.kernel.org,
	linux-i2c@vger.kernel.org,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/5] i2c: qcom-cci: Add sc8280xp compatible
Date: Fri,  6 Oct 2023 13:01:56 +0100
Message-Id: <20231006120159.3413789-3-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231006120159.3413789-1-bryan.odonoghue@linaro.org>
References: <20231006120159.3413789-1-bryan.odonoghue@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add sc8280xp compatible with cci_v2_data parameters.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 drivers/i2c/busses/i2c-qcom-cci.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/i2c/busses/i2c-qcom-cci.c b/drivers/i2c/busses/i2c-qcom-cci.c
index 414882c57d7f..677e4bc6e2c5 100644
--- a/drivers/i2c/busses/i2c-qcom-cci.c
+++ b/drivers/i2c/busses/i2c-qcom-cci.c
@@ -819,6 +819,7 @@ static const struct of_device_id cci_dt_match[] = {
 	{ .compatible = "qcom,msm8916-cci", .data = &cci_v1_data},
 	{ .compatible = "qcom,sdm845-cci", .data = &cci_v2_data},
 	{ .compatible = "qcom,sm8250-cci", .data = &cci_v2_data},
+	{ .compatible = "qcom,sc8280xp-cci", .data = &cci_v2_data},
 	{ .compatible = "qcom,sm8450-cci", .data = &cci_v2_data},
 	{}
 };
-- 
2.40.1


