Return-Path: <devicetree+bounces-142940-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ACCFA27490
	for <lists+devicetree@lfdr.de>; Tue,  4 Feb 2025 15:41:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C4E4B1884952
	for <lists+devicetree@lfdr.de>; Tue,  4 Feb 2025 14:41:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9A772139A2;
	Tue,  4 Feb 2025 14:41:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="n7oYfX31"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D90402135BC
	for <devicetree@vger.kernel.org>; Tue,  4 Feb 2025 14:41:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738680074; cv=none; b=hf/2qk1uVeIGTVqHmxGEDsb2tPTUeDo4mq4mAlTgfAG8cf4FhkJimoOJkEMrWwooXQRTKTj/bDVMYJDUrbX4X0nuU17WFhdTxz+t6QZR9TRRV3lZcEG5YK3GhA7t2OQ5yf1UDdiUdPRhiONJQGEmXt15dAZ48b1dOpd91jp8Fl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738680074; c=relaxed/simple;
	bh=91N+LRtBj3itj2ylbUHtfZjyPuwCyXJA3tx1li28bLc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WK7Npg+QBt00NMU00NSsi1iebJIKVfx0qErBeEqf5uVsaZT8jUEpYuhWcCJc4j5CpBYxlz9EiA9xu8E4qOhPcq+4y6j/RdmtF0CJJEG6xH1170BOF/tx1dDnhOnPlWHFg1UpWlIrw9+mGd512yVGxeOKOYh0IL1tlewsaKjAMd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=n7oYfX31; arc=none smtp.client-ip=209.85.219.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f178.google.com with SMTP id 3f1490d57ef6-e587cca1e47so5788930276.0
        for <devicetree@vger.kernel.org>; Tue, 04 Feb 2025 06:41:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738680072; x=1739284872; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ew4DOVhQnp3KVlv6Z+adbVElEmJww+rFIUASaWfJwLQ=;
        b=n7oYfX31A/NH3eQ20R13JOYxzT/yquVu6Utu0u1J1D4nD4dynrH27xyievqj4mQ8W5
         EBBr64jt0d/klDXCI90CNM5Kt27AdRCPSosiiybsPjIPU/wn1Ol7ycGMGyJdvky5HTbX
         rjLz3CaA7sNqL9Cztnc6Jvd2l7dH3zNadnk2qoEdKMXsFCPQvVex6pL/j+EYpPalTGFk
         dfN0Pe/RODqy81J2k9QncRqF5DLBuUzNDq1X+CKZvdXi55jwT92ni1ShmQvKthBDkQ43
         Dm7a4jjMlC+KqVbd2WhbmPo3cSDjgDQa6Zh2crYqaNQBAL8P+lPYfs9UeQjie27tkvJz
         EYig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738680072; x=1739284872;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ew4DOVhQnp3KVlv6Z+adbVElEmJww+rFIUASaWfJwLQ=;
        b=rYNZeytk/L+zew+AeoaIpPzr+a0yIKXHSxaV2meYwfzg+ZSDq/RYkpl4Jf2+noYRF5
         eE6F1PKqe/RRViSmGfu7UuQ/yl/e0ti703nD0IotmO6CJf+2PxFMtmVBWS/deChRwUdy
         zxr1vN1FeYepryH5/UG3AqQ46zEE+tmws6F0Mg3ORJKLXfP3/ylNZ1z9MPtpxvOT/jHN
         PLFd1XkC9VTVYPJvzk4da+0CTeZbIPndcDoEDtGFrRY2Pk3XDPh3Z3ilpnatf6AEv4yU
         4HEP5h1NArOiv44RSKoQLy5SJHP0Jn4BMcok9uKQtFOlZimdK8K8NM9pjqAE9ntOpntI
         Cveg==
X-Forwarded-Encrypted: i=1; AJvYcCXce6BqB+qVy4S6wTKeNu9BxVi6hMRkcVdd+4v65We0NxbqEfw1mtT0bJKw4ut4rdBdD5kMpzt9SF8C@vger.kernel.org
X-Gm-Message-State: AOJu0YyHUvuguNrIUhHTkoVOSXsOS5xNSQeJTHWmW9JPCTcIBG89VJ7B
	H4k5hIqwcYLQlxsIU42bFoboHYYhmllG/h+yDigQ3UP+T1844/YrZlgGZ/RBq6YPlK6oK61N1D/
	ApDj18dPaFZ78H4RHRadbYWg8vgv+WpXYww/Oag==
X-Gm-Gg: ASbGncv4ogBPElCQ2DyhuAJSmuGmQ0wceOs+POp3Eaym4it/rX6E13Es9InHmDH8MEe
	aSHJsVP8gKEye6QdG0tdeq4L+KirLrHNavgZ8qD8OThpSOBXUQeucWjnGhGPOW6fKIknnJ4la+Q
	==
X-Google-Smtp-Source: AGHT+IFB7VsIcSnlCga8NeUStj+nz7dcGdSq8KdqrAerawmVjHxlGaQ1qu1pYWqjA4/tsyCajzkdoxica/UvVlxL0Zk=
X-Received: by 2002:a05:6902:e05:b0:e5b:1034:909 with SMTP id
 3f1490d57ef6-e5b10340af8mr5144143276.29.1738680071774; Tue, 04 Feb 2025
 06:41:11 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <accb12bd6d048d95bd1feea07dd1a799ad3f8b31.1737532423.git.geert+renesas@glider.be>
In-Reply-To: <accb12bd6d048d95bd1feea07dd1a799ad3f8b31.1737532423.git.geert+renesas@glider.be>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 4 Feb 2025 15:40:35 +0100
X-Gm-Features: AWEUYZk6NgieIWPfpkG1IfqaDakdkwS41m6bUoTtDOf9y7ZpOmY6vlu_-K7SU_E
Message-ID: <CAPDyKFrOa4hqGkwqGN9BwW0w2QP8S17EO6mSrQHqx+LLprkFxg@mail.gmail.com>
Subject: Re: [PATCH] pmdomain: ti: Use of_property_present() for non-boolean properties
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Nishanth Menon <nm@ti.com>, Santosh Shilimkar <ssantosh@kernel.org>, Rob Herring <robh@kernel.org>, 
	linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-omap@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 22 Jan 2025 at 08:56, Geert Uytterhoeven
<geert+renesas@glider.be> wrote:
>
> On BeagleBone Black:
>
>     OF: /ocp: Read of boolean property 'clocks' with a value.
>     OF: /ocp/interconnect@44c00000: Read of boolean property 'clocks' with a value.
>     OF: /ocp/interconnect@48000000: Read of boolean property 'clocks' with a value.
>     OF: /ocp/interconnect@4a000000: Read of boolean property 'clocks' with a value.
>
> The use of of_property_read_bool() for non-boolean properties is
> deprecated in favor of of_property_present() when testing for property
> presence.
>
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Applied for next, thanks!

Kind regards
Uffe


> ---
> Seen since commit c141ecc3cecd7647 ("of: Warn when
> of_property_read_bool() is used on non-boolean properties") in
> dt-rh/for-next.
> ---
>  drivers/pmdomain/ti/omap_prm.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/pmdomain/ti/omap_prm.c b/drivers/pmdomain/ti/omap_prm.c
> index b8ceb3c2b81c2510..79d165331d8c6379 100644
> --- a/drivers/pmdomain/ti/omap_prm.c
> +++ b/drivers/pmdomain/ti/omap_prm.c
> @@ -613,7 +613,7 @@ static int omap_prm_domain_attach_clock(struct device *dev,
>         if (!of_device_is_compatible(np, "simple-pm-bus"))
>                 return 0;
>
> -       if (!of_property_read_bool(np, "clocks"))
> +       if (!of_property_present(np, "clocks"))
>                 return 0;
>
>         error = pm_clk_create(dev);
> --
> 2.43.0
>

