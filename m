Return-Path: <devicetree+bounces-155864-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id ED32CA58681
	for <lists+devicetree@lfdr.de>; Sun,  9 Mar 2025 18:54:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BBB623A7402
	for <lists+devicetree@lfdr.de>; Sun,  9 Mar 2025 17:54:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F8511E834E;
	Sun,  9 Mar 2025 17:54:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EnPPfSFw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A192B1CAA76
	for <devicetree@vger.kernel.org>; Sun,  9 Mar 2025 17:54:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741542882; cv=none; b=U7Boaqo5MKLIRY3bcgYGIkacOyViHFGeCKu4GYXyYv0A8Znn65GD1Bum68qJNQHUMmbEKm3XiKPIQJ0+oB9RTB+lk2NgtwwKe8CSqLRt9rWT1hauqaBe6BUxfADq841v3PEjZzxuiKsgGyGnsE5GwYHDmLL8C+8ku5zD3h9LT9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741542882; c=relaxed/simple;
	bh=Sjd6eO3hcXcao/UsiuWYpFLSLNgg7a8oNviIVpcaneA=;
	h=From:To:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=lh9u5OzlVSceHrDUYu4ItlKliW5N3Ivklq2qvnkwsN3CuCc8+XMUlzlEy1mCmn1aVGKLTlxHJm/DmRHP/8R6WrsdDR1VhHUoSSi4V98L64u+IsTaByndWhLPrWj0/cx+R17sv9Tce+YcFMEpAKCuKGHwQx15KwNzMf2IlN0D4nw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EnPPfSFw; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-3912622c9c0so176422f8f.3
        for <devicetree@vger.kernel.org>; Sun, 09 Mar 2025 10:54:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741542879; x=1742147679; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZAqFx78SArbrBH5Q1+Ilkti3+dZ3JAByQkBS9egtY1g=;
        b=EnPPfSFwJ1Hc2Sg7X+FzpbzbeJ3pcyCsnNzxG/CN6ER+7T2RD80W7vxLVKgzOnFP0H
         1FvyRGCJ2hRWqLlByJh0q5x00hoP0wQxqvbjeodd5gvmzbCFPtyV/EIliTm30tQE+Gn8
         F1vKl3BoQpPGLMpMfZrcgBngphCfsmaUqFKIN39s60YzhaK0nQKbsuZ9oQmhO+1P9VZw
         EEt48TtA5WZ41r/aQfzuARi7bD/VewDdtQU1DKGfl7W1r5DgLybcnD03WanoPpqARyNz
         PDMkUjqBbdCdxcfsphb/5JkVRqh3SnrRJSVpGK382SmIb0jewdvnw3CkA+nzLsjbl72s
         gTog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741542879; x=1742147679;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZAqFx78SArbrBH5Q1+Ilkti3+dZ3JAByQkBS9egtY1g=;
        b=ZAvCyxen2DHdYXhGn6rNfvkNgke106oemNkqzrL/MossJjQjot5UweMu0sPn6FZoID
         IdCMcwsfs+1sgBMx9hyLpEkurcxJxPTpwSN1nnEp6YLEmrrwuqyTOdt1Uywzp+q4aVy2
         vKmPx1pmpYgRID139li9xlZ5QGZtUHQ3UF4ORXAtVMLiq0eLRVjwrdoVk1bBI3O0+I9V
         C8qhCkhGJSF42AU/z0E+6KpjpHY5G8MIuqfhmTgMTsvlMJcWrmFC+zyrQKgM7uPZ+ubc
         5kBwwhxu/vcqtkepPiPkQSIytiOOXWenIgl0OJghf4Owz0P4F770X+2L+FqSj1TYBHMC
         uflA==
X-Forwarded-Encrypted: i=1; AJvYcCUYO3fsVu/VbY1se4ru7FyKiWwpJVQ/P/zHlknhaWQSc0ttc48YIFYpiJZdTQKzr83TkTrUofPXHHty@vger.kernel.org
X-Gm-Message-State: AOJu0YxmjHv84uKP6l6SIARFkQtjC9THKgC2sr+gHOkAuLvgSR26wv43
	yuqrAuO5CtcgYqsxmkUeOb6zS6rGfGGUS1F5IUbEK/FywinMltA/hn9D99K8enc=
X-Gm-Gg: ASbGncsNWZyZ01jmq/EvqksRw56HyC6z8A/ANIu/SdjdJVljwD5anEMqMYWBiJVGyVv
	+LNQ/rwbOipjMUy9ru5SnuW5ewsy4YuXANJJX2whS/RkOrY2gtDD7usuxJsQXrE5LPCnthfav/l
	OTQdfFlQ1gRus9MVh7wGaCA6uERdhR7B5/7zrmXBXQp82w9lAvkENzartVEBwiJzk/cwZjoYIwP
	tko3xzzLHEkVAt0MRvJtTI6XVDU+i/HOMJLxvDgzwLafaYdNWl5ZC/czwGdHR/MVLpHr56fcO7v
	qQh5xbVpCMINdI4AH0a30bg7o5tb0aHJpz7WsDFMu1emdqTESj/YLUUolrLu
X-Google-Smtp-Source: AGHT+IFYzKEoA/0BD629Q+oyNq4LgcHKydsos0JaNMt90Qxi5qetmVUanZhNd8Ow0nb+R9OCR/6Ciw==
X-Received: by 2002:a05:6000:178e:b0:38d:d743:7d36 with SMTP id ffacd0b85a97d-3913bba4880mr1367921f8f.10.1741542879038;
        Sun, 09 Mar 2025 10:54:39 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.206.225])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3912c106a1asm12425578f8f.100.2025.03.09.10.54.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 Mar 2025 10:54:38 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Sam Protsenko <semen.protsenko@linaro.org>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20250307081341.35197-1-krzysztof.kozlowski@linaro.org>
References: <20250307081341.35197-1-krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] dt-bindings: soc: samsung: exynos-usi: Drop
 unnecessary status from example
Message-Id: <174154287672.7465.7756190815598140333.b4-ty@linaro.org>
Date: Sun, 09 Mar 2025 18:54:36 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Fri, 07 Mar 2025 09:13:41 +0100, Krzysztof Kozlowski wrote:
> Device nodes in the examples are supposed to be enabled, so the schema
> will be validated against them.  Keeping them disabled hides potential
> errors.  Only one child of Samsung Exynos USI device node should be
> enabled.  The node in the example already selected 'USI_MODE_UART', so
> enable the serial node while keeping second - I2C - disabled.
> 
> 
> [...]

Applied, thanks!

[1/1] dt-bindings: soc: samsung: exynos-usi: Drop unnecessary status from example
      https://git.kernel.org/krzk/linux/c/8f299df1b75ad0939f1340182c265de019eab438

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


