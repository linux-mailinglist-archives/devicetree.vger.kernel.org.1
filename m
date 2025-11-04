Return-Path: <devicetree+bounces-234765-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BD2CC3080B
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 11:28:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B7CD51884CD8
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 10:28:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 421F9315D4E;
	Tue,  4 Nov 2025 10:28:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="DR0YQXAj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 713C22E974D
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 10:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762252105; cv=none; b=IS6LGmswFuwQdq/gzdS9gP9jFWRh+UtAMgny4EUtmak6dCUZw2KW/h3BXw34LlBqVEM8TMt4H7rtFdUQs5fm3apPHh296EWlbN4Gs+QxGUtm5J8ECrteuXrgf0IRVdQ6FJbxBpo8COMnxhiH6rNiAP4OC/GoDUiTVPM4hJKszO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762252105; c=relaxed/simple;
	bh=dXrnCp77lEEwVPS7xJBOY3p2Qrw1d2xRt7jXYb4Flbw=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=UyqvHuIcE/Lnwg9hP6djKos8u5uKBvC7gRy6maXOR3twcgrHGk0Ag82z/KUaS95l/28oN5wV1QGs+QHQQBCuqzapb8pg49GJnfbMjea5jRWYSXouUBleozywookG9MAolMVYDHN2CDP/N+PUgA1TKiYItekmnYqvCmRn1ktatN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=DR0YQXAj; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-b4f323cf89bso192604766b.2
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 02:28:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1762252102; x=1762856902; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=U5/EbeH1R+anz78ARaNJQqvThpFPGMZ6F7qJDbuymSk=;
        b=DR0YQXAj2TjsRf3a2UcAB5QdoZ0OyvyrWw5CAceT/3o2mZjv0BwOtTTjd5so4la5zU
         ZYUDlGS+91n17PQOJPC7ezBWvsWOcjZ+rUgC8v7aoO+YUXCp7SKo6eourkLB9lZsJ8r6
         qa6EWlyiAwZwDti2ckxWKsyAfYo67falVaBhKdzkhMqTsF/Wwri+VNuFGEAbx4QGGeqB
         l5UMCftT1pysAwtoSRZ9vyxjawx+bj30idnb7pAHyBquv5FBU+QetxYCt/LWD3rtd5iI
         hj8mqqlxxzFOSDUOVQ2s6jI4otf1LLYqHYIdc9i8Iu9xUU7BPXIiGxnu1CEhditYfKJ8
         Atgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762252102; x=1762856902;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=U5/EbeH1R+anz78ARaNJQqvThpFPGMZ6F7qJDbuymSk=;
        b=m0n3B71LVgZN0u9icq3u8wy/F9TCODRKQ8LPJDbEp2rYMigmAYfE+6M7A+c5EndHRk
         ImpTVruArtGbETpwrJ+pOfPpS9pery4gSrruN3p4Oomka8QQJLGyOC7WFg4zHDHixDzk
         mRm0jmjGSRnolwLgb4kOv3TIgI0P496mA2PW2XFnX0zMpqjImWqKynkpyDi7P59NNtzv
         j2QrcTPxMrBGK9OiV9radknxyd0Pji3KBg070hmOKECSlXRAbZUXs3EJdoDBn+7eU/7F
         gR/S/bwfQ0chrYbaovIT2zVkaOyAup9nheFn1c5ZZ3757aIsxnLR68c4e2/T7UGNN1nO
         i/lg==
X-Forwarded-Encrypted: i=1; AJvYcCUac7DBxzfIYOLBaZFJQysFhJCbrlWXd1KYk/uYzn7bMkPaTlG0AqqytEYoQPy2L6IYeRvRTUM+KYTR@vger.kernel.org
X-Gm-Message-State: AOJu0YwM00BtaquDEcTHjVxlKskohw6+UqOwF5QoyrYDFzTHKIQYDBfk
	12txZIeBm1mGJCySemWklileXFcqp8RR3vRJdefV5EHQqp4/S6drHUz4RoMw/Qln1fs=
X-Gm-Gg: ASbGncvd82LJbMwj/mze1p8OH5MOfrFcr50zQW+JqWEnZR9C/eCepdWeEbPvi9YDWVk
	YZrQ2biX841o1S18YDB5+NdaETCunXTeRK3o8H4ZpOqrELXSWBHLusgDeSBnjho/tUagD0KWhMZ
	MOj8bIlrWkm7ViC3uJbqIFHM9wFWfO1RzTqyWMcZcs4DP3t910TWKbHIehOaQo+vylE7c0+FEuz
	uC0DrPaO/4U/D2MesWyPA+CbU3sgJObs87Bws7Y9MMV8MJkPM1KLqF9DJIEFYPyDvJrUCfs9DVR
	fXMl30MYxj2z+HqNFe2SX3QzToH7JKQ1EyIe/4pZRtg2wlRXRwEtkl1qpsvddnCRDm3i7IiMIGK
	GCbk4Ter6HCM2uSP6ddMqnXfA3b7MJG9BLuKj+DEmXpZSpO4Am6BGfTSqKDOsqDJIFGUIVL4evU
	POsHJDgPxMC7tNPVOWHcc5cVi3/lieYIaFvPQq+NUIAysjm52p3FJL05/V
X-Google-Smtp-Source: AGHT+IHgqponPgTAGgPIt8PB3FXhF/2XBzC1NR6OhRgxCVT/ehcYTXZUudxOnw/HboJub9JT9xd/ZA==
X-Received: by 2002:a17:907:5ce:b0:b6d:5c4e:b0b8 with SMTP id a640c23a62f3a-b70700ad41dmr1516769366b.8.1762252101633;
        Tue, 04 Nov 2025 02:28:21 -0800 (PST)
Received: from localhost (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b723fe37cb9sm171335166b.61.2025.11.04.02.28.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Nov 2025 02:28:21 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 04 Nov 2025 11:28:19 +0100
Message-Id: <DDZU8E8EBAMW.3J9K3YJ94V2B4@fairphone.com>
Cc: "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 <linux-media@vger.kernel.org>, <devicetree@vger.kernel.org>
Subject: Re: [PATCH v3 2/2] media: i2c: add Samsung S5KJN1 image sensor
 device driver
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Vladimir Zapolskiy" <vladimir.zapolskiy@linaro.org>, "Mauro Carvalho
 Chehab" <mchehab@kernel.org>, "Sakari Ailus"
 <sakari.ailus@linux.intel.com>, "Hans Verkuil" <hverkuil@kernel.org>, "Hans
 de Goede" <hansg@kernel.org>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20251023025356.2421327-1-vladimir.zapolskiy@linaro.org>
 <20251023025356.2421327-3-vladimir.zapolskiy@linaro.org>
In-Reply-To: <20251023025356.2421327-3-vladimir.zapolskiy@linaro.org>

Hi Vladimir,

On Thu Oct 23, 2025 at 4:53 AM CEST, Vladimir Zapolskiy wrote:
> Samsung S5KJN1 is a 50MP image sensor, it produces Bayer GRBG (2x2)
> frames in RAW10 output format, the maximum supported output resolution
> is 8160x6144 at 10 frames per second rate.
>
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---
>  MAINTAINERS                |    8 +
>  drivers/media/i2c/Kconfig  |   10 +
>  drivers/media/i2c/Makefile |    1 +
>  drivers/media/i2c/s5kjn1.c | 1407 ++++++++++++++++++++++++++++++++++++
>  4 files changed, 1426 insertions(+)
>  create mode 100644 drivers/media/i2c/s5kjn1.c
>
> diff --git a/drivers/media/i2c/s5kjn1.c b/drivers/media/i2c/s5kjn1.c
> new file mode 100644
> index 000000000000..9e2ac3d695ae
> --- /dev/null
> +++ b/drivers/media/i2c/s5kjn1.c

<snip>

> +static const char * const s5kjn1_supply_names[] =3D {
> +	"afvdd",	/* Autofocus power */
> +	"avdd",		/* Analog power */
> +	"dovdd",	/* Digital I/O power */
> +	"dvdd",		/* Digital core power */

My comments from the dt-bindings patch apply here as well of course.

Also my datasheet mentions that VDDD should be powered up before VDDA,
and there should be a minimum time of 1 us between them.

And power down first VDDA then VDDD, again with 1 us minimum time
between the two.

Can't say much more about the rest of the driver, great to see this
being worked on!

Regards
Luca

