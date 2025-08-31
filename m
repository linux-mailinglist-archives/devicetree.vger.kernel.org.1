Return-Path: <devicetree+bounces-210925-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 668ACB3D26B
	for <lists+devicetree@lfdr.de>; Sun, 31 Aug 2025 12:59:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 21C91442575
	for <lists+devicetree@lfdr.de>; Sun, 31 Aug 2025 10:59:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97BD62571C7;
	Sun, 31 Aug 2025 10:59:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eNaJ18bA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0C0A2571B3
	for <devicetree@vger.kernel.org>; Sun, 31 Aug 2025 10:59:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756637986; cv=none; b=SQ40iKTV8NQIQ9Yi7wrBXuqaC2kJsVZ73Rg3PfWnG6Q3Z/GX/7tlwL0IR30he4Px0mJV96pzVS8u9EWVXc/sQqA8mUeS43Z/sAbHum5xDxI/E3nbyaH5PMK+qOtxegYt7QGj2Kju091FwOrgiL50MQkvK7laqTvkvxUdN067mZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756637986; c=relaxed/simple;
	bh=Btw22oIAGmU6sanSX9eSbU/bEcAdOnorrPnzQTd/6lI=;
	h=From:To:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=H3rii+pqyUM55HmuRg3GSwyazCD9ZQo2+Qhld+9XAuiV3pAqNO1BorttsQlbBJPHwXq7o5yw3AwpoDrzaFC7bU/f/97FzQVjrfhyLankpPyfOMC0b8OY/I8rUeNqDNY+iJzT3ix1xbxODZyMFuGniwUSSMMWS/WLTMPEECvdFwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eNaJ18bA; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-61cbfa32ebdso399103a12.1
        for <devicetree@vger.kernel.org>; Sun, 31 Aug 2025 03:59:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756637983; x=1757242783; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gUKJ0++TPvbkMoFrI+Y8BLlk2t3/W/jKbuvYaAm42bE=;
        b=eNaJ18bA/RVLPavPhBWRsCB1MH7PBajSwduYAL6wMw/QWVgGT/qJvYIbNpjkPxjQ+0
         aSV/rqYJRbpfwXh8Pumx6g7qbNZYp/YW5XulxLUqd5B0Pt6VxBoN7MPJJVUsrKsaorC/
         pYyh7QOhNILNey65IBqKGFAGhzPnwvwANoVnv/bNlrbbA+L/cuWpFcOmM5aeOC90SqsP
         iZBVnnXPZLjxDBw6Lsfajy4p76WT+JOkOueul6jN23nb29a1ba88j9UlXSJ4mfCxKvCg
         YTVBN1ssmW5vH/6XYw8/mKAzHVShDyQyu1Fsx4fQRCbs3Lm93/58GF2CqD1raSPz+/+p
         GiBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756637983; x=1757242783;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gUKJ0++TPvbkMoFrI+Y8BLlk2t3/W/jKbuvYaAm42bE=;
        b=L8OcRpLiIJaTq0O+venKMgRH6CA2sWbPWJUsM7X5uExi3Dm+5xecuuA4uE7C7epUXi
         doj+tZjcpLEEflu4mXJo++6ed/eZTEbUk+kEQGbS0Yz6CR5U0Xmr13u7c4YnLPdAbGNR
         cJ5stHFy6aqmWPeg8quw7ggOjDb7ygT/Z8ExowJx1grRXDICBB9aqvaM+85n23955uch
         xnM4Jbojf/Lb8fhpBUbh9uYisTZ6RjvqYQ5jj/+0lHfwVQM+pHqxGAolGhDW2AAuPfkf
         1r9h5KoFz8fqlgBphQVpa0xJcddKklmkvC5UaivEjreX8O9y1pVnIsdD3Dou/E1GV/By
         muPQ==
X-Forwarded-Encrypted: i=1; AJvYcCXXqfG//R9eEMx3ZXRz0N8Z7vAGwacgBjoToNsO4THA+7CXbGa7sTQGzIv9fP1gCzJkpvkLPZozjhr/@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8iX1Q/EzvCSl5rFnOAfhb811H1ceV0nREYjlS6KCPwxa6HVsR
	+WvbZJZEZtGp4Sx7W8dNrZBoODeErZb+hQ54opYS5tbGXuTj9LJt+V097qknOwO7gps=
X-Gm-Gg: ASbGnctjOIJhooDyOBZyvGI7txMsTMgU60IejAfPGu3WPQA87adYeuJQ3RKM1a9YCA+
	FBnwFUguFNmEo+vGiWqmloPuW6dDoBi+OT4JD7QWxqfwP8MI7qF6Xn4WIiuw455Vy21jiSYsGdN
	BXt3tUU0Ff67QxxoSsH1v51hJtgzKeoDIWITBdOBPGHvMspxKHl0+pOOMsH5d4Xu8Q0Gt991ozs
	T/eHNYVP+lidnK3KDFCSG3NyntYFWf8CAW7KmJpFdXnfIymhTeNArScYQK7E3e5IxO7WjoSGGcf
	AB/6kcQ/Nf5wOG8aeK0VG5anT/6wxWXB4i0A08zGgzmMQrWFXtlzbcGwMTkgLpe1nct8alqpYIk
	oJfi/rl0zPn4BU1VyhbO6QsdXpztpDHuyT1ewhfo=
X-Google-Smtp-Source: AGHT+IH/wnggLYJVXW/m3e9qKO69aqMTz3cVxphx9pE2l9/txvZNELvi65ntEkYfK+vEIC3B6xnNDw==
X-Received: by 2002:a17:906:c152:b0:afe:c2e7:3707 with SMTP id a640c23a62f3a-aff0ee1afcemr349705566b.4.1756637983020;
        Sun, 31 Aug 2025 03:59:43 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b041f00d4c2sm105452666b.97.2025.08.31.03.59.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Aug 2025 03:59:42 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>, 
 Masami Hiramatsu <mhiramat@kernel.org>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20250822133318.312232-3-krzysztof.kozlowski@linaro.org>
References: <20250822133318.312232-3-krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH 1/2] arm64: dts: socionext: uniphier-ld20: Add default
 PCI interrup controller address cells
Message-Id: <175663798171.36860.2362489342658881162.b4-ty@linaro.org>
Date: Sun, 31 Aug 2025 12:59:41 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Fri, 22 Aug 2025 15:33:19 +0200, Krzysztof Kozlowski wrote:
> Add missing address-cells 0 to the PCI interrupt node to silence W=1
> warning:
> 
>   uniphier-ld20.dtsi:941.4-944.29: Warning (interrupt_map): /soc@0/pcie@66000000:interrupt-map:
>     Missing property '#address-cells' in node /soc@0/pcie@66000000/legacy-interrupt-controller, using 0 as fallback
> 
> Value '0' is correct because:
> 1. GIC interrupt controller does not have children,
> 2. interrupt-map property (in PCI node) consists of five components and
>    the fourth component "parent unit address", which size is defined by
>    '#address-cells' of the node pointed to by the interrupt-parent
>    component, is not used (=0)
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: socionext: uniphier-ld20: Add default PCI interrup controller address cells
      https://git.kernel.org/krzk/linux-dt/c/613fb0c8bd49df4fb28bca89aa5363856487096f
[2/2] arm64: dts: socionext: uniphier-pxs3: Add default PCI interrup controller address cells
      https://git.kernel.org/krzk/linux-dt/c/a29bf0b10a1a7f51afb91c1ff9edd73b0ca1fd18

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


