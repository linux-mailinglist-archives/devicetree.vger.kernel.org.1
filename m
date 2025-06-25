Return-Path: <devicetree+bounces-189380-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D8AFAE7BB7
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 11:12:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B12441BC3194
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 09:12:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CEC529A333;
	Wed, 25 Jun 2025 09:11:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="Vgh6Xkhy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 569E3285C99
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 09:11:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750842719; cv=none; b=KvZ0jSJ/1NMZ8TOpiVwmindHJSQcpt/E/LBmctkMMhlqJBDVVebl1vgkQpJeD7nyUIGF+J2Gy2xnj9GUJGdHvzY8xY8gX/17I3Fgb4b0+YgR+1n80D+lz/BsoUQySnNmSaJ4sj1gHADvASrUcw54JZzxXpxgAhocDo4x8fn5JhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750842719; c=relaxed/simple;
	bh=SWoJLZ+dAwecor+TOe4oNtuJVNwOUsyqw0DV73+mFEA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=VH2z1+pGhOhor4+hw34tqFO77sYIr98EqXJFmssF7qYldSMY5xbBw73u8RYH64gco4n0f8kMpXIi7Afzvg1okjSKJiuJDdilI/r4vAWPk4G83/uBKMYs4sRMoOC/EwSaoHlF26lpex2zPAyZ3NPQSsJxDKRmKmDt2D0nc8nBicw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=Vgh6Xkhy; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-604bff84741so2814907a12.2
        for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 02:11:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1750842716; x=1751447516; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/iBfI+QaV8mcmTB/8Ck8ODfSXbqU1EYKGiuZpV5V0BI=;
        b=Vgh6XkhyeNytGecrJ8HzqTEKXTblCaw4vGBzWpWce8dCLqrPsgXE5zNIjEXwnjkaq3
         wB0GnWNyNqabqMgsIGPHoCQIn1J0cjYjeNKfvqBj/JE55yQuDQIiP+gcLGF4OYqCygx+
         lroKBiKt4YOkDlTt67dmeWPhRd0nh3MIndWRYDduarXqrt2DdRZibPRcgkpFWbKKkS5Y
         C79L+Peia2iIK/OsujfFEsoYc9t/R2Fu6VX+o0CVz4yegyqrz+npimv1Ghqd24uoy2Si
         4Q/9csLJ7y9QD5Y72ugYKDOkdTtYkR/KjyBt85QaN+cVB4OBQfJkYPCvJjUst0wP1brD
         Nspw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750842716; x=1751447516;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/iBfI+QaV8mcmTB/8Ck8ODfSXbqU1EYKGiuZpV5V0BI=;
        b=ComxiCgzBquxoIo5bbjzv0vG8/niTVfpzxEEW9gKpv7cQid62UbPNto6n/3bYP+4M9
         0HYMg12TuGO6AUfia2uARlYD21ojEnFF+bD88UEnFD2zCu8qkaG8bgdRNNpwSF1TxwQS
         xRQY5doiUYAXO45g6CpruAJXsv+WQVOLHJbbJRY4eRyZO/cNjW9f9mTePk0Rk0IwZpUr
         aXozqFPZ6gZb6Xe8YDFBOEuULghu5HHSumb8oDm8JWVqCqPUWF6bJ6OLeoUxBbj/Dllm
         twptu+sVrSf1XooPMNzD3rFH63AtJAkZH+zjGlNr33e4NVAa6reoqY2xf65/vUWtl/cz
         lf6A==
X-Forwarded-Encrypted: i=1; AJvYcCVTr7Hq7qFDDV97j67VIuCzom2N2LyroF6MJV/y1RkGDot+Cuxn/Pw1aKLdYWGsrOhR8KMNbiodGNjz@vger.kernel.org
X-Gm-Message-State: AOJu0YzZ6N1aH30/Dctt7yDoaD6HE0XyYdCleCnl++bdWfMQ/4rEYwa8
	wpuEs6z4uRB7v4Xp8M+a7w0RihfLTX9OlTf3sS8EAh0h2P7Caq9meQpNxlvuIFBGAD4=
X-Gm-Gg: ASbGncuokrUbw5tlGmV6CWYYP4WAo4J4vO9hemEOZGfb3sXCH9IcLcwZpCb0MknYrXh
	WFPyKf3wwds3KDDnV9j//N1ewfzL3PXAxuFUEdABjIgt8MJZ0Hz6AsrQQsV4BnSK8CW36Sne5ZY
	S3dA3a9grwR4HRtd/4qiWMA0hbAOXdXuF3yXMtJB8KBXImD+FfuqoJuRsyxx0RzB3eosRF3Lcf2
	3mMjtA5yuN+y3u8mellJnjXMpCSUllN3ZWKYRGjEWCHbklU3JqrSyL2HQIugzpBvpG267YUiB47
	ffhPQF7hrrx9FQkGVZq0pny5s4na1VCgyj2AgqT1mocOujHcbnUYYWPqQRor98FuJuDduROBgmB
	7GTRqpmas7K9l7pRAHPIYrpbMVBo4g8AQ
X-Google-Smtp-Source: AGHT+IEFCyamn8Gh1klBPLOdRYVvpND5wYQyMw6FuiMzvHciZFa+7Sb1ZsqIsd/lwHhws9e7uzTwQg==
X-Received: by 2002:a17:907:9808:b0:ae0:bf55:5c48 with SMTP id a640c23a62f3a-ae0bf55634bmr214177866b.7.1750842715569;
        Wed, 25 Jun 2025 02:11:55 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae0541b39e0sm1007242866b.110.2025.06.25.02.11.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jun 2025 02:11:55 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 25 Jun 2025 11:11:46 +0200
Subject: [PATCH 3/3] soc: qcom: socinfo: Add PM7550 & PMIV0108 PMICs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250625-sm7635-socinfo-v1-3-be09d5c697b8@fairphone.com>
References: <20250625-sm7635-socinfo-v1-0-be09d5c697b8@fairphone.com>
In-Reply-To: <20250625-sm7635-socinfo-v1-0-be09d5c697b8@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 phone-devel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750842713; l=683;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=SWoJLZ+dAwecor+TOe4oNtuJVNwOUsyqw0DV73+mFEA=;
 b=I5TbBGEVucxOuhvzyfNPjWUWZgL5WTKu3QEEsQZCI+ImKP+Ag1EMBeJ38SpPt23/7lQKYB99g
 Uf9LPEj34osDuaUNgdry8B4SIsRF5jDRfVKhU8qzqO5QUtNi4p6Ar6s
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Add the PM7550 and PMIV0108 to the pmic_models array.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 drivers/soc/qcom/socinfo.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/soc/qcom/socinfo.c b/drivers/soc/qcom/socinfo.c
index 57fc2760548aaf904cd1aefc7fd7e0f7bc269632..a094566f70d00dce3ab0f21638c36ec28b973543 100644
--- a/drivers/soc/qcom/socinfo.c
+++ b/drivers/soc/qcom/socinfo.c
@@ -126,8 +126,10 @@ static const char *const pmic_models[] = {
 	[72] = "PMR735D",
 	[73] = "PM8550",
 	[74] = "PMK8550",
+	[80] = "PM7550",
 	[82] = "PMC8380",
 	[83] = "SMB2360",
+	[91] = "PMIV0108",
 };
 
 struct socinfo_params {

-- 
2.50.0


