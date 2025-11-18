Return-Path: <devicetree+bounces-239812-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C1D0C698D7
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 14:11:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 7CE8B3528C2
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 13:09:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3528530F95E;
	Tue, 18 Nov 2025 13:08:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QqniE1fr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD58D3126C4
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 13:08:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763471319; cv=none; b=hjTZYnPSNRLS17gKvNSaoKMZ1Gf5nUnsDn4gvCC2L1hNaX+0UU9KQw6a5fHFOix0nsHVRD3bNMKhq9Uk+XH8+hnu47PNeqGVUHj/KPZUgXbrQoXi2vMlmM2w94CmPw0tnKsMUumXnt8IpGji4MkFjh9m7cerRQFqtGUbusLkOqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763471319; c=relaxed/simple;
	bh=zfksRdzqKJhRlSNkDPTjQcTPNmX+bLOPlYzuDXVDI+A=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=svqnYlGDBrS2IHE7cWqdbXGWCzA7IGO0Jkm5wlKL5gp3aytwKt2JXZNPFvTzfwGM+ZTeB1g0pxlBZhs5DrQBTL8bEDovn/nuI4iIaWGy5DEzVoq+HC2rcNXfIDsALjNBlF5/ZYKB6xqGdPuef45cNWfeOf+U9qDWRBI/+jf1vYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QqniE1fr; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-299d40b0845so41777485ad.3
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 05:08:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763471316; x=1764076116; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mKekkA7djcC5xOnYLDnvST4x7vzTTfMx0HGr2gLWVgw=;
        b=QqniE1fr6XcdNPEunWFclN9tDHOLVP6gYQmhrVt1tjNrZUlorkSqmt+WZLCSa0i7Jt
         ic4HYiQUUK6/H+oFpF/ppNJFNm+71pTflDwZrs3Tj6QF048YhsrW5Wl9sxsEyM+F/PV3
         7Ovurj58qUKPuDvaiVA4wQBrhXAPqubQ9giee2kU803vDG+zAVeA/1bSysxmp4oHUw3Z
         Mc3aVXyim3cLZRRCs9r7XTZ90zlXjGycskhtMKuWKgnKpzcrDgev6rne1gPp9R3JYTIh
         91LIC95lzT7IFtruJ1G8GOXDPfhJ2YVEbHfbwXdpxr5vqGT3v4g8AD8OFM+/XbsTDGD9
         8jtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763471316; x=1764076116;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mKekkA7djcC5xOnYLDnvST4x7vzTTfMx0HGr2gLWVgw=;
        b=VMFo7A/vuU41ObtG8JzpuNfC8aXy2vJho3oXYNQZ9y27dGPq7tbfCGSbfPnAvTMpqi
         w/ZeupL9QbpXBg/3izwp/YFWkAJ6aJX4n++aJDrfhNo9jMdalJj0GMhKL5wlpUNO8dCR
         tdF3vAFYc1SPNQPUNwU1WDESd+TfReOz1pvoIFIKpV8SR+xFmYLbb+jGt+XYpT4sVUpe
         6abe96LWfaioEYkW2l2mKzPM/Me43mbhB2uEI3gJLiVPS8Oj5CHrjwv2UkVEP3hUtA5y
         DlHi+jcTBER2NWK1rFZDALzTMaI/G7YbaMqB3Iq0iGrmFInkoIY/KsgGezRpgq4p+elp
         EP0Q==
X-Forwarded-Encrypted: i=1; AJvYcCUq8aPTWHh3K0DlWLUlMTE7lY4nBhT3/q1x/kpU0zNlPAyCoXWbZPDmu54C9grATowCOONT9j46tBix@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7zWGjH7h/CWHGPnAaQMep9MX//VbdgA2ErFd91CvS45KwOG/A
	16lciuM9Du9cs5L8LHwUavUAJggTjs+ad1Y4zXfnlmsARI46UcX7eDKQ
X-Gm-Gg: ASbGncs6M5QullTsGjV1a7T4oJ4z9/ZR6wWZt41RxOkRG4g84bz8gUt/LWkt2EnU2Fl
	OiemaIYWypwUZcJlI8z11qLMBD9oyhWcEQS+xhtXUNtBvH+S5PkGDO84QR2aocgIhDZw8QQb8jk
	uoRZce7VFPWU48aedWhiuxd/REQSIPB72V3tIVTdWRQ3omWNzQoiVnu2yJwodfD2Gp+7t6Lvvai
	tfmcocM6GMytr8+c42HIA0E5I2DtBX+BsgoSAogQOuKI6tPAPndyymtKXKv9LQPilOMySqbmSZU
	l+CBqzBHm07sk4xThC/AO0gl2+ytneuG43pvEoUxGxgwo9Xz04By8Wk+4EkCe/orcibT/YxQ6gx
	G4WkCuE0H0y+0v1vc4LE2lcQpxY6LxdJG9i/Vb0JMIn4/GsA9bnXuSKzwLcXFBhmeAckyXKNy5R
	ufpwzKc4Dmqw55NYjLprnSfZq2bnbPJ3qrqol9pGaBEEzjT28=
X-Google-Smtp-Source: AGHT+IFGkfAfVvalHmLbPBzwtmAj+++qYZfU/Dlg1BI0t4hg/00hZqTAt1eAquJ4V9nxjYQHPMYbQg==
X-Received: by 2002:a17:903:1b04:b0:269:b6c8:4a4b with SMTP id d9443c01a7336-2986a6b89ebmr182016505ad.6.1763471316097;
        Tue, 18 Nov 2025 05:08:36 -0800 (PST)
Received: from test-HP-Desktop-Pro-G3.. ([103.218.174.23])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2985c2b1088sm175143235ad.57.2025.11.18.05.08.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Nov 2025 05:08:35 -0800 (PST)
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
Subject: [PATCH v7 1/2] dt-bindings: arm: qcom: talos-evk: Add QCS615 Talos EVK SMARC platform
Date: Tue, 18 Nov 2025 18:38:13 +0530
Message-Id: <20251118130814.3554333-2-tessolveupstream@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251118130814.3554333-1-tessolveupstream@gmail.com>
References: <20251118130814.3554333-1-tessolveupstream@gmail.com>
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
index 0a3222d6f368..a323be3d2ba2 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -862,6 +862,7 @@ properties:
       - items:
           - enum:
               - qcom,qcs615-ride
+              - qcom,talos-evk
           - const: qcom,qcs615
           - const: qcom,sm6150
 
-- 
2.34.1


