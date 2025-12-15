Return-Path: <devicetree+bounces-246580-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 57CD9CBDEE9
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 14:03:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D2CE6301B822
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 12:57:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5E3526D4C7;
	Mon, 15 Dec 2025 12:57:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Rz5QyBm+";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="I6pwyA5w"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF16B242D7C
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 12:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765803456; cv=none; b=XUMVZ9sGG5vABIo81SNWZMQLxvmhdVOLvadW2v/KpP6GQXUby79piPxYUyB0qvKuCybnPdufKWXM8PxcPyOH5TYwdUB+t5Kb0ftknlOo/BAJj0U5HjQWMLSxmS/bBDR5hAie6jIaqahx6jW2RO7j1i7Wq0dfrqYmU6JC3OG7ks0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765803456; c=relaxed/simple;
	bh=+lw3HfHLbETcvVXnCt8pXqolyJdrk9RCXahwIkyW0KI=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=HL1A1WXG23s2U9b2kYY96QnEVstzjqgaSpHdCpl1VOsB/MZM1AE43B+97JII3TRvdXwcXLhXrXxzkNPj9/e4o/XGSHyoAE2uPLl/0oF9mWDlSv2k+r0Wm4YtuacSRH4qtKDVuA13UG2+MOGepHO6kkTZctOprOj9jlsaNbyeCTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=Rz5QyBm+; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=I6pwyA5w; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1765803452;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=DJPuhd80iTSF+OO5gKXbsXNzHvhZFugxRejPAvwRung=;
	b=Rz5QyBm+K+0+l3L1xuDFCVO92hj/on9ncRDU998YPlK/iMuzNYvKWUpYLq4hoXchfHkgCz
	q5BnK0cmSA+K6nRi7+98ypIJ6l3ZGPtMcxMq0fvlUBd4H26VAUi89Uv4xsi3Y6xA1+QzyR
	oW0ba/wgsr+ZaZBNVtWJJT2tVVsVDAI=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-562-JKhzscpwNIW159IlL7vflQ-1; Mon, 15 Dec 2025 07:57:31 -0500
X-MC-Unique: JKhzscpwNIW159IlL7vflQ-1
X-Mimecast-MFC-AGG-ID: JKhzscpwNIW159IlL7vflQ_1765803450
Received: by mail-wr1-f72.google.com with SMTP id ffacd0b85a97d-430fc83f58dso458661f8f.2
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 04:57:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1765803449; x=1766408249; darn=vger.kernel.org;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=DJPuhd80iTSF+OO5gKXbsXNzHvhZFugxRejPAvwRung=;
        b=I6pwyA5wKqVr0Hf0mqLQnWmrl1JCIeY6M1jUz6Dcp61ar0m2hlVWNTsVRbpzb9CatH
         aPz6HN+n6ZuqvF2HtN9y+Dovr+Vy+fFKNPqYaWOK4HK9KD35y/J9m2mDfhZKu296yvu2
         eQwRnGnZAwEXYB/Q8zq3klTMYm9axCD352VlRrX5HO6jueaDG+tDHZPWfeqHqj8FR9Q6
         srTwy0m7i5m9E3QDrp9DCiaLIp6jjguwLPo5jFe2Ll08E1lqyGaY8nxNxxiaR9V2VE2O
         /GMUJUB8bRoqB4u81YwTFsA+CoC+ZuV3RCfNfV80DC5Z1KGQcdCt68EtVNNsm2qLgOKT
         QLVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765803449; x=1766408249;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DJPuhd80iTSF+OO5gKXbsXNzHvhZFugxRejPAvwRung=;
        b=ItEZfeUDSUFShmHaBAsnCydQbexFUAjNz/JZTZmAE4sD3//lCa2n9JcBEXXnaC8Ktu
         9nQCdFmKpL8EhVGGTGH1NJ8pEaVOP2dzl0I+OWAU3f++j0KD55N1m+4OR5jwZNFoCzjp
         9JiJQ3DebAZs1L5K1w7D8mg8bf8MwED9aJc6/cmOo20w3eMsdJh6rI1jfIiu9PSmq2eo
         YP/87DVpRi62XFT1bVRdicm7i9RpNjaj78skDEI1hvMsSOX59lL0y0yjlcI5iOdDccSh
         4SOch5C8vzWsjxo3obJaEKStD106r1ghxUJapytoM2bt7Cj8z+0sYsN7OQ9OAryvE+ZA
         scog==
X-Forwarded-Encrypted: i=1; AJvYcCVUprE/h8Yt/j7kkv7nLxaU58EaXmIOz1rTM8gNHJGqhmdu+FIJvzrQbd5Zb4huOyzc6T0A5V2Lr4Rr@vger.kernel.org
X-Gm-Message-State: AOJu0YxF2OICNw+ChgBlGDV+OdqhyFK/xCCgY43N66sp+NgtwiLzPV33
	AuobuVm2M9I0giCWjxnSKd1sEDFowCUEhEqREXlehlafvUB5+b/GFzBIm8KbgK03/rwfaQA5izw
	3tg4p9wyOMl8O+ul/TLuClN0UgRO1IKc6oQqvemn6iO6f63c2XKijBQDNae/fHNmAkiPmr+Vb9V
	cb
X-Gm-Gg: AY/fxX756Edq05g8QCF2CoJp8dij5FaR17T3RHltKay9ekYLwoKqBALbJKiu740g3KY
	QuJrDBsX1mQ0s+e0gVk4j5/YsIKFHLyQDyegkTYdKz8C7j1elsBdma7xvijz7Z+dnMMsX1+F3wa
	byLQFrO+NmMUVIJNwKwwfQsd8tU5N2Y0aaF62jMOlVLF9jIgEAR09KC1s5mI5cFdXy6RgQksGIK
	cbK1FgOs1wPmebITNsAZXhtUFA9nAOjsFV7BYwYLfe2DJpmfo2z90v55C4hIbAQ03JatTcej1V7
	qwNXfsPji7KUomJhIYEB7mXev/tK9hpDGziV3SPYGAmLEOgV+XTSREu+ppg727uytnR+ujGkfXj
	AsWl8viSA8koNNJWqmRVfflA53vWOTL5IN8YitooORReHHtA0/zXVjnA30XdqsMPv+/Kum7RfAP
	aKcGk=
X-Received: by 2002:a05:6000:2f81:b0:42b:3062:c647 with SMTP id ffacd0b85a97d-42fb44b7718mr9423839f8f.21.1765803449363;
        Mon, 15 Dec 2025 04:57:29 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH5Zv0vhReJo51vrrwa+7wzPN1PGO8Bh6Thhn0xc2h920KOWnaqhooUP4kpjy6aaSzbAIad0Q==
X-Received: by 2002:a05:6000:2f81:b0:42b:3062:c647 with SMTP id ffacd0b85a97d-42fb44b7718mr9423809f8f.21.1765803448948;
        Mon, 15 Dec 2025 04:57:28 -0800 (PST)
Received: from localhost (red-hat-inc.vlan560.asr1.mad1.gblx.net. [159.63.51.90])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42ff626b591sm16734579f8f.15.2025.12.15.04.57.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 04:57:28 -0800 (PST)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Marcus Folkesson <marcus.folkesson@gmail.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Marcus Folkesson <marcus.folkesson@gmail.com>
Subject: Re: [PATCH v3 0/7] drm/sitronix/st7571: split up driver to support
 both I2C and SPI
In-Reply-To: <20251215-st7571-split-v3-0-d5f3205c3138@gmail.com>
References: <20251215-st7571-split-v3-0-d5f3205c3138@gmail.com>
Date: Mon, 15 Dec 2025 13:57:27 +0100
Message-ID: <87tsxrkimg.fsf@ocarina.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Marcus Folkesson <marcus.folkesson@gmail.com> writes:

Hello Marcus,

> This series splits up the driver and finally implements
> support for ST7571/ST7561 connected to a SPI bus.
>
> I've not tested the SPI interface myself as I lack HW, but the
> implementation should be okay from what I've read in the datasheet.
>
> Signed-off-by: Marcus Folkesson <marcus.folkesson@gmail.com>
> ---
> Changes in v3:
> - Add SPI example to the bindings doc (Thanks Javier)
> - Select REGMAP rather than REGMAP_I2C (Thanks Javier)
> - Fix gramatical errors in patch description (Thanks Javier)
> - Link to v2: https://lore.kernel.org/r/20251027-st7571-split-v2-0-8352fb278d21@gmail.com
>
> Changes in v2:
> - Add MODULE_IMPORT_NS to st7571-i2c.c st7571-spi.c (Kernel test robot)
> - Link to v1: https://lore.kernel.org/r/20251024-st7571-split-v1-0-d3092b98130f@gmail.com
>
> ---
> Marcus Folkesson (7):
>       drm/sitronix/st7571-i2c: rename 'struct drm_device' in st7571_device
>       drm/sitronix/st7571-i2c: add 'struct device' to st7571_device
>       drm/sitronix/st7571-i2c: move common structures to st7571.h
>       drm/sitronix/st7571-i2c: make probe independent of hw interface
>       drm/sitronix/st7571: split up the driver into a common and an i2c part
>       drm/sitronix/st7571-spi: add support for SPI interface
>       dt-bindings: display: sitronix,st7571: add example for SPI
>

Pushed to drm-misc (drm-misc-next). Thanks!

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


