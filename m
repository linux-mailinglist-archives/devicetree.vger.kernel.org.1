Return-Path: <devicetree+bounces-168554-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 89BC3A937AE
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 15:14:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 79C9B920B4C
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 13:14:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 369C227781E;
	Fri, 18 Apr 2025 13:14:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="vXG3U9ER"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EABC27605C
	for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 13:14:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744982044; cv=none; b=qz+Gdki0NUlHJzLfVOQTC0imU4EAY+mLSRBPzy+9CBingT5g9L6cw8ghaBuvutFioJ38K/tWbHK2bTrTpb1l9pokiNRERAj4uv8NCs/J5MKQ92x2pcv/wUN1VW9v0re3Lm/PjAIxBnnLm+cFcTRWb4SgthcHLe7GEZfAlrBOHLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744982044; c=relaxed/simple;
	bh=YzHH+rPNmlCw7nAjTMSEOMMyWvfPWgugAOZbphqTg0U=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gPqyBv8tEWK8NSDjK3mD+RwuQaKbcI2zZNbw3mnONAHnRzapecMh0e5IDcUIttng1wFn0KUortClHC9ILL2Me+SXSS2SxgcKMQaUate1cNEq7h5HIE631JiV4FkXrxJeiTpnntIjkzCyn/hhEFPjLQHbpCLF/IqvpwBp9LLwlg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=vXG3U9ER; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-ac2bb7ca40bso342065566b.3
        for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 06:14:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1744982040; x=1745586840; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8+iXn1oW4dzOU1w6dTTVa2iMvBmWei5kk2HA1UjOPDk=;
        b=vXG3U9ERiw+gC5ee8RwFhcBpnEsu9oKkfl9Bjrp/STu1WBM2yM4TNzZhwWvCYBkRgE
         nrAocFoK9oqj1zSglBMf3P9OGIwlb9xVq/yVAcrPmcIuYowihDt0VqwXVo3H+jxF6duY
         BUxP8+4EHZYLVsO8l7ylAJMJ2a+GxRMZcomqkz4mnCFPo9h/OBXm4DBbhUJ+6R60ZhtH
         9s7pb+LKYvLoL3gonwJYKVKaAlJxF8fuDkhny83cFwLBNHQ9pwMM/NO2S8MJhnAMx4YE
         H4Hd2uCCvfhGzrgGljqH7fBMfIAz8JnYTSVllcf6X2ZpqxG/83Qbvuu5+sILdFwMXB0N
         LXZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744982040; x=1745586840;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8+iXn1oW4dzOU1w6dTTVa2iMvBmWei5kk2HA1UjOPDk=;
        b=Z6n0HQuSV9BOlv7f9vUbrFN+lFZJj8lAqGykqfYFOOc/Mxt4xVkGGj6YDq8UYrSvUS
         h43oCRsx5RtMcUJNioCB7CKin3T9R8CjWZ8x5iN/wiJRlNlB/YZyUY+0Xl7FzU2ETrPw
         45Vy46cwK5J1JP3fW6NDj2qxl8LL/us00KIuR6t/Jn9hW4AmSr3LBY7yy9QM0pKh+j8u
         ylMOpoYm/zN7XODuXPBWEBQ1JyP0F+0RDYCO2BoeZJ3/BmdSIGTJ2ZAdECtN+qj88e/I
         ZocxuHR3PMzpvz2luFxmhc2YzRM3tskihNI8Ta6dmmHM5Co5CC4Ga0vhqRn4tgxVxM17
         uvAg==
X-Forwarded-Encrypted: i=1; AJvYcCWQxi/FpCQQWeiODqAEGnzvYGWPr/YGDkUTBDyPzmZ0exBvQQnLtk+BNCtPO6VSLXrK/1pqLDAB+WYR@vger.kernel.org
X-Gm-Message-State: AOJu0YxerqY1MLk8HsEHpDUlkGfCtGygnNu1p9xbHyf0A/aaUo3OeIa0
	992cY4gVVarbrTNXoESVqACRpVu1DZXoXiMSNkK1APtuCHUTsUYozDCFcDh53eBKLrXN3fQ+xTj
	w
X-Gm-Gg: ASbGnctTlu1qGDkrOvw2aMUaa4JHP8TzC6I7hwzqQ5ZgaC+xzld/OSZJ/Cqp7xXmdkY
	NvHkfkOuwE8Z+eGLSLHJo54BqpyY03AbciuIqYJKH1s7iKwoLkqZoj1WrbN8w6d6Iwz+n+WMqYe
	sBk6qoQYz4tLhktZMa1KOW2KwYt7FK6YpDNhyCDX9u/zGL6/exeSc9kLuvihA92tgz4+wnfzU4T
	xBosPFpShMgvZGjLalI7fwECZhOhzugbH6rIiyINfY6tdV9gXXqmdbf5dCvXvMPscoGSOw2NKDn
	vHVDLe3PJTfSnh0JWuPsEow4PlH48adwQDUt4/147yUOQLriX5xR6PhRqMt8ziYMKmyUGMqGhAH
	oGihovTNZDO8kgQ==
X-Google-Smtp-Source: AGHT+IEvyHMxyvjGL4iGOJh/qfXqtVq90WdGbNIlyJO0slfHahtv2sJybNJICOISqOrAqVq+TJLnEg==
X-Received: by 2002:a17:907:6d19:b0:ac7:33d0:dbe with SMTP id a640c23a62f3a-acb74b8e568mr220791766b.33.1744982040350;
        Fri, 18 Apr 2025 06:14:00 -0700 (PDT)
Received: from [100.64.0.4] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acb6ef41605sm115901966b.124.2025.04.18.06.13.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Apr 2025 06:13:59 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 18 Apr 2025 15:13:43 +0200
Subject: [PATCH v2 2/5] ASoC: qcom: sm8250: set card driver name from match
 data
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250418-fp5-dp-sound-v2-2-05d65f084b05@fairphone.com>
References: <20250418-fp5-dp-sound-v2-0-05d65f084b05@fairphone.com>
In-Reply-To: <20250418-fp5-dp-sound-v2-0-05d65f084b05@fairphone.com>
To: Srinivas Kandagatla <srini@kernel.org>, 
 Banajit Goswami <bgoswami@quicinc.com>, Liam Girdwood <lgirdwood@gmail.com>, 
 Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 alsa-devel@alsa-project.org, linux-arm-msm@vger.kernel.org, 
 linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2

Sound machine drivers for Qualcomm SoCs can be reused across multiple
SoCs. But user space ALSA UCM files depend on the card driver name which
should be set per board/SoC.

Allow such customization by using driver match data as sound card driver
name.

Also while we're already touching these lines, sort the compatibles
alphabetically.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 sound/soc/qcom/sm8250.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/sound/soc/qcom/sm8250.c b/sound/soc/qcom/sm8250.c
index b70b2a5031dfbf69024666f8a1049c263efcde0a..e920b413b762c803cfcc4049f35deba828275478 100644
--- a/sound/soc/qcom/sm8250.c
+++ b/sound/soc/qcom/sm8250.c
@@ -16,7 +16,6 @@
 #include "usb_offload_utils.h"
 #include "sdw.h"
 
-#define DRIVER_NAME		"sm8250"
 #define MI2S_BCLK_RATE		1536000
 
 struct sm8250_snd_data {
@@ -200,15 +199,15 @@ static int sm8250_platform_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
-	card->driver_name = DRIVER_NAME;
+	card->driver_name = of_device_get_match_data(dev);
 	sm8250_add_be_ops(card);
 	return devm_snd_soc_register_card(dev, card);
 }
 
 static const struct of_device_id snd_sm8250_dt_match[] = {
-	{.compatible = "qcom,sm8250-sndcard"},
-	{.compatible = "qcom,qrb4210-rb2-sndcard"},
-	{.compatible = "qcom,qrb5165-rb5-sndcard"},
+	{ .compatible = "qcom,qrb4210-rb2-sndcard", .data = "sm8250" },
+	{ .compatible = "qcom,qrb5165-rb5-sndcard", .data = "sm8250" },
+	{ .compatible = "qcom,sm8250-sndcard", .data = "sm8250" },
 	{}
 };
 

-- 
2.49.0


