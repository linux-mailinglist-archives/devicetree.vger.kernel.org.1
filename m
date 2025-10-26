Return-Path: <devicetree+bounces-231147-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 18386C0ADD7
	for <lists+devicetree@lfdr.de>; Sun, 26 Oct 2025 17:39:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 716093B37E7
	for <lists+devicetree@lfdr.de>; Sun, 26 Oct 2025 16:38:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4ACEE257846;
	Sun, 26 Oct 2025 16:37:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hyz/GNnF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 004BD207A22
	for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 16:37:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761496675; cv=none; b=Byjq00+73QMVP6cyq05uwYsVJvX10oYp7SlzgHfjKOLWHQUJ6ZV+b8Hd8I6h6MkPqWDHj8Mw8vPe3Xf7yMEZXjbUshkLWSBQrzG8ztxv4h2YZx2AjfGn6GbSyp124mxFozCjQjk255FxHWgtpAxS222MuYlJmBsDuTSz25QfS3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761496675; c=relaxed/simple;
	bh=Jn7ngMBWIUhPYmq3HsmvV2FyXT31L+46gLuKAYt+qfs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ume5+CjfYY1QRbPt0J0cla5rhVuctt1G8soyqsNQ5MXC6CWUSyHSDjd7MSGtihJV7HfLZ4sXs2SVy35gLWsi28H+pTKIKzerWw5JKwiH0GR0C7AlbsVfpJr0lhT0ggrmVKiNb8DqmiMx8Eeqb47TfhSjXk1MWhUKrJFH3xelA8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hyz/GNnF; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-b5b823b4f3dso421838566b.3
        for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 09:37:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761496671; x=1762101471; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=7XxEe6D+FFfQqIEEbE4sKMO9/YUuuqd9OGSQoRJvBWE=;
        b=hyz/GNnF0aCD6+j5VZLNSwr5I/e++NY0+Qh5HeeM5t4U+kBRfipDmegwE3UmvV79J+
         uWdgZyQFWUyItGQ8QqCKzD4v0q1EzanyXytVCg6VXiWyCbMtHklksjRaw/HdFOJw/G9f
         vVvx8V3aqjmD/D9YCaEXisbwmGR4lduR9yc4bmLmLczjkzId1SvSm8FzdrfixZCZB74T
         9ICmqOpivpdMPx/idChI57Yvdh9IF0d0fyyrtaGDUidJklATrmWwnmIpqm5F2SwQHg9v
         5zTtMlJqo9EshP3asxflvPpjI0lkoYpJKg3Ktn7W8PlwB/ylXFagSHUo0SbOo2htYwnB
         TzOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761496671; x=1762101471;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7XxEe6D+FFfQqIEEbE4sKMO9/YUuuqd9OGSQoRJvBWE=;
        b=Z+eCkk/fWlrWIg/b6AAbvP0un9xxRLQrshws+yjdbe382nRLKUYLbvLG9msBH5k7H/
         mB67f6mUezgMxRAcMLtkM5u51apFldiQkyzIAu1eGZLf4yFlm/MxGtotXXc+2fDjunP8
         aAYRv1kRyQjfGuUU3zn68OtioJ35MQpHE0uEKubrnRXPk0IK3OuEoWUGSPwgWmaMbdnE
         0fToGFkTFrUCIFE1tM7XDBbiTZ0EkvU5LuQlp/4EU2fKxFwVn2EziMIvBZSTdKzPY9YW
         hLjLzbNCU+Yf/ZgNk0Gb5tNefgXiWItkSDvonuvpVo9IvqtPucl/OeGv3rT51UTW2w1T
         66MQ==
X-Forwarded-Encrypted: i=1; AJvYcCWYZusL+Ufu6sFEKK1dDJPP6in9F2l9/JxHwoUwKGnKsGjwqiYnPyfa85rm+Fu0UFDZrO2dgo3BGoVf@vger.kernel.org
X-Gm-Message-State: AOJu0YzABl1Pc7POV51jIg0liVOF+wHiuZPl4yZtGp6xfDCIOtkf+GGJ
	hwHJjN4MX5KE7bB/0KyRKOG+baTiNZjAearsHJDLyg1UH62fYe/S7BS3
X-Gm-Gg: ASbGncuMw9nRP+itfytf/nsSVgRwDLTwj2yAY7h4BEOPFzgLGwOP2Xw7Ea0OXuqqJjS
	in+TQU++TpGOW+t9dGGkMDyrRtcdpG+/KTdnbWnZJTncN2raxAV/uw1RqAzVldNLiAeWsrWYu6k
	R5CiVSE39QcartaTUe6JXvgngXxoATBKI13+ZnYwkuUnGbc5x44Ox5z7yYESkp8hyUnPSShAlEQ
	lgB86IbRN0tWU0kPRYgroYUJEYwLVNL0bHvHxXr7vB94FmdQOluDyE52OvYzAY9LLhEA8UtEwo/
	SjAxU/MeBX+btkqaggCWpLLi0Z69bO5dITP4MOs3Mv8EmnvSnccIUPuXfMiy8JgnWVLqCjKmTlm
	BXLzuxcgE9fu7A1Yzkz06d6wgwySxN0p5Loh8kV8IOJJQt90t70MNJh/tvZd8xaTkfWIwaVK0K7
	ZJo8084g==
X-Google-Smtp-Source: AGHT+IEoV/OCny3StslIHhY+HhBv9Tk1poW78TbiqX3CKYhoXcDxOU8er8pKIVdW2dVWKc/kXQmqZA==
X-Received: by 2002:a17:907:968d:b0:b6d:6c8f:6af6 with SMTP id a640c23a62f3a-b6d6c8f6f3fmr960640266b.16.1761496671063;
        Sun, 26 Oct 2025 09:37:51 -0700 (PDT)
Received: from home0.fritz.box ([2001:a61:123e:4501:d88:2861:1686:c41])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d85445e81sm498050366b.64.2025.10.26.09.37.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Oct 2025 09:37:49 -0700 (PDT)
Date: Sun, 26 Oct 2025 17:37:47 +0100
From: Jorge Marques <gastmaier@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>
Cc: Jorge Marques <jorge.marques@analog.com>, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	David Lechner <dlechner@baylibre.com>, Nuno =?utf-8?B?U8Oh?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jonathan Corbet <corbet@lwn.net>, linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org
Subject: Re: [PATCH 1/7] dt-bindings: iio: adc: Add adi,ad4062
Message-ID: <wla7ldkhm3mca6eadlx2cith43pcvdg4tertmrhjufqa7wqnc7@fcfacbnzcjvo>
References: <20251013-staging-ad4062-v1-0-0f8ce7fef50c@analog.com>
 <20251013-staging-ad4062-v1-1-0f8ce7fef50c@analog.com>
 <20251018161143.0a89495b@jic23-huawei>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251018161143.0a89495b@jic23-huawei>

On Sat, Oct 18, 2025 at 04:11:43PM +0100, Jonathan Cameron wrote:
> On Mon, 13 Oct 2025 09:27:59 +0200
> Jorge Marques <jorge.marques@analog.com> wrote:
> 
> > Add dt-bindings for AD4062 family, devices AD4060/AD4062, low-power with
> > monitor capabilities SAR ADCs. Each variant of the family differs in
> > granuality.
> 
> Resolution?  I'm not sure what granularity means for an ADC.
'Resolution' is the correct term here, thanks.
> 
> > The device contains two outputs (gp0, gp1). The outputs can
> > be configured for range of options, such as threshold and data ready.
> > The device uses a 2-wire I3C interface.
> > 
> > Signed-off-by: Jorge Marques <jorge.marques@analog.com>
> Otherwise nice simple binding. Nothing to add to Conor's review.

Best Regards,
Jorge

