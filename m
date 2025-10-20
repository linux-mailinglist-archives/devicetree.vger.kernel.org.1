Return-Path: <devicetree+bounces-228620-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 21D63BEF8BF
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 08:57:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7C1FB1896D78
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 06:57:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08F872E1EF4;
	Mon, 20 Oct 2025 06:56:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Qwco39ka"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 490932E172B
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 06:56:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760943367; cv=none; b=AQoYdJVdwSyarZ/QX/fWklqmF3VbTXd+WibbsF4p89KBkkcqsM3KZCaygpfL6E+mRHwvbRntRmEa2xGiFxtspEnpWHAIdhD5pKfsMFvEoL5njyYd6o6K/E/ND8FULPIkHftvj7r/02LDae+nODchNcfWdy+4FizWsSloSRqtjG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760943367; c=relaxed/simple;
	bh=z/nKAyPM8Gl3KMi0qkV4zPK4PT1ivqYkvCn2i3d2YbQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=blELWgFFmeGEsKScleJl09NvWCY33vSK0udVynslkV4rYGl5q9SRC0Ml4+sJ3RsIrGWVFoS/mLyLdQAuiU6wQ0u9gs0HfJrhyuagGMj3TDRBL+HOkPhHMr9B/UbTPZwaBXDOzsLH0WWTv7x5FpY6x3kuqroQIEBoTqzFI4jmsuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Qwco39ka; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-b3c76f3703cso68322566b.3
        for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 23:56:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760943361; x=1761548161; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=A0DnThhMkOfv9YGDKUQ7VwqLvt/fY4Aetr2LPisH1YU=;
        b=Qwco39kavjz9il7ru8MtW5CXU9oQtMYm3H1N/9YBxgXD/W4XxEhLGKfOUf43SgT1i/
         RhfavRnP0oMO2Y20DDLK3bAdyoIJfjf5TUhitKoRcTSDsdb7VXHZerZNdfZw/tahdEFQ
         QnVltwZOLNuNigZKJUIaODhua8QhjydxVTnra6CIUiZDQpHARxZbzB7UiIYWeLkPixdo
         HCsuzc9+2ZUtfB+XaQsMgfB05FUZ+j+3NYzL2/HniY3xK6FXNwubNxQH0ToORTIWHr2v
         JpAgrTrbY0CcDqhZtd+Bhcpkm81szB96F80Jctt4G2TV/+1VIGFXsCBWDlOeWDIH0WfA
         PSWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760943361; x=1761548161;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=A0DnThhMkOfv9YGDKUQ7VwqLvt/fY4Aetr2LPisH1YU=;
        b=swwUAdrofg9NTFCyTvpxyzj3QXAWRDSgK4xvqu9/Uu2J5/3vkABg29HL/f85TJJCob
         ikyY1R5/EBB20rj8CAIrtQhGe8lF6cznc3hh9MhR+S8t+lyP7lqGFeT9mr1UZ4pSEKPN
         4gO0EtYKZ+qa3nYLrW6BOPWgCbTn4M9YTvX1r1Gj/0Yqr4HP8FZqaU852TL9ExjsWI1z
         ZLf/0BiJcr7BemwLqWOSYJoNZrzwoop3P5KoUTY/a+Ue14z8/RXR6/wxBt4fqIEsmBbM
         D3glsLilnnco0Sw85K2St4UDVWOHWZVhjQ/bcphUS44G0qcZZlOFw+f6mK7NGNCpcL4I
         6ddw==
X-Forwarded-Encrypted: i=1; AJvYcCWgOOBgEbZ0OwEhw7rPlKojHD2/G95pZG8edbEkOs1yjHtk9cLsScW2rvo0vxBUffACkYxI9xtr71fP@vger.kernel.org
X-Gm-Message-State: AOJu0YyoCke9VsTUiQhd8ymyrbY4ls3KgjltDL6CTzXp5u8LZj3hpHJ6
	YGOwIvt8+TKNFv8QsqVJMvJAL/vC5lBEw4wRC3QxKyyOt1XBhASM0spC2uoTtqbpCzQ=
X-Gm-Gg: ASbGncs6ZspXkFRtJqMEjq2RgMD917Y1ID6a1Za7a9CqfIYn45KM2URiVBf5UFYC2ib
	6be0yYC9F3Jou3sj9UWXoTFuNxIEOH8oTo5jDJlwEhNzRLkZVcv59DkAIjpuWoc77jqo+ojVWfg
	rIS2TgeyCzPbJp5o6UdlVjfNgXy8uhA7K630NsoACqur8+IsfBmiZDkQFPHzkB2VSZTlLt7C0Xk
	JGDptXzCCZP3wwMxsrZkKnCBmow6EBxDkbe/1JFoMrmtHX3LmN3OpgBHJi6Vg2tlj6uCEh49hk7
	96CKf6e/74pm/jLtfa5NopTxH2MVIc3RMzgS1XdIGIzuVW2na4aSVYFdZ+d9FocbXN7qIDf5PP1
	+IsrBx9KCCJ+M3XNj0sKUzmTZd9SqQPiruyMOi18VVZ4nZczoB66AvrZFtnESj9HIskAolGj84q
	mCp4Vk6OiB9KxLUe49
X-Google-Smtp-Source: AGHT+IFB6Ey5I5GEPVDKYwQBF2ZBDxVATO0+MlEz4wW7uv+BJczKh6T6QMgfi5LUYg/EAYYZmtjQvg==
X-Received: by 2002:a17:906:9f86:b0:b3d:5088:2140 with SMTP id a640c23a62f3a-b6472353d0emr732095566b.3.1760943361476;
        Sun, 19 Oct 2025 23:56:01 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b65eb036a3esm711731466b.46.2025.10.19.23.55.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Oct 2025 23:56:00 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
Cc: linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-clk@vger.kernel.org, willmcvicker@google.com, kernel-team@android.com
In-Reply-To: <20251010-acpm-clk-v6-6-321ee8826fd4@linaro.org>
References: <20251010-acpm-clk-v6-0-321ee8826fd4@linaro.org>
 <20251010-acpm-clk-v6-6-321ee8826fd4@linaro.org>
Subject: Re: (subset) [PATCH v6 6/6] MAINTAINERS: add ACPM clock bindings
 and driver
Message-Id: <176094335955.18498.10975479866423717961.b4-ty@linaro.org>
Date: Mon, 20 Oct 2025 08:55:59 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3


On Fri, 10 Oct 2025 12:46:36 +0000, Tudor Ambarus wrote:
> Extend the Google Tensor SoC support list of files to include the
> GS101 ACPM clock bindings. Add the ACPM clock driver under the
> Samsung Exynos ACPM Protocol entry.
> 
> 

Applied, thanks!

[6/6] MAINTAINERS: add ACPM clock bindings and driver
      https://git.kernel.org/krzk/linux/c/ad97aba3e64f8e474ecbce0c4e08486023ce8ab2

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


