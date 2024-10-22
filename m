Return-Path: <devicetree+bounces-114244-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C6D49AB257
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 17:43:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 43A5B1F214EC
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 15:43:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 763DB1A3A8A;
	Tue, 22 Oct 2024 15:42:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="GK681qpW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 849A11A3056
	for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 15:42:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729611765; cv=none; b=gwzZbhrB5RbjYQB8KCcM+meDA/2Vk3XkT3E0WqFe840wnC92ZJy8JJ8YDD9G5FIwKJLFlnmYcpqwPstkfHy67ggiXTEJyIAfBPjMZjzKjfijRXOfLFpGQ8c/nTlT1DpjKdOYPF3+uKQmizcLwNYukmm5dDb3a5Omv0gTDvpI0GU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729611765; c=relaxed/simple;
	bh=Tb5ba7CKLTn8rkhkDlReivWDEzP/Y12f+/EWqIfz6pM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=N6OqnSTPbFaKVD+jmj1kpVELuiErGeQdYNtwB0pQfGSBAKUPjJ1Ne733Dk5AuSFlaqwaqwnyfhS3xRLSfL0SDjpUk/NxYC7BkWezM+EHUL0vx5CITZI4VQU8OIb5K9PmiQ/XKEFRbAydmIfg+1YOQIznzTU+GeUfRaTw7RQmlDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=GK681qpW; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-a9a0c40849cso896429266b.3
        for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 08:42:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1729611762; x=1730216562; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Tb5ba7CKLTn8rkhkDlReivWDEzP/Y12f+/EWqIfz6pM=;
        b=GK681qpWlwldmsONhp4g9jw+kpV/vTByK0HwMYSWsAOakVzk/8uFUWmbL65tKSDAk7
         OIQntprktrEg9qW2VzQA5l1VOHZmXgsg731Tz2o2im5aYdfe2oNLTszM4t+er/A0My58
         QzWnAyCyf3D7uttWRAEm/6Ia4p+6i/jaWLeUuTzYP1//aa0Nmswbez52Pt8SZOOTvgLv
         /d/QwuTzQQHpLwm0yFUWzTwM9RdHwuUrx+05YtE5hUWXpQDLTKpFpsJPkVEY6OkMSklX
         Sz/bG3YdfRKnkUCzsEFYRqpD8V0JFWA5gU+6Etxb6UQ3xZW0motMuyPTVb+/tjS14Z8P
         cdfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729611762; x=1730216562;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Tb5ba7CKLTn8rkhkDlReivWDEzP/Y12f+/EWqIfz6pM=;
        b=hf41682pqvIN97zOEG7NiALQRvbNfnZXoMjfRSq93zqc2Pof8KtL0ihFbuHaezSy9j
         lVYxWUmjpNOekMMIaUp3pl67+kAlWHa7CIUzicxFPRcbfJLRUnxW09dD62e4jAsGzqrt
         UuKj4KDU0sxSe3KgaXGBgmCQyv7icHrgbsulrabMzoxoOaQG4TosWv0f05C7TVvv44an
         vtGR27Sr176U4vqAAMw6a4AOKDtuHzuUIuPcZRM7jW+Dl5lTOgVr2jUo6b54xjQx3gHG
         MHNgPapeGuFOmmNoEPghMgbD19x8KIR+Xta8Gw7BL5GPXA+rYbOSyURSVDLC3i0dBkTt
         oJ1Q==
X-Forwarded-Encrypted: i=1; AJvYcCWajERKI+pi78vjIs+Q8jxjNUUB1Njsxk4Xvbxu1ZENjkGwAHoin3h4Tx0iO6fEm7+kvEFBXptFPfzC@vger.kernel.org
X-Gm-Message-State: AOJu0Yz18RmhV9e5mxePsA2biOtUFNJMeDMagJKjAho876uLqkrgu4qw
	c9/V9KCMZc7lRBsskbBn7TdbeYkeJ+ZKvnzX69eOyj5lwy3HtPOpHkaNS9momcU=
X-Google-Smtp-Source: AGHT+IH31g9A5tvlodwEJG6AIYxAUczXnCG2y8sRDax4YawMtiLAN/avicWxie7/dj2TwfmEdo/6WA==
X-Received: by 2002:a17:906:6a07:b0:a9a:3cc6:f14c with SMTP id a640c23a62f3a-a9aa8a05ea6mr439944866b.48.1729611761895;
        Tue, 22 Oct 2024 08:42:41 -0700 (PDT)
Received: from localhost ([2a02:8071:b783:6940:36f3:9aff:fec2:7e46])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9a912f67f1sm353775166b.85.2024.10.22.08.42.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Oct 2024 08:42:41 -0700 (PDT)
Date: Tue, 22 Oct 2024 17:42:38 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Chen Wang <unicorn_wang@outlook.com>
Cc: Chen Wang <unicornxw@gmail.com>, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, inochiama@outlook.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pwm@vger.kernel.org, linux-riscv@lists.infradead.org, 
	chao.wei@sophgo.com, haijiao.liu@sophgo.com, xiaoguang.xing@sophgo.com, 
	chunzhi.lin@sophgo.com
Subject: Re: [PATCH v4 0/3] pwm: Add pwm driver for Sophgo SG2042
Message-ID: <i3zf5qoy7mrbqg2shag4rdwdptcjmfhr2zfxqcqzcobbnl4trd@n6ib4fobduq6>
References: <cover.1729037302.git.unicorn_wang@outlook.com>
 <MA0P287MB2822808440B26B1C445118BAFE4C2@MA0P287MB2822.INDP287.PROD.OUTLOOK.COM>
 <MA0P287MB2822C080A81F87037F9EE94CFE4C2@MA0P287MB2822.INDP287.PROD.OUTLOOK.COM>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3p5yql6s3yusktbg"
Content-Disposition: inline
In-Reply-To: <MA0P287MB2822C080A81F87037F9EE94CFE4C2@MA0P287MB2822.INDP287.PROD.OUTLOOK.COM>


--3p5yql6s3yusktbg
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v4 0/3] pwm: Add pwm driver for Sophgo SG2042
MIME-Version: 1.0

Hello,

On Tue, Oct 22, 2024 at 08:53:42PM +0800, Chen Wang wrote:
> Adding another email address of Uwe.
>=20
> Hi, Uwe, not sure if <u.kleine-koenig@baylibre.com>is another emailbox
> adderss of yours?
>=20
>=20
> On 2024/10/22 8:00, Chen Wang wrote:
> > If it looks good to you, can you please apply the binding & driver part
> > of this patchset for next v6.13=EF=BC=9FFor dts part, I will handle it.

It's on my todo list, but not at the top. (See
https://patchwork.ozlabs.org/project/linux-pwm/list/ for a part of my
todo list that I usually tackle from old to new.)

So please have some more patience. And FTR: Both email addresses reach
me just fine.

Best regards
Uwe

--3p5yql6s3yusktbg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmcXx+sACgkQj4D7WH0S
/k4X9wf+LjLZn7Y6+CUC3ywDEyn58ElxJveW4VehciYRmEqEsXeQEIVMOyuZTYzs
sQAmqS+7ykouw7tQuJ+sVHPdO0sMHqFadkJ1ZIGEwTdYrRnFSL0YvZIAUB9nsKE6
sJRLd9vuRdIrWPyQTeC/lrDU4RRlGM65Qtvbea5XTGu2vzXcjru9NuVjETol6F4Q
MNDjvUNF7Aw0WKRSzxCzlA3CkxpMkmUPJn1TVnVrwXz2wSEcq4P7mPdMgBcYkHas
9johxTldvYqd3SW4LgsbLmvi4zBK/hw+X4HTjfFvnzjPG6yDYziT2S+kPW9qMAZK
KbWYT69PgQ7lWbfwC3k0pgsWu/G/aw==
=L4hC
-----END PGP SIGNATURE-----

--3p5yql6s3yusktbg--

