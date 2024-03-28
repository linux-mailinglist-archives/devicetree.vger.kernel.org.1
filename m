Return-Path: <devicetree+bounces-54347-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2934089092F
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 20:26:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D747028DD3C
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 19:26:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72B401327FF;
	Thu, 28 Mar 2024 19:26:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b="m0ByF2fc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com [209.85.167.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6E6D3BBCA
	for <devicetree@vger.kernel.org>; Thu, 28 Mar 2024 19:26:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711653976; cv=none; b=MTr96r+OXNaKbbLaN2CBqQ12u/5o7t+7YMSzG/+5HpriRlTw4hyUjRrxTVTucof8iSaecKAuyBjmQRssbUstk8+FUuVQ6DJmMFXNtaCWf2r5pzGi97iyVTVIT3EpHzuAiYTVT5mbvG7oN0Nn15YeDCnlyw48nYiB4SIxLdJohrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711653976; c=relaxed/simple;
	bh=R9BJSPHrXr00UHA65BWhimYwNfe1Hez1jYHp4c8aZvE=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=qdYrQolJqhgdHaRQeWdQKgzBxo/wFJSfR9BgY3bIbnYJ+fovP/ZIJQEOs+5kRpVU+6idNuQG+rgsYGizJKKrPaK/q/QksNR8auOzK20C2/aaaSN1Xh/Oeuf5zca42vcbx2VdeGZzoqKPqIJ/vK2C8pixd14uZNWhDafXxb/+MuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org; spf=fail smtp.mailfrom=beagleboard.org; dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b=m0ByF2fc; arc=none smtp.client-ip=209.85.167.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=beagleboard.org
Received: by mail-oi1-f173.google.com with SMTP id 5614622812f47-3c3e67fd552so586084b6e.3
        for <devicetree@vger.kernel.org>; Thu, 28 Mar 2024 12:26:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beagleboard-org.20230601.gappssmtp.com; s=20230601; t=1711653974; x=1712258774; darn=vger.kernel.org;
        h=to:references:message-id:cc:date:in-reply-to:from:subject
         :mime-version:content-transfer-encoding:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R9BJSPHrXr00UHA65BWhimYwNfe1Hez1jYHp4c8aZvE=;
        b=m0ByF2fcLQCQ9e+xnyCCdm8AT+i2bsuu9aMw+tVSB5sQ+xexLX3UAcX33sy6iolGa7
         /09I/T4MR64Un201bZLXtTpYdHL7KegZr+PEvNea7withwI7oSHDZSEZ01S7z6Wrq1nz
         WCQA5OhH2r0h4ng/Rn8MlzjjLDJppaaySrmKsLu8ufNazuu56uTt5e3+V2JdcNDSD61a
         MpjPRfLtpcIzkBLFV4nrdpD5wR7c2AjZcE6QZaVmmv7bUt7R9V47d4QHM68CZPn7UK//
         oBXFxp2ugGK+YPpLvKAuZXo4/mYC6HG8ZKFrjS0sq3CpJFpCbb/u0Z/HboW2ZzZmQz5m
         bvOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711653974; x=1712258774;
        h=to:references:message-id:cc:date:in-reply-to:from:subject
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=R9BJSPHrXr00UHA65BWhimYwNfe1Hez1jYHp4c8aZvE=;
        b=GppVKUjdErOR5JUcd3Va2Op9EFjXjro0YYZChcvDngarxhHT0oECm8h1EaOtOPpgAE
         WCF3RUe+T0DvBSXvLUDTqoHpp9OXSiJH7kiCk6SEJm6GWG70rY6oMhDI76dn4K8bGnhv
         jdeahZsW5ZC9oFpI66mrS6DRK9OJK7VHepPVFJPWf7N/5m2R3uQJ5Pvr8nDdpLPZaC2z
         Q/ZztezDzw2+qNpyKDtZIwnw422SP0kl3+RpqqLuhFD3QkMJ3eval3kQ8+4uNIosvP9s
         ZjfMfH3Boc/ZGstyKuw6lBs04askcJevfa8EWPB6JXXcznabt764prcZfLWa9zXn0Fk0
         fAoA==
X-Forwarded-Encrypted: i=1; AJvYcCWVnXBTuQl7PPn7YjHB6ImWAXNfVWcUVRK7bAnzybI3y9BEbCdxmE7xdHzr6A6uQeS18Lu0K4xLHklq7V6GBx+57olFS7NfHXEgSA==
X-Gm-Message-State: AOJu0YxL2IcOL0YJ6ke3GclI2xBLz4OBafiGTvf0aobtCv9U564PEzlj
	LyU6PkROXQSyLHhW5LBqoXaUso+uLrE7KY8Rxr4iXEkZJa0wQTAWB3uQum/5Dg==
X-Google-Smtp-Source: AGHT+IGlx3a3JQ1O+A1dz9DTs4khTqcNaqXLXR5xsoO6dwypOIBiDpIwjxtu0VtMWPHTyOBDbpTAaQ==
X-Received: by 2002:a05:6808:2e94:b0:3c3:cdde:32b4 with SMTP id gt20-20020a0568082e9400b003c3cdde32b4mr280577oib.26.1711653973664;
        Thu, 28 Mar 2024 12:26:13 -0700 (PDT)
Received: from smtpclient.apple ([2600:381:9b1c:9291:f41d:154e:650f:9d52])
        by smtp.gmail.com with ESMTPSA id s16-20020a0568080b1000b003c3b6c668a9sm342060oij.1.2024.03.28.12.26.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Mar 2024 12:26:13 -0700 (PDT)
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH 2/2] arm64: dts: ti: Add k3-j722s-beagley-ai
From: Jason Kridner <jkridner@beagleboard.org>
In-Reply-To: <CAOCHtYiSYat771sfx-Pdv59GDUBH_TzqkxUM+BMf0Q7Z0KEC9A@mail.gmail.com>
Date: Thu, 28 Mar 2024 09:26:00 -1000
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Nishanth Menon <nm@ti.com>,
 Jared McArthur <j-mcarthur@ti.com>,
 Deepak Khatri <lorforlinux@beagleboard.org>
Message-Id: <5C54919E-EBD5-4A16-821F-5146659CCD1D@beagleboard.org>
References: <CAOCHtYiSYat771sfx-Pdv59GDUBH_TzqkxUM+BMf0Q7Z0KEC9A@mail.gmail.com>
To: Robert Nelson <robertcnelson@gmail.com>
X-Mailer: iPhone Mail (21E236)



> On Mar 28, 2024, at 9:16=E2=80=AFAM, Robert Nelson <robertcnelson@gmail.co=
m> wrote:
>=20
> =EF=BB=BFOn Thu, Mar 28, 2024 at 2:12=E2=80=AFPM Robert Nelson <robertcnel=
son@gmail.com> wrote:
>>=20
>> BeagleBoard.org BeagleY-AI is an easy to use, affordable open source
>> hardware single board computer based on the Texas Instruments AM67A,
>> which features a quad-core 64-bit Arm CPU subsystem, 2 general-purpose
>> digital-signal-processors (DSP) and matrix-multiply-accelerators (MMA),
>> GPU, vision and deep learning accelerators, and multiple Arm Cortex-R5
>> cores for low-power, low-latency GPIO control.
>>=20
>> https://beagley-ai.org/
>> https://openbeagle.org/beagley-ai/beagley-ai
>=20
> @Jason Kridner we need this to become public when you are ready ^ ;)
>=20

Did I mess up? Should already be public. We should make a github.com mirror t=
hough for up-time/visibility/bandwidth.=20


> Boot log:
>=20
> https://gist.github.com/RobertCNelson/9db8ea04848e7ce2ca52c038fab0e1b7
>=20
> --
> Robert Nelson
> https://rcn-ee.com/

