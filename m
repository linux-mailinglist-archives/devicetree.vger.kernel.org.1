Return-Path: <devicetree+bounces-150794-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BAD5A4391A
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 10:17:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E56E718878F4
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 09:12:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CDCE269CE0;
	Tue, 25 Feb 2025 09:05:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="H4Joi3Xe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C428D262D03
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740474355; cv=none; b=TjgVWWYaWYGMHIyA2wA5oUGejf4dppilXG6tSE8IJAKhU2jOyutSB+lxxkThddkkVvLsirDTq9qA9zPhFZyfUYQrSs1x4kLMyY5o23j3YyKW+Op7JAkfT6Yks3cTgphN8xlLGkaGPPPQ2njPbehHdSldFSZebb68aAtA0SS8qsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740474355; c=relaxed/simple;
	bh=6hubkaofZnp2cNd0Rhz1Eeg6I+8WlSTKZLkOz9iuFt0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=h2erd8jIu850MeQeZAbqHN4Kasv/kZs7NIT9VmLxxA9MFgeUVIrN86X5/gW+WX+iLQnEzeUSfe4hzSF8/kT29AswHb3Vt1FsSXYlHIFLP/HJF8550oXoGE3y9QgyOoQSPK2Sjf3+s4vkIv2Lz/P9iHQ/fEu2maHgoXnBFjLCIQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=H4Joi3Xe; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-5dfb26020dbso905332a12.3
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 01:05:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740474352; x=1741079152; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=06mNrTcXCt7RZqY/vp9hneEG+/6i/TGPCj+Z/hxHYlA=;
        b=H4Joi3XeBkOxEok8md9mK7FjSUBEeRHNCBzlY7aqub6tOmrr3IXvkqZCqGIBmauhNc
         bgGVlj/bmd7SX0UcJV2d4myCC5Qhgp36VA+UK9kWY4FnhJIpbluKO/ln7REEYrqti0zV
         M2a95iPxTt2YPjZTMtj3gDwXp3DX8LHJlFo0Q3/rbKM4/qcNAe1Ir+Tc4EvfwFXCVje7
         QVaQrzqIUp8q8Pw+0blbjnkQgVhq0eXXL6XGUjmkfQOIv2fGbbvekprhwv1RGZmYqk9f
         6c2lA9JwJBxij0ZrhTgPXsVogyr5/OaUeBsPQ/N/npjadPXI4JrENlkp/z/Xr2hp6Mxw
         MMmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740474352; x=1741079152;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=06mNrTcXCt7RZqY/vp9hneEG+/6i/TGPCj+Z/hxHYlA=;
        b=Kz8SXbGK0S0NQeAGK5PSZhAXDmYOpPCmWzJXOYhrsbMz2nK2qWUqCVWcwm69a6Rz+Y
         apCDab1NASZcNfFJjWgRez5QlnOjPCf0upG6O+cg1xV8gFpjakKs+fp9dNs59AjAK8Ql
         Ml3uMBmDuNfN6j7lDS48qaLLVf2vxioOvghiBYIfH/qvZGu3433MSNxLBVKGkeVuPlWW
         zvYaqNreiXmwOSG4CuwemMeKO3q1SdEmrLQH2lYePjLHGphSeEKa+M6g2upd9tPOvgWc
         fe0ExWoWSH1rVmIqre50c2lXSoecacsqRn0AJjCoZPyqgOX+C48xAq7T97TgJrpU0sFJ
         03Vg==
X-Forwarded-Encrypted: i=1; AJvYcCUe5vfWcjxjvxyqSo7A9uDp3epLhDDAMD6hbpzMyPQ3P2pCLZqI9JthqKaumUIN5CoKxMzeKPodxGtC@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9mUhF1UZ8D+uEOQUsDogmGeW1UCQQZiC08ckg1OgUHwDHU7Mu
	623O69QASHPvx+JzBzKsz+E7AaMdwdGjo+G3F30+0CsZb4iPoK2TOMCtTf6Si/4=
X-Gm-Gg: ASbGnctv9YB0L+en9VxcRxt9MiXCn0B0WmsVTsWXYJFdfsZ1x4S7Q2hNKngpU+61/Bd
	OU8L2BmYEQG6I5HHLkLZN2mAFLgvSpJY6bnonc0MQJIRMiQzq5gfybtn/LMbWxbSJjpR6drM6Tv
	qDFmIdWnRnX+VEbBpJFlMI2eYhhPY9PLyCDTwNGeCvJYSVCeEWhRlZXGT32giipBGyfAL+wMjht
	K0VkmkOOD/ZZeyBhe3oYzrPdSmcLPRT+E/p2Rx/nUREtFOQaEsTm/SvC6UNn1vopCH89oefBXVq
	xQW3U3R0KmbdwGglmlLMOPKDDpDfOnac6VbOVNeyOeRKfWBMZaRXG2YhgVFgevMTqLWDskizw74
	5
X-Google-Smtp-Source: AGHT+IEDtxGszf6g/Wz9H8n07kdbiLAguC+HTfb+C9KwF25d/EzVT9csBJyf0u8/TD2ag29O9+6D5Q==
X-Received: by 2002:a17:907:2ce3:b0:ab7:cb76:1b0f with SMTP id a640c23a62f3a-abc09c13ac8mr618915866b.12.1740474351979;
        Tue, 25 Feb 2025 01:05:51 -0800 (PST)
Received: from [127.0.1.1] (78-11-220-99.static.ip.netia.com.pl. [78.11.220.99])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abed2054d58sm106681566b.148.2025.02.25.01.05.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2025 01:05:51 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Tue, 25 Feb 2025 10:05:36 +0100
Subject: [PATCH 5/5] wifi: ath11k: Deprecate
 qcom,ath11k-calibration-variant properties
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250225-b-wifi-qcom-calibration-variant-v1-5-3b2aa3f89c53@linaro.org>
References: <20250225-b-wifi-qcom-calibration-variant-v1-0-3b2aa3f89c53@linaro.org>
In-Reply-To: <20250225-b-wifi-qcom-calibration-variant-v1-0-3b2aa3f89c53@linaro.org>
To: Johannes Berg <johannes@sipsolutions.net>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jeff Johnson <jjohnson@kernel.org>
Cc: linux-wireless@vger.kernel.org, devicetree@vger.kernel.org, 
 ath10k@lists.infradead.org, linux-kernel@vger.kernel.org, 
 ath11k@lists.infradead.org, ath12k@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1001;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=6hubkaofZnp2cNd0Rhz1Eeg6I+8WlSTKZLkOz9iuFt0=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBnvYfkV8bTTIfHJhKZH87D8t+BgcreXLJCy72sZ
 kr5biFJ0H+JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ72H5AAKCRDBN2bmhouD
 131xD/sHjN99Ymfgrof7h6Xr6tnzgJnCZgaEhjGTTNv3i80kqqMuWrb08dI1DUXY22yHravlpaC
 ZUCtjjHxy439Kos2aTAQFFLQlcjAS5Q5vyMm1C9yBba+euWva3DciwUtfp9zpCUF3din7QQDrTw
 hgqBZU9BGee9SB6ZtEAgjBbJK3ue3/zS3sBIauPN1SAnVUFW5dJvQ8lMoHYXoSVLjzyzwO1R5qU
 8858f3uRrjAfQ0oKz07UPp00NnYA6VW/UnYJkL49kKLyezNTaE/BknhTCcJ3Fphl+dGxAxtYhmD
 fkVk1cfLYOIHpAwByhlwV4GF2CM4//LpLbIFkXwYgOfWWcWWrF0qZOtg83QgTwlprop/6MU33E+
 4gm42ueJZB53b8fxQwGrKsVs3UQuB/tn9V2ob5NxCZVzT9YW7QUwNR0KPz0iBalpSKT6HnqHlPt
 tYo174NQtWATN6pPGOtdfzq+mmrSQURPu9kLUpf4TqL2w9qgUxDItvNwDozEm92nNDEKKM5KmEL
 6yqQ6r46sz8w/PLQKov5hhd0t6CqL4kOQPDZlh2LroRVS4ymjXPpJgF2Yk69RL1O13q4k7ONrnT
 1JkELXUU8ds388D2EdpyLq5ddBmUjV8L4/wRtqqn1pAt9qQJglSaO6SmFxTFBfo/1VYcmu74vI2
 vGjcKg39xJpbpmw==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Add support for calibration-like properties without 'ath11k' prefix,
while still keeping everything backwards compatible.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 drivers/net/wireless/ath/ath11k/core.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/net/wireless/ath/ath11k/core.c b/drivers/net/wireless/ath/ath11k/core.c
index 65bba0ae69a9a8e869e72b7e6d915577c8fb27d1..3d39ff85ba94ad7229764045e7e6dcab99dd51d5 100644
--- a/drivers/net/wireless/ath/ath11k/core.c
+++ b/drivers/net/wireless/ath/ath11k/core.c
@@ -1175,8 +1175,11 @@ int ath11k_core_check_dt(struct ath11k_base *ab)
 	if (!node)
 		return -ENOENT;
 
-	of_property_read_string(node, "qcom,ath11k-calibration-variant",
+	of_property_read_string(node, "qcom,calibration-variant",
 				&variant);
+	if (!variant)
+		of_property_read_string(node, "qcom,ath11k-calibration-variant",
+					&variant);
 	if (!variant)
 		return -ENODATA;
 

-- 
2.43.0


