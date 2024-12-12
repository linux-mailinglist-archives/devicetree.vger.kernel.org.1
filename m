Return-Path: <devicetree+bounces-130054-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C50679EDCAE
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 01:48:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 84D642837BA
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 00:48:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A23BB61FD7;
	Thu, 12 Dec 2024 00:47:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tjRDvb1F"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D683144C76
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 00:47:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733964459; cv=none; b=nk4HR7wV2Q3h4Vmc4/L08mFW61LzucqfszpDjRusVwp8kYrkQ2qh1RCcAs4e2fxQa5tF7gQLyXXmx3mojnnG0HSdmPuua7koMZKn2hR9oC7WceC2mOcRewYWhbYRP8bPdjbY4Q6kpimSwLCaTQtpi1XxrpGWNxFiwFrqmxW7RhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733964459; c=relaxed/simple;
	bh=Jmxl411WFIZqWVvYYq3LtnoW5zZ2OdPhG9ySRHWVXfg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=edJHaBFpMry8flmCPFwryFmIGMeV5CTrSKRUj6XJFT+dPTlLeJMSpVMKiG9WIs8U9BKwGoVo4CwMizhTpvXKISaystaJcbrquIBSqLW031fR21DroZpEx+zyezwYIXZ8QmpOjwIM4KbGoMupL7t4AFb1VIRN8YKsIAM7pL5HNjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tjRDvb1F; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-3862d16b4f5so43724f8f.0
        for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 16:47:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733964456; x=1734569256; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n6kZLHzerZib3Tom9bwdP4TG475dJUZl/s7CFHt6iaE=;
        b=tjRDvb1F88wUHJ/B1IYOwB7PvHy/mJkMgF2zsbeUhIUU3nsIvflb8rzNEJUmc6P5/i
         1EIKwIk++vOrkhfXbb6aHgEa7+HKCcLHpKVW4ulVs+KW2z/xbXKi9jvBj2sIC+c8kPQW
         eXRSoT9zPjZ99r5shf8XVPDl+3KubEYtp7zZwugn+ZA6Zj5mgpyJNJlDBZ1M4cOMy+n4
         Xwqq9XoUVrs7jkk25L0FkfOv+lJaGULT1TSsEKBrVEmj8yIFiMOLVNzDqBw16A7ktTI/
         OcVYw0P6B79UGAs542zrBaIfoBPiUcjruhOnvcGMDB6AyAqYVIejxJz+/neu7c7i5fUv
         ugkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733964456; x=1734569256;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=n6kZLHzerZib3Tom9bwdP4TG475dJUZl/s7CFHt6iaE=;
        b=w6cKiBd/v0Euq0bvB0Thr5bCUY5LERE6adZhq9lrz6lGmX6jgktfCJC1fbCBKUKWU/
         SEu0Zb0g63TVtevDv2ungj8gRKlSrJtPmHViAcGeGap2q0RFVsP6sD4jGFX+vj0H/8k0
         8My1qnbNuaoDTcbUBDmhh9Bp/Mto5S5reoOpGUINq3EUpm/Aj/9VykYXN/XeROgzSN6K
         zKWoDXfMJHLZMtyYS6ncLW3xOrO1pbaj8BYV9ahQU1Ad1t8y5RF5EUGwkKWyBmYuLMBL
         1LwtXN7pwC5EMEtT/7QmxwjkYba0/I60jZ0k42s1phUzZeTCtMrKFUioDp2Nze3E4DuN
         k1Hw==
X-Forwarded-Encrypted: i=1; AJvYcCU6ww4N7uNDF8oL7Yk8XNqV7lKlzaUajnHOoS56tUblcZrbeVzIayqLVn8rbwG0p2lStPTNdBRp+swI@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+82dPHjXzjMesqV6nn4LgkNDm/TZC/093WZcMx0JJcSgnSiOr
	HoCEQEX1F4JUOZDu0FlQzl1mL5bvq6W24zqscOcNmRAp7wQLnucpAXacjg+y7fc=
X-Gm-Gg: ASbGncv6yp19Yq/MIrcHdSwYnMpotkvWzz0tDUojW81maLR+DLLeIP7LD7cohCrixX6
	CUwJwzy+FxeOSfzy4cCtddrsx5GWJh8l8Ns/qhK4ZlEuK5WP7CdwomJwA8prtL4RQHT8jG82e9S
	d8UabMzqqgipSkmaMAup08P+xJcvgopIJ6Px1K1nG978QRYns9nvjp2KLY7kMYJZnHivXJM+Fvp
	SdXJKC5kMRBroz44PSyqG7r2GONKDPzSz87bCKhP1PbvWrvElqbpb+yYoQLVteYlR1+hkNq
X-Google-Smtp-Source: AGHT+IEi1kamexVrbGthx4QEBUCr69JkP9/Hp4vgbpEuhKuOMH1s/oYcZgmQpyQA1HV0TbxjEV4tZw==
X-Received: by 2002:a05:6000:a07:b0:385:e10a:4d97 with SMTP id ffacd0b85a97d-38788825765mr825870f8f.21.1733964456279;
        Wed, 11 Dec 2024 16:47:36 -0800 (PST)
Received: from localhost.localdomain ([2.222.231.247])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-387824a4ef4sm2459660f8f.39.2024.12.11.16.47.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Dec 2024 16:47:35 -0800 (PST)
From: Alexey Klimov <alexey.klimov@linaro.org>
To: broonie@kernel.org,
	konradybcio@kernel.org,
	konrad.dybcio@oss.qualcomm.com,
	andersson@kernel.org,
	srinivas.kandagatla@linaro.org
Cc: tiwai@suse.com,
	lgirdwood@gmail.com,
	perex@perex.cz,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dmitry.baryshkov@linaro.org,
	linux-sound@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 03/14] ASoC: codecs: lpass-rx-macro: add sm6115 compatible
Date: Thu, 12 Dec 2024 00:47:16 +0000
Message-ID: <20241212004727.2903846-4-alexey.klimov@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241212004727.2903846-1-alexey.klimov@linaro.org>
References: <20241212004727.2903846-1-alexey.klimov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add rxmacro compatible for sm6115.

Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---
 sound/soc/codecs/lpass-rx-macro.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/sound/soc/codecs/lpass-rx-macro.c b/sound/soc/codecs/lpass-rx-macro.c
index febbbe073962..61c321e0f753 100644
--- a/sound/soc/codecs/lpass-rx-macro.c
+++ b/sound/soc/codecs/lpass-rx-macro.c
@@ -3946,7 +3946,9 @@ static const struct of_device_id rx_macro_dt_match[] = {
 	{
 		.compatible = "qcom,sc7280-lpass-rx-macro",
 		.data = (void *)LPASS_MACRO_FLAG_HAS_NPL_CLOCK,
-
+	}, {
+		.compatible = "qcom,sm6115-lpass-rx-macro",
+		.data = (void *)LPASS_MACRO_FLAG_HAS_NPL_CLOCK,
 	}, {
 		.compatible = "qcom,sm8250-lpass-rx-macro",
 		.data = (void *)LPASS_MACRO_FLAG_HAS_NPL_CLOCK,
-- 
2.45.2


