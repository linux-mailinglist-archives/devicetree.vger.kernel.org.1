Return-Path: <devicetree+bounces-135610-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A0D8A018CE
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 10:22:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 506ED162545
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 09:22:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 842BE1411C8;
	Sun,  5 Jan 2025 09:22:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QugzGU/S"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A56AB7DA84
	for <devicetree@vger.kernel.org>; Sun,  5 Jan 2025 09:22:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736068950; cv=none; b=f4hZrv1NW0TGD+XI1tLrOHNA/ySne7qbrVl5fGdze3FaQIIBH2kchra6cxOXEwJrv+0vfcPWsNpSFnQPHB6Zb4vSw4ObBiZU7oPSAg8b+Vy/pCSkTiQJ3FfiH6sn3nOQbNuquNeolqHqexAGEHE8cDRQ1D5+SvSVG9hwqhYtqwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736068950; c=relaxed/simple;
	bh=3rrRTX1ghbI7KECmoT4mDv6zhUTIr0q5ZV1ibXIz0yY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=Uu7LusD/GHJkKEVYsQv3rL0jx8EhXwu1bAVNpJjW7NI7NeTc7hdRaIRWE3dQs7SXGw1KuEP9EGH3i3ZIx2TYl8V/l+Uv6BWNj+NZO24Vov++L8DH3YAm6ITgPwuJCHNydtzg6nDRZgq8yE/Spw7Zi+OASvaKqFA3Ywvef6JVU6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QugzGU/S; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4363298fff2so19965435e9.3
        for <devicetree@vger.kernel.org>; Sun, 05 Jan 2025 01:22:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736068947; x=1736673747; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MoLwAZEqISlMmR0/2/uC6bmTzYhP6sEmiHzKuq0Qr8U=;
        b=QugzGU/S1DLO20fLBOQ00QGc4WrOoFQnQD9Qf4IGcuYYHiXYunFupJL7qytsx5H89p
         7qnaZP+nMMD9G8dbGM8lF1sERrlDRE0ugqwx2PwTH0tzjOgm8K3Uwt3dw/dM3qGyQocB
         7WgG9mbBV/GoOfjVry5oVr7iTe3/zwvFx7vWUPYvvXPwWN9HY5O53vrIWFB2bR7UNk0+
         tVbXpW7hiNKFUQ2xmGVadEhw0YxEiw3SzdMadKVC05F8swRq7K86kgEQ+DQUjUnsFowL
         K/TZb3wYauFR5qRLDmONENxXIsH9Nv74vgphKMmcfhNB7fpfCP05MDQvwq2caAfm68+I
         wXUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736068947; x=1736673747;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MoLwAZEqISlMmR0/2/uC6bmTzYhP6sEmiHzKuq0Qr8U=;
        b=FYjFOmywIcjBSKgpKvS3C/2HkP2NAk7GOLuN2PSRk4VbQKwAaAu0xho6YkkgJJJ6lk
         8pYeHaIMOD/ckPg8KKdtVfST4krSCnkVKWjfrRr7BH5a/Uk77CKpboV2+ia9QV5uSPtD
         AzMvtuxt8j2NVfx7EJEmY1PQBelSqydxAuquGOb8x/qgU2prRvs0h9PYDjZtKkrOqg8k
         Yih+vACMu4WMH3EOsy8kyg6M6qX9YTEHru2lG+Y2Yktr2ln6e71LDD1Z10piw75LxZUl
         XoI4Om5r8RWTnEZEYCNnWi7CtLp1VFpqlv/gKMqtbcpVa6rVS8cjyJu0qvyhJGz7Qwge
         eKGw==
X-Forwarded-Encrypted: i=1; AJvYcCULQOnfkGeGKkCqJAdbhIdXXRupXfy7KWqcU12MbWjvdDvrDG1NFf2eLQyY72MludPK/1GAQ237xaLG@vger.kernel.org
X-Gm-Message-State: AOJu0YwJLSwUUsVZRaOXXuNwphnovEeqH8S3k5a4AeXBBU0xbe6MkGfK
	uKp6FijHaFbxoRezOSnuIJ66A67zNS77T0/HftGrY6UPsH/ufxakq9KirfjQhIc=
X-Gm-Gg: ASbGncvwfcGNw1ybAhxUE+xllfGXcwcc/CXDyC3B7GdR77KVXdZJtPHYlEO/3iXXqrN
	eY7BaiqS3tDMloWt0fP7SmzKRFdqAP5nM8r7UU2X30JDYbQL7hMP9IpU0tSd/D6psULrJ3R2lR8
	FbOxcWM/7xxhVY+U9HBK4yJyV5PRsPdifXMhRUUITlDVE40id8WFvcY6deXyixzWfhH7unYAnUv
	X7hhZ3VjBEZoL560LtIFOz9AJr6C55Il5Gv8X1OX5W5T4dbnW69Dp8X+KzG6mWLIHKnt7qF
X-Google-Smtp-Source: AGHT+IFDBu0Qv2dn7E8kbN1jDNDeIMzwRQzzOzdSqjehlaqMHqJA/mYVLCOvTG28JSCdxr1y3VmG7w==
X-Received: by 2002:a05:600c:4709:b0:436:1ada:944d with SMTP id 5b1f17b1804b1-43668b60256mr183378505e9.4.1736068946871;
        Sun, 05 Jan 2025 01:22:26 -0800 (PST)
Received: from [127.0.1.1] ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43661200ae5sm533469405e9.17.2025.01.05.01.22.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jan 2025 01:22:25 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Sam Protsenko <semen.protsenko@linaro.org>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
In-Reply-To: <20250103082549.19419-1-krzysztof.kozlowski@linaro.org>
References: <20250103082549.19419-1-krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] dt-bindings: samsung: exynos-usi: Restrict possible
 samsung,mode values
Message-Id: <173606894501.9463.18049229370656910572.b4-ty@linaro.org>
Date: Sun, 05 Jan 2025 10:22:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Fri, 03 Jan 2025 09:25:49 +0100, Krzysztof Kozlowski wrote:
> "samsung,mode" property defines the desired mode of the serial engine
> (e.g. I2C or SPI) and only few values are allowed/used by Linux driver.
> 
> 

Applied, thanks!

[1/1] dt-bindings: samsung: exynos-usi: Restrict possible samsung,mode values
      https://git.kernel.org/krzk/linux/c/7ece8b3ca3a6424b220e2a83bd4d625bf5bcb8c8

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


