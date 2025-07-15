Return-Path: <devicetree+bounces-196480-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A2BBB058A1
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 13:23:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 712891A64C40
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 11:23:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 165BB2D8DCF;
	Tue, 15 Jul 2025 11:23:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QO6L1xt1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 477EA2D63FF
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 11:23:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752578592; cv=none; b=OCqBaQc7mku8wDrJDLpe4QLV95Oy4sKgqJ3eHfaKaMQFghLlQIsV1F5VbjY+mf4pUyUYUw8DpvA0+QM5xvnTDk71WYaR3kY30466za0yvRX3flYLot0N7xuVgkZO+08CsAGxh9Sjrey1Re4iNuGV0cX6DKikp0CrnSOQI5GuKWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752578592; c=relaxed/simple;
	bh=bZ90k2ZHoazxrj+WXjgsKXIynmPY+DOAnPKqwHoqjFE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DNvM8rywCYYHEeWr7oLDBI9jtVFADWJotjo23zj83cBjocsEXIfC44eLAIiuo/OXagE7kYXMqAqZtrg9HmlPlppfuqJXRO4ODLagJQ6nTld5n+V4M/G7UOOVaGP3+kHWuWZ8lTstyzYMjn2zwJYgtJnJWzFLcymew/IP4lUGr/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QO6L1xt1; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4561607166aso17183585e9.2
        for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 04:23:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752578588; x=1753183388; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=IROohcnT2HQCfIKhsx/yQHN0OEa0Xb+k3P4V46L5bTY=;
        b=QO6L1xt1MVmJYZVTim2Hj+Raz//T4a4YlBOHIbuk9konXnjDvDLOozYy9LV6cOeEIe
         utZW5lkSWG/z8LTnVW3yDWyQtAq0XUt5zAQ9/pVcX3ECqS3GfIjiI5vWGmJmQ7JPAR6j
         R4xfNm0Ix6puXQR3oesgE9cLDAbb5UUnWspTjOv+LIMETI0nDWdZ8IQvYrGxtJJa+rAM
         kXGVFMnUyaN8reSuEFOQe+SOb1Y9lRGuCqlrGpXIAn9nX+9gW+TboiAbB9Hvu/VvAj1Z
         cxJSsoDngBc4uI8PK1BPlkStVhtC7Fp3erAG882HQ29fVle3Z/Hj9JtbErObLzTk1FeV
         Ib+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752578588; x=1753183388;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IROohcnT2HQCfIKhsx/yQHN0OEa0Xb+k3P4V46L5bTY=;
        b=oqUG05QP80ylNnFBxuxAdSH2Azo15ZZ1AMij46JHJkDehUF24FSbiIWAEJPimSgH/X
         QUAyNh4Wr67A5xxAkNeIsK28fUAyWuanFUDplZwnSTmhfl7QsO6hbSkbIOlNFKcEl6ZJ
         g8CMrebzbwSuuadCOTfXhkzlf44n3IHeR+/9Q8VnmWEzxjCqFIyBk3XS+6sKZ4ktlDou
         Fx8yMHJuDRRi9AqwZ63/0YSKL8amIccRRw20FVulzVO1DlswF/fg3+0Fl5Jje0mBR78a
         JuWctBI7OoyM5Q2OLVU9DewXCxiBcTZR8OhE8T6axYA5Hwj+qn/xfvCrxhyrGQ7D2kum
         Cnmg==
X-Forwarded-Encrypted: i=1; AJvYcCXl7yvmDb+/N481kL/QVxZnnFYxMbf5KSSKw7GNSgH8oeRfv9eLA75nBVAixXEYNF6PO+YocQu1C/VL@vger.kernel.org
X-Gm-Message-State: AOJu0YwocYSA1xSL4Gb1tCW2yIPh3+CfDHom46UkU/u3Dwicp/nDocZz
	vXCYFvJbl45MdUD5MilmBgDw60YxvSXVkPXmKVCjasV4CnzyCgOtchZ59KG8d8v2ZHM=
X-Gm-Gg: ASbGnctu/9bFvLdLAX7fzpW3JoOnzWHsGjtpSUOpS9/zuX7kfi6rWszGfoI6fZhA4CU
	z+J3amo1JlB9OxOQB8BYsmt2Ehco36EC+2bo0C9RfJHxkKH4UxmR9OirxB4ATnCSjtDmdQUFBjx
	ktfFI1BFAhpt9SZ6vnqviu1Vte5VwJTpNLYpHU4YHjhMoaPHzKzaVNCxjO8E2IhB4E7xS8t1X2t
	8J/sflaFo9wmBkMK00dfCOvdinZmaW1HjArDwxCStAn17xhFXnSeFEVTDIb4QoEMy7IEDK6F5Z0
	M5NFEzhWAZ6fxwx+E8ieuiIpn97Qib+umZpuv7XotCJa4LbqYLO3lekGbpeHlC6+HOOTRUKUeVF
	rXenzy7ZIU4MNiEiWZUAUr31Ozs3p604s3tx2syLjMoW+IVSIPErkDxlYk9+jgUZhYPvrV0A=
X-Google-Smtp-Source: AGHT+IHQ3prgUe5cBnNidral8utHdbyigrerAyg9IXxceMi1779788HUGWodqsh1bemWlLH3jivHPg==
X-Received: by 2002:a05:600c:37cc:b0:456:117b:94bc with SMTP id 5b1f17b1804b1-456117b95bdmr100596885e9.17.1752578588578;
        Tue, 15 Jul 2025 04:23:08 -0700 (PDT)
Received: from mai.linaro.org (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b5e8bd1997sm15158740f8f.10.2025.07.15.04.23.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Jul 2025 04:23:08 -0700 (PDT)
Date: Tue, 15 Jul 2025 13:23:06 +0200
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: Frank Li <Frank.Li@nxp.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"open list:CLOCKSOURCE, CLOCKEVENT DRIVERS" <linux-kernel@vger.kernel.org>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	imx@lists.linux.dev
Subject: Re: [PATCH v2 1/1] dt-bindings: timer: Add fsl,timrot.yaml
Message-ID: <aHY6GnjMW0SSJQgU@mai.linaro.org>
References: <20250528165351.691848-1-Frank.Li@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250528165351.691848-1-Frank.Li@nxp.com>

On Wed, May 28, 2025 at 12:53:50PM -0400, Frank Li wrote:
> Add fsl,timrot.yaml for i.MX23/i.MX28 timer.
> 
> Also add a generic fallback compatible string "fsl,timrot" for legacy
> devices, which have existed for over 15 years.
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
> change in v2
> - Use items for interrupts
> - update commit message to said for legancy devices.
> ---

Applied, thanks

-- 

 <http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

