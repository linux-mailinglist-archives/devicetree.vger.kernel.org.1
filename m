Return-Path: <devicetree+bounces-107004-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C322598CB25
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 04:20:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5177FB22338
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 02:20:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD77314A85;
	Wed,  2 Oct 2024 02:20:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pITeRcQj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11AC6C2C6
	for <devicetree@vger.kernel.org>; Wed,  2 Oct 2024 02:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727835625; cv=none; b=KOlpBVeKbNuGP2JuU+332Zx/+1VUialeckWpd9ZHzPtjmg7NOC91zQB6wHgeglsVveipCc7LDaCThQjnSg0nj4ECixCfQ5/ONkxBr08LyDtxtfgyixGfAoXx/HRjbJwo7jVDU1RHZ65RcbSJ3je40mm+tW7JTZO6PQ5+JzQ+92U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727835625; c=relaxed/simple;
	bh=h+nCwsYfs5sYx3LuwElbokrzjS36O6h6OKiN8mmmqqo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WVqk7VLqMg+yV1BLC1hZrjePRdWbk//DYglPxJzvVB0jraWUJjm1NaqKPsUceXDNJjaaxX9flivpienpTQvb0+QIBzcNu2XhHnOZm/wtqT2763mTQN9s+NvriZ6DLeZl9PHKRFMakyzJv57DYMmEcIYpBJj/GfgDHXvgpSt5dVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pITeRcQj; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-a7aa086b077so891435766b.0
        for <devicetree@vger.kernel.org>; Tue, 01 Oct 2024 19:20:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727835622; x=1728440422; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n9xIAfbz7fjBNidtmDjZcASh4YKSIa46CQvlQ26gYQA=;
        b=pITeRcQjnYf9+YkWuin23jKW+/tCOe2nCQx7lzIh0dDNSD/CTucHVsXXZSRGbQQLyX
         4OD+AIk5Uohwjlc3nLdEgvX77Za/DSMmLa3StS+7Hl6hQgG2DKR6w4tGnEEqx7snyaue
         j7Cuw8JdG7++OrGhmO7rNhSGPhY65YiBNbAxrXa2Ct4hL7DJOGdnYwDFLnTWUbew1/ty
         2ByJBF8mKagUrJYaYwFCxdZ1kilR6oYadAtYn4apMQB556LaeY2B8SzEsmGxYGtwCDRs
         AE9vRyVaLSPEewLhuELEb2qk0hst+o8uJVrGf8N7evzrY+7MOsJHZ67+RHV4sq1wHN3l
         SBSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727835622; x=1728440422;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=n9xIAfbz7fjBNidtmDjZcASh4YKSIa46CQvlQ26gYQA=;
        b=uPpmR5wnLOsYt1O2b2PHrvd+yCnvaxpfKfosFka7eNvSe6v/ENgTcyPmzIDcUfU07i
         fo/0m2or7ptGjBh9ult451JL3ViSF5HbbL9EgAinlwduhM/pJ2RX/COAh02rUsBJieba
         bHCDOzM6fiWxQCNS8SeFer1n+4P5Ukks8nP591GJAjO2BfI9Zob/V2+tXhU3A3JWw2jb
         CfyU6eEP2QvpG6qaaqdEyHDGDJ8dHRiGuT8eH9+d2Wr0/JPaAh2JVvAB9qW8UAwUJQYp
         nQvUHYsE3gfGvtB6x+jbGV91sPWyIjaKF3g82xu/O043hx3++/+B9GvPj9UacLvDK8W4
         Qn3A==
X-Forwarded-Encrypted: i=1; AJvYcCV0NziHStvY/5eVUNDTIllF5aznCLT4zhs/eqtOaQDSCbqmmmiZEjmSzV+0ZfLRJIRbhe8hS4NjNrdH@vger.kernel.org
X-Gm-Message-State: AOJu0YwKI/PTKhwwTU7E2IyqKJfFr/LdZe8KSY95SZ2wVK9AAmDLrt6A
	cGLcKIZXEFobQwYv9jufujsPMgwCJ+HKyR9mcVOE6zvDUsvO0wSm3gDrwXDBEY0=
X-Google-Smtp-Source: AGHT+IFLmq+2mwLJhF5wcOOkF3bdVL/ltt9sQiXECke/uv9VIlvSNZdfCfyEy1s8dICY8l0J/ILy0A==
X-Received: by 2002:a17:907:268c:b0:a86:82e2:8c6d with SMTP id a640c23a62f3a-a98f839d3ccmr130606766b.62.1727835622420;
        Tue, 01 Oct 2024 19:20:22 -0700 (PDT)
Received: from localhost.localdomain ([2.125.184.148])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a93c2945f2esm787518866b.117.2024.10.01.19.20.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Oct 2024 19:20:21 -0700 (PDT)
From: Alexey Klimov <alexey.klimov@linaro.org>
To: linux-sound@vger.kernel.org,
	srinivas.kandagatla@linaro.org,
	bgoswami@quicinc.com,
	lgirdwood@gmail.com,
	broonie@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	andersson@kernel.org,
	konrad.dybcio@linaro.org,
	perex@perex.cz,
	tiwai@suse.com,
	linux-arm-msm@vger.kernel.org,
	alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org,
	elder@linaro.org,
	dmitry.baryshkov@linaro.org,
	krzysztof.kozlowski@linaro.org,
	caleb.connolly@linaro.org,
	linux-kernel@vger.kernel.org,
	a39.skl@gmail.com,
	alexey.klimov@linaro.org
Subject: [PATCH v2 2/7] ASoC: qcom: sm8250: add qrb4210-rb2-sndcard compatible string
Date: Wed,  2 Oct 2024 03:20:10 +0100
Message-ID: <20241002022015.867031-3-alexey.klimov@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241002022015.867031-1-alexey.klimov@linaro.org>
References: <20241002022015.867031-1-alexey.klimov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add "qcom,qrb4210-rb2-sndcard" to the list of recognizable
devices.

Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---
 sound/soc/qcom/sm8250.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/sound/soc/qcom/sm8250.c b/sound/soc/qcom/sm8250.c
index 274bab28209a..19adadedc88a 100644
--- a/sound/soc/qcom/sm8250.c
+++ b/sound/soc/qcom/sm8250.c
@@ -174,6 +174,7 @@ static int sm8250_platform_probe(struct platform_device *pdev)
 
 static const struct of_device_id snd_sm8250_dt_match[] = {
 	{.compatible = "qcom,sm8250-sndcard"},
+	{.compatible = "qcom,qrb4210-rb2-sndcard"},
 	{.compatible = "qcom,qrb5165-rb5-sndcard"},
 	{}
 };
-- 
2.45.2


