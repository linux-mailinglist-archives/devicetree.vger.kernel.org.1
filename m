Return-Path: <devicetree+bounces-33705-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A339836184
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 12:29:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EB6A128DECB
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 11:29:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A0834C609;
	Mon, 22 Jan 2024 11:15:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ps9aw/DW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 643A541752
	for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 11:15:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705922121; cv=none; b=ribjw/mJCszNORx25GARdTiemMBEFKpFjrJWN/2xeT/nteOL7yChUXFMcwB1pjH4CtGEdabzum1H7hwXFOb6/01gI0UAra+mJHf9jaoX974rPJa75qBI4tfqWmv/3N4RaoHfHB3QWIABNOHbjfKa2cW2MN9vbggMwqat1EomQHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705922121; c=relaxed/simple;
	bh=794SmaQ54MTymb/u9d7+gEUbL2vd8+0mViFrNstCDK0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=iHYyhBJ9ckF1JZRTi3UmsY8BN+7kiuGeEJLTBqSa1vmM4wh2BRBU1AY9lQrV3488gZ/pcuxAjRob1pLlsesudNdwArt2ePW8hS3W2zwXOj+REFowKUtsw4dwYvkgvYgn+4w62LDebOC4ZDvcJvuXAx4LdA2s4XKkVc+9bov4NWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ps9aw/DW; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-55a86795a3bso2290625a12.1
        for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 03:15:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705922117; x=1706526917; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vytVuxKwk7apMR9cep+8YcY9zbRhD9DG8uyD8/fCDqc=;
        b=ps9aw/DWu1JTZWqOSk8yTMxeqLJp8ISgAzkoegiLdh3Gy0swnQR2N3mcJAzQ9nvEFI
         qiLbdd5+7Y4Ys8klwWhgVUkwh7NRrUsDGNXfOkzXqbJRM2TYDQ2hsbeelMU8WpdM1kbX
         9d5XionESYl/UfHtPAyME70R8xVCtng9c1qSb8Kn9c2Z3QxT0uAcYov0NvZaxqpiPB4Y
         o/mI070sHnbpM9lUVQvnIQ9ZYYw+PzRGqsIYSR7EDSDaPoxwVA4SP+tCsE6OX+yVwdZi
         nafnfWh/SrqwHOBqPBirwocd/whSYkTiMfJfMzuDIrKocy+IdZsIMl6G/AXpIg2bl6K8
         P2ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705922117; x=1706526917;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vytVuxKwk7apMR9cep+8YcY9zbRhD9DG8uyD8/fCDqc=;
        b=f6IfQ4ATyurb4My/N5m+nCaXlfGo+o7GduT9knxGZN3sh+Mt7dSTvdk4XVHK3Cpphb
         qpxG4ntdo8+Gk+wEg2aOk4ril9GT1OqjnWAbG0CMqi010JSkyzlGtj3zyjvtSg67h/XT
         uIrDr6+1HmSLtDdLEtTVz8Bh17hyObF3E3GANb96v37MR9IeTfD4vdx2XQ1j1StNgpGh
         RJZRUQofCv34wSNuuZ9Om336aGpUMnGEj0touEl3Q8nKzYPsZ4P+wUMcXVIeeH4TKfzW
         eu/0KJ5I0ZgAZSLkBF/0gPl16g4KUnmhMI76RV8v/xI4o+f+25DXNhhzeR9vMhKLf9ee
         lcwQ==
X-Gm-Message-State: AOJu0Yzpf7TTVp9zcJnl4xiuCkp00WIzQ8j298EPl1vj1/RfUy25WRGW
	R/otXK7kBOIGPZEVoIqdt8yvlAii+1vwwQPjy5/gi/MHIz70s/nHLbpIgCPtx1k=
X-Google-Smtp-Source: AGHT+IEDDoaQ5FumWXcQ+GiNDG8GKYL9DoSZ+GpQ9roqhxjxGEabcOEJ7bXH7bZ9xuE5vQasN6xjJw==
X-Received: by 2002:a05:6402:3586:b0:55a:480b:6430 with SMTP id y6-20020a056402358600b0055a480b6430mr1723594edc.116.1705922117679;
        Mon, 22 Jan 2024 03:15:17 -0800 (PST)
Received: from [127.0.1.1] ([178.197.215.66])
        by smtp.gmail.com with ESMTPSA id h27-20020a056402095b00b0055c643f4f8asm179422edz.32.2024.01.22.03.15.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jan 2024 03:15:17 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: peter.griffin@linaro.org, mturquette@baylibre.com, sboyd@kernel.org, 
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
Cc: andi.shyti@kernel.org, alim.akhtar@samsung.com, s.nawrocki@samsung.com, 
 tomasz.figa@gmail.com, cw00.choi@samsung.com, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org, 
 andre.draszik@linaro.org, semen.protsenko@linaro.org, 
 willmcvicker@google.com, kernel-team@android.com, 
 Rob Herring <robh@kernel.org>
In-Reply-To: <20240119111132.1290455-2-tudor.ambarus@linaro.org>
References: <20240119111132.1290455-1-tudor.ambarus@linaro.org>
 <20240119111132.1290455-2-tudor.ambarus@linaro.org>
Subject: Re: (subset) [PATCH v4 1/8] dt-bindings: clock:
 google,gs101-clock: add PERIC0 clock management unit
Message-Id: <170592211606.45273.847576093222095843.b4-ty@linaro.org>
Date: Mon, 22 Jan 2024 12:15:16 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.4


On Fri, 19 Jan 2024 11:11:25 +0000, Tudor Ambarus wrote:
> Add dt-schema documentation for the Connectivity Peripheral 0 (PERIC0)
> clock management unit.
> 
> 

Applied, thanks!

[1/8] dt-bindings: clock: google,gs101-clock: add PERIC0 clock management unit
      https://git.kernel.org/krzk/linux/c/b393a6c5e65652a19733978c3711c7c05c497594

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


