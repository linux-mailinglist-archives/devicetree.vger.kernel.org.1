Return-Path: <devicetree+bounces-149454-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id F26C2A3F8B9
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 16:30:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 924DE19C12B9
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 15:28:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 091B521B9C6;
	Fri, 21 Feb 2025 15:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pvxX49Mt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14F2D219E86
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 15:25:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740151521; cv=none; b=py5JObBtumTFRKdKySuPMXDUzQj5u4kDDeSzOyaqNXKDY+AzpitWh+m06eiR1x1n1I96hRSom/Yq0ENFMC7MDg+29asSUy+STjUV9x1wx9fKHPdHiZGbea+gdv8Kkym0yzJbrQomgXWtnIdSWWQZISZdgJ0JfkFB+t00cR+/bzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740151521; c=relaxed/simple;
	bh=JRqovq+Rdk4ORXpGPmhXUXGU0PwNM6eotWnKyHhO04g=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hhuRRtHepzOrQ4hAWWrmw741J0SzVmzMnBoVuPUGTFK2g3bgKGpwbCD0huBtqciNe+oMgAp8A9KBprqBBrLpBNPSd1W95QTjuJmJvkXA6w2J7ojWNVnqiNw8nQBJJPWtTmPvxPUo72ccxsGjxTUT5NpL7obQQaIaSDD71+DYRWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pvxX49Mt; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5dc191ca8baso450460a12.1
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 07:25:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740151517; x=1740756317; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MScxPmftbdaB9C7JfNjmumigE9RQy6JfuyND1GmcrGQ=;
        b=pvxX49MtuQeD0D7NWEnc8eDfhaHzKXPrZL7FWKh8p1n7d4sMT8bn5vYLrZvmznVJFj
         4+LKWScUDuKJVs4jkH/nJn22Mej35g7FcbkWso7OqSDT6HJkOs9UswWup1xB+EstRjN0
         Qi2Tc2pUviYJJte7zq53xRNDlbt7gwmMukGcUR3x8XVtKQMjMCzud7+PpGauIhKiTHUT
         VRm/1TW7ZVHCqQJuwBvNOU3LjUaynNyxK1zVy/F+AOZU4VU7AFOc1kdFPYb036LrHWSU
         0P6r+RLvt444yL6EOUIOQzljyEmHe2peDVBMR2Bdd+6mTYvEbJ9aUp8hhu/XaHGH4Af+
         n7ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740151517; x=1740756317;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MScxPmftbdaB9C7JfNjmumigE9RQy6JfuyND1GmcrGQ=;
        b=j/3Vn46uK59nwW2ybANSsxxPItZHukM4VqJDBiwzurK0skr+3f4R/uHGcip9b8v/qp
         5q/xpqaBSnKoYELdIuD6yTOd2n+VlnUtwFcSqe+77xf4uozv8z3EG/2fWC0Xrnv2EWYi
         9cZbBTezm+JemCLpHhplfQlW1hnpmb9Og7uwDNcL5viM3k5V4QVprW/Y03xKYXL+mcLg
         vmIwmS5Bdaz7N/d+Ut6eu3JqsQGX/+kjRbNxinN6WhXZPCGmKAtVfvRhLssX1cvskDtK
         a83fW+y9bYgZsIkBZltEhAQ3LxSxijqShKvFqHVRoHAllQIwaIDXV+hdR2Tv9RXzHnvv
         JdRg==
X-Forwarded-Encrypted: i=1; AJvYcCV3OeySHsCHHGaCOf7ypF6nUKjhDt9gFVPiwjVKhevcOgVMZTqyS+M3SX5h31YQrIbVL7NABeXGueDy@vger.kernel.org
X-Gm-Message-State: AOJu0YyTOW0SsVyxBZ2SHSouINob8IlEZR+/0ap4TcOQ/nkKbDMXjRLM
	I7cDun3IA7VFo1pilogLsk41JCFhUxKq0IlFsh8x68zc6ZVWLnyMUJxvbslEens=
X-Gm-Gg: ASbGncuvtukvb2nyWX2VbE27unPLZPfI3mjoFPdcSOV3XFEfryUSsy1rMfLUkid+xzK
	sMBE2mjoam5BaY17paqH5yNPZWQq0J2g1fAPlL7E715GeX8Emh/woV6pNh1m2uTZfdNqhSskzIk
	2HvylGLk6QNDsgi/RT/ZeMmKJoYVJZuuYySC3W82z7MLIszeuhBpoBdFsxTnMsVEorDeuIJeeIQ
	7T2l5z3DnyZ+9jr/HMRvBoAY0ZXWZ5VpSQ5FanpFFQTu8zpJRFJ68ofctOwHth4n23ksmAN+J2V
	GRFvvsuW74wtBX0XXVI6dyfsssq0GLNaPaKi3RNk9iacoaRCL3L4OLZMRlcklWDjzS0mxe1bArD
	O
X-Google-Smtp-Source: AGHT+IEZnVvREUQe8xdsdj+GBrgqQ7C/qFngFux4HQwA1pzTqFUf21THE/JmZxJqitoZlusB8jqZIA==
X-Received: by 2002:a17:907:7f17:b0:ab7:63fa:e35a with SMTP id a640c23a62f3a-abc099e1dafmr140825966b.2.1740151517355;
        Fri, 21 Feb 2025 07:25:17 -0800 (PST)
Received: from [127.0.1.1] (78-11-220-99.static.ip.netia.com.pl. [78.11.220.99])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abbaa56026fsm865456666b.113.2025.02.21.07.25.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Feb 2025 07:25:16 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 21 Feb 2025 16:24:24 +0100
Subject: [PATCH v3 14/21] drm/msm/dpu: Add handling of LM_6 and LM_7 bits
 in pending flush mask
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250221-b4-sm8750-display-v3-14-3ea95b1630ea@linaro.org>
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
 Rob Clark <robdclark@chromium.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1020;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=JRqovq+Rdk4ORXpGPmhXUXGU0PwNM6eotWnKyHhO04g=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBnuJq4bVJFnsyb6JXH0wvrNs+g4JuM+dv4z0uK/
 SXpuDXh5ZCJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ7iauAAKCRDBN2bmhouD
 10+bEACS/6knRONeGRMXYcJCR0RdF1lHQo2wynIQXKhVTCF0F2KMsTDrqFOiGs1+EXBtyp+tM+Y
 xe/+bWynGqwKEbRNdt4haJT50d6v9mHfR09hzbVuxRzX7gC2dZvG3xyUbGSDTrn5kO9szHGLOgO
 9rRxycM+wrNkV7Lslr5FvhgjYdePrmrTBi4lV393VJZzH7hoFmQKBqXTyQCw/MD3kX6DGF9X7n6
 XvCe2nXpjelkmztT3j/HGLqpmSQ+fctZexywB1ZSQaTQmf686BIRnWLmvcwAIxWH8Ei07pQEeVt
 q5U0PgQw8KLGkR4YE8BNUJzS7qXpA/SAxq5wbwbClFKC2mMBtY4611wdvGD8oSy7Ueqby8+qeTc
 8wgarJfbYY6LmmB065D9QNPFNFqYh27BoHRsWlO18FBcubQHO5Na18sUbm6QSkUC+TcIyXmsD5i
 rXHpZltfdZg8DTREYZQdwfSIg27i93Xm3/pWicS8Zdk+koiRbiJAZVjfBLMw83ePDbaM6tGmSrP
 enOYXotVh6DXbn+cXfKpHuCnIiibUz/M3YlQXUIVwhYRAD3HLzXJKHFDR3hJc+w1yedmB3yDxRD
 b3Tzo0zzHml7BZtjxeYwGv9jRO3QI3XE51h23/N5R2OMnmc+hrTg+N4t9MI6hc68pAZpJkz+84+
 Yuv0917jW4WdbvQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

MDSS/MDP v12 comes with new bits in flush registers (e.g.
MDP_CTL_0_FLUSH) for Layer Mixer 6 and 7.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Jessica Zhang <quic_jesszhan@quicinc.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c
index 1c14770865b4b5f83a95feb35d8ca6b0c87fdb53..43a254cf57da571e2ec8aad38028477652f9283c 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c
@@ -254,6 +254,12 @@ static void dpu_hw_ctl_update_pending_flush_mixer(struct dpu_hw_ctl *ctx,
 	case LM_5:
 		ctx->pending_flush_mask |= BIT(20);
 		break;
+	case LM_6:
+		ctx->pending_flush_mask |= BIT(21);
+		break;
+	case LM_7:
+		ctx->pending_flush_mask |= BIT(27);
+		break;
 	default:
 		break;
 	}

-- 
2.43.0


