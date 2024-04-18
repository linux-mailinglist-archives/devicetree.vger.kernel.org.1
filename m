Return-Path: <devicetree+bounces-60403-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D7EDC8A932C
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 08:37:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8F162281EB0
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 06:37:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 631292E403;
	Thu, 18 Apr 2024 06:37:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="wRzKGQMy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB1782576E
	for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 06:37:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713422241; cv=none; b=aht79/4DhtFO0nNOaNEVA3k5uhoKHCusnRLPFW5MoOTK7/CDQsx97EL+wLgdQ0q2Vt4IBbshR8pfOe4U+KhZSWYL0F4P8yYPnWEH8/x3NJROLSW6cAPWvIQK9wYvJ0fwUpIV0QiCDQayoJ3dQTHzHwowuS4CRYI5C2ropwBiIus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713422241; c=relaxed/simple;
	bh=IgFSS0qtSnyg++H1olUTQAlmpttnmEZ7gZvh7AhbrdQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=EqT2TPalbG0CdRCRJ6UQwLAWT0pPHbYXlwmSaEdFrdAfSoFT38FdDhFg1WDL+mFr9k94hWTf5p487Y0lxLGWw3gS/CJMOfW78+B6DS3sqHn+c0Zkx8KOu1Y4fJBWJLpsKeLOqROyZI3zUZQnfu9fq0NqRMVKqdOerubTKy7otxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=wRzKGQMy; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5708d8beec6so567320a12.0
        for <devicetree@vger.kernel.org>; Wed, 17 Apr 2024 23:37:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1713422238; x=1714027038; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=39prjfdUZn68Ea0wBSxJWy7y6KU96R9Wr42vUXg8nHA=;
        b=wRzKGQMyy7LZx/hWyIHPeJCSYHVjd85B/xXbyMhyL5ETecUcEI7Sax/1ErjNMouwPZ
         kV2xitYzMf9GEdBwhRHY3ii5qSLtfYaLulHMKZHQ0qECdQs2V6p9g3xOFW5g2OIWKPQs
         zJgl7dSGegGW8LqwpRM4plOcUqOWmz8J6aUUAwUiwzuUbqHUD6MbA0xKdCAuAovFlBM6
         V84UhqThjyJULf6Dhbn/rvqfybrcIKIPqSF0Fl6At5zIQWSZhtKayTsq6hlqd5F9hDXx
         MtS9UBbSSDcDqN+nV5i/FTbK9EwLTZcSse/Z6V7v65nFvD2jxLHV2OITD3dScm4VD30d
         Bu5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713422238; x=1714027038;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=39prjfdUZn68Ea0wBSxJWy7y6KU96R9Wr42vUXg8nHA=;
        b=fHpJU/EeTlycuGQMNx9IPcKLvEpdtY0jz2iPQ2UckKWzw1R15K4OOYgMPcWSwtd0Yg
         ryNisLPkyKgLOZ2WYLwzDeIbI3RifvNSxJn+aEp6Ilv8WoRHfNBz4ek9FO4ezs/neoA2
         PZgKzneOlKMeg8ajKnNY2W5NXOtLRf0UKF9K5jhk9B1LsKiSPUwWKGQxQy3lT9FagIYU
         IkrQLrpuliRtoCEIBO+QMbL1VypMKYC3I3XtkUQWqpFYsltgjTKxmYVX0fG6kVYVLJDl
         rzs1E64ed2hPtPBvwhaxfKwUQpLaPdO2kxO9M6OH9ontJjyNBKYSdwGE2XmH8Cl1xiZ5
         W91w==
X-Forwarded-Encrypted: i=1; AJvYcCXmPtIGrl5UXZWgRGVj7uVCf4GhC1A/BoIslfBWWPcvD9a9LJ8Zi6SXD9KkOmfTPuQaUvVhZMsCCZVVB7Z5vgoGSH4mNF99U45e3Q==
X-Gm-Message-State: AOJu0YwalHBZgbQtVvg5+0f8CoAMBX5w1PdI2lRz+pTYCzQU12UucCEe
	WvGS9ciu+WZ/CxP4fIDy7uHX/DL+kEvn9+z8DnPeeP7DxHnuPnk4z8f9VjuCaRWZXkZZtejeGDo
	q
X-Google-Smtp-Source: AGHT+IFMMUtN5QDG0RL08DrlOyhBUpv/2mzTf2vAZ1XgVxE3n0VWHXu9Xd2BxaI1nvTV5u4aIeKVpw==
X-Received: by 2002:a50:c057:0:b0:56c:1696:58a8 with SMTP id u23-20020a50c057000000b0056c169658a8mr1537498edd.0.1713422238001;
        Wed, 17 Apr 2024 23:37:18 -0700 (PDT)
Received: from otso.luca.vpn.lucaweiss.eu (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id cf8-20020a0564020b8800b0056c24df7a78sm472277edb.5.2024.04.17.23.37.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Apr 2024 23:37:16 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Thu, 18 Apr 2024 08:36:54 +0200
Subject: [PATCH 1/2] arm64: dts: qcom: pmi632: Add vibrator
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240418-fp3-vibra-v1-1-b636b8b3ff32@fairphone.com>
References: <20240418-fp3-vibra-v1-0-b636b8b3ff32@fairphone.com>
In-Reply-To: <20240418-fp3-vibra-v1-0-b636b8b3ff32@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Fenglin Wu <quic_fenglinw@quicinc.com>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.13.0

Add a node for the vibrator module found inside the PMI632.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/pmi632.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/pmi632.dtsi b/arch/arm64/boot/dts/qcom/pmi632.dtsi
index 94d53b1cf6c8..b4313728f3e7 100644
--- a/arch/arm64/boot/dts/qcom/pmi632.dtsi
+++ b/arch/arm64/boot/dts/qcom/pmi632.dtsi
@@ -200,5 +200,11 @@ pmi632_lpg: pwm {
 
 			status = "disabled";
 		};
+
+		pmi632_vib: vibrator@5700 {
+			compatible = "qcom,pmi632-vib";
+			reg = <0x5700>;
+			status = "disabled";
+		};
 	};
 };

-- 
2.44.0


