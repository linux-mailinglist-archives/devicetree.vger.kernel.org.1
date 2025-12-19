Return-Path: <devicetree+bounces-248303-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F01A6CD0F6E
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 17:47:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4CE8E3010ABA
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 16:41:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39FE432827D;
	Fri, 19 Dec 2025 16:41:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="ZbT3nkv1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7BF328640F
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 16:41:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766162491; cv=none; b=VyIt+POpyEoSCah6Dth5y8JTQLzpIDd5JQtIxNIUhYJTtAUs5vHaR9aD4omwQALG+PDnCcRAufgMjUWCBGccDlifILBva7zNLsjQTU9dC6gWtzMLIU2W6LK5uhhKlLzthjXY7iaN6fvP/wTLPVNDXW0RtKXnXxedpElp3HGcj/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766162491; c=relaxed/simple;
	bh=tR/wcXsSRSmMC9AuE79DxiyAbWm/TId46OBOFeIFTQM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=tLPIFv14SRHLfhjKTQojBdjZXoO9lqUgdxeeCTgmy5XnQqO8cZN/4EzxtlTaHRHLDMy/55AJx4ylhJ0eRrY0O6p1Fg9bqH2xeawFwcDv726wzk2xbZLiw8llfLNLdFLRfj64EmZiy8XmaBFRLAsSQXM89oVgnmDlf/Api0D7haE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=ZbT3nkv1; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-b7cee045187so340587066b.0
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 08:41:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1766162481; x=1766767281; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O0HzFaVjwMvZjTaaJOfxP1smFpIabOwZw0I+saghW9I=;
        b=ZbT3nkv11u2Olqq0mGExyEXwT21iJNdqLuoAgf8qVymKqesz9+tLdTWLtVcjCK9nYb
         1mLsf06DrDC/koQPQ4xV9PvLznqh7wQRJ4Qhc5DqVhxa8RTJY3MtKVX1EuKQg//A+p0D
         f21ro9MHDvIRG4CWCX6YFmeyZxw8n1vfeJhXp8//B1wkZuYDp/5nq4pyfn7WUlWCga+I
         HxbYTAWxW8wAvxK8BUvAgETJsx/HrAT1xqChq/JiFygAaXQZ/stX1yXcCX9Xr/CC6T2h
         PBiHQiJsNQVHMOa6dgNUJcHPjtGcNzAh+EAhpcd+jkGdzLH4D00MJ/v822mxl5fHlMt4
         0xYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766162481; x=1766767281;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=O0HzFaVjwMvZjTaaJOfxP1smFpIabOwZw0I+saghW9I=;
        b=NAg/n/jixhGU7jSiiY5l2xc8/8TcnKWz+JmAzBLTj20GPx5CCT6TpWYruVW0U2MYzn
         I1I0IchTyPzzS+keBHXqOxG0HPJsIhl7AtB7l+AOZbDygJhNcPmYgxjNlNFJS9bxGnsc
         g6n1qRjE+9tl2KGyGPabmlGU8AJ7uckmIDP2ePDY1mAy9gt7+V2lAJAcaAnRdMeQflrt
         KR+dm6uQlM3nW6zkzuxvkEUlIqQUWD6/id/Fq2VQXDy8HRFkzKlsqq3YmpPeHFI6ZKRm
         yzvLmjq0fJu/Bp1nxaIU0VQ9brrVDCZkPqEIER5gBFEqhm5Fml8nvQ/06+lLPsL/LnpV
         XmSQ==
X-Forwarded-Encrypted: i=1; AJvYcCUfkVTpcB2VsGDLQ3nP4bfhj/wZTo0SGAAwJmTv5Rft/MtMGOaPcjS0q3+3HQYom4zjSOI8TA7qVRlo@vger.kernel.org
X-Gm-Message-State: AOJu0YyIlvdN1UpLXcLhNzfZp/8LeazdSIMT/VBOoRDHIgD3qO+FOJvk
	6wxgqolfNedlDi9JmJTVg8dm7wOFKrnCJyITFjN8+uyIJ1WUojawx+tDRWKsAi8qTds=
X-Gm-Gg: AY/fxX42QHjAD6zRTylqA5+9If5yz2DohC28uvI6Pm/tckCUkYyYtztUkNMS9GumFMX
	aUiYPw20kxEE8pRq5ahLTO/uX8XDeeMvFN6awmHgN+z7ykBPb8WGycbLGNR7mHOr2/AG5mMbHTt
	EkDI1CPDfNcHuFSceQzCnPaFC+5T5Og5k5r8KI1cqjpd+udrfQEYnWNNqUOsd4sngI6PcUVd1PE
	+9AVBoirKIpro4MuDOqnzydbCo2NGFKZl+c8jpAuHf6ZDSKPwo9/t7pBYNF2VuzMQexVAZdWCwz
	oDD7v3VEDla24U1NTAzwYFxLqHuwgYUESUTORiARaJfaCQbLw7aUYf52nB5xuirl274bPL4rLPM
	iwaXRY5XhOyHwi2d9Pqfml4iZqYXlkotCMpJFVN0DWADp1cpJV4XLIQ3XcUwlLsjONTGd9micve
	grXhepDMe3yn2QtyqGzNM5eyNpCo/1n2ya1OXRR0m6AefJL4lRTSz1dF695KEV50h7wQGg2ujCC
	RLafYCf2ehdV9IYyBSb0SJd00RiJTzHaMk=
X-Google-Smtp-Source: AGHT+IHWxjRwTQlRafEaSyCGoH5228OD0CyKH8COwa1Vo5glIpgVUvP069JTSjZ+iajU/yCWxg/e+Q==
X-Received: by 2002:a17:907:7e9f:b0:b80:16:850b with SMTP id a640c23a62f3a-b803542da8cmr453536766b.0.1766162481221;
        Fri, 19 Dec 2025 08:41:21 -0800 (PST)
Received: from [192.168.178.182] (2001-1c00-3b89-c600-71a4-084f-6409-1447.cable.dynamic.v6.ziggo.nl. [2001:1c00:3b89:c600:71a4:84f:6409:1447])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037f4ef1fsm270073866b.64.2025.12.19.08.41.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 08:41:20 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 19 Dec 2025 17:41:09 +0100
Subject: [PATCH RFC 3/6] drm/msm: mdss: Add Milos support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251219-milos-mdss-v1-3-4537a916bdf9@fairphone.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1766162477; l=1078;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=tR/wcXsSRSmMC9AuE79DxiyAbWm/TId46OBOFeIFTQM=;
 b=C/2rJj/g80rHDRnltiMZEOcEAploGDh4/PX6r35eRIe0loQrjOFjPL/YrpppAgkRC0l/xHDie
 gbCJGLNqIaUDU0TzwF33KUnK8+cnJflwNKYcC2qUTOOC7gLTx5KaxHG
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Add support for MDSS on Milos.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 drivers/gpu/drm/msm/msm_mdss.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/msm/msm_mdss.c b/drivers/gpu/drm/msm/msm_mdss.c
index 2d0e3e784c04..aa63c079d730 100644
--- a/drivers/gpu/drm/msm/msm_mdss.c
+++ b/drivers/gpu/drm/msm/msm_mdss.c
@@ -535,6 +535,10 @@ static void mdss_remove(struct platform_device *pdev)
 	msm_mdss_destroy(mdss);
 }
 
+static const struct msm_mdss_data data_14k = {
+	.reg_bus_bw = 14000,
+};
+
 static const struct msm_mdss_data data_57k = {
 	.reg_bus_bw = 57000,
 };
@@ -553,6 +557,7 @@ static const struct msm_mdss_data data_153k6 = {
 
 static const struct of_device_id mdss_dt_match[] = {
 	{ .compatible = "qcom,mdss", .data = &data_153k6 },
+	{ .compatible = "qcom,milos-mdss", .data = &data_14k },
 	{ .compatible = "qcom,msm8998-mdss", .data = &data_76k8 },
 	{ .compatible = "qcom,qcm2290-mdss", .data = &data_76k8 },
 	{ .compatible = "qcom,sa8775p-mdss", .data = &data_74k },

-- 
2.52.0


