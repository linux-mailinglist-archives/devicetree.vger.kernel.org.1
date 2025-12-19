Return-Path: <devicetree+bounces-248067-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F8D3CCE960
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 06:47:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8F382303169B
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 05:47:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AE872D593E;
	Fri, 19 Dec 2025 05:47:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="frYr3M2Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78FEE2D73A0
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 05:47:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766123270; cv=none; b=KykzGDuBRrz32k+B7WhzakbBTKPHplOCu40RsHxwBKkEbFelAC+w5Il2LTk3shZ9LulLQd77VbjtGroWaGUZba6w7WL2Z3njmnfBWeIgt4qI4opG/Zgkjh/FE7yu52tItT+J3+f5Ko303okK4C2uLTryygwC1HMBAc5qLZ9xQTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766123270; c=relaxed/simple;
	bh=qt82SR/vP5Y4Y18D8U8WzWGSwSBnYC+Vs15v4LyIptE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=p+Y0SQ2YvloLoBRD1cp6dqbkVg1s2gna5blNECG1oy9Mm4jMyBeTgSBfQtdsk42INeaXUiOFrNSEJ+EW3Kj4wbkYZTIGOMakiQ6PeVJjPXLcAcQOCIxx6rKe8Hku3tS5aGr6k9QbNG4Fp7d43EF8JML/rEop/kAr1gNY0Oq24mg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=frYr3M2Z; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-7bab7c997eeso1655494b3a.0
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 21:47:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766123264; x=1766728064; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=WPO0eCOfjOBuPv078w1rY+GCMFEF0wn5Tdnt1BmaNcQ=;
        b=frYr3M2Z72/hM1G1Qn1Jkw4pCMqob3tooEcGJbx+NVav0zH0tEZFkTTmb3rn77O3x8
         BeAIkOITuSM9Yuv23Gdb0zRYYQZRHIdxJzMpeYVs7ZJl0DY4CyX1lW2s6l+MWewHg1Wi
         c98qGSZ3tdyYXxf8lhkC5RQAczasdXXuF18GHPtlAidbyUAjg5+y79e7AJWdX/SwocNH
         QRwncHWwoTkX3wUuRgs1tUnDCb23lfyNH/iLuus5f+FJOCewIHMpu2RBLO2jnxA1arC8
         VLDVXxToGNqYSnIhJ7P0RYMvsv6YNhK3BkwpIh8ba/DPAOjoi9r8J5kSUqodP3sQchSv
         9PRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766123264; x=1766728064;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WPO0eCOfjOBuPv078w1rY+GCMFEF0wn5Tdnt1BmaNcQ=;
        b=t3omSd2joo+9WdXXTpn2HTqVzvqJQHEjw+8T9zy8CRskkUUyp0OGE3/c3rE+pTEzI5
         8K7UeiyLXPBLDhUJr+q+ZQLElDrKDM/rzM1lWGrtemuQXGK1UDVkkfvSo7uWylXCdY0Z
         XeKqJRxhFqJK3ZgNzIQClD6pDpWCCF08eQj0Nce+nbyenzwhTAq1Af5VNbPh+Wo7vRSy
         +fzs1AJVea7Ig/J8Osv8VrW35Kmy2p272onoCdRUFVIIILa91fQ9mNGzA9Mn5BjPgzZY
         To2y3KIO7FX2GIjnDFkT6mNg9UHrQyTlzYtKOpbM83bIjpzk0ZieRItHLiuLeH/uXcTT
         NkFg==
X-Forwarded-Encrypted: i=1; AJvYcCXsU4oHZpMx0oO4iWPos+nqm8PFO5fsv0LXlaDaQalyuicdPpGCm7POkJOLKqluxrOpW1/ckKfao8Ts@vger.kernel.org
X-Gm-Message-State: AOJu0YyIhS8RJqmbAO2P3q5oZpJFQ1LTo2KwpuRKrXe5nmj+a8Gw/qmG
	ue/eogVq9bgw/jlf4AeCKPKVvGpawE55oSM/Wl5cX/9BOL5q4FX/1JE9
X-Gm-Gg: AY/fxX5OBdroy3/GO8v1jhhK5js40nxq7VsRkBiToo5Q8HwO3pgvGgvqZKWJiguMCCu
	k8C8Me3C4SuFUI4Oe82zpe7tl2yA4v/iuBv1VzR02NUJ82Z9/slFIalap9NYNjy8pTmxaYdvJu/
	klBdh1Rkqe5fRhtYH/qlRel+ghw+NNB4DML9lQcPQEtDIZJ0A01oWn+2IR+SH3pCGzZIn5iW6sU
	1hTIVhn7RpU4ncsiYnEIWw5QhhBUvFQcqR6AB+RH2qXElEgH+PrE++X27+KdsInUItRKndKzHnK
	S0HVcnXtF0iI88W+f06uVmPaWyjGQb6p3Hdqs48CfTiHkc5y2GGZVBPM9ls/9iDHv1YAgj9jd0v
	+G92slxQntnA6G3rNdDUCjIFuF//PMZyZ1kGFOdsL+3jbiZ0rtN7CZHN9eJSY7/Gz95HG9JBhGu
	oMjRMw6TXysz6G9Q54nS39kKlp8mj02XGerZBbZxLrimQ3uXIdJn6v/BdiM2i760s=
X-Google-Smtp-Source: AGHT+IFVBwDVTaEx5xp3GqAkaC1oC6P66f5ES/MfkM7Xqee++lMNo0SereuLr6hl3BVB30yHpD8ptQ==
X-Received: by 2002:a05:701b:2615:b0:11e:354:32cb with SMTP id a92af1059eb24-12172300658mr1959588c88.49.1766123264305;
        Thu, 18 Dec 2025 21:47:44 -0800 (PST)
Received: from google.com ([2a00:79e0:2ebe:8:c932:b7cf:9dde:f662])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1217254ce49sm4895244c88.15.2025.12.18.21.47.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Dec 2025 21:47:43 -0800 (PST)
Date: Thu, 18 Dec 2025 21:47:41 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Josua Mayer <josua@solid-run.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Jon Nettleton <jon@solid-run.com>, Mikhail Anikin <mikhail.anikin@solid-run.com>, 
	Yazan Shhady <yazan.shhady@solid-run.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-input@vger.kernel.org, imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 2/8] Input: ilitek_ts_i2c: fix warning with gpio
 controllers that sleep
Message-ID: <6bbjei3z3arl2t2alkyl6gzok3yanzbni63q5z53mbcabb3za5@2ot3tcfkld6g>
References: <20251201-imx8mp-hb-iiot-v4-0-53a4cd6c21bf@solid-run.com>
 <20251201-imx8mp-hb-iiot-v4-2-53a4cd6c21bf@solid-run.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251201-imx8mp-hb-iiot-v4-2-53a4cd6c21bf@solid-run.com>

On Mon, Dec 01, 2025 at 02:07:21PM +0100, Josua Mayer wrote:
> The ilitek touchscreen driver uses the non-sleeping gpiod_set_value
> function for reset.
> 
> Switch to using gpiod_set_value_cansleep() when controlling reset_gpio to
> support GPIO providers that may sleep, such as I2C GPIO expanders.
> 
> Further switch the mdelay calls on the reset path to fsleep (preferred
> in non-atomic contexts).
> 
> This fixes noisy complaints in kernel log for gpio providers that do
> sleep.
> 
> Signed-off-by: Josua Mayer <josua@solid-run.com>

Applied, thank you.

-- 
Dmitry

