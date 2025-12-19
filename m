Return-Path: <devicetree+bounces-248300-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8169ACD0F5D
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 17:46:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A81D53075C17
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 16:41:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C16D34DB43;
	Fri, 19 Dec 2025 16:41:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="EAuzqlZv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57D9A342538
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 16:41:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766162485; cv=none; b=jUg2yPnT0LaOgEUR9g3Nbgk6Kdk3IjdK3adLP2Xsw31MYdO78N+6ybkYppqepQcXMfyYPmcPmpD7ByI6IivDo4hdXVy4UNEFKVCldsM34D8+nj8wt5o0y4ljHXbwFVsTmD0OLFfRoARcMgbPg/IN0sQqwETjX/S57+5FdMmuUQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766162485; c=relaxed/simple;
	bh=t5HFnNXhnxSLu0HbcMB5zyaLqy0cPi/BThYL9zb/2sc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=D6lc5GNvla1N1OSaLy2AuQFz9S2uAdm101RshtKfVLd5OtkW5bTqBbn6pbvMRWqeu96fC3pv+bqIzgIlFXIOEpUDoU9OjrCSQ84alKx/Sd+UgwN0HM5HPCD71g1Eg11Ekd7kd+7Yd7UcDDTUaBvgTn86i664g8B/9MIB1EkEIGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=EAuzqlZv; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-b79ea617f55so250823266b.3
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 08:41:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1766162479; x=1766767279; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mFh6b7zgZI1HsA8s8Bqqbi9ow8eV3Aoe737Rsj3OItI=;
        b=EAuzqlZvGEuA4Dns0/pGJOnoH4TOeuXnSflTgprotvvtjilsboHqjLctUdDyEI6bER
         d5/+QVzMuzMVzlM0vemey8EHzlC0GeUCD9lTvk9pKqDX0MWkOfg0rM63coyzRRRkt6BL
         xuDdYy48+oy5ZPbe/eaVQuHdgoSPA83dlETnVz1zTQV0uJQ1xIa9TOgHJh48DK6b36iv
         ZFQn9JO/QaFq4BjjQI40yTvighVrSsg+x+HVYOIudIOZHdaJzEQS5lFx2XSzaGbfop0P
         3Sbws0tEZixigMIMtjJokRogT6YH/1aSsjytJxgvMrO1Amf2Ls4EFEIrdOcAP6iohKvM
         gCXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766162479; x=1766767279;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=mFh6b7zgZI1HsA8s8Bqqbi9ow8eV3Aoe737Rsj3OItI=;
        b=T/1AcO5lGZ/zP5RGL8cg9ALPlnyt0VrLv+E7xV7lvJS6BHqQ8kd7eLBvr6E1PRt/4C
         otQ3Ap5O6u0FP8YGF8iZ9EUnNBvYwQEwufWuw+3nWF2fdosLzvDNyTKCfJhBjHKDBlUs
         LilYjd7t6J8mNmlqpdUs06g8Ej3eMhIXAmqVMdwPWCgFMSuhDR+2qN+X9HEN6wBD7iVi
         fPK2XZ0EV/s/neciyhkd/akdmRigHIVqmcojULUHJdTUdii3R+DKuRZPYJ4zfswnGblq
         HGWxHTZdLnzkBVPcvtsB/N78EvQbwE/866czhbpJWyYSYx4EWVhThyzt/h1U592lKG7b
         D5bA==
X-Forwarded-Encrypted: i=1; AJvYcCU2/ha4OVNilfpXCfT1Vqqym5xeqVfpXhSpRuy5odnX9DFN1Y2e1d9Q2nHDc+8ABHd2Ipwiyz8/cMow@vger.kernel.org
X-Gm-Message-State: AOJu0YyXX8MCmrIuezASZnwRPADDCIdjOqIyMzN3LCr9y2rzLx68PHdf
	8e4mBzWVlUwJFi0+i1ZwzH3ajjM9+MsDmjK9w0ALgJleM4WnsMZyw/coOfw7dvQbpxw=
X-Gm-Gg: AY/fxX7R6pYXSNAg4zE4z6E55yU2XXkSAm4yS1qnptVDA/NigR3voM2aayE0fl19EfO
	PUO0/mmxO70cCdU1nC2ihSWFTP+7CxF89y8I/JMkkTGa/7diLSPxbnbtfylCkghNkakRwfpwM3j
	8+6Dydob48ORddswtlqKhm0Q7Tc7CfTa7BA0uTDJdCprhJigsXcTN41jrpnN58mzlgl3U3EiiSE
	8PtcyNpPL/vTlsy0mr+f6q+7/6S7YWM9yP3g4UtRbdSeGW16+Ib0IDoqvs4q/52zBhrujXSxTOn
	TIbzDTLN1qwNEp6RVWPV1ygKLhh/S1+jk085F4ik7qj9z1WTi+AxWStgwpX0ZC9Am6+ffxxN22q
	C1WdX5hwmO/hFfcIJY8AdQC8e3KE7QW8ES/Db4T12zUT40VyrDyB/IBQ8RKdfv/mP65TZUGhCwg
	ibjj+Cel7eFwmiT+591N8mcFn4Qr5bg7VkIrTsuAZORnTaN0/dnB5ROaV8J+ICw5fWCUEFq5lec
	UgGdyUqySb8BqQg+S96gOP/lNFsNLxpqMc=
X-Google-Smtp-Source: AGHT+IG5xQQDju37djeKp8Zgcj7rgGU7z6CWHlLL/w7AfRHVUi9V/ccXZ3Gb0icbkIvDeWOUnP8NhQ==
X-Received: by 2002:a17:907:1c1d:b0:b7c:f77c:42e7 with SMTP id a640c23a62f3a-b80371d37b9mr396657766b.43.1766162479431;
        Fri, 19 Dec 2025 08:41:19 -0800 (PST)
Received: from [192.168.178.182] (2001-1c00-3b89-c600-71a4-084f-6409-1447.cable.dynamic.v6.ziggo.nl. [2001:1c00:3b89:c600:71a4:84f:6409:1447])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037f4ef1fsm270073866b.64.2025.12.19.08.41.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 08:41:19 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 19 Dec 2025 17:41:07 +0100
Subject: [PATCH RFC 1/6] soc: qcom: ubwc: Add config for Milos
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251219-milos-mdss-v1-1-4537a916bdf9@fairphone.com>
References: <20251219-milos-mdss-v1-0-4537a916bdf9@fairphone.com>
In-Reply-To: <20251219-milos-mdss-v1-0-4537a916bdf9@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Rob Clark <robin.clark@oss.qualcomm.com>, 
 Dmitry Baryshkov <lumag@kernel.org>, 
 Abhinav Kumar <abhinav.kumar@linux.dev>, 
 Jessica Zhang <jessica.zhang@oss.qualcomm.com>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
 devicetree@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1766162477; l=1527;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=t5HFnNXhnxSLu0HbcMB5zyaLqy0cPi/BThYL9zb/2sc=;
 b=EoGcG/sMLsZ+n/tQW2JV/CykTnYFk5wscZuExCSdKs6oC1UTb3wWbgCcx7IrWQcQSUcMonII5
 z2uIyuCf5hSD4AWSUC+TFtP5nwTgjA9IkL9CUto62zfEZhNtEBAZwyD
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Describe the Universal Bandwidth Compression (UBWC) configuration
for the Milos SoC.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 drivers/soc/qcom/ubwc_config.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/soc/qcom/ubwc_config.c b/drivers/soc/qcom/ubwc_config.c
index 15d373bff231..790e67c7db3e 100644
--- a/drivers/soc/qcom/ubwc_config.c
+++ b/drivers/soc/qcom/ubwc_config.c
@@ -16,6 +16,17 @@ static const struct qcom_ubwc_cfg_data no_ubwc_data = {
 	/* no UBWC, no HBB */
 };
 
+static const struct qcom_ubwc_cfg_data milos_data = {
+	.ubwc_enc_version = UBWC_4_0,
+	.ubwc_dec_version = UBWC_4_0,
+	.ubwc_swizzle = UBWC_SWIZZLE_ENABLE_LVL2 |
+			UBWC_SWIZZLE_ENABLE_LVL3,
+	.ubwc_bank_spread = true,
+	/* TODO: highest_bank_bit = 14 for LP_DDR4 */
+	.highest_bank_bit = 15,
+	.macrotile_mode = true,
+};
+
 static const struct qcom_ubwc_cfg_data msm8937_data = {
 	.ubwc_enc_version = UBWC_1_0,
 	.ubwc_dec_version = UBWC_1_0,
@@ -223,6 +234,7 @@ static const struct of_device_id qcom_ubwc_configs[] __maybe_unused = {
 	{ .compatible = "qcom,apq8026", .data = &no_ubwc_data },
 	{ .compatible = "qcom,apq8074", .data = &no_ubwc_data },
 	{ .compatible = "qcom,apq8096", .data = &msm8998_data },
+	{ .compatible = "qcom,milos", .data = &milos_data },
 	{ .compatible = "qcom,msm8226", .data = &no_ubwc_data },
 	{ .compatible = "qcom,msm8916", .data = &no_ubwc_data },
 	{ .compatible = "qcom,msm8917", .data = &no_ubwc_data },

-- 
2.52.0


