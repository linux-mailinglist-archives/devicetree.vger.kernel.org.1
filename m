Return-Path: <devicetree+bounces-157378-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4815BA6053E
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 00:23:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8B5C842118C
	for <lists+devicetree@lfdr.de>; Thu, 13 Mar 2025 23:23:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 333401F8BC5;
	Thu, 13 Mar 2025 23:23:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="ExDf4pjQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63A071F4E21
	for <devicetree@vger.kernel.org>; Thu, 13 Mar 2025 23:23:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741908227; cv=none; b=TOBTfTgh8ligYPJ+bs35irY+sUDmJv54gElp1uFxFIhyctvCb+DnyRaD05TzaJCyqiuzdkQVbxUFmSE6i+D34oTiv2m2aYVFXy3PhA7+KGdkDIFjCtpqCqZx3JvrOCAQuZC1dQHPMAa0r/i4z7fIQLYAGHo0PrgqiqZGVIgQMXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741908227; c=relaxed/simple;
	bh=03hqJnuK1CVGKDG0J1rE6YrOQUCHMsfOL+m7YMiPdhw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=aMPfDBeGVMx6cec6rn6LZdkFijQh8whXkbEed2BUsoETDOn/8kAnqLGgFwPV5SyogTfc2nO7As8Ath9uDrMSVfSTlZf5XgkD0TGtGpH3sUe2ni5xGTtFABs2mG4lC1doH0kOEHrjxV9i85XGVvq2RWzzAZQBiE1gmADIHYrY3W8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=ExDf4pjQ; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-5e686d39ba2so3030984a12.2
        for <devicetree@vger.kernel.org>; Thu, 13 Mar 2025 16:23:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1741908223; x=1742513023; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UCMudYCsiUfPpJxSCb7AZiMA+eXp5wJ3W7GXcaA01zk=;
        b=ExDf4pjQfp1STxOGaFOIKKu4iAilipjbozgjiF/RFIso1rPGbNSGanyHv2vImj4CWm
         i2ujErX2mh+OUafSLw8ucqF8hKLPZ3C+YsqqsbvuM37EoxyOCe2R8b4RDARUHY2j1MAo
         KqjZnFjhIAVyYMgpkSMpReNE4IICwU7rUYl6+8ONH/bKexu9FP5PEqdqfk9+QjZF41Uz
         NrYr2XnB7kNw5jEpyj58WH15GIhV+qxIK8GnEPHJSUCq8LBrHdzM6wJV2c6VZ6HJfw02
         kw0sLJOyCEX8KwYlaBQNfe5foYjzFRHzan8aXTnqWpAGqJ9IZE0CTZNQGJTVb3AZGKSU
         Vcqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741908223; x=1742513023;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UCMudYCsiUfPpJxSCb7AZiMA+eXp5wJ3W7GXcaA01zk=;
        b=NUvzkbl9oZRvwRqrsQqV1YGOnw5bqnboC5gT2OC9cTTINSJa/oEH3ZoElipj2JkAWt
         AcLZhXBKHU1KtEKpQHP6KTMCKjd2/6sZuPdbPkYXSAbyJRa2ByFXA7ixmVIQSPoPlWTI
         FMipHKTQRBUcxal6bXVubNG6+dsbhOZAjp+F/N/4yDNiO4GfwIeK7i2OArBelrpTbKOg
         bjA1daPvMPH+FsJq3JnHJX2I/NEVmoBDhyvHQCy7DXPLlj3Af1HpkZiv26Ysd5k+n9KD
         h8LMTmGIha+7zm/qQG7cbhiH+MfAtbYPu6sk5/U0Tn6IyPS4L5Yc8d1YK3hiPqetTTXv
         CMlQ==
X-Forwarded-Encrypted: i=1; AJvYcCWW/qn5VZOIdd2o+XBQhD1nwsqkYM0wglUasc+ZRnBLfbjM2qTJAjltFipNl37l/8vNvi0oLVE7kuFa@vger.kernel.org
X-Gm-Message-State: AOJu0YwrPZ7nwuJvzsQX/d/5mZbl2q4pAe0vqRKrKwXTHaFZhKoyqFCp
	go8pzq2V8+ISX0kt6Y5DTfyFKOuy5oGlVw1c/mB5JulVeskeHpqb1XcXexCJnQlqo6SLR3EFRrv
	hmD8zs9IIMC1QYHdnBGF+OwPv1exizwMKdIS9
X-Gm-Gg: ASbGncsSriRktSR+gNl8do9GpwSexNiKl4TWekIPuzpkpuaYNSJ5modLDobN7U//InX
	Tfl9YFtH2VXBSyMjJnDusGIg/Z+Cj57pRMqDcxWa/hOrbqG/jQThr5zDodbrsKblE9Nk1GtIvnT
	Et3ZOuefZNDNQXZiOTMOUGJ4O38LWJIsiwzohATz852qxEhgS3oE57yT4=
X-Google-Smtp-Source: AGHT+IHjRZmiFK4Q9ZkNGdZSuSwWBLKWpzjANTknswcUF/yqPrUOK+YMTqHc4G39LZMn33UVLCx9GiofUg2Ysz20FDE=
X-Received: by 2002:a17:907:9694:b0:ac2:d2f3:6c30 with SMTP id
 a640c23a62f3a-ac3303db128mr36303566b.49.1741908222584; Thu, 13 Mar 2025
 16:23:42 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250312195951.1579682-1-jthies@google.com> <20250312195951.1579682-2-jthies@google.com>
 <13c6d57b-0235-4c8d-95ef-111f87d6c25d@linaro.org>
In-Reply-To: <13c6d57b-0235-4c8d-95ef-111f87d6c25d@linaro.org>
From: Jameson Thies <jthies@google.com>
Date: Thu, 13 Mar 2025 16:23:30 -0700
X-Gm-Features: AQ5f1Jp4TvsDR3UGIWQbuMD6uRPeohSBsXrCOM-uSTZZYdf4-rx0RWVAFEBnFIQ
Message-ID: <CAMFSAReJpppA5eb2mxf8ZCwrR1HcBeGWaNXBoFmKq5swKboMJw@mail.gmail.com>
Subject: Re: [PATCH v1 1/3] dt-bindings: Add cros-ec-ucsi to cros-ec-typec
 device tree documentation
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: tzungbi@kernel.org, ukaszb@chromium.org, bleung@chromium.org, 
	heikki.krogerus@linux.intel.com, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, groeck@chromium.org, swboyd@chromium.org, 
	akuchynski@chromium.org, devicetree@vger.kernel.org, 
	chrome-platform@lists.linux.dev, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Krzysztof, thank you for taking a look at this series. Clearly it
needs some more work. I=E2=80=99ll follow up with a v2 addressing your
comments.

> > -  cros-ec node like google,cros-ec-spi.
> > +  cros-ec node like google,cros-ec-spi. On TCPC systems, ChromeOS shou=
ld
> > +  use cros-ec-typec. On PDC systems, ChromeOS should use cros-ec-ucsi.
>
> What does it mean? How is it related to description?

TCPCs and PDCs are different components which can be used for power
delivery messaging on USB-C ports. On ChromeOS devices, they are
mutually exclusive. This line is just saying which driver should be
chosen based on the USB-C port hardware. But, I see that type of
information isn=E2=80=99t really relevant for the device tree documentation=
.

Thanks,
Jameson

