Return-Path: <devicetree+bounces-120105-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AA4CC9C1851
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 09:47:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DC2501C22B9F
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 08:47:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4965F1DE88C;
	Fri,  8 Nov 2024 08:47:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="uuGbqETA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED4041DED5A
	for <devicetree@vger.kernel.org>; Fri,  8 Nov 2024 08:47:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731055662; cv=none; b=ebD06ZP7DcXnYPLjBWO0lnKwn7TdrTdH+DNJs1do3Av0F1LwZtYZHB793JHHQowBUuC7B1VM+94ZRt4SulyeFZ//ZsgbXWfFSsTrdRb2YC1mSfx8pAyCJ569v2SxbkIRck9CtOAh8nLWjY5Cyo37q8SZAVQvjkeOFanU81t6U1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731055662; c=relaxed/simple;
	bh=Kw5vsWimu0DEEJoOvAz3DPc5YUBq+0ME6wv92iHkafY=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=Gf5pfSu/LH+6APiKqacd07CgjLDS/cuGgsdJhtc59CRz+nrh8zJxF5w1FM9KNlqzuo0Awrru/7zwgFov+CKPusMh61UTCu0E3aNPCF6+13j+KpQbJ7/+m0N7Av21Cm6GQ9I/WFqEGSKmaVA5rB0E6k9Kcl6ZmpLvaMs9QsV2yjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=uuGbqETA; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-37d6a2aa748so1131214f8f.1
        for <devicetree@vger.kernel.org>; Fri, 08 Nov 2024 00:47:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1731055658; x=1731660458; darn=vger.kernel.org;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=A9AD8kCT+nT+KZ2MXqSRYTX2q6sk9d7vkvCTtFjV2TU=;
        b=uuGbqETA371S6SHpohC0xK3YcB5FlvBkXXCwMnvgs2IxyBSKc/dM2wgbrbxhtSV745
         +SdrlLisixi8yis2r3mmxfRxlTNeGxNnAvyvorKa21ue2p0IvieF2sKG3EAeJxxwsNLX
         uD9kRGbXKAXIcu9qenHA/4xF+CMmWHIQsuWbJ52fkDZU7+PkXcKtfCtvdAohO7dV8lZM
         vJOKw2sLHfp/Pdj827FjGwckhAL1Y0s/NMbYMfMMjS15rfIMwUmoAn2efOLku/vGf/ZO
         3i7yM7aVOQNbBGTt8yImhG2/ueR/jeGgiFhPPn2nW80LrY7NOU8IW5vSDByrXiVBFtd3
         ngJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731055658; x=1731660458;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=A9AD8kCT+nT+KZ2MXqSRYTX2q6sk9d7vkvCTtFjV2TU=;
        b=WHzB/fNVB8IZUKTBB3KJksjrNPf5/3fD3AHhneVYQmdhQ6RDRHYrknIXjGfipuXwdm
         yQXOspyGsG5zASCa1cO2aTM6uwvpvxZ2jfY91KwQPilnzdHqOOOc34ZnYW17kOD59jbD
         kIy40dDZA9Gf4hqxaeGt3w2Rb6+IjcW8ZfJilLqPqqsSsH8fWyzFGACNNw+j+PD615Lu
         vxo/EhZxLkW2kpqZsAoNwGO3JIM1fxph9mpa20yOwFOvk/FkUbggxKa94RwYti7ArdvR
         P1/ADMb6FnoUlPdNl1xWUCJdF/yjWrL/mtpBAgyG0HQbiVyTn3r8RNmrxFqED0HwmU8/
         74Jw==
X-Forwarded-Encrypted: i=1; AJvYcCUjPvKyw5l092dG9+Jp18EuiXGiNcDtKgcxJocU/Px4QL07FlBsE4UoVTX5bnMyBjvjEkcgCGNfVc2F@vger.kernel.org
X-Gm-Message-State: AOJu0YzgYAh+okESu71LxthSRhXaqdm/cQI+eFo9arlZazUtaLfqhmhy
	PK2Vn2buwLAxET5VCGXeVC9Qe+/nvT3glThAA/MBZo4OrOZZAc9kqz2+JkFgboiyykvXL4gkh1H
	q
X-Google-Smtp-Source: AGHT+IEGxCmPOWLzM0bzj/TXKrnSrKDuB1/okZ3cbyLHE4zCDXwSir+KcCmZbuM3Pt/+K5DFnkIxNg==
X-Received: by 2002:a05:6000:2aa:b0:37e:f1ed:67e8 with SMTP id ffacd0b85a97d-381f186dd5cmr1454470f8f.35.1731055658002;
        Fri, 08 Nov 2024 00:47:38 -0800 (PST)
Received: from localhost ([2a01:e0a:3c5:5fb1:ecfd:9f8d:62a3:6ba8])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-381ed970e23sm3930442f8f.18.2024.11.08.00.47.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Nov 2024 00:47:37 -0800 (PST)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Guenter Roeck <linux@roeck-us.net>
Cc: Jean Delvare <jdelvare@suse.com>,  Jonathan Corbet <corbet@lwn.net>,
  Patrick Rudolph <patrick.rudolph@9elements.com>,  Naresh Solanki
 <naresh.solanki@9elements.com>,  Rob Herring <robh@kernel.org>,  Krzysztof
 Kozlowski <krzk+dt@kernel.org>,  Conor Dooley <conor+dt@kernel.org>,
  Delphine CC Chiu <Delphine_CC_Chiu@wiwynn.com>,
  linux-hwmon@vger.kernel.org,  linux-kernel@vger.kernel.org,
  linux-doc@vger.kernel.org,  devicetree@vger.kernel.org,
  linux-i2c@vger.kernel.org,  Vaishnav Achath <vaishnav.a@ti.com>
Subject: Re: [PATCH v4 7/7] hwmon: (pmbus/tps25990): add initial support
In-Reply-To: <df0db75a-b5e1-4bd8-8a59-de85b0a77fa5@roeck-us.net> (Guenter
	Roeck's message of "Wed, 6 Nov 2024 10:59:11 -0800")
References: <20241105-tps25990-v4-0-0e312ac70b62@baylibre.com>
	<20241105-tps25990-v4-7-0e312ac70b62@baylibre.com>
	<df0db75a-b5e1-4bd8-8a59-de85b0a77fa5@roeck-us.net>
Date: Fri, 08 Nov 2024 09:47:36 +0100
Message-ID: <1jpln62jtj.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

On Wed 06 Nov 2024 at 10:59, Guenter Roeck <linux@roeck-us.net> wrote:

>> +
>> +static int tps25990_mfr_write_protect_set(struct i2c_client *client,
>> +					  u8 protect)
>> +{
>> +	/*
>> +	 * The chip has a single protection mode, set it regardless of
>> +	 * the specific protection requested
>> +	 */
>> +	return pmbus_write_byte_data(client, -1, TPS25990_MFR_WRITE_PROTECT,
>> +				     protect ? 0x0 : 0xa2);
>
> After some thought, I think it would be better to reject all protect values
> other than 0 (no write protection) and PB_WP_ALL because that is what the chip
> supports. Something like

Since operation would not be allowed, it's maps the closest indeed.

>
> 	if (protect & ~PB_WP_ALL)
> 		return -ENXIO;		// or -EINVAL ? Not really sure.

The command is supported but the argument would not be, so -EINVAL seems
appropriate to me.

>
> Thanks,
> Guenter

-- 
Jerome

