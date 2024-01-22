Return-Path: <devicetree+bounces-33699-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E697836171
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 12:27:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A27161C260F4
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 11:27:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A62E405DB;
	Mon, 22 Jan 2024 11:15:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FAj2Vecy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D2783B295
	for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 11:15:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705922112; cv=none; b=Yu1uy66ywsJuIE7PWETZkClJNeDOA4UXHNaeKzKWLgNqAppEn8wBlbpj+YHgXs31vI/WFHz6jXWCH8+jmNOdOGr19f4nh0i+UYo2h8iKqKg2Zl7mByAGvb6rDvFouwzKd2f8RGDG6DlJxDU3W+0frf5tHiHlzobdCXfd1R/FSPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705922112; c=relaxed/simple;
	bh=r8Nk1nx6WxSIMVymXyEYbaNTmlQxretGrAviShA+EBo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=K7QA5QqB7xLU6Qis/eJOpojv1b+MWQAP5e1gaH2Sp6d0cZoEzQ02EPoK9YdK35sGhjSWuqtTKpuQ0jGbqYIWq/uRUMxAfCDajvDw8RiBZ1W+qu03I5EpdlSM0/XxDWWmJypJ742CRVFuAfV1XiRPhfAgR96NWNZH/Ds6kzc8YFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FAj2Vecy; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-50e67e37661so4080756e87.0
        for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 03:15:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705922107; x=1706526907; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NNov5U8xwt5sXc4zpQlR2bDbhB2WJGrcQShsm6KSU98=;
        b=FAj2Vecymga4EtujHYU+w8hWUSUX6xMHvVxynewoxu+nQSQDqcYrIZo8YAFLxsFo+r
         tstfVGrRpSWkvYJqm2fOFu+E7pV9Ga/FxdSCQfkjDANZ6wJX8CqJO169OqhivnhrCb+I
         cwj11fFqCJsq9Zyw9s0wdNZ0F9Nz9vGbB1TrpbW4eqNZdNF7RbWNZ4ydoe2pnver8BpS
         yNTRR20QtO6nboBMDMJ+Wz0HDqmaMGhGiopd94FHyBgJcpVgBC5BkPDZEChoVLEpheoD
         963TC2uKybIzCvUb532jy4P/DnlE4AV6n+zmCWrvlasT40YC8psVCoAemWkG6h5LlBbx
         VHSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705922107; x=1706526907;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NNov5U8xwt5sXc4zpQlR2bDbhB2WJGrcQShsm6KSU98=;
        b=ngpihjKDM4nVtsZOMiiFJJ9s83wTiUbScMfScYM9VhX28Sp6/oW0UJeWFt9wQEImSM
         NTlk+YEbGl4u8UIhIul5f4sCqt6rzzYDEARiVBnDGMNYI/a/5m/cDRz0V4U+6ShmsXsS
         0MiY4Yzut56mt9EsOtGa4L354rcTOAy2C+zoX+MD9eY6nma24iQvv75O6ykIjBN2oWvO
         +1qdwFw5+u+9b0RisikYjdbyga20p24sedoP9e2DtedpL6PNzeKS0aNczVU71aMGPP4Q
         hwr76SdQ0Ynt/u2c7gOBB5CGovSnaduYv5g7itPWOWbBRC0qZ7A8PS1t4l/utIBvtWBC
         igmQ==
X-Gm-Message-State: AOJu0Yya4rE5/kZfq88ULdL2Mqg6aSuCvExPKFfcjmstB69F5/QH1/IH
	9qp0AanOljI3F3gkBNTlqtWqhVTRKYnEGNiwOSRQo2hQPfpdUU7aqPnG6GDMLN4=
X-Google-Smtp-Source: AGHT+IFgx632zKE2RrfuyNYoFBwMDaIkfXdub3lk9XW5AkcMqYmr9BQPIRXB0qcwQPwG3mp6Xa8pAQ==
X-Received: by 2002:a19:770c:0:b0:50e:7f88:d34e with SMTP id s12-20020a19770c000000b0050e7f88d34emr1578498lfc.33.1705922107286;
        Mon, 22 Jan 2024 03:15:07 -0800 (PST)
Received: from [127.0.1.1] ([178.197.215.66])
        by smtp.gmail.com with ESMTPSA id h27-20020a056402095b00b0055c643f4f8asm179422edz.32.2024.01.22.03.15.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jan 2024 03:15:06 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Mateusz Majewski <m.majewski2@samsung.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Marek Szyprowski <m.szyprowski@samsung.com>
In-Reply-To: <20240116140839.1029395-1-m.majewski2@samsung.com>
References: <CGME20240116140859eucas1p138fd10cf371ed1e1681a5bdd7e26e74d@eucas1p1.samsung.com>
 <20240116140839.1029395-1-m.majewski2@samsung.com>
Subject: Re: [PATCH v2] ARM: dts: exynos: disable polling in Odroid
 XU3-related devices
Message-Id: <170592210599.45273.13462998358002591317.b4-ty@linaro.org>
Date: Mon, 22 Jan 2024 12:15:05 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.4


On Tue, 16 Jan 2024 15:08:39 +0100, Mateusz Majewski wrote:
> After having switched to dynamic trip points, we no longer have a
> hardware limit for trip point count and can support as many as we want
> without polling.
> 
> 

Applied, thanks!

[1/1] ARM: dts: exynos: disable polling in Odroid XU3-related devices
      https://git.kernel.org/krzk/linux/c/ccbc2b02c22e79f08edb3d7e1584910c0f38e213

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


