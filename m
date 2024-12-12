Return-Path: <devicetree+bounces-130053-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 799C39EDCAC
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 01:48:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D84962836E4
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 00:47:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABDC34084D;
	Thu, 12 Dec 2024 00:47:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JaR+0hBT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE5662AD21
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 00:47:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733964457; cv=none; b=q5OATxZHTccpOReHpSjk51tlJ0UYQYeS42XGGJaZLGySniRp39BDNpsA9W6R4QYGNbCkVVI3NNuNqZPj3p3JQLjjOqFwkAQc9mjIW4iedFbXLvAyIkmXpB2l9mEtSDQ2Flu6moqa19LGScENg7bZVTYMB9pAbrEZr86zNXsaWbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733964457; c=relaxed/simple;
	bh=gI7279BFVBU24wfEPp4Je1wvSfa/qbfIzJF36p2a+iQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Re4OFblvhLO6bYI6u5wCJNIq+VlTuBawgwJEfOjM9Z7b4NNa8IBURMQrvq48ZvkogE1yJndmAsvYc6UYrLHEcp75jZzsqizW2kfBRrnPhCumHpqOM7FjiXzW6ufBQw6X4ar/QeYXhr8Sl1Pdhn86Qf71OABgGsbeVHG2QnSKeKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JaR+0hBT; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4361a50e337so296035e9.0
        for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 16:47:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733964454; x=1734569254; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0mDzWrPswVqL2jIJMPNBr5jz29qiE8AhUOmE7OcegD8=;
        b=JaR+0hBTtMGmbIEsp+WxtNuDFrT8Kv9vNaNG9AwbBP6dYXDXZabiu4B5KFqzDTAgED
         /NnLUnDWHp5+dtbv067qMk9RuA3t3Ft2EljzBO846rJ+xTctrbA2hHOHpLN1vuf/pONX
         HR64ldA6sm9vI41rKCy44S6Vs31LCU5Gf177isG3XUDKny9b1eJbU8FGu0xIkc2X4Swf
         x4U69Rmj+J9cxogf/iU9mQ6P6JPpTL/JY5ICHJQcgKp5ZlCCt8SWHJKaUcQoGI9tzcpG
         8govD1HvrpuvkQ/biL2e3Qc0wrptgCLzMMZhSrGN+smg+UFXXj3hZX6P2dBNfrVAzWzY
         M2JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733964454; x=1734569254;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0mDzWrPswVqL2jIJMPNBr5jz29qiE8AhUOmE7OcegD8=;
        b=QUGpvaDXQmDHwOEm6ddr/IkeQaMHDMkhzgwiMI2y70vxz3hiVhrgq4BWoEpbIGkC03
         4HEOE4xkaR35mxBPCAmDZUA4e6NG0jhYb/En6RzyY1ZFYi7HViT+PuoSB17ybHJL8SXc
         re7I2Wkdzd04tZNaWnuA/m0P88lvVzb1LR1jMl3QaBMg05CVK0lOB9s5IBJl84O+DmIW
         5YkUEA8Gd61jyC9qPpOkR+TQhElnjiP8DxKyUBU7AEQw0KTlAXemoJ9K5KuQuxd5Eain
         EJIBg+lk9n5sqPZI+TyB1vWOt5T4kcfbjPqHcX9bI6PK3XvEDr2svHj1HdB3ZReeVf5f
         Qycw==
X-Forwarded-Encrypted: i=1; AJvYcCWL3ayacvhOeY8+dDYqJC9+GuYvbRUVTNNbKoQPG38foJpsyW2Uk+ZjqJpE5QJYoZWDkC3nJGY/UlEL@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5ZeFSuTEKDDMayv1gJ+P+1PpYpUyxaadM8598BLGvQ5OM1Zcr
	vOkMjiOtyeR7Yw+87HTPFDVVTo+oiYS6UQ1b8Z3QCxjofVdeRGJv/WFCN9jOdyQ=
X-Gm-Gg: ASbGncteCN1coj87hYADuPKUYtpR7FGxm8t4P9Jj3rS/mrEQSWuGheQ4tqUP19gbKiG
	qdHdI0iDj5CHwrTVB/+6CNXBqT9PYhN+SNVb6fwwIw7vQLe9MndeL+EA0lIRRZLnD0a+MzwCXwA
	j7v2a1pGHjCwNGsI49EwY4TlVeEGd+Qb2y9fdaeVEFAmMvRFtGEiEJshJuEfH0r5SLv5sCmSb67
	uCQ2Q74Evt0SObBt2m1pjC4rP9bvRUbl8Xiz+cM7qsbsyUgqhAPLYymwTJuo3cWHcV/f3/F
X-Google-Smtp-Source: AGHT+IE7vuVokWsKA+OSg/kSc554NchXd8bbNr3lBMdwH/A0uq3kq3gqrXVPdiGpvQAMDioUQZG3+g==
X-Received: by 2002:a5d:584a:0:b0:386:4a0c:fe17 with SMTP id ffacd0b85a97d-3864ce602femr3957618f8f.27.1733964454139;
        Wed, 11 Dec 2024 16:47:34 -0800 (PST)
Received: from localhost.localdomain ([2.222.231.247])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-387824a4ef4sm2459660f8f.39.2024.12.11.16.47.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Dec 2024 16:47:33 -0800 (PST)
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
Subject: [PATCH v2 02/14] ASoC: codecs: va-macro: add sm6115 compatible
Date: Thu, 12 Dec 2024 00:47:15 +0000
Message-ID: <20241212004727.2903846-3-alexey.klimov@linaro.org>
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

Add vamacro compatible for sm6115.

Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---
 sound/soc/codecs/lpass-va-macro.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/sound/soc/codecs/lpass-va-macro.c b/sound/soc/codecs/lpass-va-macro.c
index c781da476240..443dd4dd9b19 100644
--- a/sound/soc/codecs/lpass-va-macro.c
+++ b/sound/soc/codecs/lpass-va-macro.c
@@ -1722,6 +1722,7 @@ static const struct dev_pm_ops va_macro_pm_ops = {
 
 static const struct of_device_id va_macro_dt_match[] = {
 	{ .compatible = "qcom,sc7280-lpass-va-macro", .data = &sm8250_va_data },
+	{ .compatible = "qcom,sm6115-lpass-va-macro", .data = &sm8450_va_data },
 	{ .compatible = "qcom,sm8250-lpass-va-macro", .data = &sm8250_va_data },
 	{ .compatible = "qcom,sm8450-lpass-va-macro", .data = &sm8450_va_data },
 	{ .compatible = "qcom,sm8550-lpass-va-macro", .data = &sm8550_va_data },
-- 
2.45.2


