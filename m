Return-Path: <devicetree+bounces-168556-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 40501A937B4
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 15:14:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 728F4920B78
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 13:14:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE6DD279798;
	Fri, 18 Apr 2025 13:14:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="yO989wWw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9AC5278160
	for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 13:14:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744982046; cv=none; b=RUV2u8Mq1/+gdnJhZO7W6hezPYFIy19VL1S8UZMu1CouqfD9/glNrUTo6NO29DQMV37/tvg1GtyY8GX4LawpN6pPqlpjzjX3O27mtfhMb9g1o1IyAniuSsO5DFKa58oA5yWBBkKKMniD3QV4XAD++TOpeTirIhgMCM9J5W2bLTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744982046; c=relaxed/simple;
	bh=m+PMYJAHzPiWvmBUN7s4MjbXhEue3cg4fhj99Fq5amM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=IBXPSN+8zF80y9jZKbS6CyqsbJy6yDUBo49qayYMuWlNxXAPkff7Y9ORy3DxziCe+97IO0Y4V5oEhWNVQQwHjT9qTCxMO4prvBsCWDJWR1fck42B50YzvUoXerK4EdCL/4jG43yNuJUE74sz2J9TefzN4dkV5IKyxXVlZoJi0RE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=yO989wWw; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-ac6ed4ab410so278597366b.1
        for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 06:14:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1744982043; x=1745586843; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KCvYbcr7LrU2lgzZsZvyD/7tb6wHoKL1gjL7KsvY9pE=;
        b=yO989wWwaqXWZeANO4cgUBdurOAAhBhva8LIB/3AA0+Jo+/sB53Uf6hbkPjvq38MFS
         XYmEfeW5MBr8xpvXF025xW4ld1DEhVnDDM1/pbDq3sOhetI50ZYISVnuus0KfQM7NoGV
         RA0cwdiUPZEAwfI4E1FRTcOffPqOGC1XdDwWloERpAXwGRqfKDGV/TClbCTjo7pXlfAk
         gadrFufbSHXj+1MvB99P0PmROMvTlYTGmEy/mP5NxbUTHNk429Yt8PZSObOmSZqFzrPk
         nFEqrlRuYuWcwKIQCt+WuSEZnTkfoN3SQGq87gDq0nqwUVzaYHQsI/54C/QVwE1Kr0GY
         T0ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744982043; x=1745586843;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KCvYbcr7LrU2lgzZsZvyD/7tb6wHoKL1gjL7KsvY9pE=;
        b=tDpkIkE3EIQSHNuknxiabRBnkXTUEz8zIFMqQk8o39CBQfENWrBtt2mS0QI9splqm3
         zhie67Bi4SJntPHtgvXkzGsh5+dA7y08KqV8RgugW7CCoi+PHOskWBI8E6lLaDV/ZX+k
         uWRlYXVcs1mYKZiEwU//2vomHDabA+E48DeuK2+SNb5P8zexJ08gWwPcG8Ro+A7wZQWg
         G2OkFyv7Hgo+FxfTDV/9KWV3qyfZ2jaSL6py/uhRNG4IlCEoW8/UqVw7AJxyTL9qjO/k
         ON2ExU8bK9Xaone8R3nHf1scE6qENw62TPQXQV1Y42D/2CbF033ebgXdG1bKaG/UtwLO
         rwBw==
X-Forwarded-Encrypted: i=1; AJvYcCW8B6MhYZvjem5+xf+ZVe/vuCnzvR4wP93q1IQbqG6/WNzWzv+qeY9wecs4Wefl7xT+0Qs6GxyRcQdH@vger.kernel.org
X-Gm-Message-State: AOJu0YzOnUiuuFJ+pscU1j3VhTqiJlJMU/HnWW2iXdRvjoSqu2YqZ4ZV
	LxnxF5sbETwdyThk4GQATrApZ6wz4xnCOgNIECqin6am0rMsdlBKDW3hjLwrPHo=
X-Gm-Gg: ASbGncvr+fUmD+EqSoc3CS/YPgEv2DfoDTz8aoNFi2ksa5OuVw8CV41G+DqCTolvWM7
	oHmcNDi5kmGU8Wlvyku58UYK+6AsN1LueRli0Iu0xrKI2xNba/8wJBsEQvKwl/5sHVzw34zFG+P
	e/bFu7bCxHt3ytB87CxrVMdNJAFDo10g5GOOy7dCvRnSPPGC0T/2O0XOrHckF3DCkocRle54994
	mJNV+kX+C6J/XY2e3C5uX9/icTg02x6cYCY5c9hc666ZpLY3xnMzUVmf4K6f5hvgLmg67w6WbOe
	puxz8axThg/79vfloxFsysqQ0zyENl5AbWzk4X35fu2Z0Hf4lpmpXfVmG+9pBLkv56achQ3bIT9
	f3utbgEb/3UuNrA==
X-Google-Smtp-Source: AGHT+IF9i+qy4bQxvdAhaulCC58fLAGLSGbyOONZRqFPtLgJ+j16vp+WVixcc2FWtwJrg/V/6FPSZA==
X-Received: by 2002:a17:907:9712:b0:ac2:7f28:684e with SMTP id a640c23a62f3a-acb74ad7dcemr235285266b.6.1744982042862;
        Fri, 18 Apr 2025 06:14:02 -0700 (PDT)
Received: from [100.64.0.4] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acb6ef41605sm115901966b.124.2025.04.18.06.14.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Apr 2025 06:14:01 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 18 Apr 2025 15:13:45 +0200
Subject: [PATCH v2 4/5] ASoC: qcom: sm8250: Add Fairphone 5 soundcard
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250418-fp5-dp-sound-v2-4-05d65f084b05@fairphone.com>
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

Add a compatible for the QCM6490-based Fairphone 5 which can use this
machine driver.

As a note, QCM6490 RB3 board is using audioreach architecture while
Fairphone 5 uses pre-audioreach.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 sound/soc/qcom/sm8250.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/sound/soc/qcom/sm8250.c b/sound/soc/qcom/sm8250.c
index aa3b4bc3fcc7b8a8dccc75ef1309bb26a2a8105a..ec5372e18a9c9bc6a80412adcc5ec473e9730620 100644
--- a/sound/soc/qcom/sm8250.c
+++ b/sound/soc/qcom/sm8250.c
@@ -211,6 +211,7 @@ static int sm8250_platform_probe(struct platform_device *pdev)
 }
 
 static const struct of_device_id snd_sm8250_dt_match[] = {
+	{ .compatible = "fairphone,fp5-sndcard", .data = "qcm6490" },
 	{ .compatible = "qcom,qrb4210-rb2-sndcard", .data = "sm8250" },
 	{ .compatible = "qcom,qrb5165-rb5-sndcard", .data = "sm8250" },
 	{ .compatible = "qcom,sm8250-sndcard", .data = "sm8250" },

-- 
2.49.0


