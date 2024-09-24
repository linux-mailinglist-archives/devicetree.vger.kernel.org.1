Return-Path: <devicetree+bounces-104793-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 530F69842B4
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 11:53:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 19B88287E2A
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 09:53:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F34C715B11E;
	Tue, 24 Sep 2024 09:53:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qeZCj5vA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 279BF80C04
	for <devicetree@vger.kernel.org>; Tue, 24 Sep 2024 09:53:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727171601; cv=none; b=PGHn5V2GNkg8SvEpA4gZ4g21EowmP7OqzztDybvjHuloF2BjBaGGGqanp+5U2pIXPMW/t3VI221MMsCWdAyMaNd5onWIDcSbci5XP343zf/qZgft7DZuZgKc9ZBLGy6E9vtkeqEtwfQUGZb8UTVgvkoYRGJ7FUApQqnxLYoLojc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727171601; c=relaxed/simple;
	bh=gpDa5jV7LLHIboyhuFDseiP0jRBBnTJL6fUDy3U7O84=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=U2sqYTrmruUSKrzlqDiRoMTB5w86oXwTqFEGJIr5oeUJ6kMUYka667C9RWBI+1cZxCXWGPdisxFE561TZsE0CMNV1LGCg1Ri1n0dnyuTHK9Yd/LNOjftTSbHjV3OxH8kZqht/CgFGdiLKzHzvtyVtXqntDeCSc2SXMuqMPXIC+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qeZCj5vA; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-537a2a2c74fso1623218e87.0
        for <devicetree@vger.kernel.org>; Tue, 24 Sep 2024 02:53:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727171598; x=1727776398; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1B1OazfrIYcqDgljo11L7/3HINNwsrbuT9cs/Fij7g4=;
        b=qeZCj5vAQdf64bvrMuQ7CaDVhk9mK8IQswL/+0AuVTTt8EHEtFt5eEub3RHN3j6mXB
         8pno29XkqGafZOx/pbwXjlE/O9MQOCJVCZKFSMU2pRkWw1Ng0FdEO3/AC/OkgQi7/W12
         qrf20KXcXnT5Dk7tIHrBEE4l7PSIvunIRg34KcabPxkIvSdlQNyS5UmdjxrXymPGpHm4
         n7MKuFWb6y8KfzYmWVkXXXNHaJ2ujOvirV7kwV+L/vgzB8HlUNDyy1HHFlLMjEYgoXmp
         e67ZWQZwahKhep5IpRVmFk0wHA5la+lFs9lhbYmMUDR5FtFLM+M9X3d4ceQW0mr6KCiP
         wT0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727171598; x=1727776398;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1B1OazfrIYcqDgljo11L7/3HINNwsrbuT9cs/Fij7g4=;
        b=RsgIEVpazqA05Yhw1ONDImg7Hw7K6L396Ti52Jv5+961S1SDTeGof0/mMi+HCNtDaF
         P4SI4aZ3AXpwooRFCcqIA34hohdWlDAqq3YmvM22xUCz59gFHT1IAjEauWElWNIqFr8h
         IyhJLNj9Ap5GF4bSrXDX+JBabK/URbX4rwqAqvRHboreRDinA+SihfagjcFyIaSOfH6p
         TIywP94trfvxrqTXW1up0KMhOn+9d911sUDRU+oiylzS1RcmIveZag2DmotmjDJJp9Xd
         qt7hUKuAey60oDqLAQ9T+h+KKTqHGnHA4/8ojAQlQA37TjyhboSsr+kzCf3H4V3LprXL
         zViA==
X-Forwarded-Encrypted: i=1; AJvYcCUZYuA4NQ9YWnTT9ZzktjuogFhBWm8DoPxhRgzjsq0nFr117EJZRyK9N6eouKJIqL1Wm6LI+Zl31wN3@vger.kernel.org
X-Gm-Message-State: AOJu0Yys3R/ZXj3ygntMJpXNWUzJcmU2IDkYfVtZG0RSag+ZALgpHTvt
	J9ndRPzuqXRGVG4wLj2SuEMiuIka2R1fmeMqeq1wK/GE01qo0mrHvey3CeCqVUs=
X-Google-Smtp-Source: AGHT+IHNdJNovm4z94ZHcR5kxQYpSRslhVpX6h8NUrYQWYFmX6wptEro/DaYvlFqeizDV/AiP8vjQw==
X-Received: by 2002:a05:6512:696:b0:52e:fef4:2cab with SMTP id 2adb3069b0e04-537a6512cd0mr866098e87.2.1727171598188;
        Tue, 24 Sep 2024 02:53:18 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-537a86490dcsm155318e87.239.2024.09.24.02.53.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Sep 2024 02:53:16 -0700 (PDT)
Date: Tue, 24 Sep 2024 12:53:15 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Esben Haabendal <esben@geanix.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	Jessica Zhang <quic_jesszhan@quicinc.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 3/3] drm/panel: ili9881c: Add JMO LCM-JM800WX support
Message-ID: <bplvcvwvtwzxa4drmohvb7qac7j5cyucpww5paru4e4drlexoe@hzvabm5tgxcd>
References: <20240814-drm-panel-ili9881c-lcm-jm800wx-v1-0-22a5e58599be@geanix.com>
 <20240814-drm-panel-ili9881c-lcm-jm800wx-v1-3-22a5e58599be@geanix.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240814-drm-panel-ili9881c-lcm-jm800wx-v1-3-22a5e58599be@geanix.com>

On Wed, Aug 14, 2024 at 03:10:37PM GMT, Esben Haabendal wrote:
> Add support for the LCM-JM800WX panel from JMO Tech.
> 
> The init commands are based on information from vendor.
> 
> Signed-off-by: Esben Haabendal <esben@geanix.com>
> ---
>  drivers/gpu/drm/panel/panel-ilitek-ili9881c.c | 228 ++++++++++++++++++++++++++
>  1 file changed, 228 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

