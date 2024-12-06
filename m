Return-Path: <devicetree+bounces-127875-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E102C9E6931
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 09:43:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BF477164228
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 08:43:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF91D1DFE31;
	Fri,  6 Dec 2024 08:43:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="b25HpKoR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E17AF1DF965
	for <devicetree@vger.kernel.org>; Fri,  6 Dec 2024 08:43:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733474586; cv=none; b=KpKwx279etmg4B61UIWhBveMXttq9uqiTlKEfwCvFMLznjoaItna2YAA/MjFXsbijZQWsvHkA95f8/+IK3o55ZSHSy6XAq9Ixs53zwwzbIPg93re9Em13mqO5io6agBVEvAyp7v9Du21/YACXS1+oCUb2ismWGJ3h+e3ZxLnzbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733474586; c=relaxed/simple;
	bh=jPUQVjuSzSOJ/arE+PacopEd78zCyLhaXvXPnH4ZH9A=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=D8gw1pYixMwNt1xkk4hqBaytZ9BlP/2pA4DcfHOgYuEl5s9p4sE3f5VFJv+PsxZBgzsS6UbyTbJLfWy+LVzs9HXI4aZn5AX7XkmAxiIUNe5gceJcD4Fw5WwtRv/J+GEmo/OthbRyIz+AEDw4sTKbLH+fy8yoNc9cuu1ATzAh1IY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=b25HpKoR; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-aa62e742078so22261066b.3
        for <devicetree@vger.kernel.org>; Fri, 06 Dec 2024 00:43:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733474583; x=1734079383; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mYjqo5ba54ttoq5t6xgwst4ctEjjHBn2LNYh1P3rOcE=;
        b=b25HpKoR80Gz8g+MnMVgvJ8i98+yqVabjz9oJhj7RmCuSuAPLgxl5TlDb4SUwDWSR1
         ZavTVSJZN9shogAUuKKl0CScbnTWNZsTQhgmGgat3U/RqMlkr9MRU6jaU0qA9+/dmZ5E
         SYoPGP/8lVyR63IeEB0LKkX+0xLJPvqS4zP/6aqVfTfLgXYVpQNhXe1pQiPdNPMhnlBF
         DEF4T7dYA6TThNh0hfPn0R9AqDKavRhBIGwlR4WuJ+T9QLWkaEPLYDENLdLKN8butk0g
         4wfhepGlnmbmExMg+luV3XBs+NOeiVR03/lXVI6q7l6sroN2ClyOVJI4PoPxEOoEXKnC
         qWaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733474583; x=1734079383;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mYjqo5ba54ttoq5t6xgwst4ctEjjHBn2LNYh1P3rOcE=;
        b=c1B+ReaZZfSrD++O5HTXS6f9AQ5sA1deYgj8YdCNcCSK4B4MGUmUvvx3NiQB8kTlw0
         hWTwcsdVH96xD11mNayk/z1CPYcF2sU5aJWjnPdkKPu5b07Pu+T6gIk+o6TwgSDhVvnh
         9gKZDrBATKeRbArB0izQbnrsYK9a/Wrx36dHikV4YThir16ZECLoXapG3bYcCZLJPdEC
         F7OsJoTA7OO2cAEFm6oMiwzMvh2m1n0qqHd1cPfov6UrsfoZvkypvvSrI94sn+xXt5ok
         9i70j8j5p9Jr5FtjZE3WGTNZUki58FcQEzv/bjskm/Hf/wJYTfQ9YzrX1GjldAi0A+w9
         hO0A==
X-Gm-Message-State: AOJu0YxqLciIvpkDyX9EVF6M+OhCG9CFn8VQGSJQVTr4oi6jcJNNya54
	glbQU3lLpdeRoBvSY2VV3akaJTkIYVT0m0JDL1JxPVUDnuggg1r1Z6fJefqrKh8=
X-Gm-Gg: ASbGncvEJq1IrRXaqPio5OMbULz30IQOZ9bPxT340W9HEVDmtCpBUCK40AZSSXfjANi
	lCLPGSca2CBEbGWrfbvc3VXQx9V6MvjExljcH8PuU+4xKiD/FiJ+6YyEFQXn0xNKcpch2NUeXW2
	WMRqpElOybFNV7OgxRZdK4WM075zuwQ404VV1LhjuKYOB5dDFNU/Qh5a4VwF2MJKbTgIzzvCWz5
	KCw8jCgA1h3ARtUcteqBtC5VVbZbrcJLvsomuGpCU23BhgzrGzs7lGY/UH5iB6mMw==
X-Google-Smtp-Source: AGHT+IHTXmV/7F1fhFBALPMfg5CarEeLHNYwtri9LUWrJRXBpe19hqN0vsvFDOg2xiQCfi1NgUUSXw==
X-Received: by 2002:a17:907:ca87:b0:aa5:5346:1c70 with SMTP id a640c23a62f3a-aa63a2dba94mr72852466b.12.1733474582794;
        Fri, 06 Dec 2024 00:43:02 -0800 (PST)
Received: from [127.0.1.1] ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa625e58dbcsm204741266b.15.2024.12.06.00.43.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Dec 2024 00:43:02 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Orson Zhai <orsonzhai@gmail.com>, 
 Baolin Wang <baolin.wang@linux.alibaba.com>, 
 Chunyan Zhang <zhang.lyra@gmail.com>, 
 Stanislav Jakubek <stano.jakubek@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <Z1K1rnndKGIFdgfj@standask-GA-A55M-S2HP>
References: <Z1K1rnndKGIFdgfj@standask-GA-A55M-S2HP>
Subject: Re: [PATCH v3] arm64: dts: sprd: Fix battery-detect-gpios property
Message-Id: <173347458162.8205.11832128238740553024.b4-ty@linaro.org>
Date: Fri, 06 Dec 2024 09:43:01 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Fri, 06 Dec 2024 09:28:30 +0100, Stanislav Jakubek wrote:
> According to DT bindings, the property is called 'battery-detect-gpios',
> not 'bat-detect-gpio'. Update the property as such.
> 
> 

Applied, thanks!

[1/1] arm64: dts: sprd: Fix battery-detect-gpios property
      https://git.kernel.org/krzk/linux-dt/c/e1daed030b56049caa2d8cc040c824990374d941

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


