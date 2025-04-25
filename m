Return-Path: <devicetree+bounces-170701-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E4F4A9C071
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 10:08:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DB6D37A17E1
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 08:07:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28301236451;
	Fri, 25 Apr 2025 08:07:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="cnlLabIh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE843233712
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 08:07:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745568461; cv=none; b=VUx/Sq9l/qLcrIwao3359iuMRHZJOr9H0eujFoU0BLlmqO3HoeKtNyOCzSgKZ9zROyrpAIdGI4c2JL8cQgGX9Qmt8XwumgBXuCkl3rFsY1pSDAGrUFA9H81bBI9FslZL+aF/oA9KCQn+ez1pjqc+ZOwxN8FzpgMuqNjYH5C9DHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745568461; c=relaxed/simple;
	bh=b8O4l3RSvg0fy+NWpm7X0oPQjhPePwQH1mA0z4k72Qw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Mlz+RzUqF9Q+GlQyf5QRGDv2z7+cxO7ubmRpQBywzLBBWCFlujM+gnYSWVWKW3+QxUrz3LnF7no5qFsW3OkzkEaPizXzkXsglHwr7HORs3LweQuOL5GeNiyn2mPB6KYLqy4GKi16bm494eFCqfuxT9/VvjQDVMgHH0qOTPXVQP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=cnlLabIh; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-43cf848528aso13496465e9.2
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 01:07:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1745568456; x=1746173256; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WC8RFGmD1RHEB436RAA/xlbqbziPuzDw03yfjSeC4YY=;
        b=cnlLabIh5/IN79utqTu4xLOQGjhG1zVzD5iUunpEnChrCkS54opeJ5MNLkc3XVogUZ
         wolNa2kY1IrJlamFaKgMY8/+liPY4lE0njbAqTbydpBx+YcGqEYAYRr4ov4sQAe5uy/J
         A1egddJMEov0RBiuCVZlsrKv3sqWU58bQIK7VA3j9ydRcifxZcnR1gUX13iR+L5j1zOG
         0VWkA1fG04JwsK8djGuOODcPqHVPmVtJ9oJR7a0oAWlatplvwIF4ACCJBcFLIOqL3rnC
         wQ1NlA/rc/0LOjxRZvMX2muPab6xyE+5P9cjOVdSY5R2lLcvmUdd7VKTv495A9vLVNak
         J68w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745568456; x=1746173256;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WC8RFGmD1RHEB436RAA/xlbqbziPuzDw03yfjSeC4YY=;
        b=bIHoHfz+V5RSRnz3BdyDNa7Lc1ZOCluRDiMkTDIkJofAoHgACKir227KVx20qTYiBc
         wduJ2hHxN1m4YAhsXGF65obos5PBSnkL1AYBoGRw/+TWlgwUEvnMq3RZXV13Imuq5blK
         A033kuU4yL3B/6pVFno69j/ILnyemhyPLaiP6k41u+qtWKtLhRh4hdjbYdU32JkQh04j
         Vxes2PtU58skAn5jpOG/IZ6KTnFgQhIHkmFqOZg1gybthhyvWFrKUDbCAw0UFQm7GG8r
         JH1blf4KrCPJhxl9CaKWsFXnx+B8nGDW9s0Jjfo3kfy20ow6du1dMsI3iBDw9kRGbyFX
         diOQ==
X-Forwarded-Encrypted: i=1; AJvYcCWOShWnHdTPs0D6x0RsKnREZHmnQeqZlCoFJatNvxZl6N87AlwouYCG2Il3qmzpwl77j19liG05NVpd@vger.kernel.org
X-Gm-Message-State: AOJu0YzSJmPBSlwhEeyCSMwKNwbRJ51c6uCrPzIG0BTnrB4tWm2Jk9FW
	egcJAqYn80jUvPNjD5zOdi5jUUsKute+RcM/quER36kafLjuTNb8w+cdedil+Dk=
X-Gm-Gg: ASbGncur3/bhML3AxQr/ipTegw77jSDGuWMCzMZ4EE2ZOlX8ufog9dvbP7X9J4jG95d
	TUunnfv7fez2R6HKa3Ee6+rlgcpzEDgJzcLsdLlnqt5h642gdpwuLuFbKBGs9RcDGcxvR0OAFXW
	qixFmBVkDA7sOSXTLNoRZSVdgv5QZEeKxov/JibiN2WjBWv4jATbDY9oazw5VZGIal4BxvUsZEW
	kJ61QTqTBV9e96/dPHSqb3pne6gkiDKmYn3Svqs4vne7D/1s8aj2jsuSzpc2FLYBlSbwRW6LMlH
	dFnLwOrGcI6VSdVY0+EhGPaviz+ZjMKHTee/G+L2h+I0RClELHAMM4YtDrou02FZM4KfF5XoZZl
	iI9E02xJqdYSz3OiYiRRCqaVvp0cdiS7GJFkjxQZaZdJ8l/YDz+S9dWM4
X-Google-Smtp-Source: AGHT+IHnGU5E9kdTmOEv3J8nz+wIEIG5a+AbZeoA5daYiMBxcw7FiKXP7Z+blV7YWaSaCVLY5aXfcg==
X-Received: by 2002:a05:600c:4e88:b0:43d:fa:1f9a with SMTP id 5b1f17b1804b1-440a66ab7femr10627065e9.30.1745568456199;
        Fri, 25 Apr 2025 01:07:36 -0700 (PDT)
Received: from [100.64.0.4] (2a02-8388-6584-6400-d322-7350-96d2-429d.cable.dynamic.v6.surfer.at. [2a02:8388:6584:6400:d322:7350:96d2:429d])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a073e461casm1593513f8f.74.2025.04.25.01.07.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 01:07:35 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 25 Apr 2025 10:07:28 +0200
Subject: [PATCH v3 4/5] ASoC: qcom: sm8250: Add Fairphone 5 soundcard
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250425-fp5-dp-sound-v3-4-7cb45180091b@fairphone.com>
References: <20250425-fp5-dp-sound-v3-0-7cb45180091b@fairphone.com>
In-Reply-To: <20250425-fp5-dp-sound-v3-0-7cb45180091b@fairphone.com>
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
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2

Add a compatible for the QCM6490-based Fairphone 5 which can use this
machine driver.

As a note, QCM6490 RB3 board is using audioreach architecture while
Fairphone 5 uses pre-audioreach.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 sound/soc/qcom/sm8250.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/sound/soc/qcom/sm8250.c b/sound/soc/qcom/sm8250.c
index a4bf6eff811ea3e2b005071cf3410e5a0410f5d8..43c93e24d77259f232062c7e4182a39151111c59 100644
--- a/sound/soc/qcom/sm8250.c
+++ b/sound/soc/qcom/sm8250.c
@@ -208,6 +208,7 @@ static int sm8250_platform_probe(struct platform_device *pdev)
 }
 
 static const struct of_device_id snd_sm8250_dt_match[] = {
+	{ .compatible = "fairphone,fp5-sndcard", .data = "qcm6490" },
 	{ .compatible = "qcom,qrb4210-rb2-sndcard", .data = "sm8250" },
 	{ .compatible = "qcom,qrb5165-rb5-sndcard", .data = "sm8250" },
 	{ .compatible = "qcom,sm8250-sndcard", .data = "sm8250" },

-- 
2.49.0


