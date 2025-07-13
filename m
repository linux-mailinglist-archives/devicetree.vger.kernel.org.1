Return-Path: <devicetree+bounces-195798-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AF588B0310C
	for <lists+devicetree@lfdr.de>; Sun, 13 Jul 2025 14:47:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2B2833B43C8
	for <lists+devicetree@lfdr.de>; Sun, 13 Jul 2025 12:47:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DD6C279794;
	Sun, 13 Jul 2025 12:46:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="b/cxjQ8a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9910F27875C
	for <devicetree@vger.kernel.org>; Sun, 13 Jul 2025 12:46:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752410814; cv=none; b=hZ7tPxjtXtjXCvoGZUAUbbEbaS5/MAGN418GYSMqnqFJu15uE4iIYQTEwC+OkCK/B9H1SFhuDq4rrFxtZ7BxWGlFYXgV4ktr5fb+42xPWcAtnSe5PlUn9KgbdQsof3nLqsOthNd47d1dD4ExU4UaqNrh+gcAStrsOYfHhoFyNbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752410814; c=relaxed/simple;
	bh=BqgMniJzXKHilP+gLbSufcUqZU/KB3aXiupUf7qYDNc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YEkUNZhFLrL9F9k7DygSmW3pnOYGRDGorJiEOdT9SL8SZO6sZO2zOL2vozGNWzgVWiIKNXWcStBWFtK6oDlxj1ML6g5EFoScqYp2s8ncjoBOEYfDHIfO5aTaTKfSK5myyOZgVDT7jM4iXUQniOH7tAS1pDSUdEMioQ24q8dJYWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=b/cxjQ8a; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-45611d82f2eso680545e9.0
        for <devicetree@vger.kernel.org>; Sun, 13 Jul 2025 05:46:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752410811; x=1753015611; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1ZOhfEEQtJ+jgJyLH84T3pMg0aDqoZmTteF5gFJWLNM=;
        b=b/cxjQ8aaYcxOx44l+vx8e2lD7oi3bgFkwtlYRJOsfjaDTGjsncXOzmYF/B1D/zM8Y
         4ivR3i6QA6d8KhVxjsJJLpruKpKDDxkRaWEDbtdkyEtl6KlQU1XjeMRrpsj8yKh1WBWI
         LmMMXTzdYeLTUprFB8aOMeQhFQRAic3i1rF80+afNQTgkovgsGSNIi9YSFFrhuBgyNI2
         yV4bcBpqbrkhVwYonSr7jOGBRbcOLUzhhurjxvC3Cmp66Cln4sCn+azO5UAOCXGH+nPA
         QUhBq7wGiQ14oBuE8dFHs4RbuWFqyZDSDrKgbPw+KZbHlMObGrfLUhrovAc2ePpAENz0
         KRfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752410811; x=1753015611;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1ZOhfEEQtJ+jgJyLH84T3pMg0aDqoZmTteF5gFJWLNM=;
        b=gJNpZHtaVLO5o1HrgLgo6qHpkGBcCVOi/YfTQ+hzHB/W0BjH2aK+cra12MmSYcoKw5
         E5wVmF6Sjj9FwqIzxj9/+FDcbL7hzwxCB7mCOa3vjoRJx2oXvllP6YZcubqG1EvN0DpU
         60InCfDuBhcH/7A/o6a5vrDkqsNSGKtrg29jpT06ALr2uTKi/jpbb5gAlJrchbkd6iH8
         KWACiyfBXM3A96EZQSpyeGyBMTpSETyVqacTjvk0Yb7aAyowTgpSYxYAeLWelA38hUfu
         OfohRyOKmBT0uxbE/H1s6Ckr6SxqwJGuJpp5DgUtx+BKOSwpy+0yXBHpR9wio4Bcsp0U
         wF2Q==
X-Gm-Message-State: AOJu0Yxs1iKEI9fkIHd7+eq+tgnzI31vIOUEax5IOSS4P3qXQlqWIrZj
	2jAaJH6HRJDWUuj8Rt3J78ZMgIlhmJsqtq/+/klH1YUTW7e0G7899LxBdBN5mlobijk=
X-Gm-Gg: ASbGncsUZq8+0TIqmcqi5AuI014yhrhL6ESiMYW84fF0q0Z9seYa8d+u2XQdtWb7JWH
	zLa3RU1zd5wbESvpGoDX+nIATPj+3NTTtNmEnG9hKud0WHoej1J7svkyHkSCQkRdlLudUgEAYNs
	2TlypAGajyji7NNV6mSf1ZsGRarxC5SxIM4OlQYHFda/EgoD8LVKG0Z8BmL0v9e17gFD3EwOAld
	Ub5dO6rzuHg0/XYO5E5TSTPuAleGLj9n8ZrxwwWc5g4X2lE27B7XHY82DzFnyW9X593nEJtgEJP
	tsEXTeD05BoBsSI93SdX4UItrNfpfeNXuIthE49/lRtJqEZO///x+c15/glVbTQ/ys65GOPmayz
	k/gB/LmNgBWLcfFMeXa1h9Uts5qAZ8vMqpI/E
X-Google-Smtp-Source: AGHT+IFDcj6Sh7lolDAY0YGgJLGzZQLGX4fgdNN48lehGlCHMBeaV5pjO4JrzbzdR7GheeQ7xR258w==
X-Received: by 2002:a05:6000:2285:b0:3a4:ec9c:fb58 with SMTP id ffacd0b85a97d-3b5f18e7c75mr2709558f8f.9.1752410811008;
        Sun, 13 Jul 2025 05:46:51 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.222.89])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b5e8e14d07sm9828835f8f.66.2025.07.13.05.46.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Jul 2025 05:46:50 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Sun, 13 Jul 2025 14:46:39 +0200
Subject: [PATCH v2 4/4] docs: dt: writing-schema: Document preferred order
 of properties
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250713-dt-bindings-docs-v2-4-672c898054ae@linaro.org>
References: <20250713-dt-bindings-docs-v2-0-672c898054ae@linaro.org>
In-Reply-To: <20250713-dt-bindings-docs-v2-0-672c898054ae@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1057;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=BqgMniJzXKHilP+gLbSufcUqZU/KB3aXiupUf7qYDNc=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoc6qzSV9Mj4UnRnIQ4TJbHafuWWw66jH/SCDOa
 EYwfKFQ/JOJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaHOqswAKCRDBN2bmhouD
 1wczD/99LVY3VXTPzYKevxZTkK3TGnkeXgWlwmAhZN9Cfhxum3paVCH7vlKplwvN4R8DlYeq/zh
 YrBiQyDJpRzWCRMJXakkaOHf275IjMM2XMkjpQHMRVSJRrXRrEucUIbkd1lumzVcXw/m6xhx5ec
 nbPHVeHsP5EmrevKa4k1TJcNeJmu2R7MD6NzpIbpCHq+BoBP3cxjYcg20vhHdAaIrNb9TruA42+
 w0NYRQbOrZuTVUm+N5Ei1nAzTZxb3sY4ayKPM44cb2KZXURSUtioQh0twUIZW/DDyMwKRb2/xyw
 WJhYY5fDEiCDk39Wo/s0f7P3kADiyq8c9woj1BWuHSK6d7dxcnCrKhVyczBACJo3WPMeJqYGyrQ
 79cK+DEhQTyDpwRFbKPu7Y7S7M2T3m76HVXx9+k3S401YJzhh+Q3jDHNQ8g4UKmT8Qz4fMWQP+J
 IGQt3JxYYfKHNx1MevbcurR9bVIRk8TK79N5xcADNomDYasOlWcmannOD9E09TufQpU0x8kiZHR
 /5to7QBc+4Rq/T/gZQr2jeZohkFzfg9JJ2tz+Qhf2pb1eWqEp9m36Vm7zMdWhdwMi8B6puhm3tI
 rAxxbtUZMZJPiFktZjXNMzfYxE7Ij67PLjbRgOjmgYkVmrZuz/+zd7IOACyCGtdO+b20+MYvRsR
 x+vQXWLXJcDobqw==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Document established Devicetree bindings maintainers review practice:
using DTS coding style property order in both 'properties' and
'required' secions.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes in v2:
1. New patch
---
 Documentation/devicetree/bindings/writing-schema.rst | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/writing-schema.rst b/Documentation/devicetree/bindings/writing-schema.rst
index fc73072f12fc58dbaf3dea3eb8cc79cfac0341c8..470d1521fa174f4fac29004b95a9b1a8c37071d9 100644
--- a/Documentation/devicetree/bindings/writing-schema.rst
+++ b/Documentation/devicetree/bindings/writing-schema.rst
@@ -171,6 +171,9 @@ Coding style
 Use YAML coding style (two-space indentation). For DTS examples in the schema,
 preferred is four-space indentation.
 
+Place entries in 'properties' and 'required' sections in the same order, using
+style from Documentation/devicetree/bindings/dts-coding-style.rst.
+
 Testing
 -------
 

-- 
2.43.0


