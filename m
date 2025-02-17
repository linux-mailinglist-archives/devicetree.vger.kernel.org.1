Return-Path: <devicetree+bounces-147560-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 49B0DA389BE
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 17:42:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E50EF1887E9F
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 16:42:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E76A8226172;
	Mon, 17 Feb 2025 16:41:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yEUVKJGv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BCFA225A3E
	for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 16:41:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739810512; cv=none; b=QPH/2L1Pspm1vjy2n+Aa4cicXy3ScG7G0cELGnrGSar0MkxwyK+4NPvqFI6Gq+OOFY24DwppUdwpUVrrZoKLUzi0qMhAtVLyqKIk929e7XIaX9dWTyDUenlsc5vtn9ljvF+jDJz7caQwf40ozF1IJuPLLQJUIvIAnZI8jP+YSxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739810512; c=relaxed/simple;
	bh=C784ypOiHBSE0JJrZYQTBZVh6GbEkSrx2ih7B4SSF4M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=eA6532alh/tJ+TbetcGA5PkK+z6zRbla9IABKtEj75osooLDVXgt1n+fHh59dMelO0CJL3ouw63WEVIoPzhiVAfwlsLmEe5RE46UcpseMMoZjgXeTSX8kFba34xio3XHg98sVUMeXNtMTUaZ+jw3qZoy3lehyv12R1wQEMpWhQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yEUVKJGv; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-5dbf65c0c4fso829571a12.0
        for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 08:41:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739810509; x=1740415309; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/vtiOtAPErstCZKPiDf9uSSv9XQsaanNrESzaPKJnL4=;
        b=yEUVKJGvSgGJ2kb+fIXh44pdaHsxy+voLHvKQ4+mLZLpowDVbxPz4M4SrlmDsBSPn4
         7OduNm/LONQTtI/Di6KpDOrvbbYA1cqEiMt0JJiBuE4x8EbVNEjLjOsaDvs9UsJMQ/fh
         2OnsQEA3pEA1kgZPynQ9p2m2/CUVhEHOA7mrnMIyBR/PeytRyqJyw6l6Nf1bjtdK0nGH
         teHNKmlkdEkj1bEdYbkmgpCIiFkTrzTic3KLw5cqKgWaf1HM49ZSL73BsjFn6JHlBVxc
         R4bDDiQmCjeZEQR3j48qotOGHZdUcoKZUEevUR/Tl8KF6zz+o6o43t8tgidp6OIk3Sj9
         biIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739810509; x=1740415309;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/vtiOtAPErstCZKPiDf9uSSv9XQsaanNrESzaPKJnL4=;
        b=WpC12o5ZXq159hgLqw5Jd3h/KdedQFvRneIIDFEUbsjilyIFZsY4vlcvhv/h75FaHX
         ethC9/oX/NX4AD37bYWzwWF7WlRJLPfh3zDA/Jy4+UuLMRFWUZ9vTsozrhSlxlQm/jAp
         pqdlvzwm7pagn+Q0hLkg3IJbU+dLTCALNuUMIZa6P42K8/rbrWm9aEcK7v1IQEXnNzZ/
         ByyExiK8uHHtjLWD0/eFkk9ymqXBIFDivOAapLWEx9SK/jEoFZ4bask8VS/N4a6fLl7H
         eYmH4CnvoL1X2vHlt/hZcP8t4pKU0nsf6pxESdfpWlXeYUY9S8H0Bo1YZzdbd6a++2g8
         0EEQ==
X-Forwarded-Encrypted: i=1; AJvYcCXc09N5kpa1hjMtQeIgZphvfhJOUL4N2I/uLVV7LJ5LrQKbEcOpPAJ+wDcKZqCG8V5/NjE207JWWHBS@vger.kernel.org
X-Gm-Message-State: AOJu0YwqE5qfAdgQ7wn9AXPDBClET3wxRkMOk/Pp6/FvVajoS5rcsh9s
	GBb+oPrEfYSDKeB5EeYdmcxcVAPes7eNXi7qcGN32EeBsuzy2Ea3BFih+M8aSQ0=
X-Gm-Gg: ASbGncv3ujsImGez5S2rcgJ/ONSAlt94KutA7U6+gX+BwY1DwSoSVVWSJnq3xUDKJHv
	sx8qdZUIvI0NIycIUToGVujz8qKDD1Cl2l5LaMDOv++bMpQ4qZj+NpvUgn5OVgXOBXk9cup5Bpb
	a88mWmLJXZpn9l7rpEqffQZWMkk/nzEhhBIlKfN483kkZCf7M1fOJ1nMY0itXhZ1BdBPPGSl003
	1g2vhzu2ifhXa7YsbxMzwTaYmGmY7SUKmrHmQN1e7zL77Z8lzxBZBycaCroZrwkkO7HdT3GMNxT
	9WAVZjiJz4mkz5gU7tkDAuz2ixce5D0=
X-Google-Smtp-Source: AGHT+IEc2oXDKXrP/maz1R4hPJqgetc2dZKJeGvYBMYH+EpbVdo+sZPF2ut5mzR1sZ6VdIx0Xdn7lA==
X-Received: by 2002:a17:907:1c1d:b0:ab7:6056:7a7f with SMTP id a640c23a62f3a-abb70dc5587mr338725966b.9.1739810509412;
        Mon, 17 Feb 2025 08:41:49 -0800 (PST)
Received: from [127.0.1.1] ([178.197.206.225])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abbac781b78sm82647966b.60.2025.02.17.08.41.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Feb 2025 08:41:48 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Mon, 17 Feb 2025 17:41:24 +0100
Subject: [PATCH v2 03/16] dt-bindings: display/msm: dsi-phy-7nm: Add SM8750
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250217-b4-sm8750-display-v2-3-d201dcdda6a4@linaro.org>
References: <20250217-b4-sm8750-display-v2-0-d201dcdda6a4@linaro.org>
In-Reply-To: <20250217-b4-sm8750-display-v2-0-d201dcdda6a4@linaro.org>
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
 Srini Kandagatla <srinivas.kandagatla@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=871;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=C784ypOiHBSE0JJrZYQTBZVh6GbEkSrx2ih7B4SSF4M=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBns2a5e0NkCZRyuFjhGGd9OB9EDr80fjzsYau9k
 F/FzmPPdEqJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ7NmuQAKCRDBN2bmhouD
 134MD/wIjInrEc6QCV4vQq3wwjSnYQQEXn0cbn03E2GJmhUJwd+u6++MPxxlMWJvWnEvr20clpP
 K9f3WSJf27U0uNd+eOMDFde4gbUV6lBemRnJjQOVjk4rPwCebZ6B6QZ6ZoN1KIns+OX1T07WcD/
 Fr2A9Qds8uq2+7pd8zbC7b4vd6/6X4/YFUKc5eN6KhOp/PF8Jc6akNSyuyK+Rar3Jo2FiwEso/r
 nHn0LW9ACmKdef+YqrXwcWY1EzvqxF4lEiLkm6rXsSCpsO+b/j7fZsIcibw0ttfaovuVVC/qJa3
 EnWD3KwNnOyw7SqrdQ1oZIa7zCAwDM3zFDrTCxDhOEqZ1CAXMP6taiU3QGDFvD9bGkqHR5SFSG3
 rfBKeN3trcQe+NQs4FHnc8+BrkGJR9Spnx72NMMrPljxOM8pxIzzvznxZFwaLqguApYoIsyHqZA
 3MsAyDL4grfJgOe71hOSMTurCeRtTmV0k8q3N2OUvqf4WNZCSObAM36b6mKoF1goxDUP4oaRCnq
 Ms0vu7DLarYiN/jXeW63Ca4IkCzOGn4bsuX3+QOEZeM4K93LhFC5z5vzxvzaMz6/jZ8thof1mjn
 KGNxxw1UZh8iF+NUe5FCgEBT+ltuBxvP8azDuescMcwtnwWGEKMdUFnWTpGGYnNG/9HZYqIopi5
 V8wXPwbQcGqz5VA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Add DSI PHY v7.0 for Qualcomm SM8750 SoC which is quite different from
previous (SM8650) generation.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml b/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
index 321470435e654f1d569fc54f6a810e3f70fb168c..4ac262d3feb1293c65633f3b804b4f34c518400c 100644
--- a/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
@@ -23,6 +23,7 @@ properties:
       - qcom,sm8450-dsi-phy-5nm
       - qcom,sm8550-dsi-phy-4nm
       - qcom,sm8650-dsi-phy-4nm
+      - qcom,sm8750-dsi-phy-3nm
 
   reg:
     items:

-- 
2.43.0


