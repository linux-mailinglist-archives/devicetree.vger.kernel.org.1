Return-Path: <devicetree+bounces-189403-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EC3B0AE7C48
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 11:19:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 47C851885EB1
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 09:19:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 443DB2DA751;
	Wed, 25 Jun 2025 09:13:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="eA7ge5S4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 102A029A323
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 09:13:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750842819; cv=none; b=X7CUA6cekj+LQHLricKotWLmhtFaPSwnKBl7V8MSNdr3FUfCS5UcprDvuy/xVdYBg/r4pTlXaXsUNmrUWw/OaRWhjSGwyCBB/ruvZpRqeeDVRDJxet97OYFVZvnyV6MAwNAvBjGQq6/9Q7JqIp1H3hF3R/cqOqaX3mDxLxivtXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750842819; c=relaxed/simple;
	bh=9nfrU5ijXkLs3ISq6JmH8/jsRdoXO3aCH4+beJtQ9Jo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=fxGBf3crGBC1+Pe3nQ7AiCDiUD/ByxUBjUrziWPIfrrBqajusUbkvFEai08xSzMROAQBqVfAj1rqVE+EnSAYfd9e19BGo2HqJX8pfcOfisSHfznP6BSbiQbQ4dPdrzECc3A1V/5JulPY056AZG0mIeUBvPhImEqOS4g2P891XxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=eA7ge5S4; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-6070293103cso11557664a12.0
        for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 02:13:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1750842815; x=1751447615; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FMZlZn1FzWmvG3BoKQGh9OFPo1eSirohwNwNt3ELPYQ=;
        b=eA7ge5S4JRP2/uJmdJEMhOIkZUly0Zmgyc1A3SPrgm7stLOIffj+Q+mWP7P4A9BBSj
         EFGv/jS6AVxD1ALdRNRtwFmXZcJ3/w1T1wUUH0mzwS8c3g2WhXKHBjy8v3t88hd8MB1Q
         VdZFmRgd6AwvctTkv53dL3KF5zI/EAitOGL4Im6eOeWKm3tYZ052i2c0PXRJmhlXhobj
         kB3XAWAk6iwn5Dgmdwu844OBKRsI74RdC026q9Y0SdEB8QwsW1HDjAwNs5m9kZPg7GgM
         S8CeTzYg3y9dXAiPQk07I0knw1YRfly0P5mHoPLqgTiTRlCbPxv7D+aXTZRyN+FHpDWH
         VPCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750842815; x=1751447615;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FMZlZn1FzWmvG3BoKQGh9OFPo1eSirohwNwNt3ELPYQ=;
        b=ehm//qIENjl5dFjvXRWSDYcdW06BcPlghgM0nPi1XbI0iKa1V98EEwHpFkqtCfYRM2
         +/h/PP3xkO6dBkvA+MuciEn9Zv5Q7EWdRQsEfEMrgCNooIxAkM46aPYv65aOtcg7WwDl
         UvJ9VUdW0LeufzqBnvuZJcJ0HKCoxUjaID33C8BYFiDDhcLg1RzTLWliPbuXB23Y9GeT
         EPGKRFtfOMZi4uNKTiZyOSN7bGPug8dHZKImwSxTMaxiJo+V/Qa0LgZH7r3iIY01TfyZ
         PuyNDf1tv/rvu7muxU+j1FkqNJ4Pp3KMmVrYcoozqK18p0C2TJ5GURD2dR8oLYWaA4jA
         4/bQ==
X-Forwarded-Encrypted: i=1; AJvYcCWgi2G0rsfpOajopEvhDL+IyBjCTjCOIV+0H03ooYriRIjgRF+6Br/bdhlNZ1MyWMzbDUtbdC+dUHXG@vger.kernel.org
X-Gm-Message-State: AOJu0YzlCZELYLiD8767scpHraOEyCCBePxPkoRpl8SDRDLMpWptD412
	RPloqDktxLZ/HuP4dGyrjje7BLsa501QaqdwRWQSDmQYqYubPREDjRw/uE8lPG5bWms=
X-Gm-Gg: ASbGncseVRv8dFaWeYUdGA8VhDWLtNk9mBVLN8aQsTLH8xPHkIC3f+k0SMWvQ/J0x9p
	pBZ+dlzrnS7UFFrEybH9lOvRQ9ChJg4FR+0QVduNPL/A7zSpze12ntss5L/xNI8CTThgoGmgX0x
	9WxULElT/5BzUGBOi82bgOLed8MLIE2S3l/ipv4XpUBM54tFDS/qg/OLI0wLHFQat0FaA9WiOke
	fkYW3vRH1l0udh928Pc1Ht0Tpcn0D8hn7ii+vCito36AlPtorq8KI0/Y11v+p1ixjzSCTIxoBu3
	8O8CSYuk1pritgm+kJUM1WolNA6uVlwhqq2py3Np1YD5+gIMOGQc4jxYCSXWQPpMVCkhWaQ+isa
	aI+b8G1CHBToxGAI+p7S6ZbDZkHNo/W/W
X-Google-Smtp-Source: AGHT+IHR1URjo8kysJSi6uPXEzBhsvfZoEJcjoRVk7llj5UViGsHOgTyjXQnr8py7j8eqC46rqIeDA==
X-Received: by 2002:a17:907:7ba2:b0:ad8:a41a:3cd2 with SMTP id a640c23a62f3a-ae0be8601a5mr251120666b.16.1750842815320;
        Wed, 25 Jun 2025 02:13:35 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae0541b719fsm1002786366b.128.2025.06.25.02.13.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jun 2025 02:13:34 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 25 Jun 2025 11:13:24 +0200
Subject: [PATCH 2/2] pmdomain: qcom: rpmhpd: Add SM7635 power domains
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250625-sm7635-rpmhpd-v1-2-92d3cb32dd7e@fairphone.com>
References: <20250625-sm7635-rpmhpd-v1-0-92d3cb32dd7e@fairphone.com>
In-Reply-To: <20250625-sm7635-rpmhpd-v1-0-92d3cb32dd7e@fairphone.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Ulf Hansson <ulf.hansson@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750842813; l=1696;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=9nfrU5ijXkLs3ISq6JmH8/jsRdoXO3aCH4+beJtQ9Jo=;
 b=u2IIEsL/Lq+rFYqYNgYUPLYZBe9VGsPrucUzo4X8uUASFhFjqXoJ0tEda7goamJCvjMP1HbpI
 TCC5bg3HHe1CwjBNKAJ5CFVJWveJ23h+idmV9LvlI8RPuz/mcfSfIw9
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Add the power domains exposed by RPMH in the Qualcomm SM7635 platform.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 drivers/pmdomain/qcom/rpmhpd.c | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/drivers/pmdomain/qcom/rpmhpd.c b/drivers/pmdomain/qcom/rpmhpd.c
index 078323b85b5648e33dd89e08cf31bdc5ab76d553..1a747b6a604c5c66e75abce10b337874e15df030 100644
--- a/drivers/pmdomain/qcom/rpmhpd.c
+++ b/drivers/pmdomain/qcom/rpmhpd.c
@@ -407,6 +407,24 @@ static const struct rpmhpd_desc sm7150_desc = {
 	.num_pds = ARRAY_SIZE(sm7150_rpmhpds),
 };
 
+/* SM7635 RPMH powerdomains */
+static struct rpmhpd *sm7635_rpmhpds[] = {
+	[RPMHPD_CX] = &cx,
+	[RPMHPD_CX_AO] = &cx_ao,
+	[RPMHPD_EBI] = &ebi,
+	[RPMHPD_GFX] = &gfx,
+	[RPMHPD_LCX] = &lcx,
+	[RPMHPD_LMX] = &lmx,
+	[RPMHPD_MSS] = &mss,
+	[RPMHPD_MX] = &mx,
+	[RPMHPD_MX_AO] = &mx_ao,
+};
+
+static const struct rpmhpd_desc sm7635_desc = {
+	.rpmhpds = sm7635_rpmhpds,
+	.num_pds = ARRAY_SIZE(sm7635_rpmhpds),
+};
+
 /* SM8150 RPMH powerdomains */
 static struct rpmhpd *sm8150_rpmhpds[] = {
 	[SM8150_CX] = &cx_w_mx_parent,
@@ -742,6 +760,7 @@ static const struct of_device_id rpmhpd_match_table[] = {
 	{ .compatible = "qcom,sm4450-rpmhpd", .data = &sm4450_desc },
 	{ .compatible = "qcom,sm6350-rpmhpd", .data = &sm6350_desc },
 	{ .compatible = "qcom,sm7150-rpmhpd", .data = &sm7150_desc },
+	{ .compatible = "qcom,sm7635-rpmhpd", .data = &sm7635_desc },
 	{ .compatible = "qcom,sm8150-rpmhpd", .data = &sm8150_desc },
 	{ .compatible = "qcom,sm8250-rpmhpd", .data = &sm8250_desc },
 	{ .compatible = "qcom,sm8350-rpmhpd", .data = &sm8350_desc },

-- 
2.50.0


