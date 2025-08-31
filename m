Return-Path: <devicetree+bounces-210924-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EF385B3D267
	for <lists+devicetree@lfdr.de>; Sun, 31 Aug 2025 12:59:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AA9BA442557
	for <lists+devicetree@lfdr.de>; Sun, 31 Aug 2025 10:58:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD7D2257453;
	Sun, 31 Aug 2025 10:58:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Gstl4kKN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 698E6155C82
	for <devicetree@vger.kernel.org>; Sun, 31 Aug 2025 10:58:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756637934; cv=none; b=AwBl8ZOFeUj2V8lReu1e22PCIDnsm5Gj+j8L4879D5BHyp+hdkWlnxNo8dBnD+C+p4kSqkoys5TjUV7Hz2xic+bCNsuh/uFC0D0CWog0/vTqSsKIk17hEnHVrS/OFi9ky5nmffM2LMQpTFbpXiYsOJYekxszkLcaFQUf269HEPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756637934; c=relaxed/simple;
	bh=WVIesh8/RBO7fqb/F+aCLBcMtMA9LcfeCRq+222xUIc=;
	h=From:To:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=Tc+LqB7YK3H4yW8zXw8u37K0LTFvfL3dN1CrXK40dW4RedR/MiUZA4+Z9/dGUpujL24jWspOZsJqjOsTjF2ntR54NRNXE7unWxL76wdDM3UOpPUXnLkj9WjB0kSZrjw+os0HCXxc15McZa85OA5T8+NWpD87Xntwvs5nG6Ci0tQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Gstl4kKN; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-b04260d72aaso348066b.1
        for <devicetree@vger.kernel.org>; Sun, 31 Aug 2025 03:58:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756637931; x=1757242731; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=w3zy+4FxM6e/ZYJU6tdKRgGniGSW0dORiZkBYaBYdq4=;
        b=Gstl4kKNr1k2/CoNvVwMBDUgJaKJI7OdDt5JO+aBfCazoJEHMvMwgH6eh0DuAWW73n
         WirdSYdOIcCmUyzuxB2h0ZQ8ljC70jiyUZo5fG5Y1cDoTfrytPhmP7BUQ3EoeYw25XsQ
         xWSBw6RxxMbCGwsYMraFUnQIWxrGLcMBTUXl5j/2+JBDYkkftD2QJAURIsHa6NYtmFZs
         qlkAsbZrC/HvrnGPscZYCsa7/r1pD396RTKhoulstVuUobdQQMAQ0YM6a4z7M24bcU71
         85LA+8kNv3xADoDUSf37bc2dqzqLkMxqa0fDT8yixNXm9mde5YuzyocbpS67bnxpUhME
         gOjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756637931; x=1757242731;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w3zy+4FxM6e/ZYJU6tdKRgGniGSW0dORiZkBYaBYdq4=;
        b=J2F7/7dwpcFao+xJKROgzICLYSDWZeJfIeiQFijosdh52+h/bqPJkunRkzvd16aWxf
         oTD+O7jzoU2Y178LqN37oyymCse1mDR4Q5Oof9kAJIIBA7unkqlZX/U6msx2oqrSrVA7
         vnjE7hbaqTGQyqr2ZGiQpVKgQcfxCwn2lqCCEP/3ltHvrMErmMh3T1Ks12kVVymo1cXj
         H/SwYJdMBiFrYbVrCG5oBd+TzHg3oU3YDUd71tlsIrInPEYK2MFYAEJdmHB5DXGisf3w
         l3P6rGMQpMQsb0XopiifJPsE5NfJS3bfMSmUCX++2bNT+/pp0+k5vNo2DfFBuc/XlN19
         9YAA==
X-Forwarded-Encrypted: i=1; AJvYcCUo3+9sxdq+awvQxq+YjxnubW6JrhFkP+VaWA+D5wnrcu5ssAJlI5NGfuF1LWUhXxiak1F4lH+YnxnT@vger.kernel.org
X-Gm-Message-State: AOJu0YzKzdD+DHrKrhI476Zf1tfF7MIAgjj/fIaYKs1X8Q49xNHS0a+d
	eAp/aWYQ6lELRROiIt2kfcIvHKu53lrUUU3oqBAz7icCv4o5poZDs96UwVTQZcI6s8A=
X-Gm-Gg: ASbGncs6Kjij9z3R64cCZbrtjXCa6qhDC0jrLM6IYU4ewjD1C8CQLeFL8pPxoM8KbiN
	1LVuEHCJzEtMy8lFBdzoU12IG57Vx2CHIsHZGskIfo9TK5PCyjyLgNHo/3Nm749ekBL+swLW+WX
	jymZhwGkP2/z9X7V+L/QimJfmAZ5LSlhfjz7bWkPaMzE8bRgC7ymmW9bqvXgqv+qll9l2ZqkWyV
	uNJyVtX97HJRU9wWhGemEaWoXgtgVZ6A6D2I2rTZLENNzcbVCONVD5vihsCOI5wkrqjI7sQYhdV
	PheYVexbwHdPExaISI7Hdq7BomAIgFGM9sBYl7Kttcc5brkEM0nYDLPfEgsbT8wjvmKBIjCFwAq
	7xD2BYYcpplO6HZdlFtNl3Kn0KS0me/1rxdhJkfK5PwnR72kbLA==
X-Google-Smtp-Source: AGHT+IHTBJiyshvnvgCsLBk30RyM3YNR2Y8KXQJ7s2S5taB2fYhC2gtwsyGjCqiwFtwHqMDToZZ4hw==
X-Received: by 2002:a17:906:c152:b0:afe:c2e7:3707 with SMTP id a640c23a62f3a-aff0ee1afcemr349633566b.4.1756637930739;
        Sun, 31 Aug 2025 03:58:50 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b017e4b9ed7sm349176466b.90.2025.08.31.03.58.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Aug 2025 03:58:50 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20250830093918.24619-2-krzysztof.kozlowski@linaro.org>
References: <20250830093918.24619-2-krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v2] arm64: dts: exynos2200: Add default GIC address
 cells
Message-Id: <175663792937.36292.10292837875011385286.b4-ty@linaro.org>
Date: Sun, 31 Aug 2025 12:58:49 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Sat, 30 Aug 2025 11:39:19 +0200, Krzysztof Kozlowski wrote:
> Add missing address-cells 0 to GIC interrupt node.  Value '0' is correct
> because GIC interrupt controller does not have children.
> 
> 

Applied, thanks!

[1/1] arm64: dts: exynos2200: Add default GIC address cells
      https://git.kernel.org/krzk/linux/c/59abe5c87267f1f3bd627af20355b490b59f9901

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


