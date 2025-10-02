Return-Path: <devicetree+bounces-223461-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C142BB55CA
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 23:00:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 05CC81888131
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 21:00:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00B052E0402;
	Thu,  2 Oct 2025 20:55:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Zum4Xn2E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 640B729AAE3
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 20:55:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759438509; cv=none; b=L4DHP6SdX/oVghuqkWZ28c0GaC8gtW1z9E8uH/VWI0jJeSdpzapzIJMUtUXCVR3+A0SSErJuMBGWZj1SWtE7nkyrUusxCdrknee5D+/CTHkEubeXKOI+hYQUi/y3fhffPYz6jnHu9hsgU6V5hzqms0uzbM0Jl6ITYvrxTFunTtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759438509; c=relaxed/simple;
	bh=ve7VSnEXz8SXLkr0Ns3Xtbmzdzf6/gpZI94v8i0XhNg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=e2wx+q14SfDZ7sp4j8lyKx8UcXQGxV/dJi944dQ0fXPSHOhoNRKyp3Lz25TI9pYYOAQTFWelyz1iswoOcDiNQx1D/Y8nqW4peMq1aS4Hw8gkd9wJKJhHLV1q4VV4YFEXPHIpHLc7yIG/vvHjdlNNylhFeo39nT0032nzfl5tn9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Zum4Xn2E; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-27ee41e0798so21261625ad.1
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 13:55:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759438507; x=1760043307; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lIklhV74VxzGNTOE6vXMU3sJY9HtAA/7pD7aRkESOR0=;
        b=Zum4Xn2E2Tflw56ex9a12QHG7jkwi8KYoQ8qGaYvZ2Dkt6SMK6fh/JwxIZVn3hwnz/
         656/S9F+MYXBSpsMEVjj3BgNvOZr3Nw80EiJCts7JIe1vn1FoGcxi6q/aTGfXFNeoA6g
         izHmK5aAckLIzHbTx8Ua65mh8J1m8CbDkm+R1czbAbGgQwYzy4KUIN14u+HWSKarBmX6
         BiwcHZmTy6BNiaeiIEJwB7Pchw9C13bHaJ4DLPN+4OKhnIB1f5XOKVSjq1vQgkCbbjUA
         pJELwq2e+S8+JzlPj1jIbcgOWprvh+tO/Mc7DJHgZDMGlzjJdR/e2yQNLEyoXbbmnO66
         x85g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759438507; x=1760043307;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lIklhV74VxzGNTOE6vXMU3sJY9HtAA/7pD7aRkESOR0=;
        b=CWvH/Bsb0NN2rAH8Gt4w6ZKzynimeS1fGD2kUw5YuXLQyZ3xqXeKGYCsD69I0k/PPH
         x69yUIiYHeuCisXOtPPCLCLYnAHvwoUlY90zpbTNBK7zFV2kgOwNieFMd7mdwicExlw0
         41BW90vbiGa9SvOf+SfhGMMbDpFCzXWKhvsKUYSfQuCOuhB9ZJ1a4Bpy+vJzM+kxSSEm
         9//IuN2MB1Ooe23KhJV+V2AzUG9mRm4tAsEqAW/eFMB3G0Qqiox0moF/KDlDwHI6HD0l
         nKdvY/rEnIZ/NSj1gYimzBaHbBEry2HWHj/LWHxf4D3s6jMwSwvWbid1Q7llcA+En1DM
         gBfw==
X-Forwarded-Encrypted: i=1; AJvYcCVm0bQ3KDzswVucfFgy1przMnGlUOw4WMs2AbPylK5k/qzDveZk4gcf2Lx9HEWktyAUf3upTeB0dwzK@vger.kernel.org
X-Gm-Message-State: AOJu0Yyee57E3W+SWLUiqKIkscddbx59OztJuJx9FzLQ5+3v9EI+rODg
	C/FetcIFZy/gHtPQABFqgEaZ6au020sWAcmxTOPTjvbMLNKagU7q266d
X-Gm-Gg: ASbGncsBBwDRRPse76oyOoS5N2OyPdXSrouGY/otN2ZM2Ojh29KjTTCqjmA+AVJhdeK
	z5kxv5rTlURbOx/jbZ48OY+xTgDhDSeapiIcKekRt30T6kQ4INs97ZXZmKUWRbsIWQwVokP3654
	woG89gNGP1yjfO8NSsS5BbMHBvgxfFraqr1aSBX0m31fkTll4CF9/5+VjjuEW/cc9CzFOxfElhN
	lI5HUllpeZNdbmKveQ1yqSE7WpJTj60/JY5Q4zfzhhr/KvK5zhApmmmPcZJTU+NwALpF84b1/zV
	IHANbXM5Ldc++ztPQXHLG2lYqapBJ7S65lbjCI2iodWKUqtoJ0msfEfnTDMo5sGzhAa6IIwJ8hu
	E4lRDJRpoDec/6vu91Rux3jeDZ6UVKEaT0Th4Fnai4vVj8G6vSdkG5kfqSgE=
X-Google-Smtp-Source: AGHT+IFTD102IbQjDd7ezi5HEPtVTH6TbbeKx+COFeUkw9uJEnFAQC6usbIyZfpGul6EpzbGLgme9w==
X-Received: by 2002:a17:902:d591:b0:26d:f589:9cd7 with SMTP id d9443c01a7336-28e9a593d26mr7143505ad.15.1759438507464;
        Thu, 02 Oct 2025 13:55:07 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-28e8d1eef42sm29474935ad.133.2025.10.02.13.55.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Oct 2025 13:55:06 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Thu, 2 Oct 2025 13:55:05 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Kim Seer Paller <kimseer.paller@analog.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonathan Corbet <corbet@lwn.net>, linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-doc@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: hwmon: pmbus: add max17616
Message-ID: <07272da0-6b8c-4283-8094-ff6446ff5762@roeck-us.net>
References: <20250930-upstream-max17616-v1-0-1525a85f126c@analog.com>
 <20250930-upstream-max17616-v1-1-1525a85f126c@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250930-upstream-max17616-v1-1-1525a85f126c@analog.com>

On Tue, Sep 30, 2025 at 01:02:20PM +0800, Kim Seer Paller wrote:
> Add device tree documentation for MAX17616/MAX17616A current-limiter
> with overvoltage/surge, undervoltage, reverse polarity, loss of ground
> protection with PMBus interface.
> 
> Signed-off-by: Kim Seer Paller <kimseer.paller@analog.com>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

Applied to hwmon-next.

Thanks,
Guenter

