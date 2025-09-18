Return-Path: <devicetree+bounces-219066-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A34DBB87252
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 23:30:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 37C3BB646D8
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 21:28:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E28D2FA0F3;
	Thu, 18 Sep 2025 21:29:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ItzNtb+Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B86882F9C29
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 21:29:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758230975; cv=none; b=AisJ5E2IMFKsAZcWaICIeKE9KCVpf3WRRkYGIaFQNK+4g4wP238ZpMEl1KmKx8T9mYs5Xr1qmwrcIcGFk/rMw1PSe85/9vjaH9Bh3/CBkYRvAGxFFxPH+74iuyw/abVp0LJITtwqD6HSCjmjZ8mx0A1NA78KFrD61lmJwzRBaZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758230975; c=relaxed/simple;
	bh=Y/g7MH1bz5uUTekQcW8JYQMQ93odnK04liGdY8dwB+0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GsnKOnRrEJ/HP89foFuDhAlVV52OJXuxux8YU2RaZmBvJkQ46P1CU3IUgJQhtI3U/uf/6pZEwor/7gn7pE2oFgEKeT4ngLFA9BGJoipFPz5MFFf4yMmroUJ9C1cezDrjSGqLpGvGgueyfQq0Pp+xVrKxJSn45qQt4FHvqLHkXzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ItzNtb+Y; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-2445806df50so12449895ad.1
        for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 14:29:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758230973; x=1758835773; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=OuOfn5BynYjHyfO8hnZOpVSeujXtYV70hxGYV5OTCNY=;
        b=ItzNtb+YeeFoSQlDfyJ+4n14NdYaJbAqRXompb1OYGEJ6WmMjVltaIU4n0c09vLiQN
         MxlOSzVmfiu6C3Oave+ZpvVqDXZnZl7xEQ2n1yceIjHyheHAo/ziO2CJYhzdAhDN3Can
         bjH+pMtZjP9B5V5CvsjulXnHnqWPdsb5tXu7yl5gwMapEqTY9JoBHRYmlTBe9uaAfXdP
         8hfYUUVuKAh0Sj1u9LkGCGShS3PhEjD+x9bzVNssJVSV1Tu7KXgu/4FuDyeow10xQ/Ou
         +xvITm6pG0TAV7ksdtTLHe2XDj4bgHDd+qAWCO2pFNLRAoY/KA4U0v0B39Jca1T04PxV
         l1kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758230973; x=1758835773;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OuOfn5BynYjHyfO8hnZOpVSeujXtYV70hxGYV5OTCNY=;
        b=cwOpZVsJJiurDp1mZtWMmCRo4AGFixz2l0dINUL5Xz9trNLB3OpgcyGc1jIrwi/F9J
         51cUmilHxORBjJRYynoQJijoTP7eTvVcSghzKVdteNv60BloiZxQfCuyNNFbBttLcL/Q
         Azk19EEFfiSp16kq9opKCjkxNel7kKsW5IW7LKhKkOcDjFf3igmY5nWppGGdR0wpZXEY
         21jGeIM21FilVRmRjmnlcNZw2X9lm+rMvSfcULqccOShttbllDH1zvZtndVc4TiEHJ/e
         Lhz156ZVuREqQFl1cUXmUved8mFflyZSEez2F2zIw3FhGr8jO/pttYBD/Wle/D0sbEVG
         l1yQ==
X-Forwarded-Encrypted: i=1; AJvYcCWH8PdEDFC3AUW8+f+Fm6H8fO7nkCNWFDGHB9Nbtbq+CoR1QlpIJJHdyukFcm7ASi+SMy7Id2a/r1wa@vger.kernel.org
X-Gm-Message-State: AOJu0YyvJPXSFlEq2WyprBjUehANHCXI38MB1SMXgo8V2VobHDwqSTlC
	HDsyW0WpU6yjkAiCvtWcIy8ZGLAU/RQBnWL3LOKXwv98Q9Cz+CTpbjgLRXF+yg==
X-Gm-Gg: ASbGncsX/9q1xm2qAT600sQoDhBGuPCjrz5aFl+96QCCxNEwxqurSr+v8sv5ARGm+J2
	0rKlCuF2M38QZb/kPqzkRPfswrlvfeWc06hWB17PVWoMKVwHBXKHUWJDObIj+BsFGs/Ne/i6D4K
	FkITEYLyqPEaM0mBcMRvgtAvC47+xDyJ591rbQmdsu3YyL7X2BUHMp1cVU8Yehw7v5w/2CsB6yB
	+PS4DKPYN6gnQaovTg91x+HhJ1zl9REuk482wLhlXKJ5KoO2s2aK+ERQoDK8NREpK5aygay4B2Z
	CWieWUc8EmyBZNkaUy1KJ+OoKJr7f/uofhqpgPJ0ff0I3Z3eeTgaJxhVyAbMEaL6oJ1V7YiMK44
	u65J7HsJyAJ97faAMMEL0H4qTfuZQpCTKqkkSDhl9uvYvqowWdK1l
X-Google-Smtp-Source: AGHT+IGJVCoAx599ArMTaqWmQd71Ibkb5sXiglq6XEMSs2fJiAQc2hYEh1dHQTNHwRyHuT99FrXNmw==
X-Received: by 2002:a17:903:3387:b0:260:c48c:3fba with SMTP id d9443c01a7336-269ba53b148mr9460685ad.47.1758230972743;
        Thu, 18 Sep 2025 14:29:32 -0700 (PDT)
Received: from google.com ([2620:15c:9d:2:8e3e:e1c9:1151:50c3])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-269a7dcafb6sm15559465ad.83.2025.09.18.14.29.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Sep 2025 14:29:32 -0700 (PDT)
Date: Thu, 18 Sep 2025 14:29:30 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Cc: linux-kernel@vger.kernel.org, linux-amarula@amarulasolutions.com, 
	Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, linux-input@vger.kernel.org
Subject: Re: [PATCH v4 4/5] dt-bindings: touchscreen: convert zet6223
 bindings to json schema
Message-ID: <jlncvy4jmxwcuryvrto4jxudnohw4berxa67avjqzrxsdakbvj@tlpf54cr3acf>
References: <20250918153630.2535208-1-dario.binacchi@amarulasolutions.com>
 <20250918153630.2535208-4-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250918153630.2535208-4-dario.binacchi@amarulasolutions.com>

On Thu, Sep 18, 2025 at 05:36:09PM +0200, Dario Binacchi wrote:
> Convert Zeitec ZET6223 touchscreen controller device tree binding to
> json-schema.
> 
> Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
> 

Applied, thank you.

-- 
Dmitry

