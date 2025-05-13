Return-Path: <devicetree+bounces-176836-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A8A3CAB5987
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 18:15:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E52564646FB
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 16:15:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55EF92BE7D5;
	Tue, 13 May 2025 16:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HJRoMkvT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C99DB1DB13A
	for <devicetree@vger.kernel.org>; Tue, 13 May 2025 16:15:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747152934; cv=none; b=AmTpwqqEPZElMFHOiYyFD4E7CdMApx9n8ubx+3KwHjDnDfXQRZ5ylV/R5aRh9D53TIkOJ7sZjjvtmtRle0vAzInE4cRtJpJswzX/7AMjq+RurPGPpsdnJBW6DBZHlGpLS0FRFwdtku8k+i+7nQ9IdK8Gbva1lzwpDeXG+XePeZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747152934; c=relaxed/simple;
	bh=ah8bSLd4n3ODXUTmfJPUlD1MUWxxPKMMuTRnrZTBgGg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aqjvfkgCuDThY9HVKPV9tCFVrzmH7RvUrHCJ7ZPbLV9AP2gcxwMbwHmENSxweScxD7sjATK9dibRxy4xKx08Ua7CW4+NkWSaOKLax+uKd6ghGJ8Hulr53XDEmwAVmrpILv7smr1rhWT9qauPNpKugzlHtXvZ+aO8l54R0hIUpPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HJRoMkvT; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-442d146a1aaso53513555e9.1
        for <devicetree@vger.kernel.org>; Tue, 13 May 2025 09:15:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747152930; x=1747757730; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=23030sfZlYo4XXUwpy8Xijq/xitTfF3FnawkIR2T3C4=;
        b=HJRoMkvTtQHjsElk2TAMtlFlJNdjPGTCz4iQrGnuJpk1/s3NOnVI1PWY+gnrsHtd8Z
         K1uC/5R59GHINynvDzJm+f7ZGrPkocFjCVUHOaTB224XpVLDmqcnVeXC2P/j1AANfqkZ
         DoIfVobpsz9EwGOgDDehFRuukgiQgUEBaqPOH/XPrMX/ANapTgkr4gS6nGr8HyblXaAn
         G+CpqspSsywpgQM3KkYjw+motAh5ADrMajz9lthoMkP0dEHOFvpSOfr0CkeVvepevtP8
         +d2Gp2ht4jIEnrhR7RddERPBn54OfN8V3I1bKQRqyC3PEjZkFeJ5iLhY7PkXlPDCgZPR
         AGpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747152930; x=1747757730;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=23030sfZlYo4XXUwpy8Xijq/xitTfF3FnawkIR2T3C4=;
        b=jK/SPypoXcKFEv0Zjo29eXMGY4H/GZFLnPEVEMsrn6KoBsypV3NEEXOLzcG8YE9hPo
         mzQWmAZTEssboiHpxRj/u6wIqVIEqa/VftGnB/5m1EHTrErkVNr0aydHAE3UI4thYxQY
         dfCKI0FwCKrHY21D+lDQdH51pQTzqRIECIxmfSjBEBRUrq59/OxVBAsn14Y7OvToXxfv
         uQqyQUx8h1LbYdhEYTIVayDdDof1jznsR/fGvHveCru9beDx26Y7xmxeJpOU/jTUbzIf
         dL8bL1C5XWpuodNh8ok2/pbIRdvbiXvIHqvsf/ySk2MoZ4Oco0tKEcxcnCGVx7MGM90H
         p/KA==
X-Forwarded-Encrypted: i=1; AJvYcCXiCgArlIKzUJ7xLn1aSUcNi8Lg0gDDLw+ZQKsAumaiIAfgciOscK2FXhCaz4CuvYwesx11bGtnn2W0@vger.kernel.org
X-Gm-Message-State: AOJu0YwPBA8LEK6kZysH7TkMIFjwJ0ssargdfpBduArdWRgdX1RiFI+b
	IOmeeOyxvIY72B+B0RQd4DQrJPVFJFTeT1/P5tHvSles3hY/+i+qVPhJbP9AzcQ=
X-Gm-Gg: ASbGncsl2sR+RAQEZ3IW17vVDyRxisPc5Tt4ZEf++rcvn32UB8ptDN8Eu+Gj6i/v3At
	8pj48DWlwkMbJ4rE66KJm64ONgH5x4rs/FtUMN2ReNDPOoyUo/JOKD8Dw5ImDmqOhqoRjjErXpK
	+iPp3i/gx2TnZ64eB+vQE3eld1/O1N2GonHcU0AbLSEcL2/XfG47s5HsdTznNxgWiOmSSZQG53W
	SkEnDvk+rcyX7R0+QAT1+sgOeJngm85R2LkzvYZSOx/M3no0GGI9ydVzz9hDHgQhSguxAUfL0Nb
	jjj2emmuuHhdxabhruCULiS9ZCoX4I8ms+HMEm5zuDePYiqENGWWk7sFXkIpbXJ317kJwOs/Hez
	06WIS54xDW8AI7g==
X-Google-Smtp-Source: AGHT+IE517qaNT/l4Wh33p0Dm3gFH8OKngeQCf2Udv2lzkZQNwRj+tloE1Jj35HueH2x5ewGA4LEHA==
X-Received: by 2002:a05:600c:37cd:b0:43d:fa59:be38 with SMTP id 5b1f17b1804b1-442d6ddf676mr135234745e9.32.1747152929962;
        Tue, 13 May 2025 09:15:29 -0700 (PDT)
Received: from mai.linaro.org (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-442d6858566sm171835295e9.32.2025.05.13.09.15.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 May 2025 09:15:29 -0700 (PDT)
Date: Tue, 13 May 2025 18:15:27 +0200
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: Christian Marangi <ansuelsmth@gmail.com>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 1/2] dt-bindings: thermal: Add support for Airoha
 EN7581 thermal sensor
Message-ID: <aCNwHzqD0wC4yMUN@mai.linaro.org>
References: <20250511185003.3754495-1-ansuelsmth@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250511185003.3754495-1-ansuelsmth@gmail.com>

On Sun, May 11, 2025 at 08:49:54PM +0200, Christian Marangi wrote:
> Add support for Airoha EN7581 thermal sensor and monitor. This is a
> simple sensor for the CPU or SoC Package that provide thermal sensor and
> trip point for hot low and critical condition to fire interrupt and
> react on the abnormal state.
> 
> Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> ---

Applied, thanks!

-- 

 <http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

