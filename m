Return-Path: <devicetree+bounces-101084-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B35E997038C
	for <lists+devicetree@lfdr.de>; Sat,  7 Sep 2024 20:16:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6C30E281B69
	for <lists+devicetree@lfdr.de>; Sat,  7 Sep 2024 18:16:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B09F6165EE9;
	Sat,  7 Sep 2024 18:16:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="yd5BRk2x"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f177.google.com (mail-vk1-f177.google.com [209.85.221.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D90C53E23
	for <devicetree@vger.kernel.org>; Sat,  7 Sep 2024 18:16:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725733009; cv=none; b=gC6qonup72V2iGA7dfoo8/OOndT2b37HWbPsw3ALJbCilWWq1rxBhmimHwVCc+Eag1Rkp81uMIyz4J/zfuxDoSUG/GZ8qtKif5dsGbYAtOCc6WELR+xTMceuoVcrdp4DRer3VlvuK+UcN0UwqLM++UUPA1xUAYn2cM94oSaUbEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725733009; c=relaxed/simple;
	bh=BDLbYEsxSQem8HDfVCfx/sBt/+AxQB1lVtjoCoz/ANc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HpUMfAyNCxTqhgjZTZP6G/k/nvIg15jnUACR/SWs1STtRbn4yC9+teFoqqi0y1Y7E5fk77Ag6yxg44LcdifNhDxeyG45NoV0F8vTj0+ggWTpAZszkyBWINTTAhdR71jrlofC5vEPn/00zvaUaa7Mi5PUzx6szWMzXbFtyuYmIc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=yd5BRk2x; arc=none smtp.client-ip=209.85.221.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-vk1-f177.google.com with SMTP id 71dfb90a1353d-502b405aa76so350495e0c.3
        for <devicetree@vger.kernel.org>; Sat, 07 Sep 2024 11:16:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1725733006; x=1726337806; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GT/Y9noBaAoHVah9IwbOYKU1cY+xHXwq2t1T9stlEGU=;
        b=yd5BRk2x8Tus6Qx/pxf+Qu1g6A2hLXCRDuBJp2r14Dt79Lm1Dwb7Ri4C5ltsB02cuS
         RKUjig7NlokHuMEWWSi5E81CF1Qi7kjydQkq8npQ5udTawbXgJufrw6C5Sk3W7KGxXRr
         nmCeZqtv+UmbjumUNkETk3+QBLCTrtZzsHkJvj80o/xcjfaAnnVh0AU8VjNvEdQbgCPa
         HZrPw3Aoujcxt/0B9BEaYmrAFP8vN8PByA/ZIYHwmfEe8wlIepvZjspbKUErvm8ZEtql
         aZJBmGIdwVg6X5tVJZPYsb9kUNhv2rxHfkdGtZod7ZRcn+3liAabh4IK0V9d4P6ZGaZR
         9Vqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725733006; x=1726337806;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GT/Y9noBaAoHVah9IwbOYKU1cY+xHXwq2t1T9stlEGU=;
        b=pl1jeSZcC081bmaSg05X5RxNQl8NUt1+vmv22U8y3galYolzzi9rKlaBPhVFMYyhcZ
         2op/GRPi4kgNBz2zAqeKXiLmaI4RQaxCUR1jZvd1us4Q4p6dZnye1WBL8neqmdkui+pv
         wIDXf2ToM4bpurFk9i5b0ko1HX6fjumqcC9suCSA6Se95PCYuGR6Dl9wKmU3ZFUgDM+a
         KjP5ATmv5Tmts0s9rx3quQl3ZdynSQOADDPbfUehrm9kv2vNegRghxmjEc+13QZf4ziu
         0y1v7JQisGc/ZR8YwXcIm78lUz+U07D+wCpxHCVihtYljZtCmybBCi3uBcIGDKsPFy14
         Yzkw==
X-Forwarded-Encrypted: i=1; AJvYcCXn7ew97GX+Vm/MdmST0m8nlJn8bim10QYZpqkjfE8XxBJdQip6ASavHnevvvUapyscu2uzqSbjgpIW@vger.kernel.org
X-Gm-Message-State: AOJu0YxfaOmj0FiYffHm9DPGPugnGbpijHVxIxeA9fbWf155DLJJtBOk
	jAw6heau3ptSKag0+zmadfq4mvF5wFOTw4QYrV9oBI2REk60hFoKoYnoOEonCtRwiSTw1ivNVUJ
	1FWCZkRI43QgUnVjcOtUKa7GnZzsi2e8xwu4Oug==
X-Google-Smtp-Source: AGHT+IEY9ccLHbRPz9NhMB0xM2Vi+InQdQHpJfJiB2zt/Pp032R59RVuDP0CxlfYVXme+2pLV9teLiK9Xsrip3LRmxY=
X-Received: by 2002:a05:6122:45a5:b0:4ec:f7d0:e71c with SMTP id
 71dfb90a1353d-502be8c9b14mr2215174e0c.4.1725733006325; Sat, 07 Sep 2024
 11:16:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240907065043.771364-1-aardelean@baylibre.com> <20240907155012.53766e2a@jic23-huawei>
In-Reply-To: <20240907155012.53766e2a@jic23-huawei>
From: Alexandru Ardelean <aardelean@baylibre.com>
Date: Sat, 7 Sep 2024 21:16:34 +0300
Message-ID: <CA+GgBR_-2Mdv40RqzhsHHL2Fk-3Voihw11bh7aChSGxNoE7pDQ@mail.gmail.com>
Subject: Re: [PATCH v5 0/9] iio: adc: ad7606: add support for AD7606C-{16,18} parts
To: Jonathan Cameron <jic23@kernel.org>
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, krzk+dt@kernel.org, robh@kernel.org, 
	lars@metafoo.de, michael.hennerich@analog.com, gstols@baylibre.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Sep 7, 2024 at 5:50=E2=80=AFPM Jonathan Cameron <jic23@kernel.org> =
wrote:
>
> On Sat,  7 Sep 2024 09:50:33 +0300
> Alexandru Ardelean <aardelean@baylibre.com> wrote:
>
> 4 versions in a week is a bit too fast.
> I'm very good at ignoring emails but even for me that took a few clicks ;=
)
>
> Unless it's 'final' tweaks on code that has had lots of review keep the
> cadence down 2 or less postings in a week.  On the plus side I thought
> I had even more to review than actually true this weekend based on number=
s
> of emails in the relevant folder :)

Ack.
Will reduce cadence.

>
> Jonathan

