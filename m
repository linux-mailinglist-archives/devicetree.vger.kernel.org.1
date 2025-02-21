Return-Path: <devicetree+bounces-149452-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C4372A3F8B8
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 16:30:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B50A37025F1
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 15:27:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72C65217F42;
	Fri, 21 Feb 2025 15:25:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="D2sAagTB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 844BA216619
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 15:25:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740151515; cv=none; b=rPuYFJQl4gY8ow7KZ4zVwB7Be66Dv/N7AjROH0pzg0nXvi/sJgxlq5YikU9PWr6VUxtOf+d5H55vINwY4Kk/tqkxkmg/dcTy1GkZRiHTTHe8IeK8QegBw545SGJxfpRQQPn8VpJH3Ud+nCCNDTaz0P2zCq/TbnzKKss29N9yYHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740151515; c=relaxed/simple;
	bh=NJ45LgTQlJolZGsxJ8wwShr0xgq7ERrenJp2LNxaJOk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=pRcJntBsC70pmZZfJcZlnR9C61LoRlsLuFvYGDVd8zGKoC8QV3Lh3XfvA5QacXIJxQ/ZY7996z7s9P/r6z/mHcy1TSNJmyJx4REyoNSQRBFGj3dFh/d41YX3kWD7DLukZ7fBldyUD7aRYw4Tsq4kE59NH4f0BeE5sVOa7WcrTfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=D2sAagTB; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-abb7d5a6577so27074666b.2
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 07:25:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740151512; x=1740756312; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uETEnzxXsrcxJw343miABNyaWXgTTRBWJcaHZGLuMIQ=;
        b=D2sAagTB+/DxqnYC5UDKN0gqug4Qf2c82Cg2z1DvcT7/XuHZgR7/oJKVIg/6hcviUF
         Eq+pUfTIEh4/SM8Ga0tl4OtO9P2ZEEN8VTJtuVnGXMAU+qrhwqvtUWZ/Lj8QH5DYomGb
         Cor9S8vSjnyflowh8z7cyDGX+YQgawEeFsD8AO7OSQwtr8SBKaH550T4XZbl5RzhW51q
         zpf6bYuzvR+CNCTtPTuRYSwlonF1ChXSc1rh7SAkrPlkMicklqQfVzISyNw9OEoCHJNz
         4Gf7etNI+P5Xrdf2AdGxGvOUwcwM3GHZ1HbapjwcoV5l38TySkPieFF3RnylkyeiPgWl
         gVtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740151512; x=1740756312;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uETEnzxXsrcxJw343miABNyaWXgTTRBWJcaHZGLuMIQ=;
        b=sCznSO0py+6YGjWyJ0qPRF9x4IUZckV/Io1rvNoGvzbnodsI6ZcMLBWxUd3fMWMGPN
         Dq8zBelNOCsqsbVZHD/i6bdhC37JYjx1v0pD2fgqFaOXqD8Y5TvxvDfnJUjhp/KzqXki
         4XcW0gUXId7DWPaXZyDdEyuz3ndfXlMUTKHcsdF06jPLI+6GkDQ/a5G7geGwIDJ+rD9o
         e4nKelS6U29YAzcqfCUzJbeMrPcYd3p5RJvEipDJbkonUDkBAe+EVVkv8ETxjnUO799n
         +XC8KuFemVIKJgVDnX4Nd2ZXiqVlRvKcWsU7Eu7o2rN/dImK3xQMQuIO9r7gTW8qmXz1
         AVNA==
X-Forwarded-Encrypted: i=1; AJvYcCUoD/4ZdLvdb64wTk+nN1qHlb32GW132O4FlR0rEnrAU3uI5NkG9H93P78vSPVelYb1g93rtBi3+l9C@vger.kernel.org
X-Gm-Message-State: AOJu0YySsorGm736Rg39h+QLgXaay7d1sNR+sZzDpYIum6CIRknW3D4h
	CYZmdX52ozTvg0PB+icYZCNyBcCHKDgyD7ba79cn45RtZ9dhRHNFeARvFi8tay4=
X-Gm-Gg: ASbGnctGrXTCEP8L0RHjtfBmTprNRmhszLBArGccolVx0f3P5nhC8i+02VHke/zi27k
	JX8lrVzAOf7lNW+bBpI5YysJKhEQZvtNkEj8RkoXFnYsjCJqsGMdSa15wUdwKzTdJCyLbd1Ihlx
	VT76np6X//TLOWZ9TGnhxz9JS/nZTg4eMPe41u7E0mU9IhGZkeCLKeMzKXVNsOhqyHaP+5FPI/m
	ChcIuEglJepJ0vrYKYNlCmyniVDztGb7xfiDQmsjE0ZWGxl3szWdZdg3jIh/eVxYgBP6xuPiVt1
	775HCqEBewA73SDsRI/GrrGzGZ91Lj4QgqXlK1u+LZ0tfNVXmRuy/shyOuLs0+8HQbESukrh+1C
	q
X-Google-Smtp-Source: AGHT+IH4qsBfcQ7xDFrHTtbwLWgEqC44pOLn8YYlo8rp3jDA5EwfNRoEqrdJZ5UAhQ9qdC2UwE14hQ==
X-Received: by 2002:a17:907:2d20:b0:ab7:bb4b:aa49 with SMTP id a640c23a62f3a-abc09a0bf7fmr159539766b.5.1740151511708;
        Fri, 21 Feb 2025 07:25:11 -0800 (PST)
Received: from [127.0.1.1] (78-11-220-99.static.ip.netia.com.pl. [78.11.220.99])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abbaa56026fsm865456666b.113.2025.02.21.07.25.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Feb 2025 07:25:11 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 21 Feb 2025 16:24:21 +0100
Subject: [PATCH v3 11/21] drm/msm/dpu: Clear CTL_FETCH_PIPE_ACTIVE before
 blend setup
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250221-b4-sm8750-display-v3-11-3ea95b1630ea@linaro.org>
References: <20250221-b4-sm8750-display-v3-0-3ea95b1630ea@linaro.org>
In-Reply-To: <20250221-b4-sm8750-display-v3-0-3ea95b1630ea@linaro.org>
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Krishna Manikandan <quic_mkrishn@quicinc.com>, 
 Jonathan Marek <jonathan@marek.ca>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Srini Kandagatla <srinivas.kandagatla@linaro.org>, 
 Rob Clark <robdclark@chromium.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1096;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=NJ45LgTQlJolZGsxJ8wwShr0xgq7ERrenJp2LNxaJOk=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBnuJq1wq+sYpAfoG/91kYlqKkVWKgKfdeCiyeml
 U2xRmgpmwCJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ7iatQAKCRDBN2bmhouD
 13daD/9FxXVjsQ4sx3at3aoeugF5KncoxC4kdwXt7iZz0vVgikqQmmT2o7fKhuiUp58xlvwJPKd
 OXzHkaaSFAriAt9bUjBuLbS4kqcY7CzD6Urq6LhSBM5XSYHo+9aIiPsGs5D9nhRAwJvYqrzbcQo
 G/Wqj0kmKQKKrUVSYui/43d8xF9IdIK3TbP4NAGbpguzD4q6EGp6C1cyErOPA79RUYxwdBI9iHb
 eCmpo8a9BqhGdYSOwkIZdXYoQ0Rj358UFgQbdIA0juFM5VlveKmAh6Q0K1yloymrAB+7/Kr5/SY
 VP+sI/IMKXollYlz1LRvVUWjrUC/T1xQIVcvY8LXCXpc6/jqb3WmoWDrjhTTfsY0cWgBTVOfwih
 VYg9SJB0xkPs/3xEVPjWzUvPl0yilAy92+2gv6qEY8vEj65pUHvDX/8KbWEau0GRpFH67COjpWB
 NonpnVCJyz++tyaKmeXrAdnxzp44jgvqCZDX9U+xqk5Rtm1F3nhWCityY/ukOGWDg0NbES2iC7d
 gz1vN186niRKeN4tD3kZPMrXdxFaeCer+Dm07Xeuz6LMKk6ZOc91azPPZvcU+Eog7khK8zIYKhz
 V0ihmfOzeT3/0JRGTD4+ZtYkXHhIUAe1K34SPjlk2ygPq7ksS/897vcbLH+sQWEljWDv0YBPH7a
 +6yzFQf/3wbpHNw==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Before blend setup, all existing blend stages are cleared, so shall be
active fetch pipes.

Fixes: b3652e87c03c ("drm/msm/disp/dpu1: add support to program fetch active in ctl path")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes in v3:
1. New patch, split from previous big DPU v12.0.
---
 drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c
index 4e630d3ac7effca2c2d4ff8801465c7a8d3ef136..b9fe3a7343d54f6f8b5aad7982928d5fc728bd61 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c
@@ -519,6 +519,8 @@ static void _dpu_crtc_blend_setup(struct drm_crtc *crtc)
 		if (mixer[i].lm_ctl->ops.clear_all_blendstages)
 			mixer[i].lm_ctl->ops.clear_all_blendstages(
 					mixer[i].lm_ctl);
+		if (mixer[i].lm_ctl->ops.set_active_fetch_pipes)
+			mixer[i].lm_ctl->ops.set_active_fetch_pipes(mixer[i].lm_ctl, NULL);
 	}
 
 	/* initialize stage cfg */

-- 
2.43.0


