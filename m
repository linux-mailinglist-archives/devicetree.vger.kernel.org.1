Return-Path: <devicetree+bounces-44242-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 09E5485D2C8
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 09:47:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B9B5B285A5C
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 08:47:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C3EB3C6A3;
	Wed, 21 Feb 2024 08:47:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yzv088UT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6676F3A269
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 08:47:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708505246; cv=none; b=m2WykTX9NmKYo+rdFXCuYcLzKXPglMCFMshAQklaPihtTaFY3VNSnFpWCvuqax7Xh5gE8o+neReraMOt8+KgTFDZ7bcpi8Cit5K1M4sBrG0DPdEA8zM+ccbbYjlctNbATxbzy8rjS0exWJ9TcWQj5v++pipj8DXQVIAlLJKsMJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708505246; c=relaxed/simple;
	bh=1179jDB6AuGy/pSRNueorQunyuKPGFuMv38IUA7UcKE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=L15WPkF/JsVWsYb/RiuG+F3+g3UzOP8ZIweheaqCM61W4rMG+WUhB/fxfYQ8PYiCfppgDn8ZTH3EweUgsvyd4ilLS/y3YzD5M+2e7XaMOlk9j5iV3kDpTCdNQe3jmeszuDw0kqfAWWbQFLtvsFsozoEM6TkpZ2vfNUrNw3Y3wy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yzv088UT; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-512aafb3ca8so3495970e87.3
        for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 00:47:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708505242; x=1709110042; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+LxCsBHLJ9Q392oBgicluIMy/XI3P2IzdXlXCOdA0ZU=;
        b=yzv088UTjlrOS3dEYHKH9EjpIjupTw7ny5AOnElwUeUk7RN1mQNGUyKBe9j3CDeRbk
         ehs1bDY0WbYLa4iU5IehcE5XH1f1MaOsn9XBIx3R3Ik2l7TtVowC6MwMIa7JencXJ+h2
         NkOBRyLAkup1mQt8gV/EFeQRuYeP3Z2lYFSbHWb+bcFXhCj9phfiWj4mEm3xC7C89aLI
         tWLp1xtqb9gEH78wAr0EUsmQvOGgPY9/ngetnh0YLKT+wQjpCGniF0EBvT6C5ZniOkW3
         ynxpayeWlhRNUPkVz9QbIDdimfKWkleH/gMdiPJjGjuy7myK48ObFWxehros2FmUrBNs
         Zajw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708505242; x=1709110042;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+LxCsBHLJ9Q392oBgicluIMy/XI3P2IzdXlXCOdA0ZU=;
        b=KgGjKwMmogEaNdCKXeL41XK5bG49oUkVH7nmXzPxXpHPLU/szdd+h8sqdLFDH7oash
         kt4rgPNn1tOgN6jTBMCB7ygHWFH0MivZtZuvfTfavMvhLAJ/ondRcJmbu87wG/jlxfnp
         nYRl6cqNsjPXP/DCaTReY8drcu9/Js0RWnhm3Yq4UgfgWMNaFonhHsRO3W4CZ6VNbH2S
         ZzK3xdBxVyVHKY58bOMJGOxdhQdI9FXcmpfxpVDUsilUfvFnEiH46UM1vrd2LBAKWrqq
         wAMaFlGj+CK+wjEceRfLzem47DuJ32gS09GgOWx+Ry8kuhmvAD2IR8SBX/L5nBXcdR2e
         i1Uw==
X-Forwarded-Encrypted: i=1; AJvYcCWqTLwuRc8lL9EDojDIbK9+q33dJnZhRKM7G2D/xPpveACXY6ffjiQUd3a/FtW0e9WuhPzNy9zOO0mcimt470oi/dZd4uWHhWgUFQ==
X-Gm-Message-State: AOJu0Yy+MeTdKTbE8Ca9mjhx1EngjEXwSgqPfZ9vCgpy39A4LmX4xtQ/
	0xnhr5FwCQhnyk/SYsN+DAa6sEG54M52fxby9EOLgeqSRYczsmXzlm3hiyEj43Y=
X-Google-Smtp-Source: AGHT+IF7OAoF3tUPOv1rmnViBXJ2u7v6rl0EVgiKbONY/xlOkDFRp7HctPun9NhDx2e8kzmuqt2SVg==
X-Received: by 2002:ac2:5589:0:b0:512:ab9e:3525 with SMTP id v9-20020ac25589000000b00512ab9e3525mr5771026lfg.40.1708505242505;
        Wed, 21 Feb 2024 00:47:22 -0800 (PST)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id n17-20020a05600c3b9100b004120c6229c6sm761289wms.0.2024.02.21.00.47.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Feb 2024 00:47:22 -0800 (PST)
Message-ID: <225c8489-0b81-402b-987a-09a46349c10d@linaro.org>
Date: Wed, 21 Feb 2024 09:47:21 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/3] clocksource: imx-sysctr: support i.MX95
Content-Language: en-US
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>,
 Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Bai Ping <ping.bai@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Marco Felsch <m.felsch@pengutronix.de>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Peng Fan <peng.fan@nxp.com>
References: <20240126-imx-sysctr-v3-0-33fe801d5f31@nxp.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20240126-imx-sysctr-v3-0-33fe801d5f31@nxp.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 26/01/2024 08:09, Peng Fan (OSS) wrote:
> i.MX95 System Counter module control register space is blocked
> by SCMI firmware, so we use Read Register space to get the counter.
> 
> V2:
>    - imx95 is not compatible with the existing hardware, so add a
>      seperate entry for i.MX95 in dt-binding.
>    - Per Marco's comments, the global variables was removed except
>      to_sysctr. And add a new TIMER_OF_DECLARE entry for i.MX95
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---

Applied, thanks

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog


