Return-Path: <devicetree+bounces-54152-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B999688FBDA
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 10:43:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 743D22944E3
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 09:43:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA7CF7BAE1;
	Thu, 28 Mar 2024 09:43:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="fVJnpFSV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD47E61694
	for <devicetree@vger.kernel.org>; Thu, 28 Mar 2024 09:43:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711618986; cv=none; b=MKktojhfQhxHv1C6rUblAnUWZB+Co+RZn4uXuB87CFbZR5qx1/x9rmyIxsXT4uSRWq4VIzF0bcUEv0AZ61fRXrUlR6s90X4rEVhLmVuNkh8cFPOMYW4RGmJZTh+ILij2DzpGk4er1sPpyq4MSwk2ciKsjVBLNY9BsnkzrOLUeio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711618986; c=relaxed/simple;
	bh=DOZ+RwVEHFidaYx+4BjcY1d1DFBraPgTKyKRArfhhss=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=D6d7M2X0yO0aUENl5tNqXTfx9SkVmwBOJWSw/e+oyYhmI1KY+sQo1dH9i22m5rEz4IdCLDJqye4chw5NiDBZJ/6x1dFR/qgOlOf2NPGvbYnI5rYxp/kz34BkmEDaKvQzM+FZ1yBbmWOBbGVTBeqca5WuZt92UcXVknyp74ICGLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=fVJnpFSV; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-56c36c67deaso849097a12.0
        for <devicetree@vger.kernel.org>; Thu, 28 Mar 2024 02:43:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1711618982; x=1712223782; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pkS0hnNrFDbXHrlcoNspnOJj4NSYX03NbGI5xXPUHvo=;
        b=fVJnpFSVukAgC/kkTfD3FZb1owgk/nUJ67au5y4QwhzZ5CAP3TmUW33U3HPRt872hd
         bqMmMpNHEhuYnh924A5LWiVXOb7aQkK4agYYMjOF82c1smo5J5ncwYu1YTFy+PDO9esy
         7kPoh9zFGPX0VfMhWgmeMn7fzoc6VD37hHetBWEa/QFIf5IIXIl1xFD8rUn1SZQQ3ojc
         PuoEgIVLynUw8lYANLaCaJa2cvZbOoF+jFTg6L7jgGGmV1QrN/LF9M1wxz1j8BTScWYB
         Zr5qyxT2OoGWIZ0rl9LszGpgkZcLp8bPhl1sYz4gU6fi4u5mns+6ags87vjV4tDWx65X
         uchA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711618982; x=1712223782;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pkS0hnNrFDbXHrlcoNspnOJj4NSYX03NbGI5xXPUHvo=;
        b=aBIgdvfmm24wnFnK/nskFfBWj1foznnGbS96K+DfymBzGI/EUbycwpCE0GViSaip7c
         YXVPNSDmr7dL4vULczv4LqAVzaiC5RM5tYwRCtugL+/pYLKa+u+dXjIUyRXyJEc+P5Zj
         Krs5FDOdROOUYuoLki6/bUxClM7xlz7Jk/6rUckO/86heVcuzzp58D6XOfuDyINjaGGa
         +cWEvOhaIz+BXW57vmhQ+d02JgSFf3pj8HX8ejODnTMRAYB4TFL3V+5qt7T9NEG17X2R
         myqH/wkyIfJR9aVWH4ghcD/C1eg+X5Eh98TO2LdQJXuLrzc7IN+QXjynpVavmEOmsXLq
         dqag==
X-Forwarded-Encrypted: i=1; AJvYcCVTjCguxoG8M6DcQRlzXa/QC3E1vJrj2fJa39LBN/ssvx5o1kp5tvKD21Vru+kNggH2ClEPKOB+Gjn9IFearsuWKAn0groBe6CLUQ==
X-Gm-Message-State: AOJu0Ywx98LnnQSgH5Ion1eM3x+gl3V5C7xTyQoaZJilNYszvs4dP1uH
	1AwEHB4vBUJKJEkQG+8ZDs/PHsnVFYS4ggneTbJYicAZ0CMvzw+jgC5RgcYoYD8=
X-Google-Smtp-Source: AGHT+IEWpqXuFzJjsC1M/sOHK3zZOE84F5IxzcbN5OkAPk4DTWHSoyiO2rVY9a6j5rj0JVACU4kHSA==
X-Received: by 2002:a50:cdc2:0:b0:566:ab45:e6c5 with SMTP id h2-20020a50cdc2000000b00566ab45e6c5mr1772674edj.28.1711618982129;
        Thu, 28 Mar 2024 02:43:02 -0700 (PDT)
Received: from otso.luca.vpn.lucaweiss.eu (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id l2-20020aa7c302000000b005645961ad39sm631362edq.47.2024.03.28.02.43.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Mar 2024 02:43:01 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Thu, 28 Mar 2024 10:42:44 +0100
Subject: [PATCH 1/3] dt-bindings: display: msm: dp-controller: document
 SM8250 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240328-sm6350-dp-v1-1-215ca2b81c35@fairphone.com>
References: <20240328-sm6350-dp-v1-0-215ca2b81c35@fairphone.com>
In-Reply-To: <20240328-sm6350-dp-v1-0-215ca2b81c35@fairphone.com>
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
 Krishna Manikandan <quic_mkrishn@quicinc.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.13.0

Add the compatible string for the DisplayPort controller on SM6350 which
is compatible with the one on SM8350.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/display/msm/dp-controller.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
index ae53cbfb2193..97993feda193 100644
--- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
@@ -29,6 +29,7 @@ properties:
           - qcom,sm8650-dp
       - items:
           - enum:
+              - qcom,sm6350-dp
               - qcom,sm8150-dp
               - qcom,sm8250-dp
               - qcom,sm8450-dp

-- 
2.44.0


