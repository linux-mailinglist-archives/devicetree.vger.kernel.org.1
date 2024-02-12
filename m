Return-Path: <devicetree+bounces-40698-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BD5238513A8
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 13:38:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 518742814F3
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 12:38:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBCD439FD7;
	Mon, 12 Feb 2024 12:38:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="J/nj3XjN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAA90EEB3
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 12:38:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707741499; cv=none; b=RTF9FNIVzJuATjUCjFuHCqMPZHUI2YxoUjwbIDwNc3JhoBloMNBwa/1m8G8oanm2gY0WoL/JOCpSaHJ+XaSQOmdOYjXBN3IC774gEAB6PJ2q02/NSS0QIcv+WtrE0TEAlDMUb+yWRoAkjH89nPeFryhiBie6YuoVs2m0/rpO1bI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707741499; c=relaxed/simple;
	bh=U1YuX4Idwbnq/XnuGPs8llKACJnTsDXnrglF6n6aCbU=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=Dmd+22AqhPefs8XcdrNylUoUnn1BS6iiREFHojUGd3lyxFn9S/Y/1Fe7sUChnhLGb966cxGeAuMVF660EtP37Dq8NMz4SkEVYiwI4yHukHT6gAsslf6CQRv8QFMSjWEJQx2Gp2v2H7d+i8kmTifKyovH2XK8TKdWGKSBUzVlSuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=J/nj3XjN; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-33b2fba3176so1914166f8f.0
        for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 04:38:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707741496; x=1708346296; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=U1YuX4Idwbnq/XnuGPs8llKACJnTsDXnrglF6n6aCbU=;
        b=J/nj3XjNN9PRKksHaT9Fz922lcl00fkFh+DXjPdw9Z7RZMad/8F6Jt+Kd2jMxzim8w
         RkjnWMQpfc3eF4dRLnm7O3rAL9NVylS6oDgj7QYtEr+s59K69Oc8zz7KioQOAtWjT3rA
         jX0UBnubny9lSP3YbxLwA9gujAttDFsmj1//mI6FtAPI3Z7sZPEso26hWomT+zt/Qocm
         +LIgJDoS6lwNH0sVvB/aOEBumraYDoZRN+b8GXghcrFrXypwjd2CP1/U1127I+imrVKd
         uMALgswoVFoIPsw246gYAvscKFEQLr6c6/eMdFD6Gi65WD9WbGT28cJycmzb3pOAXisy
         Oz1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707741496; x=1708346296;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=U1YuX4Idwbnq/XnuGPs8llKACJnTsDXnrglF6n6aCbU=;
        b=tYZmdsXZOOMFsCuHA+hkJ02LeNSTqnYrHOviMXB/YBTz9a7hoD+09RwtUjqpHXzVmS
         c00iO60EudZYk0kptzF6c3ujHRN76uRSr+fA7qAg1YfBnGvtWV+wYJ3nIhEwNphxFTvs
         zG+NnYacuKTgrAbo1SCwC9C0BXUXRiBQDbvw7WZi3RCr65/0khDDmgGjJAdxPnPaSM9/
         eSmnuJRbY51WrZPqd3tRMWl5fD25hVA+E8n7duSYLKsK9WVMvRX2zNhMH1Kje+TxV3NI
         1EIqEAlYYR59wAvTyWI7CEQSUoCg6sX7i8bCNQW1zb+pBDkq9a72BTgOL4XnKMqdiZiY
         HWkQ==
X-Gm-Message-State: AOJu0YwSgCclg1Ewn+o6VwdRDlNKO4tqeY+HTfaygAVafto7qcDd9Ftx
	sWmbpG6AgUFuTiYYJ92v4wFDpKMwVIRwGrrQiOcx43zOVR+lES3tniqrkss4Jac=
X-Google-Smtp-Source: AGHT+IHCqrfqWk1xYR3mDKYBpnFWZ2bLQe2fcCX3I4HKwDbISDd7nFmak/nWzrv9oaHI2Do3TQ+W6g==
X-Received: by 2002:a5d:58eb:0:b0:33b:226c:ecea with SMTP id f11-20020a5d58eb000000b0033b226ceceamr5299006wrd.32.1707741496024;
        Mon, 12 Feb 2024 04:38:16 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCV4rUweTmLYRSjh0Ddu2UmRZuRQtfyFE3BHXN5hVyYsx3/g8LlxDtBX91EuYViCkwDhVjg7Ikx/8wUFB/WOdDb+J1BB7YzzMhqEj+BY2S0rji7x1ZMchAP5foZitIR3ZxjUPsNesQI49YxlRW0/Ha9eMK2W2qHcGC3LJwPEE3m0HYU+qFCgUPn6LGnFaoeCgUTKjswdy+K81GFY2NtrjgQ2KLs7ryThthSiGlvZX946Z/wLnFjbC4CIM+S9q8d7berBD3ljP6sivRn6ulhSi+dUILhzbV7VgcGQyOSVCr5C1LCwizCjHstYl0Xbf0WAuMV+TS/GMKgjtRcDIlokpaQslcC0WwUzqBhQVlqyMbw1RDdIA8FzA8LRNTyceJqHKoW0nNFGD70tpABeOTqvEWno5ohnxAOyJVy9/PI3213SusHXuyLVCrHvaxHi0kuK4hW3hsoBKPmW
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id bq20-20020a5d5a14000000b0033b6e26f0f9sm6475132wrb.42.2024.02.12.04.38.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Feb 2024 04:38:15 -0800 (PST)
Message-ID: <fbd335e81928c1c3cd63ee44514cf95a23dafb6f.camel@linaro.org>
Subject: Re: [PATCH] arm64: dts: exynos: gs101: add stable i2c aliases for
 gs101-oriole
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 peter.griffin@linaro.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org,  conor+dt@kernel.org
Cc: linux-kernel@vger.kernel.org, kernel-team@android.com, 
 tudor.ambarus@linaro.org, willmcvicker@google.com,
 semen.protsenko@linaro.org,  alim.akhtar@samsung.com,
 linux-arm-kernel@lists.infradead.org,  linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org
Date: Mon, 12 Feb 2024 12:38:14 +0000
In-Reply-To: <b6ec1d0e-e35c-4917-871b-049efcb2ea22@linaro.org>
References: <20240130233700.2287442-1-andre.draszik@linaro.org>
	 <170737972037.52344.9107022607101399076.b4-ty@linaro.org>
	 <5972b6a4ae8669e2a9e872278b740b182217906b.camel@linaro.org>
	 <dce39e15-32a8-482c-8751-af4a133f82d2@linaro.org>
	 <c16c1f18a8c6f33a608618d4ccf7d8c8dbb6f88b.camel@linaro.org>
	 <67a6564a-00bb-461d-b7eb-ca169df6d251@linaro.org>
	 <0ad3082c50e21a74de41ca9908bd53b72e1f1a9c.camel@linaro.org>
	 <b6ec1d0e-e35c-4917-871b-049efcb2ea22@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.50.1-1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Mon, 2024-02-12 at 13:07 +0100, Krzysztof Kozlowski wrote:
> On 12/02/2024 12:52, Andr=C3=A9 Draszik wrote:
> > As I said above, we won't care if downstream changes again at that stag=
e, so
> > no, I wouldn't plan on changing again.
>=20
> Then I am lost. What stage are you thinking? What differs between now
> and let's say 1 month for the GS101 which was released more than three
> years ago?

The idea was to make the initial transition to using upstream easier,
hence we added the same aliases as downstream (at the time).
Given the transition is not happening right now, we might as well hold
off with the aliases and add them later, with whatever downstream will
be using at that time.

If in the future somebody downstream decides 'I want this' (changed again),
why should upstream care at that stage?

Again, this patch was just trying to make initial transition easier, do you
have a better recommendation?

> BTW, the aliases I see in downstream DTS (gs101-usi.dtsi) - since
> beginning up to Android 14 are:
>=20
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 hsi2c8 =3D &hsi2c_8;
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 hsi2c9 =3D &hsi2c_9;
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 hsi2c10 =3D &hsi2c_10;
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 hsi2c11 =3D &hsi2c_11;
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 hsi2c12 =3D &hsi2c_12;
>=20
> They were set like this in 2020 and never changed afterwards.

Those were incorrect and didn't actually work as intended, here's a
better place to look:

https://android.googlesource.com/kernel/google-modules/raviole-device/+log/=
refs/heads/android-gs-raviole-mainline
and
https://android.googlesource.com/kernel/google-modules/raviole-device/+/986=
4593c894da90cd8b631ab57f15c25f4e11465%5E%21/


Cheers,
Andre'


