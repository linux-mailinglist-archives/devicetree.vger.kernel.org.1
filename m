Return-Path: <devicetree+bounces-207967-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 675CBB313FB
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 11:49:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 38FEF1D2185D
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 09:43:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5A4A2EE294;
	Fri, 22 Aug 2025 09:39:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IN0g4o+Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D12928B7EF
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 09:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755855566; cv=none; b=Yx50AitAFe9dgEpCbvE41w0GwBK9j7B41MAmo6I1jAwm74TG+ocgNF++YvdOU5PaSMOpE1U1vrQeRgOaQbYKbug6oQ6mCtlIn/w7dAnm74jUYPpwb8qa8B6NgkhUViTeAqb97Zx/SYqO/ckHMeHjQncvpjBbt8wNXDwN+VzQCMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755855566; c=relaxed/simple;
	bh=w1VZqVZB4tsSvRFPjcFON1TkRO+UIqwQJ3G42TS9+0c=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=oRZIji8q50HjDI4rAZw5QU/8FBdLexQShmj80u3qHIoPnyX1n3m9nDxtCO67TCIq8FNA3Z2zDLypZ95nnUTT5hSq+tEOfpPJu5MatizAV4AdIPc5CQ3+DZwQxl0MO0MeVaAjDlFdtwAiqxTuftHdxa+Vi7vHinY2a09a0ujzuKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IN0g4o+Z; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-3c68ac7e1c4so75660f8f.2
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 02:39:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755855562; x=1756460362; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GLNjFnxfd0fsnNGaZyEi99xhqnfoLRLL41xepcgfytM=;
        b=IN0g4o+ZVAV4o5fU50P44tUBd/R6YESm96l2sXzV5H1OL9tOh1tQBbKyyNS/tX+4GJ
         G2eIov3oOVGDI5inIvwuzh3R3kPHRXc2Uw3oHtpZ27ICqB/tlo1XjTObvTMKx4DK0Xvg
         EXj5y2krm0ba7+aLzaDYDISWSgF7pnbkpUJkyiK/hYCH7SD9iJ4ZoxaNMX2PjmuqsGFq
         NHrUL3pScfdb5wKaM398b9NbZGmXKu4iOB4g8YgSnosr9IwpxspjF4BTp2yuYb/1hyND
         rbe8BlOVJLw5t3z9ppR2KarcT3C19Gtcq8EdKThfp41CKrkfSgGz+xyv5si4SQukhXwq
         DLSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755855562; x=1756460362;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GLNjFnxfd0fsnNGaZyEi99xhqnfoLRLL41xepcgfytM=;
        b=YLaxeBuXBySgN55laWaoWEc6y7BsJmdYg6FJTLdwaGWnGxdcWpmSmuQCyfu+thsDy6
         dyArjLxVwdKWAatD9awDAD9o0OoVJBt7ElbMEcfenlqcB8p0r/okWBTjSugV8h+DM9eh
         1bJOQyZ+cJ5M9OFyYEv0qB4csUcOtFB+Lf/85g22bJecxPCBc21CbituDaxW3VZ7F2Kd
         oSgPlr946NzpA/5qE9WEYqcuWPlWUe0jxx/zGLXQX4Mh4L4a93d4pEKJ4runaLB35v/m
         /tvyFWk6G3+9araizPLTPkH4bxjfUVPoKt7xOkuc6Fxy6Yxey9DcAGhtvJJDjTkucCTw
         svjQ==
X-Forwarded-Encrypted: i=1; AJvYcCUkEPLg5UZ47cz3PoneOYHnvGS+ghjVuZIfz1tY9vVUdXsFgKrPVpj2AubBg364JfGqNu5JlVR2aBrF@vger.kernel.org
X-Gm-Message-State: AOJu0YzcL8BHroy0iCutqpUm1QikK3B75yy5RSnpeyL8lOr4G/tM/1vA
	dsNTze1pgmh7MLgbQigz0uVwvq/ZHnR6r8sfkAr/MBbO6Qn2daReS+bWJboXPQRCeqE=
X-Gm-Gg: ASbGnctvlOqdR1tJLPMoYf6QIiYTI2FZ7+mNP8MHrCenmUsEAW+nvfPEiQyTKxrw4Df
	KgV3bN145SRG5UBLnm9Z+CYDh5sv4VcQxakpKp6ar3Ku9GD59bLHT8a4ZwCPJ/B4iIzvXlQSyIj
	8asnLkTckuEI+n822n1NP7gjGQrDj3NB853EoPWUa5y0+0yvOvHMxAZCo4RBqtqe5n6nIEJDu7k
	lvitgot5J6tOw3G2EJtb8ec0D0PDEXvWTk0974+nGjqpfI0a/J5dC26hj/KeYKwWduSZsW4ZAnF
	hainCrGmvoUykW39EpMOzNnGHMkob6Pw6Mi6IA5QthRqVWnw6eLis7bjWJfOoAUEfYCXXF+c4kU
	A+XfeS8K3xj16n/FSkRV/81e7rtRnfDhNFQn4NvQ9pxc=
X-Google-Smtp-Source: AGHT+IHy3KG4vkGuFAeI6qddwSJpHTf7vSyak1cG2dJX8+Ge4WfPE0JK4X6GNyVAf4EaKb56Dv/NVw==
X-Received: by 2002:a05:6000:1449:b0:3b7:9bfe:4f64 with SMTP id ffacd0b85a97d-3c5dcdfbfc6mr1949889f8f.54.1755855562213;
        Fri, 22 Aug 2025 02:39:22 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3c684524163sm609890f8f.61.2025.08.22.02.39.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 02:39:21 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Fri, 22 Aug 2025 11:39:13 +0200
Subject: [PATCH v2 01/16] arm64: dts: qcom: sm8550: allow mode-switch
 events to reach the QMP Combo PHY
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250822-topic-x1e80100-4lanes-v2-1-4b21372b1901@linaro.org>
References: <20250822-topic-x1e80100-4lanes-v2-0-4b21372b1901@linaro.org>
In-Reply-To: <20250822-topic-x1e80100-4lanes-v2-0-4b21372b1901@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=724;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=w1VZqVZB4tsSvRFPjcFON1TkRO+UIqwQJ3G42TS9+0c=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBoqDrCK0byhdjaXKo+3isP9OgllaTUkkVEwThKOE8Z
 zpSGwzGJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaKg6wgAKCRB33NvayMhJ0T8LD/
 9oehvNFU1x7iCHosmp9mm4Qu5Ybip9Zlw/H5gBW7vjkdJvBaRAI9B6OlW1YKR6HNvP+A8KVcFQCebx
 yOIjhAd/84HJBnP9OMyMWUlhzTp7zrT7ryfOnWRN+wDx+4qpREpgEi8xueaplZvWu3SCsBSWmQ8H7W
 +LYxaED9BJM1CX38K1isPbJljd3dJuX2C/3Rmv6Hv1sathrP64+ifTcqKaS4fk055Zh5Pz5JSk9Aez
 OfomRBA8JVHRrxNw/vGYkJeYii7DCXS9uX2fSSF/vDLyraU/BTvF0NIR0Bqj+RkNQxeReBt/NXYq5R
 ZGOZj0ZRUfvjOYuc1/kmG7k1XiS/2WueeulOgedPnNm26qAgpiImUvXvVETvN1fkR7WUbSi/DIWwuC
 BQHgiaCpCnMuDxYTeWbQFLh7Rwwg37dw14yI20hGM4P2+EOaEUion3aR+mbcvge2M953wueZd/JId+
 FSMMxXjh7CN1UmgtMQoPRodX9fX3oD4qUxaHMmvsYi3m7BPahVD7C3K0gyfb+dtkYpQtYwDcMwoZQB
 rfwQsF4+n20cd9LA5OSgOFCifUAK3pC5SARuXxoSAeXJXFSnApuUzYks/Ff2tBoK/S0pPlI/ilkYg4
 IfE5PupypOP5lYcq3bEmks4z6CzaTwMzNHrKWz3j493OhIbzq1CFMrqxN9eA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Allow mode-switch events to reach the QMP Combo PHY to support
setting the QMP Combo PHY in DP 4Lanes Altmode.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
index 38d139d1dd4a994287c03d064ca01d59a11ac771..0409ae7517f239171a89bc0ba7bb47bc9e7fedaf 100644
--- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
@@ -4051,6 +4051,7 @@ usb_dp_qmpphy: phy@88e8000 {
 			#clock-cells = <1>;
 			#phy-cells = <1>;
 
+			mode-switch;
 			orientation-switch;
 
 			status = "disabled";

-- 
2.34.1


