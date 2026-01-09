Return-Path: <devicetree+bounces-253202-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E159D08574
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 10:52:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A1590301D336
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 09:52:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1D203321BE;
	Fri,  9 Jan 2026 09:52:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="R+mLi01e"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FDB72D6E64
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 09:52:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767952363; cv=none; b=Nw5vePoDp5rhmM6RTv6t/QhWxq1idHiF4BQBYw4U9yXfploEZkVdHVYz1gIcxNGdfrIL/GfUoIj94A3de0VnWwal/LdfIQ+bQ0y2dc6azpPK5cTZzfTFMFmI4x4+HZ0vKGCmGpI/+jjbL+3Mq8hHm5q0C1E7omZKWvjuq9ZYGIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767952363; c=relaxed/simple;
	bh=hUYScQaRX0QfzkUatVOP/WusQlNS1mD4mV/UULK5pUw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=S5DMXne5gAxPftC4iCORJgf9gMGWYsno69yknkbDct6X8KslMgEBjUbPwGyIfLfpB6LWCZbCam0/oKe8KwJHctobJgUvoAgfT2CoCX07dSj29lSRbq+4qmWqCFUQbX3g0EEmHPx6JZbf+xd31zRVEmv50fGGgh+m5Q3ykdYW27M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=R+mLi01e; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-2a12ebe4b74so41276615ad.0
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 01:52:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767952361; x=1768557161; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+G6pf8+5EFoESwai3MJ4dA07jKvv0MdZ3B0YqUEleVY=;
        b=R+mLi01eS73O2duaFXiblzgGMCaOoCFWX70+VbubG3kwwhVPkwL3CSU4eRsRuCKIpZ
         9CUQ5isqKUH1WW8iH0lmX1F33Ur9jCaxzypA6e4BdE1CZ0IVRlTcMdKew0PoIEPoijo6
         mFMLfeCeFpGceEvO77RKMuL25tJCo9tH43Am1jbGbMPPupsC97jauaEgldCH8HTYVMr5
         4gWBOq8QlII60n1CTnEy3gogPyGa4jCX307x5fqZRvclHWFz6dmxArqvLFUWtZZ3xIdg
         wiHF+u6+CagGwWg82w+nuSJwiTU2c7jr1+H8eANk9ByzY7A87/Sx3mDzkzzTfQc8kFiw
         62qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767952361; x=1768557161;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+G6pf8+5EFoESwai3MJ4dA07jKvv0MdZ3B0YqUEleVY=;
        b=KVAmB6AeomR7FWOKyhKilYkCcqQPnR9eJATqaQtKAfUbRJUN9xRirC2PaROUaDkUmw
         VtWGPuKbs0565b2bO7HnbPpXis/WRa06viciY+shjB8z9GhUbxgp4Y0QOkHtD7UfmxsD
         eC1Vkp2OPrBrrwU9vkLyHCkfuqb8tgAjcDzqt4L48jiL01c9XNPNNUC8FwghBTGypTW7
         q/afdk8icnYaIlp7JPB0SuSOreTZm+PRJgFHksKw+O+yinH6zq43BWFfPu+6Gy7/oozX
         EKP/gceDUkMd/iEQkYDAyftukEmdYV5CIuwmKfojwGIvjeKo0WrDvoFrDlSUOYfueTp+
         6zZg==
X-Forwarded-Encrypted: i=1; AJvYcCUNCC/Dv+nUY0s42Yh+j9awXSabjL3zPimY5Fm2cOIXQdGfqbodFJ1akcZnkrHj37wwRIerum4xhAv9@vger.kernel.org
X-Gm-Message-State: AOJu0Ywv7vu9lLITOySkVcymuxQNPawXBK73D90/4sgPBBZcY8iY2PG+
	QXtOf4Qo7X9FWn7tKbYTbX1Q1mj75Bz6U8Ag1RpYOF8FUMNMFafsJU7n
X-Gm-Gg: AY/fxX7SzKKPlaK7HvJBLy3YAUu2ZRyGORtDvOi1U0y3lI0/t1eBB3QSTQ2XAQ3IPMz
	gfI9odvq1xB+nYCddE58/ZTypIIaQi67CBu+/WXOGnEs9guABloKlPqpO1aIPb3lcMOdcQ6sZ6T
	Pnv4JSVq3RMJR/qEnAQTMBLyXXrvKSacLwpWbS+WA8HpF4/MvBs/zh24OitoAgM7PBa5e/SLa8y
	byGePJfTrpUOox12xyJVutn6gX88FcNlOAvC2kEgMyUKS/cQJNvbSD5dTH3p50hfRMJcwmVxXb/
	pUkPo/m+fJXxHbYOYAZjfVl2+VYvqePC4CAV2Y/UkfTjunVw3f37p+u1W4eLLF5/3GHGxfarZFF
	rJl9eSMR4aJE9cA4D3PuD2tQoBGdwsSy0yiFW6RVNYnpakJfCbp97E57nSqbBFh80lqx5FIDLVU
	+k+O1jk4CTP1pNOwFcp2hGFmDDQ4ff/1+6gGAq
X-Google-Smtp-Source: AGHT+IFPzX59ZVV8+IHg7wcFMfDCowcF2eFCoUcZwnZlwJJUxtou1inee9Yv72aNCcq4bhDITjTmlQ==
X-Received: by 2002:a17:903:298b:b0:2a0:d5bf:b271 with SMTP id d9443c01a7336-2a3ee486f81mr86815545ad.32.1767952361493;
        Fri, 09 Jan 2026 01:52:41 -0800 (PST)
Received: from test-HP-Desktop-Pro-G3.. ([103.218.174.23])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cb2d79sm103081795ad.56.2026.01.09.01.52.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 01:52:41 -0800 (PST)
From: Sudarshan Shetty <tessolveupstream@gmail.com>
To: andersson@kernel.org,
	konradybcio@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sudarshan Shetty <tessolveupstream@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v11 1/4] dt-bindings: arm: qcom: talos-evk: Add QCS615 Talos EVK SMARC platform
Date: Fri,  9 Jan 2026 15:22:17 +0530
Message-Id: <20260109095221.2847067-2-tessolveupstream@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260109095221.2847067-1-tessolveupstream@gmail.com>
References: <20260109095221.2847067-1-tessolveupstream@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add binding support for the Qualcomm Technologies, Inc. Talos EVK
SMARC platform based on the QCS615 SoC.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 4eb0a7a9ee4a..c081746636d1 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -876,6 +876,7 @@ properties:
       - items:
           - enum:
               - qcom,qcs615-ride
+              - qcom,talos-evk
           - const: qcom,qcs615
           - const: qcom,sm6150
 
-- 
2.34.1


