Return-Path: <devicetree+bounces-54484-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BEB78891478
	for <lists+devicetree@lfdr.de>; Fri, 29 Mar 2024 08:46:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5EFD81F23052
	for <lists+devicetree@lfdr.de>; Fri, 29 Mar 2024 07:46:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 698B940BEB;
	Fri, 29 Mar 2024 07:46:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="V3bWzeR9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EE1340842
	for <devicetree@vger.kernel.org>; Fri, 29 Mar 2024 07:45:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711698360; cv=none; b=TgqtWJDQIwOEVCBB4zwGtheEWNKab/T6nGmIS2W+xXYSVmsPWRDnsvY1EikZQo8DJ5+NKeb/9t5QnBkSsgnOpSfpfKALoIQtmvadwATDoLUWFhRunCdnNNXD4pZU+8PiI/khTNUcluoEKP8GZCLQR3j3Pvg2m4vbfrt63Yy7fDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711698360; c=relaxed/simple;
	bh=QTZb3SliXj7z8d9Aptik0u48ClR998kWst6mXqAlvu0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=r/kfvok1p4qXCWV+L8JKX/gXHQo3yedK+eavwkgvhLabsVgXnwDCcH0P2q0hpsNQ/eiT0Ac7Dx6B7+SKOpX2AytPks1f44otbMFHX4gH/vwlVeJAaCMMwnRU8J+7GhuEaARl7sq2svgS0JQYO3nRYH/3T73tO6DvPfetPLnXioc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=V3bWzeR9; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-a466fc8fcccso223314966b.1
        for <devicetree@vger.kernel.org>; Fri, 29 Mar 2024 00:45:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1711698357; x=1712303157; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ktUevP6u8w4KHYW86f+K8GcdXFfL/uIUgZtZWzBIQhc=;
        b=V3bWzeR9f0eGWA21t3UsW59agntbPiPpdv8LziYG5lDgDALT2m+yjZzIF3OyUSzJYI
         Gv7nCWrXjkGfebsH5A2YZEZajGcDWidzYD0492Qi27yNfIDWwsmD0IiNs7ZUOacstv5/
         LHRMDjxEjckZC0ZDPq+2SmHNX/RwbSYx8z2UtuuPcX3twpPpzaP1IxjAvuYNrIjUPvd4
         VawCNcLIhVzHWAhythuHDavCP1xlvQ7mxzJ9lZXaMES0n2ACm9G9eDgyeqMI+5S1qm7C
         1f8IqtOpi5WD1728lwHQa5lpfaRWFNDn9OrTqT/j3Ssow1e74dGK7qNimPA+SIjYOzWJ
         8fcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711698357; x=1712303157;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ktUevP6u8w4KHYW86f+K8GcdXFfL/uIUgZtZWzBIQhc=;
        b=jpwYv/I3Y79rlu4uWbXQ7tWXhZcS120ZQGOpClnflBZ/i41SXwMfOWbyJijwqGcu2u
         miPcVUV9rFU3ozLikOPx7ncD9Cf6osYeqho7EcG+tEDiOCqT0L1gIQMZXv9Zq1ZRgzuQ
         BHu47dPYGLbVruxlRQFRMS1b8GAIFsRkuMidVNnJ6WJa36R1b9WDZe9IFkUJ0d/lwKY9
         8s3OHZB+ygxL9jcweANLu6nschQ54eBEsZIeKpoINfxqkEXVRjanH5RFCVtyqfXy+Frz
         Yl3C16ztfuvv8p+JQUS+9OwO1jfE6moNfJ0woCHWXft6BBxAfV7mp9mBr8v4KUemKd4g
         0h9g==
X-Forwarded-Encrypted: i=1; AJvYcCUkJu27OjT3MBjPdEFaaiij9dDLnMisZjKhY83NYEjHEohkXyKwzzSb9rXIWm2DejV03Sii6fKHAGGDgF/lWGJP2Z8ccfl8eoDLDQ==
X-Gm-Message-State: AOJu0Yx5JVSLBZMw+04Dtesl1MBV0qwHaGjItLIb0BQ7+jPBINoACDCx
	qBOq/NarRY9dt01T8LjWw9ruGLTQQXpDTo2KHSJekGQs/b67v5AJyKDkSWAG+MM=
X-Google-Smtp-Source: AGHT+IFa6363X6GOmkR4BsEQwG0xCUHGlbVBpxaeQsPeMOww1hYOuly/ejvvRwJqZ9obHOITNtL4iQ==
X-Received: by 2002:a17:906:5053:b0:a4e:2a62:7eb6 with SMTP id e19-20020a170906505300b00a4e2a627eb6mr863656ejk.51.1711698357114;
        Fri, 29 Mar 2024 00:45:57 -0700 (PDT)
Received: from otso.luca.vpn.lucaweiss.eu (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id l9-20020a1709060cc900b00a4e24d259edsm1382737ejh.167.2024.03.29.00.45.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Mar 2024 00:45:56 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 29 Mar 2024 08:45:54 +0100
Subject: [PATCH v2 1/3] dt-bindings: display: msm: dp-controller: document
 SM6350 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240329-sm6350-dp-v2-1-e46dceb32ef5@fairphone.com>
References: <20240329-sm6350-dp-v2-0-e46dceb32ef5@fairphone.com>
In-Reply-To: <20240329-sm6350-dp-v2-0-e46dceb32ef5@fairphone.com>
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

Acked-by: Rob Herring <robh@kernel.org>
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


