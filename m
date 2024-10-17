Return-Path: <devicetree+bounces-112362-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C84579A1E42
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 11:26:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D832E1C26C4D
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 09:26:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0414F1D934D;
	Thu, 17 Oct 2024 09:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pu/YrOH9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8AD91D6DB6
	for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 09:26:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729157192; cv=none; b=olJQwgfv8zl+xdVUc4NXXgkjXoJ0g/4mX+s5mYpLpUYeb6idFJCPbQyuwVXV7tlAqvd44By56evjxqQPLBi7z5YL7lt/cqT2niHS9Yh30EduLr4mH7vhTLqqo5DQLJ1UbkpnoBvG39zARa6vZsMxvrBHl7PCSucLOu3uO3/yRvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729157192; c=relaxed/simple;
	bh=YlBZ8ANeF6BBVWaTvCCXMU7vLWosqmEku101sALjfpk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=lQ5FSNxWDqdiJhiCIhReiAMiQ963Py/jU1u7lRz01LcogH6Wg6dotW8EjkTmM4VCXS5WnMtRCIbDou41Q4rv+7f5Km4LfaFNE6d3OsEjiP1vvemPz6takjUhjLUDlHbWYnuBNLjr32WKayKDHbUW4rFUUEKCrzcDx7No79q7kS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pu/YrOH9; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-37d6716e200so87488f8f.3
        for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 02:26:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729157188; x=1729761988; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SfyIWnwV3lwGADuJG2fMylvg2BoP0K51z9HWPYMPYew=;
        b=pu/YrOH9JgpBiTYyOmEtGxwYYrBnwp1YhlJsju0Fcji2OQyZ9ggoFYogL2ErHqXmqi
         p4GLw2qhhMgkhLMd/Q3DrTe4JE7FTjMUdMw50pfixGYlLFyYt4ZAyaFq9qUf0gDAyLlX
         GP1WG0ICPGGtN/sCoLwB87p+Z0ggkue5hyZVly0QKm9QnWtPVR0zGDin3yPiogE41F61
         Qp9Jo5M613JKqNbJxaGbR3xdMiqKMrDBt2En7V8O7ymFZB+NUAk5FIGLDeXr5V81g/HT
         0KQwfLgMe0bcS/AkfjQX6Dpn/xAfxIz/n4xLTQWzi5bGaxSkLblg6Mn4oDH0U8w+Z9Mx
         DnHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729157188; x=1729761988;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SfyIWnwV3lwGADuJG2fMylvg2BoP0K51z9HWPYMPYew=;
        b=EKLyCuJMGTZzeX6yLR7oXz8BY3iD6cKzhyIYejQp0VBX3jZBMAhDDTY6mJjpl2grjG
         WdL1sjp8lsbyr6wK7xdBMtC0PVPsdDTTelqO9Ij4le0ZZgTVlmHDXjATvDI7WDaTbioA
         ZDVSvoBBYTNFq0o8YjChNkJH31JpF4NuGHZKO4ZqlTxgDp5o7xdL5QH13zSws87hcrN4
         1LDIAtfaJ0fLySOk2Drp6M5FHAiH60RHNWEMPKpVDD64an04zw85G7dt1Dtvw08EfoqP
         wLoDgezP5gcydQpSvXGh+lngYLkvl5GsPyGAVWOHuq4kBRJJu2A8hfocGAnnNNj51FbY
         MIUA==
X-Forwarded-Encrypted: i=1; AJvYcCWa3U+48NB5yOrzUjwkMNYEYwHof8UPN60jRVEXPLaAD5T3fB4zjo7OxaCPYbT3KZCwi+dTUOHchqsk@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+VxU7YAeMHIj5YOqXnnXfKxTEZrU93IaMF0XB6wsJtgU3rd0I
	hrCYpEXH+4MuX9xI8wHJOHI9j0ugUVC+iT4HEcool3VdS9gqElZpPNcVXxVY3jw=
X-Google-Smtp-Source: AGHT+IGOU6k2MtDmw6MdujNHCbudW8CfzZOST7qyTYi0VNT1WiG69IrJoMk6J1SI5CvMETooQ90WQw==
X-Received: by 2002:a5d:5889:0:b0:37c:df55:c1a5 with SMTP id ffacd0b85a97d-37d8af0e253mr1837172f8f.6.1729157188036;
        Thu, 17 Oct 2024 02:26:28 -0700 (PDT)
Received: from krzk-bin.. ([178.197.211.167])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37d7fa7a2a8sm6647539f8f.3.2024.10.17.02.26.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Oct 2024 02:26:27 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Igor Belwon <igor.belwon@mentallysanemainliners.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-gpio@vger.kernel.org
Subject: Re: (subset) [PATCH v3 1/3] dt-bindings: pinctrl: samsung: Add exynos990-pinctrl compatible
Date: Thu, 17 Oct 2024 11:26:24 +0200
Message-ID: <172915717449.42475.12515160143106576807.b4-ty@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241016154838.64515-2-igor.belwon@mentallysanemainliners.org>
References: <20241016154838.64515-1-igor.belwon@mentallysanemainliners.org> <20241016154838.64515-2-igor.belwon@mentallysanemainliners.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Wed, 16 Oct 2024 17:48:36 +0200, Igor Belwon wrote:
> Add a dedicated compatible for the exynos990-pinctrl node.
> 
> 

Applied, thanks!

[1/3] dt-bindings: pinctrl: samsung: Add exynos990-pinctrl compatible
      https://git.kernel.org/pinctrl/samsung/c/5b653cb60275e1ad1a85f0d056a3084c4635623c

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

