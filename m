Return-Path: <devicetree+bounces-224984-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 12823BC966D
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 16:00:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BFECF3B2012
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 14:00:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4A272E9EDA;
	Thu,  9 Oct 2025 14:00:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CdA/9S6U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B23CB2E7F11
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 14:00:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760018438; cv=none; b=Ef9u8AqXxfLsY6Jjz4m2DELVtqjKARHVN8YkwLtoid0RVKsOjurZJPNaCdpkZFGymXU3dkqiMMqZyvi0ajZsM8R444aK5eObrNd5Nx1tFKlspWTxpvxycTph9u1i2gAKrmFGifgbYF0atclVxUsQEeCwJWeWzjiMztzv3AFbwvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760018438; c=relaxed/simple;
	bh=krqjWeofd3soeCmbUM50pDB4SpcRGAW6LDs+oBWEOQU=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=iS3bQ1OLSgVPJpKuFO7d4R2JlayWGrYxQSSRjWQr9tfvOkMaDLte/SZsadrqS+Ncxs7svIHGH52yWZzJFiZykCX/tBK66w5eQo2COWBydpeZYiMfuS33jle3PNkYamgepxo1xj3RsGVBUa5FxQ66Ub2UzZATfl38X31+f7akF2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CdA/9S6U; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-b54f55a290cso86206766b.2
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 07:00:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760018435; x=1760623235; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=515o7326gcQ3D6uHqGhrkvo5xmocInFa3UoZMccGVHE=;
        b=CdA/9S6Ut++bW4H4RuOzSH6/eYUO7lDxHf7FT7LOkwlg5dVXFKi5J+rphteHJa2eAT
         u7q9Xryp+CF4EXns5Of46qcKg26wd/pM5fNxMSBvXlqzrkzNhQw4FmYR3TWLwiWZJ9Xa
         up+KaIbW/RnJKoiehPccMknJNWpenFcWR3VHYE+iVroQQGK51kM57c0+JLmq1MPq1nJ9
         tQhjHhlWdA/95q8XWso7Kah6iQs+6dye9nxDBZfrY1sFGDaJrI9W5lxxIhPuzRtJWkYu
         aO141egnW7d4SteZKCwy/cc5QFExang06bcfyBQAGf1klNtOrJkL2cY5pr3UTa8Mvk1w
         kG6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760018435; x=1760623235;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=515o7326gcQ3D6uHqGhrkvo5xmocInFa3UoZMccGVHE=;
        b=ACouCKDoZ/4wLcUNf8LZkO+0wBRVNbDs/BsAMsPITo9s2+uDADOF4UqiO9XZir8AFq
         u9xSLK9NsgHdurGxC974UiaqyzY0ePEQkHQmGBn/2Tce9fbX12swi34RM3fFegAJ067y
         mSUUJYwt/twKuoE7eSh0Wtra3+qOs1wBMbLohN5c4a+zs+ED7KhYYk3rkVUvxdH5SO61
         +aEu43wWTFN7bLm+FRAj8X6+FDXjaJg8pMHU2TDJM5EVsx8bHwYufp4unHQrUyLZ0Sh4
         xDoJpbE92/cFkmqVXvVa7B+83v0rSqz4pXSmPM9Ka9Z3t/QB+nd/tElDQPiav+rEwPY7
         JmOQ==
X-Forwarded-Encrypted: i=1; AJvYcCW4/6bDhv4FJX7Znw1M2qc/tIW03va9RL0hk4w91gEBpE82ZPiQCcet9ORgKW6o6uRmv6+TWIDwK7gB@vger.kernel.org
X-Gm-Message-State: AOJu0YwwLsuCkUrcKw2KpFq0hDDLPHPIXbEi2Um+nAqtZH64rIq3lyta
	fwy70iYF5AgRywJYyu4YHPDfTV6+RoHQvHhbbZytUgFARjtUlqOl12LUFEETO4/IPiU=
X-Gm-Gg: ASbGncueqE4ldG9MBF4VcYi0EUkiwQf+yJaSRFPOLua8v0X+MPdzVpY4Eu41pWUQ260
	sYlQuat6+q6hXaXjwd8n/2mvRwtPEBKYlcZSQbRJl+Tu6IbGx4hFGTAzMXoYCRAUrOIRh1LgRGN
	FKULjnnkvSjXxDxmUohPkEh4JucfsOzKz0d55ifQL5nVhg5lnZvJ3m+5PXa4LDT0JbopC+1V7K4
	dYqaoog0V/1abz0ARHLCGkFQyX2u/mm5RiGiVSIp2fZjWEGJHOaG5mMVpY1mTJHhcHUDP5fZhB9
	IVnsG6DGrrEIB24kbw5EdiZ0kyXa204wYT9ax5drBs7FRzxbbKeO8JeLVyMGOYXzwHplG1aNY+/
	hao5jgtdtLY5KiRVs/gxEMpEJ6P87IzRG5plY5WSPcg2fYZojkwgWSQ==
X-Google-Smtp-Source: AGHT+IEgmsVd+NJKivv9Nf15rZIeHvCLH7dQTFIvwmRIDeiyvpI4bVIdaRiBfWbq7EmQkO2KbsnQcQ==
X-Received: by 2002:a17:907:c27:b0:b3e:256:8332 with SMTP id a640c23a62f3a-b50ac6d378amr903062366b.54.1760018435004;
        Thu, 09 Oct 2025 07:00:35 -0700 (PDT)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b48652aa62csm1860412666b.19.2025.10.09.07.00.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 07:00:34 -0700 (PDT)
Message-ID: <63fb3ccc10267add00b579d4a05497cbeeadc65e.camel@linaro.org>
Subject: Re: [PATCH 03/10] pmdomain: samsung: use to devm_kstrdup_const() to
 simplify error handling
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar
 <alim.akhtar@samsung.com>,  Rob Herring <robh@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,  Ulf
 Hansson <ulf.hansson@linaro.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, Tudor Ambarus
	 <tudor.ambarus@linaro.org>, Will McVicker <willmcvicker@google.com>, 
	kernel-team@android.com, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
Date: Thu, 09 Oct 2025 15:00:33 +0100
In-Reply-To: <9d4ccadf76ccfff1a8b5f572b8aa190e2dc40c29.camel@linaro.org>
References: <20251006-gs101-pd-v1-0-f0cb0c01ea7b@linaro.org>
		 <20251006-gs101-pd-v1-3-f0cb0c01ea7b@linaro.org>
		 <5df18f42-b567-4d27-9e12-29723af40d6e@kernel.org>
	 <9d4ccadf76ccfff1a8b5f572b8aa190e2dc40c29.camel@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Thu, 2025-10-09 at 14:31 +0100, Andr=C3=A9 Draszik wrote:
> On Thu, 2025-10-09 at 09:13 +0900, Krzysztof Kozlowski wrote:
> > On 07/10/2025 01:43, Andr=C3=A9 Draszik wrote:
> > > Convert to using devm_kstrdup_const() so as to simplify cleanup durin=
g
> > > error handling.
> >=20
> >=20
> > This is either a fix (then describe the fixed issue and add Fixed tag)
> > or you change the logic, not only simplify.
> >=20
> > Previously on of_genpd_add_provider_simple() the memory was not
> > kfree_const. Now it will be.
>=20
> Indeed it's a fix after all - While the driver doesn't allow unbind,

Thinking more about it - at this stage, this patch is not a fix. The driver
can not unbind, hence there is no leak to be plugged, hence no fix.

> I added this patch due to the followup patches that add potential error
> returns during probe,

since it makes the error paths in those follow-up patches simpler

>  but somehow missed an already-existing error
> return after this call.

Ignore this last part. I forgot that I simplified this error path in this
patch myself :-)

So, I'm not sure how to rephrase, tbh.


Cheers,
A

