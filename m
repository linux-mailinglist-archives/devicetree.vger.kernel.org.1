Return-Path: <devicetree+bounces-110040-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A30AF998EE7
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 19:54:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B49701C22917
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 17:54:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C2411C32F1;
	Thu, 10 Oct 2024 17:52:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="tkjBXiWU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 585051A303E
	for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 17:52:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728582747; cv=none; b=WLpmyAtGjYA27UGIrZVoRMzhEYTb8YSj4qHzSFYgilZs65g8j07yL5zZFZgdycukYwUT5kdP8nbL1T7rL9jXsEyw08FE2x6rvBytvj/9FoFZwrB48ySBl0VenCE+byIYtwI2Pum2b9fL7nElD2tE8RZ+EWHSJPxt1FS+zVzy2zM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728582747; c=relaxed/simple;
	bh=zd1av6Fc40E2UhYTdrDXA71AlPFDV24ywT4uxHlQlG8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GQ3CzsZbLI+5V3navDl/V5G0cqITwLqVhuMXBSOh4Z1M8uSenrzfqXt9c2J3rI3SvViLKSY4x6vEEzOXvVPJ+oA00yR7T4W6e7SKPmcqRB9JWr3DLQdbXmgzEwQv8pry6R2nZugFa6H4r9g6FSAH3bM3nc4AqV64GOlBLc+Pybs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=tkjBXiWU; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2fad6de2590so18101161fa.0
        for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 10:52:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1728582743; x=1729187543; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=N9GWTTOAK3xYsbDrD4IwkOXIfk0ISdS2LgMx/4Ojd7s=;
        b=tkjBXiWUp1rPc1MDk+FQ/Jrh0rLPki7lUpTy0y/QrQZEWz8Q6JSGayP5wxdMFLPA6e
         x/XFQLSTYZPZiQO0kg/rPPKXOiByViWty+a3ofZgZAOeVMQq22jnCnqFbSBdYxHPe0m/
         HzZjD5E+17iNOIiZzsgZfJHVhOD99ja5BTocy/Udl7z6Hwr0+/IyttPeLCzp1L2/jvva
         Ulwpl96kbZg8tDkC/Dh3lvK8HXEIXwlTxTjylv11Kyf7jXTlj9P0rCrJfhpo9u9pdRz7
         0C2k77BSeymYBENQ3AqqgxkSx8noAYYEy0lRSO+RsHxdMsLztYOeOaWFk+FB/S+rrRf6
         JaDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728582743; x=1729187543;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=N9GWTTOAK3xYsbDrD4IwkOXIfk0ISdS2LgMx/4Ojd7s=;
        b=tvdAxzNddaiOESklysD8j5gPfWlDvhn4G1Qp6pA+b+ZEBAa97JX/3U0yOEcxWMTdCx
         iJBSRBphPOSi8PP+PPeUdBgDCN9a8z0wFJy6Cb8aHJRtzyi0OoXHbDWY8cJo2FtX7GWD
         aZbV1k+qZbLUvzHZ/KqmMCQv2ZDH3zpWu35V5MMEqGE8qW0TBsUT39Hx+yRdc8YaS4Of
         rXelTDo2nYGpyU8o9o1MZE37/dy2QncDx5GWcH4/z04dhlXxFxq8BsbOi2Un4qe5vFYI
         qomeyr6TO+dftB7rsLZnGfse222uP9TKs9e9YWuj8zV/Hh2WQ4JYfFFwsvDyTGyIdvcu
         HLuw==
X-Forwarded-Encrypted: i=1; AJvYcCXzOZnWJksFrNTTKWlX/BjqJ0m+pfjCEbPZITe07AeIxYRzZbSCT6wGWLshomYVqT19C1UIY3BlJw/E@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4KWW836E+zszRRdGSvDHBh+9RUGvnHESa4mxqRdNbCbPxpl81
	preOJ1VxCNGUrtMOQo3UrrHseskKU/zv+JnOmgBofL3qO9hu/WoQNKkY7kn5EZo=
X-Google-Smtp-Source: AGHT+IHGnF80vbcXnZMKV66ImCfvKSUUrwvKQXz0L7I5zHVN860njIn35NiSafpg20jfvTnhnsqtMw==
X-Received: by 2002:a2e:750:0:b0:2fb:256a:59f9 with SMTP id 38308e7fff4ca-2fb256a5b5bmr20932011fa.22.1728582743435;
        Thu, 10 Oct 2024 10:52:23 -0700 (PDT)
Received: from yamato (93-45-8-132.ip100.fastwebnet.it. [93.45.8.132])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37d4b79fa21sm2056872f8f.85.2024.10.10.10.52.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2024 10:52:22 -0700 (PDT)
Date: Thu, 10 Oct 2024 19:52:09 +0200
From: Angelo Dureghello <adureghello@baylibre.com>
To: Nuno =?utf-8?B?U8Oh?= <noname.nuno@gmail.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Nuno Sa <nuno.sa@analog.com>, 
	Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Olivier Moysan <olivier.moysan@foss.st.com>, Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
	linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	dletchner@baylibre.com, Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v5 02/10] iio: dac: adi-axi-dac: update register names
Message-ID: <eyx4gykoki4b4gwf6rmtnjgqec3ltdgtszbjugidtf37uei4pn@jqczhf3thuka>
References: <20241008-wip-bl-ad3552r-axi-v0-iio-testing-v5-0-3d410944a63d@baylibre.com>
 <20241008-wip-bl-ad3552r-axi-v0-iio-testing-v5-2-3d410944a63d@baylibre.com>
 <a02f256c54089da4faa3ee1807c01b9cb6e70bc6.camel@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <a02f256c54089da4faa3ee1807c01b9cb6e70bc6.camel@gmail.com>

Hi Nuno,

On 10.10.2024 14:59, Nuno S� wrote:
> On Tue, 2024-10-08 at 17:43 +0200, Angelo Dureghello wrote:
> > From: Angelo Dureghello <adureghello@baylibre.com>
> > 
> > Non functional, readability change.
> > 
> > Update register names so that register bitfields can be more easily
> > linked to the register name.
> > 
> > Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
> > ---
> 
> I don't fully agree that this is so much better that's worth the churn...
> 
> From a quick a look I saw (I think) some defines where _REG seems to be missing.
> Those is fine to change for consistency but I don't really seeing the big
> benefit in changing them all.
> 
> (Sorry for only complaining in v5 about this...)
> 

no problem,

the change was suggested from Jonathan, was not something i need, 
let's see if he has further feedbacks, in case i can roll back
easily.

> - Nuno S�
> 
> 


Regards,
  angelo

