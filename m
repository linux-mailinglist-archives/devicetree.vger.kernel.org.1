Return-Path: <devicetree+bounces-164472-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FB9CA81172
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 18:07:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8159A8A06F2
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 16:01:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE6992550AB;
	Tue,  8 Apr 2025 15:56:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="h0L/9ORG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com [209.85.221.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92764254B05
	for <devicetree@vger.kernel.org>; Tue,  8 Apr 2025 15:56:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744127789; cv=none; b=KL91P/9RUyEYmTy/2KUQU8McTKJ7JwWPV7wqQFECCH5dw2yhV/tJzfZeLUNWxL50K/jihzP8DhXn71EEUs7sjS4mdEB8CTBWPqoxqtwuev6/mmErAy/HWGxeotYdt/WYYgHK5PX4ycmquVWPtCB4WlkyePT3+YuV+ecMdT12JU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744127789; c=relaxed/simple;
	bh=SsbsF7KGX/EryEglMhWGujq9L4z4osJUyCBu6RILvQc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=XvSq4oA9QkQO17ydTn7bZ9yYzKdbkUbSbnin8gzVN8X+LcH83A155pXolXvvBKJQjRFNmcMG41/Rvi0yrhghuaV4p4oncuA+4Rv6Za32dZR2omJyzldBloIGadvqZdGREfSn6t+V27XtAhbmlpQ6bsUDaGNkPiOnzNKmYP1KRcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=h0L/9ORG; arc=none smtp.client-ip=209.85.221.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-vk1-f181.google.com with SMTP id 71dfb90a1353d-51eb1818d4fso6794378e0c.1
        for <devicetree@vger.kernel.org>; Tue, 08 Apr 2025 08:56:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1744127786; x=1744732586; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AM/+ze0roZREPn6ppfFn1kwGBymFDwlbRv56FB2XFog=;
        b=h0L/9ORGhBLMvxzdZ4yQ0jCCVw4tXKDYs/nsNjEO9eJXbIM+xotriHomzMXEOMywPs
         +mOO4OlcgCOZr+2W990kC+Qwj7dKrANmAz+UxI7f8V3NgwSSNEd+HSmIPZhaKMmBAN9a
         ooqzUSV0o4qh4tWxbRT4zlpdotPSMgthdSOX8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744127786; x=1744732586;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AM/+ze0roZREPn6ppfFn1kwGBymFDwlbRv56FB2XFog=;
        b=vjsPEIVloBx3g2FroycE+PfLxLdQNnPommqgO83EB6H9v7sFv5J/bWtKbS3HqtRuBD
         AAv0X3r+/iTzVcpf9eVVZgklEa8durhpHp4FckHluZT9XBVjBljPw00MYn3iZDgIu+ef
         QRTllcK4BbJ14AowRhnmkxc+ILliisFjs8PudEIdQybEDCinINvVszvLqoCz+diyRaa8
         YvnQswFz4fab4UBe0cImmz+SvCgy5otXUTzKQfg1+MjMkrTskI2iRYhKVF408mK9LOp5
         25De073Vd2XJQOdttqOhDBnHdouK7iuiwgjwWFfoT69ngBFYBJISy6kET3JozpZUU34+
         bibA==
X-Forwarded-Encrypted: i=1; AJvYcCXrGrHkFo/8h1LakmrAchJ8x1EUNaLO2WFUNnRlUCScYmZbRJTyaSoxUS3fQApm5hzaPuV/MTrFXq3R@vger.kernel.org
X-Gm-Message-State: AOJu0YxSrvW9GfmOnU4fhQSZejS0nBamUxdkQxpvzQpp9Gi5Ss3POroH
	PvDBCQiKWFKjOZOP7a7/CBCYJl2jS70IwbLpHr2xSNCne79FoqUcoc68oVN1cPmT3YP9+WtzH4Y
	+h1Kn+EMlYjKZYQsEcgmDusRMriBKfs7BWuub
X-Gm-Gg: ASbGncu3Z1j4ThEU/eR5pUW8UoqxLwL2R/Nw3NjeLxbxx+s7lz3kAWAZuzPr1qY0icf
	bMeYRzcXtTXlP/QJB35MsBYd6Rdt3VjMuv9shlsfL3yFrM99/Vta1X/Ixt9wW1oLvjOFKNPnhUq
	kxbNdajJ6csfLJvXSurr/FcStIYtHPS9bRv6m5YQQQIjaBNecuHlvH
X-Google-Smtp-Source: AGHT+IFYyAoCweRNfVg0Eb4XcmWkknHyVugsHXwiVWQe/fbO2tHXGAdvyfXp4bwwisjC4UC8IqhtPCRhfCDCo+/RJAI=
X-Received: by 2002:a05:6122:828d:b0:516:1ab2:9955 with SMTP id
 71dfb90a1353d-52765d2d52amr13537968e0c.6.1744127786500; Tue, 08 Apr 2025
 08:56:26 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAPUE2uuY=BaPFro5cQSmQg4JS1Z5J5aBL7XvqqAo-X=LR4be3Q@mail.gmail.com>
 <20250408055412.1623257-1-gwendal@chromium.org> <Z_TXZT3SPEpTm6tc@google.com>
In-Reply-To: <Z_TXZT3SPEpTm6tc@google.com>
From: Gwendal Grignou <gwendal@chromium.org>
Date: Tue, 8 Apr 2025 08:56:14 -0700
X-Gm-Features: ATxdqUEZN_bemcGEIflJoObVScAUucOJdbwr9cZYFcOZt1ojv8QO1Xx95dJLyFs
Message-ID: <CAPUE2us3WRVVLeqLs-wZgo7g3DspuAyJUMmBMjDvdegaQ+9aFw@mail.gmail.com>
Subject: Re: [PATCH v2] iio: cros_ec_sensors: Flush when changing the FIFO timeout
To: Tzung-Bi Shih <tzungbi@kernel.org>
Cc: jic23@kernel.org, linux-iio@vger.kernel.org, 
	chrome-platform@lists.linux.dev, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 8, 2025 at 12:59=E2=80=AFAM Tzung-Bi Shih <tzungbi@kernel.org> =
wrote:
>
> On Mon, Apr 07, 2025 at 10:54:11PM -0700, Gwendal Grignou wrote:
> > @@ -853,6 +859,16 @@ int cros_ec_sensors_core_write(struct cros_ec_sens=
ors_core_state *st,
> >               st->param.sensor_odr.roundup =3D 1;
> >
> >               ret =3D cros_ec_motion_send_host_cmd(st, 0);
> > +
> > +             /* Flush the FIFO in case we are stopping a sensor.
> > +              * If the FIFO has just been emptied, pending samples wil=
l be
> > +              * stuck until new samples are available. It will not hap=
pen
> > +              * when all the sensors are stopped.
> > +              */
> > +             if (ret >=3D 0 && frequency =3D=3D 0) {
>
> To disambiguate, `ret =3D=3D 0` or `!ret`[1].
Fixed in V3.
>
> [1]: https://elixir.bootlin.com/linux/v6.13/source/drivers/iio/common/cro=
s_ec_sensors/cros_ec_sensors_core.c#L411

