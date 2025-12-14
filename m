Return-Path: <devicetree+bounces-246355-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 02BC8CBC1DB
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 00:53:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2E911300C8E5
	for <lists+devicetree@lfdr.de>; Sun, 14 Dec 2025 23:53:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B674329C35A;
	Sun, 14 Dec 2025 23:53:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aLx/by4D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f171.google.com (mail-vk1-f171.google.com [209.85.221.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16620286417
	for <devicetree@vger.kernel.org>; Sun, 14 Dec 2025 23:53:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765756404; cv=none; b=kJo84gR2184I27Tpiam6WPUOGWR2S4i2XINzA4k1yoWt2EYbNydbj49kw9sGCDAsqZ6WWV+asFUObYjNFv4gscjqFYAEWYrUaddB1kfIi04wEuKQRy8jb5i24v1nsRblYZBqEAEQmiZH80rVcYlQNLiXrxCd6WnAqPix4XlAMSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765756404; c=relaxed/simple;
	bh=imomqWpqkx+6bjRUCXg45LFde/m/ON6xIRymtOfup9U=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=KQsIXnbkEaxMN8hVGPyCoLvZmHg21IpFdI0ldCe08XNOTZHYh5o/OJHtsgy4LOmyYT5Gfh0eydnVVL5FBs7IgZ6yYsjaSLx/rpbf8NkbrbDwFpzFrxSr8RwFmPUNWVoKbkMpFGqPCqnXuJJ8CsDLy1HYUZ/EVdqTe8thgbrJdRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aLx/by4D; arc=none smtp.client-ip=209.85.221.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f171.google.com with SMTP id 71dfb90a1353d-55b09f54e98so895570e0c.1
        for <devicetree@vger.kernel.org>; Sun, 14 Dec 2025 15:53:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765756402; x=1766361202; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=imomqWpqkx+6bjRUCXg45LFde/m/ON6xIRymtOfup9U=;
        b=aLx/by4DSNPUTIIAxfOjwNm5epKzulUATUZjVFYcZAopTYmCzNqX3EHp1uvwV97ToP
         Fuo2ARJUnfIatMPD3J/eG7VIVZZXfj098g0fWqZQHVqkygaQ3ANNCzfyzjCbtK2zLXXR
         PGrNMTuv4/DTVPZTDsozIKxIo2uvZTct/Sq8zvjwicG5vMcs5LYbLNfNkg0QX+Z17R3J
         TT+0n6Fd/4p7wB1zuGCEIWFzfZFMYQbawYhgQ0UxuWN+a3Dn12bS08z4RDphCMUlQXoU
         btZHSK9R9ciarE3dON/58ONd27nj2/ocYUaUDLUnbtQ/vxDeoEUl7HcwJasvM7VXFnNv
         RN9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765756402; x=1766361202;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=imomqWpqkx+6bjRUCXg45LFde/m/ON6xIRymtOfup9U=;
        b=WKTlT/E70fE/1z7B9c8qPlu9Q669CkeL64f3odEVcknElm9URwanB13drZovbUpR18
         wjvs2yQPbmLcmMSPcxOmpz1Pya3lY6UEaerOUObORU+Yj4p21U1ZTh+8kVRsuluw21Ha
         OHgJKKIhzXNjE68OvOgGdrhp5hNgkf3V4cew/OU2B3V8GSnmy0h+TzP/rU+m3QzAJ+Ut
         Vn6vftSm8wjMxK4OGyrXrqrR+C9hIB7DVeJozAMNAHel7jIouiBFpHYjUHHCMBhQuhcW
         Kg4IVv7JB+Izww+Nw0GJpOztiTVqAY+CLJSxy/sQyvGNqy1v+xcAIqhtSZn4zjuwiLsx
         6EBA==
X-Forwarded-Encrypted: i=1; AJvYcCWRqIt7CNfdU54e4cW3+e61Dz/EHrEVQC2mfuRUU1nug/YdO4A+DaGKbrxDbot7JocEQ3w7guHJGC64@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2OdJdUs8+qx5glDveYi5YKRChRd8FOXGZcG2bNi2imADI2S28
	80YlRMw+YmOP4xJb/ywM1RnhUfor5QF9GJKf4aqFUm7+WbEgs6U5AWqi
X-Gm-Gg: AY/fxX4SQuY7zrmZyqyMbl4ajHeRIVW/N1q4BnCsGuvvCDV/QnjPFNY0rN8dpf39kAq
	2PTyhSpp+HyDPyWwSt8itzY/ZdTaTx3d2FQI7TxwD+g5faMKkt296dOVxbe0h+381Cx4nhg5/lx
	T+k7saVMLn02iVIiUsP5bP4STPKL6I+txRXKI+yawJNxvLprymnrhsIkI/Ly39U9/0fIKWgI9Z9
	UlY9koCTkULL0G1GC2au2m/Y19dhFidWYODFZjMYCNPPldpKIpSdBL1oDvw2PWT2i4lVEw6bI/u
	QYzVOD9KatP8ry7PMehPFsF1klYrv49+E/RtnzZvAGednpWpBO8hzlLD010oGZeLdSsc/oad748
	p+3lQrk3keuyJYj4IU/9TIRCTICt5gjFqZPfXxki0tNMqwoZhl4MeWMYg7HQ7S/xt9M2d5OvnhV
	J9n8pr
X-Google-Smtp-Source: AGHT+IEoqQCjZSwLiCqkVJ07lox30kIA6ldc1LVKWm44vuHifiI/AUWhZSeSHNiSZdDgEAi1bOnPUA==
X-Received: by 2002:a05:6122:458b:b0:55b:305b:4e27 with SMTP id 71dfb90a1353d-55fed66a7b0mr3186745e0c.19.1765756402003;
        Sun, 14 Dec 2025 15:53:22 -0800 (PST)
Received: from localhost ([2800:bf0:82:11a2:c6ad:1d0e:15de:a612])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-55fdc638a23sm5590944e0c.8.2025.12.14.15.53.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 14 Dec 2025 15:53:21 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Sun, 14 Dec 2025 18:53:19 -0500
Message-Id: <DEYCEJB4SWZ3.13MX1YUFLI1QI@gmail.com>
Cc: "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Tobias
 Sperling" <tobias.sperling@softing.com>, "David Lechner"
 <dlechner@baylibre.com>, =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 "Andy Shevchenko" <andy@kernel.org>, <linux-iio@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>, "Jonathan
 Cameron" <Jonathan.Cameron@huawei.com>
Subject: Re: [PATCH v8 2/2] iio: adc: Add ti-ads1018 driver
From: "Kurt Borja" <kuurtb@gmail.com>
To: "Jonathan Cameron" <jic23@kernel.org>, "Kurt Borja" <kuurtb@gmail.com>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20251211-ads1x18-v8-0-5cd12ac556da@gmail.com>
 <20251211-ads1x18-v8-2-5cd12ac556da@gmail.com>
 <20251214144839.2eec58f9@jic23-huawei>
In-Reply-To: <20251214144839.2eec58f9@jic23-huawei>

On Sun Dec 14, 2025 at 9:48 AM -05, Jonathan Cameron wrote:
> On Thu, 11 Dec 2025 23:25:44 -0500
> Kurt Borja <kuurtb@gmail.com> wrote:
>
>> Add ti-ads1018 driver for Texas Instruments ADS1018 and ADS1118 SPI
>> analog-to-digital converters.
>>=20
>> This chips' MOSI pin is shared with a data-ready interrupt. Defining
>> this interrupt in devicetree is optional, therefore we only create an
>> IIO trigger if one is found.
>>=20
>> Handling this interrupt requires some considerations. When enabling the
>> trigger the CS line is tied low (active), thus we need to hold
>> spi_bus_lock() too, to avoid state corruption. This is done inside the
>> set_trigger_state() callback, to let users use other triggers without
>> wasting a bus lock.
>>=20
>> Reviewed-by: Andy Shevchenko <andy@kernel.org>
>> Signed-off-by: Kurt Borja <kuurtb@gmail.com>
>
> Hi Kurt,=20
>
> A couple of minor formatting things. All trivial so I tweaked whilst
> applying. Applied to the testing branch of iio.git. I'll rebase that
> on rc1 once available then push out as togreg for linux-next to pick
> it up.
>
> Thanks,
>
> Jonathan

Hi Jonathan,

Thank you, Andy and David for your guidance (and the little tweaks) :)

--=20
 ~ Kurt

