Return-Path: <devicetree+bounces-177560-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F2FECAB80D4
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 10:35:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 993911BC1563
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 08:33:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90D0E288506;
	Thu, 15 May 2025 08:30:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lVE7aIVc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C75521A08AF
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 08:30:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747297818; cv=none; b=PM+EFUnPFKRMvHhYuP9X5qZFWiM7GsaNx3Sj80/5EhrG2qwBgilsVzlQCtYgOCSMxWgbAwmTwhcjZwgJPMwF6rrJ5phkZyM4gww0NBH33IMJZRhYh6hDRPzV3DSwrG5B35yp/Qu4Ugd3BBYFNrJOrEhKuRMucKamG+hO+vNrork=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747297818; c=relaxed/simple;
	bh=y+8BrIOfnnrnk3+SMIKaYOUf1eyNC+YkXE2nzzf2z64=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nlXpvtVGdZPwa8XBIJPWFWq8jB03I00s2NnJtNLR8zfoi4zJWjs9GgeOZ+AyMwtpwaHmWcISsnov2rFskIpp9DL37oHndk+Cfgd/Ne9CZLfgpGwpdJlbiwnoHJJ/Qhg7/EkF+wCF0vKEsGvgCqhokEmJEV2eMDm9zV72WCZjFR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lVE7aIVc; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-43ce71582e9so4979785e9.1
        for <devicetree@vger.kernel.org>; Thu, 15 May 2025 01:30:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747297814; x=1747902614; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0+YXZ/oDbqLw7+Vd2GiuP1N8dvsFe7slNn6cmLA7TZ0=;
        b=lVE7aIVc4sYrOppeGuhU+CKIQ4vQzpsRrpd/xp/kVi4fUby54sGbHTfxOYUCTfJ5kK
         MAFAdZzRrPrpWrwCN6vDcpkLDPRMZaL8LvqKN59ZNdlTXR0bsLVm91uoyVOFvEhygqCo
         Zr3l8MiKDqyKEuH7Rx4+IqwGKAIh/1D8jDjSwjJQaaWwFQUumrUH0+DliHfHdWiQsX9t
         lwnElec0hCBNQIreaSmCaIwR/oKtdSpqdB6r4rb8+TKfD093quJSuVZYssXgWv/+JUCD
         lr3Ed3LdufNlIfkVnjXSGO+6LnBCSYnuL4Gr6CwAESm5DGQoZOgUpnazYtR/UTDY3WOR
         Mqbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747297814; x=1747902614;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0+YXZ/oDbqLw7+Vd2GiuP1N8dvsFe7slNn6cmLA7TZ0=;
        b=lKhKPjecD8C23wnkh5ikPG48C9fBK+EQxG/pOXkhE5VbXhuiKnW94wvue+S834+a06
         lCNExPTpVeKCIg3kwrhpMmTP8a1mhl4BnkH7ku2ADF02DE4Ts5+fQNAR3uo62l/MxEOz
         5udA2UlZ6ms6P49vEVZg5YAC6Ukok2oYPpJy57AoG8nfywYnElIUGgevtUJa/bRHUc13
         WO6QNCCrws13V1Flto6NAuYek+9rB3FhO2aD2z9gFyDrlwGUU3p7thquGDonB5gV9Q7z
         tXuo5GavYzaSKGNe5u/rDiu2HkXk7jI7cKtFZmi6Zb0fWm1NeSsvcHZYYZMYQ4W+rA1z
         +rWg==
X-Forwarded-Encrypted: i=1; AJvYcCVAzX274BTaRSGfbbQ5XFNeQ+LRjjBkKwkr5KTRQ2euy1KKdUvg9drXfXoFjkK0Ez+wOyuTPuUFNiiP@vger.kernel.org
X-Gm-Message-State: AOJu0YylVteoIfkKWNSVtq+8N8oI0NbXoLXz76c/SfCQj5xyc7XEmfql
	OXXbh96WOhZrg6JYUVxAyd7fnhAiwb2+EWPjZutSarwOCcPTaQ2QaBrm2N3naAw=
X-Gm-Gg: ASbGncsBBPvjNm1dF5b541qboO7a1e68LKBeAFQu8HzbsbZ8ExyycMJAZc5UlxkoC1l
	dzPvbzXgjqRlCN3zFUt436j71+ON/TknTVmBSqttILsAPNjGXnw8fDyNb5wbfFhgQW5t1in4/fr
	LmYIusbjjnhqTjkdul9dpZEqRHE/2pKELxshtT7CjjzFCb4IaNO4Da4uFjPywqp4UE1imdrb2y6
	FFClo2Y6ZzehCRgo/e7tOQcwxjrBYzX4RBqVyA4ozssZaxmk6xkRr+spQVvr4w13tGwIA378+OI
	UiID3ZOO4PZzNO3U5JNVPqObuJ+SVb/TNaH9oueBglL6+EONxUK6+ptET3SiTwJ8dGa5ifFw+P7
	hH25gss8Dy1qCeQ==
X-Google-Smtp-Source: AGHT+IH5peHWutJFJT2NwIw03M3g4B59q1DYIT/LoEtkCOPQXGJ34Y7jqqGK8fYeQz95JAJJR7gkYA==
X-Received: by 2002:a05:600c:609a:b0:43c:fc04:6d48 with SMTP id 5b1f17b1804b1-442f1dd31f4mr70973345e9.0.1747297813006;
        Thu, 15 May 2025 01:30:13 -0700 (PDT)
Received: from mai.linaro.org (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-442f3380498sm61866995e9.11.2025.05.15.01.30.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 May 2025 01:30:12 -0700 (PDT)
Date: Thu, 15 May 2025 10:30:11 +0200
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"Alexander A. Klimov" <grandmaster@al2klimov.de>,
	Ivan Khoronzhuk <ivan.khoronzhuk@ti.com>,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: timer: Convert ti,keystone-timer to DT
 schema
Message-ID: <aCWmExc45V4ciTdf@mai.linaro.org>
References: <20250506022330.2589598-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250506022330.2589598-1-robh@kernel.org>

On Mon, May 05, 2025 at 09:23:29PM -0500, Rob Herring wrote:
> Convert the TI Keystone Timer binding to DT schema format. It's a
> straight-forward conversion.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---

Applied, thanks

-- 

 <http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

