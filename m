Return-Path: <devicetree+bounces-134543-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F09839FDE6B
	for <lists+devicetree@lfdr.de>; Sun, 29 Dec 2024 11:09:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CB7C11882654
	for <lists+devicetree@lfdr.de>; Sun, 29 Dec 2024 10:09:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F64A86346;
	Sun, 29 Dec 2024 10:09:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cSybqazi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C726986324
	for <devicetree@vger.kernel.org>; Sun, 29 Dec 2024 10:09:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735466990; cv=none; b=PrQpw6OHlnMrzAZmjSlOh0aOWX/0WYon0XnxfeseNdUxvKwL51KR/AXTUqEdmAmq/jM3Up4pgcQEETdzMGSIyN9CtnGn+c5pv3o/eCP77Bh6VRT34kJc3xjmzy9oTQboSrmw+ng2+somRtsCwLIfiY6v787z4Kg6npcK/X14EAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735466990; c=relaxed/simple;
	bh=MY5gvoR02XQafSvexQUK+I6oQbVwQJQUKQQW/DExqNI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=A8qZ/JQ/Ev3dXCZ+oWcCPWXLhxdp5JhkA8L5fLFIhJtBL9DZpr48pDwCZ12wkfFEs+dGF+kiou0ph8NSOUqE7tq1F5QZf8Ned0UNPHhXupQTuWRyu36jEqYd0ZffFvR05qJP+DkqvRiQK8FKhFLARjRu5frmtyAP1jkkXBTRbWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cSybqazi; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-436230de7a3so12800385e9.0
        for <devicetree@vger.kernel.org>; Sun, 29 Dec 2024 02:09:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735466987; x=1736071787; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IL/khryOY618fuPYLIWJhXwZCcvoPJMIqjkg4oXBPz8=;
        b=cSybqaziAu55OKS11NWt5B3tBq9FWs3JJY2YE0zfsfnXh/2qji3ir29/+PiBjpiZXb
         T+9/XKnIISDUV46GttQzphfCgdJAZKANlGskmTfcwbMKgh2YBVQfr1d0Lm1GJayeyS2A
         wZLf/5lARmiQJ8sruuV0dyZlm0Xshm4VA4KbO2rqE0xxXtEGxy4INHTwKLjMeS4zMTTU
         eHgm/4gWRV0v1tmFPsUX0Petq9Q5tVBephG+ThQoo6Ur8n6LMYPNuAgtyXQFdVnWoYs8
         rVIn75Fo3SU1l5puJNUWsMwXAuutbF4OTRXAjX60NCcMIdG+HrGU0kWe2OQ+jc+yaJv4
         Ch/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735466987; x=1736071787;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IL/khryOY618fuPYLIWJhXwZCcvoPJMIqjkg4oXBPz8=;
        b=AQHKeceq7FoXzHWZ5tSJd88N9DJT/LYibWsy2lKYkRMKjl7YWCdXuv+QGpPxNWJPRp
         M4/LqiYKjFl8hC6ONCrvwqYDGDgOQQnaibRodge1Xa0DOTXc9zPNX1bBU4sfAb99aueU
         XFOglzeFIuDYxRHcLe87/Klf9tstOrsKiH30jMTY7DA46qIFrOnzaVZvrdsPReHUyISP
         bnMVMOO09W2JP/ct1+V2GbrWbsnNAW5rSHHX6VaUmdpQ5es6gsdPFllnC1D1wyDY+u6I
         oKhSaGeXPrkffTqRHXU9I2gaLtw2b15odDOtpAyme1+M7DoMk3JMVb63IkzRhZgwMDIk
         pkgQ==
X-Forwarded-Encrypted: i=1; AJvYcCVPJOA+LA1s8SnRPJoZEDjbLaixUvds4/p2TUS7bXA9YfYCJq/2djsJ8Pg09MYYTirFVKAsDJBnNufz@vger.kernel.org
X-Gm-Message-State: AOJu0YwCh6ROIqyGZgZVBxbpoY+6F2uZpgrQzTmujVDccbkjM6zJAth6
	9b+CJHz2z9GqvXh349WvhgknL8PF9gFsGIheBWatUWHjekOi+ZHhnL6sJ47ivNM=
X-Gm-Gg: ASbGncv9TrxG5+mfi2qAhNbbFnX9t1MCmJUCZpHWrItspapFQoVEaLQC7dAU+xZJ/ik
	F72Cfhft7soRlODQQqCB98wSgd9KzutahhC3wRuwZZNYzRV5SL2MEGH8BbUDWoQBJQ6fOpAIJyl
	eX2ofZKS3kRgQitIBsuA8lV2SeERZxYYg9u1D29glhcDeOSan/NnmMS4qFTNh1jzuE92HuNHctw
	ZWrCKsmV6pGDTIeyP1iMVOU6wiVhCheSpvS2KhhcsYd5ANfUqPquBdb2DM7ydNA9Qgg3DxG
X-Google-Smtp-Source: AGHT+IG4cLGqiI6g6J7zatXOGtwFy+9Y2s3YmPVDRuKkDTEQDgLgnySobqp+r3yXYCUk+Z9YqGqDAQ==
X-Received: by 2002:a05:6000:1f8c:b0:385:e10a:4d9f with SMTP id ffacd0b85a97d-38a2213e1f5mr10814535f8f.0.1735466986988;
        Sun, 29 Dec 2024 02:09:46 -0800 (PST)
Received: from [127.0.1.1] ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4366127c493sm318174575e9.28.2024.12.29.02.09.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Dec 2024 02:09:46 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Catalin Marinas <catalin.marinas@arm.com>, 
 Will Deacon <will@kernel.org>, Peter Griffin <peter.griffin@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Sam Protsenko <semen.protsenko@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>, 
 kernel-team@android.com, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org
In-Reply-To: <20241203-gs101-phy-lanes-orientation-dts-v2-0-1412783a6b01@linaro.org>
References: <20241203-gs101-phy-lanes-orientation-dts-v2-0-1412783a6b01@linaro.org>
Subject: Re: (subset) [PATCH v2 0/5] Google Pixel 6 (oriole): TCPCI
 enablement & USB updates
Message-Id: <173546698425.10457.12735336354134436171.b4-ty@linaro.org>
Date: Sun, 29 Dec 2024 11:09:44 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.14.2


On Tue, 03 Dec 2024 12:40:23 +0000, André Draszik wrote:
> This series adds and enables the Maxim MAX77759 TCPCI for Google Pixel
> 6 (Oriole).
> 
> It relies on the bindings updates proposed as part of
> https://lore.kernel.org/all/20241203-dtbinding-max77759-v3-1-e1a1d86aca8e@linaro.org/
> and
> https://lore.kernel.org/all/20241203-gs101-phy-lanes-orientation-phy-v2-2-40dcf1b7670d@linaro.org/
> 
> [...]

Applied, thanks!

[4/5] arm64: dts: exynos: gs101-oriole: enable Maxim max77759 TCPCi
      https://git.kernel.org/krzk/linux/c/ddbf40d8ce4a6b35821d0a0453370ec1422d915b
[5/5] arm64: dts: exynos: gs101-oriole: add pd-disable and typec-power-opmode
      https://git.kernel.org/krzk/linux/c/817473b6ddaf9eb5f2bc7d6dce9fa13a921477a0

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


