Return-Path: <devicetree+bounces-252215-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BC01CFC804
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 09:06:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9747530389AB
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 08:06:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3176D284671;
	Wed,  7 Jan 2026 08:06:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="UsUyi7qn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f67.google.com (mail-ej1-f67.google.com [209.85.218.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8E8E27B35B
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 08:06:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767773175; cv=none; b=mMAYXwJvNiw7DIw7Rzm28AimyWOT+jXAvrlHuwgty+FMneNBRIOrHEmKeEIxaATtAOZ5lADkPzMFlBje40mh6PXCoMHqGsgk76k7vrF37jlrX+6U19OXMawQoW4Bqwj8GyL2RZYMy+ek4ZECQFb99QCflHy/WBq+KP9fbdHWQ+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767773175; c=relaxed/simple;
	bh=TJq6smJNpzhUyCl9pcUEvogC5t0FBsHTmp+T+Fq62FE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=npOHLbP+/DW4W6YqYh85yOI+DwKHAUss01IzKsdWkyQodv5UhWxSVql2Z7zKFUJTbaEpvYH5Yw5gY5Np6iP5PwnQkoaWIFUhRgmyPxs5beAyqKLdGizCHvm42FxGekqymQFree4sBEBL3aMy7j+gd7f1u7nq+W0M1ACBIggkSZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=UsUyi7qn; arc=none smtp.client-ip=209.85.218.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f67.google.com with SMTP id a640c23a62f3a-b7eff205947so245781866b.1
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 00:06:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1767773171; x=1768377971; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AsHvzqbYWPHqvIyyKZ5ziYmivvXzm7HgbZNmFTyTVlY=;
        b=UsUyi7qnFEqQrd8+g2l8PgjpdMne7azKR+mo5jGtV6mEMTKzEGxAIqC/7TVyeZTVrK
         rvyu4aO4h1ClI8H7eyRE9UorThQBBpHNrJzsyZpzXGCbqjIhAly46i3Q/847uLHWhrMt
         r2ODc8aCISrT1j/3gvYcjmHecOpOr6RGLcsOj68+LilNT6wct7EOMCM3U72VQb6occD5
         3GlTOZJOPyixqJsHqsCnFdv4esIraJLHC/owA/0FQqMqfQaWeaSZ0h8yMtg4cM8uvh2o
         RTrbWC9YfKCUJPG7WOaY2Rhx7q9Za6NzIVKqQnRtSynx/2y4vOwrafZ1w5SeGab2k7gJ
         TP9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767773171; x=1768377971;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=AsHvzqbYWPHqvIyyKZ5ziYmivvXzm7HgbZNmFTyTVlY=;
        b=RvjgQZ2VCvRwoRwiHxDIi+TGk1fwG1uWTtdpPF4L5RjyTaUv4XSgNlzIi+DH7N4Dz4
         0dWa3t0Zs/LH1DHnf0cD8tdVyS968MjnKsRbUuGoZurpSJ3ThIOCZgJMXfYtdtUc4ByI
         9fl0bT2cHFNuB3BX8d3w94+K5E3Y3RtDx2vItut5gsAd7RFc7Dc0YLMueEbZQzHnEJq4
         hwntNn8/NlkFmcvhWYpI7Wqj2h1jwLYcj+saV9r/PKc4ZoB03fKt5WfV5pZBUa/6MpRb
         iccGZTO2B1t5cUQ8s4lNKStDhyE/4xXQie6SXuIBwwwlh6gMkRbTN6vF8TA4zCCFLz3T
         7YpA==
X-Forwarded-Encrypted: i=1; AJvYcCVc00Rb6YPu3rJonqdomAFPi3Pz/5dsLnHnWrIrZ/yvuBqG6HZIhH5tkT+ILDz3MVsx3KOUIVVhNquB@vger.kernel.org
X-Gm-Message-State: AOJu0YwQr98GQEUfMg5LbCUCEk3PRU2dxDpimx+3L9kz07Ei1RCntRg9
	9lu9ZT8jLb3VNYtfOPCD9k5RdwxhZOBqEAVbmEMpQSk5M0MVkElI2XC8g7l+uUBwzkY=
X-Gm-Gg: AY/fxX5U6cJtm6w6U7Dv6AYM0BrvrpDMTN+QXmmeKziKxLgSjN+hNcUscptOpEEpz/7
	FC5twEP5Ws3ccCaNkrvhsH7CKwozUiIPa/nERD1Qa6ZG73HAQUNk3200h9OCg8S7p6PSuE5MnzZ
	UPbtQaNCYIAIzjLNtranTZOCb/eeXDNEdENmn4Ou4bv0pnR3R+dwooa6oYtP6tTbYt1Ua8mxfLd
	SIRKA46/NQH3WTnSBZsljIUG6XsESywXUMeX3tW/OtIEZENB0Qb/Ugpw9E0TvNB/i41kZ7ohFUl
	Z0HwHtbOD3yjv7z53Xz9hlFMlGDPSitR7pG0kK3foXZdhjLW4qPLnKS4pBPKaHVTUbhil9RDZ/W
	L7/tC23TgKpTd4XMCJo88dhiqnbn4KvXcTA5KmExv0XW3kQyP+PrDWb0G3bu5KndFyMr4gEDg0e
	dyD37FRr5BvK6XYNwgqN+DbfvnGQ==
X-Google-Smtp-Source: AGHT+IE4p/vShR93wKW4ZJiqzHFOVPLWCJgnEqo2jRVbm+FDwTqLGqE1aGXNP46YX4KBtv7HXppcKg==
X-Received: by 2002:a17:907:72d1:b0:b73:6b24:14a0 with SMTP id a640c23a62f3a-b8444c9f0eemr155635166b.18.1767773170902;
        Wed, 07 Jan 2026 00:06:10 -0800 (PST)
Received: from [192.168.224.78] ([213.208.157.247])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507bf6d5absm3941299a12.33.2026.01.07.00.06.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 00:06:10 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 07 Jan 2026 09:05:52 +0100
Subject: [PATCH 2/6] scsi: ufs: qcom,sc7180-ufshc: dt-bindings: Document
 the Milos UFS Controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260107-milos-ufs-v1-2-6982ab20d0ac@fairphone.com>
References: <20260107-milos-ufs-v1-0-6982ab20d0ac@fairphone.com>
In-Reply-To: <20260107-milos-ufs-v1-0-6982ab20d0ac@fairphone.com>
To: Herbert Xu <herbert@gondor.apana.org.au>, 
 "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>, 
 Bart Van Assche <bvanassche@acm.org>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767773155; l=959;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=TJq6smJNpzhUyCl9pcUEvogC5t0FBsHTmp+T+Fq62FE=;
 b=SDduZQ32z58+v5112RpYgH7igk0LTEEt4gvQOJlOViBskefmZPWHVqnyn4YLFTSn/Rxj3XIvm
 dlb0sn0jl3AAlOokauCExkdezRA9GPP42e6wIixJKqAMRF66ZMZSpuJ
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Document the UFS Controller on the Milos SoC.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml b/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
index d94ef4e6b85a..c85f126e52a0 100644
--- a/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
+++ b/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
@@ -15,6 +15,7 @@ select:
     compatible:
       contains:
         enum:
+          - qcom,milos-ufshc
           - qcom,msm8998-ufshc
           - qcom,qcs8300-ufshc
           - qcom,sa8775p-ufshc
@@ -33,6 +34,7 @@ properties:
   compatible:
     items:
       - enum:
+          - qcom,milos-ufshc
           - qcom,msm8998-ufshc
           - qcom,qcs8300-ufshc
           - qcom,sa8775p-ufshc

-- 
2.52.0


