Return-Path: <devicetree+bounces-122945-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 497BC9D2D77
	for <lists+devicetree@lfdr.de>; Tue, 19 Nov 2024 19:02:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 09708B36DC5
	for <lists+devicetree@lfdr.de>; Tue, 19 Nov 2024 17:58:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86CCD1D4350;
	Tue, 19 Nov 2024 17:56:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="svV3ij5O"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F2B21D356F
	for <devicetree@vger.kernel.org>; Tue, 19 Nov 2024 17:56:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732039013; cv=none; b=ZZrqrvhE9J6nRHW42V9/FH/pECUg9BEah8qo2YwZzemCBThznOqUkXXRdY5754wKZMGELsj0f4QJX63np0AYJwJqpfv/znhvrEVO9C/D2zUbenMEdETaSLQUxGzZU3CnJKHW+BDIcJi8E+fa9UzbgfACqtb0K6pBmh6JOJGeQfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732039013; c=relaxed/simple;
	bh=n7AjLch9953BuDVwIlWrOSl9FaavH+aib8ySJTyoxTo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RgYNQk0aTC43wwAepGqVNAV9g4n+yAZ/aCAnPPUIWWvAf1wJNuF1ilYom66Mt7narFHpdiHtQsZ2FAXFTGk8zpMfHoVEYOg6cx52nc8OGFqbix7/66eA7usQdP8ft3JWcymvHRDm/T570OReCfw1oUKBmwkfqvYDJoWCwajnGV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=svV3ij5O; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-43152b79d25so39106445e9.1
        for <devicetree@vger.kernel.org>; Tue, 19 Nov 2024 09:56:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732039009; x=1732643809; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aQgC5WDyFd5ZARts+BDdZKaBI93HBlMTdW2TWmW+138=;
        b=svV3ij5ON4I5ySd/erO7PlqIf/ivL4yGDqbVUmYYAE4Z8kmVCrI2wRmY8JD8S7NSsm
         PQse0JmxDKQTxc4DP1O1OhPIQ82bh/fNGYOQSwCIPDCVFPs1TNS4PHdmIwISqucl9KgD
         wo1S00mmnm+1X0hixxTPZbGV1IV6blUCKBoO8AXjJAavvmTCBkMNKdPq54fM+OR/J/gx
         sLpSM9GIAz9N3lPpYVzrdgvZO/RNkJZnGckq8JeseygfjdFl1nJU/EJHoIvNUR8iMZXe
         vNm2hT7b38OGBOzVDXRz9BwRYBg3rCrcECIo/B1gdsuAyKdYAeXW6BgvXbMin+SojqUT
         jYEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732039009; x=1732643809;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aQgC5WDyFd5ZARts+BDdZKaBI93HBlMTdW2TWmW+138=;
        b=m9Mcs1tqNGH6L1rrgCAV6VQ3EOkipfbBhk6zORicZw3A14qqVDwBKkaEB2T3zPSZkC
         9CiSNbSfTx5u2tA08nBxP8Q0M6I6fszk3zMCwN03CxlzRWpgG6IyGmEd1Gy/F0goRA93
         C/iYEmLKUeu1L9kc3B7COcN0HPbu0s8V8YeuqUW22NbttOR78q31/0102esE/W5UDMXb
         1lRUAwTQ4AzC6sc0ASIld6fADJ2kxwNUEkrh9JOAefD9gQFX6/To877rQ8M9+FkqM8jB
         P5sSABCP/0D/NRsq78xqfxWLQnhgpU18DwiAb9flPmkMs2FIDqIqSgRkCfoemWehzwsS
         6ZeQ==
X-Forwarded-Encrypted: i=1; AJvYcCXTLNtUiOVemnqIIEoWQna9yV/d9f8mkIYNcJOEPl4zmLAFEdagQ378pTCsej0Xl8azt23L/eh1fAds@vger.kernel.org
X-Gm-Message-State: AOJu0YzwoFFGVBxE3Dq04KV+cRx3iQLJ3o7PdzgEi4Yt6rBFUJNjFOWh
	u/kf6MVIl19MIXVOafD70p0nS1XgGpN1aMQawcBWbvn9oz+nSzrRwuZaCDtLlD0=
X-Google-Smtp-Source: AGHT+IEngRh+IxWr8NTNcl4pSwSHfVHmqMZw/rE7nd+rJm48pJkx+H7BQiX2WTMCM9X1hFGV7eEFHQ==
X-Received: by 2002:a05:600c:1ca9:b0:431:5bf2:2d4 with SMTP id 5b1f17b1804b1-432df792cfdmr141960035e9.29.1732039009494;
        Tue, 19 Nov 2024 09:56:49 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-432da27fe68sm208302275e9.24.2024.11.19.09.56.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Nov 2024 09:56:49 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Tue, 19 Nov 2024 18:56:39 +0100
Subject: [PATCH v2 04/11] drm/msm: adreno: add GMU_BW_VOTE feature flag
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241119-topic-sm8x50-gpu-bw-vote-v2-4-4deb87be2498@linaro.org>
References: <20241119-topic-sm8x50-gpu-bw-vote-v2-0-4deb87be2498@linaro.org>
In-Reply-To: <20241119-topic-sm8x50-gpu-bw-vote-v2-0-4deb87be2498@linaro.org>
To: Akhil P Oommen <quic_akhilpo@quicinc.com>, 
 Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>, 
 Stephen Boyd <sboyd@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
 Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Connor Abbott <cwabbott0@gmail.com>, linux-pm@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
 devicetree@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1306;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=n7AjLch9953BuDVwIlWrOSl9FaavH+aib8ySJTyoxTo=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnPNFYMO7EyC4T4TF/e7BGzAu0nBPzu5e8pKgbvKGl
 RBFXRhKJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZzzRWAAKCRB33NvayMhJ0fSpEA
 Cw3SShkE7iSaedv/beI78snfZ1LAHYcu9+c9tv42VvGDREihcCBoe3XopqonDAGrx1AXztqeSu5Pz+
 5wrYOc2TTfOSQO//QRHjDNpNPBO9tmrrnf3+aXTMDGlYNtcWpfvY21x7XjKdj4sc4wLzDYVZsehNec
 cdqKihmWrxbMJEQBWI7vOyDI62OVapFRm589i2jwA8etBaC62AV3fPT2qKkc+0saKe61lgjJLamTWu
 Uf6uBXvV2n9/ke2JNjgyAI13yG8Z9lumnXayLGTUU3rGmHIFYxev82ZAZpLQDtEeve7hZPQQnqz/c1
 YGdOqxcxAK+w0edPQZiqakrPS2TgBCDC2WJwsOUrqmaowXOzhjTNH89iMJksIcc90rPQtSszCK3vib
 cS4+tweYJJhV0MWolbL0JMFJvaRoPLmCAuiIWY1j8M51AQgS8tn2cgivPmavajsqQhvluHFVrAEI4f
 3I4o29J5dozRXWuvbuvyQEWQI6q05TpnAqq6WjYE0PW99ajcvEUXT+oU0+mMCbLl+P/sRYsAD3Niem
 2IRU5SkNbdoDSWwa8XwxtIJzE3G+Yk7M33gUfGvqo4CQUhEq+M4c2FCTjTv8DyzmpYg5u8xHS7Fn/y
 nlVYppeOmQ0H3paslgGx62JPgrw+73piVyUILInwYQXVyoRZuDwY7wfzdTtg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

The Adreno GMU Management Unit (GNU) can also scale the DDR Bandwidth
along the Frequency and Power Domain level, but by default we leave the
OPP core vote for the interconnect ddr path.

While scaling via the interconnect path was sufficient, newer GPUs
like the A750 requires specific vote paremeters and bandwidth to
achieve full functionality.

While the feature will require some data in a6xx_info, it's safer
to only enable tested platforms with this flag first.

Add a new feature enabling DDR Bandwidth vote via GMU.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/gpu/drm/msm/adreno/adreno_gpu.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/msm/adreno/adreno_gpu.h b/drivers/gpu/drm/msm/adreno/adreno_gpu.h
index 4702d4cfca3b58fb3cbb25cb6805f1c19be2ebcb..394b96eb6c83354ae008b15b562bedb96cd391dd 100644
--- a/drivers/gpu/drm/msm/adreno/adreno_gpu.h
+++ b/drivers/gpu/drm/msm/adreno/adreno_gpu.h
@@ -58,6 +58,7 @@ enum adreno_family {
 #define ADRENO_FEAT_HAS_HW_APRIV		BIT(0)
 #define ADRENO_FEAT_HAS_CACHED_COHERENT		BIT(1)
 #define ADRENO_FEAT_PREEMPTION			BIT(2)
+#define ADRENO_FEAT_GMU_BW_VOTE			BIT(3)
 
 /* Helper for formating the chip_id in the way that userspace tools like
  * crashdec expect.

-- 
2.34.1


