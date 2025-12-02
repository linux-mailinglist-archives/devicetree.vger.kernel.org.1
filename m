Return-Path: <devicetree+bounces-243779-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9421EC9C769
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 18:49:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 878384E103D
	for <lists+devicetree@lfdr.de>; Tue,  2 Dec 2025 17:49:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BE8E2C1788;
	Tue,  2 Dec 2025 17:49:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="URILl8/V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com [209.85.217.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4F432C11E3
	for <devicetree@vger.kernel.org>; Tue,  2 Dec 2025 17:49:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764697766; cv=none; b=ioLdLGHwRz7ddZzqOqy2i2VymANEvtY75bhKeqWGfYY8e8sktEr+/je6mS7S0A6/dxu9+fFez/PAWm7+T9V8TFnvmoaZiMa5yjC14aYaWpr6jhM/5e++l31F0p4Nk/zDnOCNcLPs4FDdfHRgz7QkP4huU9PU2+IVa/yT22KCI/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764697766; c=relaxed/simple;
	bh=lFD7YqZqIOM9zNsrKDqdar20gGVc1+ve8YCHIZohhpM=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=Vx/JghEZCJbK/nCh5OgJfOcThp1Cgqt25FfMo52FiZbFZkZlW8JFe06hfX1QwXvsVjx9oyAEoSHmvfcd9gnKMVnBDb9FqEmMaYjZchJlfvaDag/+DgyyGwOanAUzIepOoLmfC6YH8EYjWbWQa4YBadRhr1QrmGLyTKOW6WEPG4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=URILl8/V; arc=none smtp.client-ip=209.85.217.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f46.google.com with SMTP id ada2fe7eead31-5dbd1421182so4705718137.1
        for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 09:49:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764697763; x=1765302563; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lFD7YqZqIOM9zNsrKDqdar20gGVc1+ve8YCHIZohhpM=;
        b=URILl8/VJruojCS6f31vNbZIiVbeMhvow2XTLdM+aRSUgEbYITrpCJdqmzRqSPhOKi
         +Xr1DOivvb/Ez4kdeM3/a0Nlyg+qf2FwZOpYGjmPfZEnJnQ3m2MN7w0TvqcQgl24ULZc
         IbJsLnbqKFBgT+DuDrg3t+pSYrtl6naxOkFs1Nk965BG4WBPV4P+aVkSTiYmrI2vK8Mj
         byZ6qg7frR6de97B87+sA6e2uy5O4cx0NcPE9G49Xq7BU8a0dKiAAdGYH5T4jhYSJmjg
         AyJ1/U14rBuFaWLuy0BuzGZHc6WJ5fcMas0Mv5hw6UZfsNkaHldWJKCWayQlWq77AuEn
         6uIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764697763; x=1765302563;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lFD7YqZqIOM9zNsrKDqdar20gGVc1+ve8YCHIZohhpM=;
        b=eXpqNY4DiETUSFYaljFDkEzWJ4KENqxbFOtRwc+CXseXUYCNuOhAIZo6muboEsev5z
         LPXSUjyvmt9R+zxd0R7kNchDTuu6+CXR6feR0v8++sa7Vq8P/pShU+l4cSG+iNWPfG/I
         NfPnT+s8miFKx29IvWhRoS/MGkKSoXdZzmwMx4pxfcNnR2EkkO7lIsS96JBeyrc5mJC+
         NG7yh1OvLNUUU8Y2JBBtULSWLRzyjLu/nl16OhFFgB83roez1wZk2LhS28Wq/gCHdUqx
         yRIJ0v1YeiiqQdZFZ0AKXgJqmIXtjZZck+ODP7M7v0TaPTKBOJWcPaKpUlSnAnegucTA
         LAjw==
X-Forwarded-Encrypted: i=1; AJvYcCUTQHUm4BSXWPnXJaM2OG9bJUI4PEddPSqqj8MTw2drlXlNv2GEw1QB9UV9d20rPVH9aqsvGP01dhS7@vger.kernel.org
X-Gm-Message-State: AOJu0YzhhFug49QFLCLUL44KCs2Bqx5yu1s6MmyeUhkvAJHTTPv5vy0u
	hsMcvcP2jRK/RtDWkaRAwO50Iyle8n2dZ0jdSFM0mTpfP60/prKCZUu0
X-Gm-Gg: ASbGncvtdaqEiMNDIK7IUbn4lyY070zDdKXggHQp5rEXs4KkR9V7RQ1oSuzwibgmdO6
	ami13QCiOgfuevsdP9knEBzQYBZDVm3zSSkgfBWUsbF4PltGPoC5LBxi1lTkMRMDuKqxMRrWeya
	ODrtXQmozS/zjSr7DZqX2isK2XD41dMVOJ87JrbB8Dh/DQD9fqW6zVYh4bXPh8wHgeaCgTwGHc9
	FJZ7TgJEgeBgsmsy0svDmQYaQvin4wDs9kNCY3RvzjE7EHfQ8koF/AOx837cAMZz0iCtBarXHQi
	LcQdcExGtKz2raIuTfyfqVF1jVRDlXWsDajt3y1O8hqxd2x1C0DpWsLrfPZpTovkV8iLsgh/+Ny
	ES2i0TWB62CG7GEPtVbDiKjrA3cZmAs8Go+R7dFp4JKhbVvCfFtoWTy0xtiXBptG7h2LVhkWYNY
	G03LjXRLr43BRb4xvU
X-Google-Smtp-Source: AGHT+IE1CcIiiEo8CpEWTWXoBBMghBqvdzUH0ukhewnvrLWZreULDTL/mlRBc0qJBYu4mG8WzyOq3g==
X-Received: by 2002:a05:6102:54a8:b0:5df:c10a:6683 with SMTP id ada2fe7eead31-5e2243e1470mr12768970137.35.1764697763507;
        Tue, 02 Dec 2025 09:49:23 -0800 (PST)
Received: from localhost ([2800:bf0:4580:3149:7d4:54b1:c444:6f2f])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5e24dce4a6fsm6362031137.9.2025.12.02.09.49.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Dec 2025 09:49:23 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 02 Dec 2025 12:49:21 -0500
Message-Id: <DENX5BPCUHZO.1H0XL6I8M5EJD@gmail.com>
Cc: "David Lechner" <dlechner@baylibre.com>, "Jonathan Cameron"
 <jic23@kernel.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Tobias
 Sperling" <tobias.sperling@softing.com>, =?utf-8?q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, "Andy Shevchenko" <andy@kernel.org>,
 <linux-iio@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, "Jonathan Cameron"
 <Jonathan.Cameron@huawei.com>
Subject: Re: [PATCH v3 2/2] iio: adc: Add ti-ads1018 driver
From: "Kurt Borja" <kuurtb@gmail.com>
To: "Andy Shevchenko" <andriy.shevchenko@intel.com>, "Kurt Borja"
 <kuurtb@gmail.com>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20251128-ads1x18-v3-0-a6ebab815b2d@gmail.com>
 <20251128-ads1x18-v3-2-a6ebab815b2d@gmail.com>
 <a01f95ba-23c0-4c4b-a6bc-31b316bb04ef@baylibre.com>
 <DENT40NRKH0V.3UD0JBGRUSCDS@gmail.com>
 <aS7-yml5a2yjM28D@smile.fi.intel.com>
In-Reply-To: <aS7-yml5a2yjM28D@smile.fi.intel.com>

On Tue Dec 2, 2025 at 9:59 AM -05, Andy Shevchenko wrote:
> On Tue, Dec 02, 2025 at 09:39:34AM -0500, Kurt Borja wrote:
>> On Mon Dec 1, 2025 at 6:09 PM -05, David Lechner wrote:
>
> ...
>
>> I agree, this naming is a bit confusing.
>>=20
>> Andy, are you okay if I revert this back to __ads1018_read_raw()? I can
>> add a comment on context.
>
> Only if it doesn't start with __ (double underscore), just find the best =
suffix
> (or prefix?) for it.
>
> TL;DR: I'm against functions without clear semantics to start with __. Us=
ually
> this means unlocked in terms of spinlock/mutex/etc. Is it the case here? =
IIRC
> it is not.

It is the unlocked (iio_device_claim_direct() mutex) version of
ads1018_read_raw() which is the .read_raw callback passed to iio_info.

You might be thinking of ads1018_read_locked() which is an
spi_sync_locked() wrapper. I will rename it to ads1018_spi_read_locked()
to avoid confussion.


--=20
 ~ Kurt


