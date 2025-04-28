Return-Path: <devicetree+bounces-171649-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 84F18A9F98B
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 21:33:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8F34A3AA439
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 19:32:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 213FF296D23;
	Mon, 28 Apr 2025 19:32:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="BKodFuoK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CA1D1C2BD
	for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 19:32:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745868779; cv=none; b=ttESgMROrM0ojgPITYTwYw7iBM+J5WW0Yg6LK/gah9i+Acu0jU/nchjvJLTF+TnqkjM51yinHds5q88DS/q0M4ZT8Wya4zsEJtBGmEPIDWZON1I3qTXqu4DbkTG8gzSCtTPjPBi+15ebjoJK/xdiXHokHIeHExQda8DLAQd76Fc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745868779; c=relaxed/simple;
	bh=Y6n23dawAWFH2JLNBPqMIuR/bd0pb0K07Z82KXD09aQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EHdQy0+4izlHZ8q6kqWmZBd7thmqYcRpeCDeHfcbQJ6+uQudg4693QMmeM8ol0x2GIBDUOVFvNj35YRaYb56q6YItblinvD/1qBySAWvcUdpSSf6svvqFTAdl/S/MvP+oUr6I4/si491Zpf+7nJsoE+1jhQuxXJgi6iic98BVHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=BKodFuoK; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-223fd89d036so65278515ad.1
        for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 12:32:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1745868773; x=1746473573; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mfzpR+XCt8jA2E6ve9YtKygB0tbO6iFuLJbvzZ6DwIk=;
        b=BKodFuoKyZy8EeF8JGblYjA4dNh7RUvbhVYB4VOiJuAtCloHpwPo/hNawAYITUwYzP
         Bz0ttIaUuhb5txq6vLM+Sl9/v1FgytfpnKy+Ya8YGXtTlDgARHf2r36Di/PUYcAE/WI0
         kspqsYXLB6hITEOCcJg3sW26Qp5IJt0K6tlCQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745868773; x=1746473573;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mfzpR+XCt8jA2E6ve9YtKygB0tbO6iFuLJbvzZ6DwIk=;
        b=GDiSGINp3mNmwLFxzGnp4/kWgrJBe2FXyClKkbFsNoxMy8IPVY6Y4knME8/VBZfUHy
         t8f1T18W/iuHztJ1Bwnsf2hsfRvqeZb71f6ls3/g9C7vv1ibZfak9+PA9iKV8Oufa6zt
         F2l6HxtozDmNLxZeAqTiIkHw4HU8Ge1W28a+hgq5auEgUhthGBIdbzVeJLoD1vzO/Kh0
         ILlMlPFQBuxt/TYi36Bak05Ngaqmz3JMBSikbaG7A4Jffwg3oLhWtb1aO9cDYq6jSab5
         FfXGDqGfvmFwynPKc87KBsFocglmDtROvf5P15vy1vdKs/n1TsGhwKlxGKpmiUoAjUlB
         p/Ug==
X-Forwarded-Encrypted: i=1; AJvYcCVroRFkaX33h6sUGex/XpgEuDDXRtwirGRUwStuNCBK9a4wdVkrPQXiwEkz6wmxU+E2vUMtpVEVMa4u@vger.kernel.org
X-Gm-Message-State: AOJu0YxFMRbnivNC78qEm3BpIt533yqQCUv4Gj3xV3LqF6Y/7xbKCujh
	gUAirkQ+Gx7XiOBw3DRpxJuwza/1teRaSoVXpM6kn2Ce7j5BR9LhATsz5G+IPt50TpI1MCW/AOM
	=
X-Gm-Gg: ASbGncseX8mhoiVRBXKzlb90hZWZ8BE1Gc3/OWGNLPOvwvkh50wPmxAqt8d6LUf1UTW
	qWnbWWji76ePKV4WcVzK6V5Cymyod7D0SSp83Qo48QfMkV5ZTeNHX4FO4lSQUtgV6d6/aCUzdc/
	JjH/YQpGAaRaKIhIJMZhkg15ZAVLMkQ/ghi+izmE+JxuAuA58qiW4R4r2iZ+zv3EXCOLpbclKJ5
	4+bF6+9Eokc1WuJwLLnMI2ZMreJHHqqfUsY8ePU5x8KD/OB5/4W710vqUtMYe0MOdlAIRrdg6+q
	bLZLFDwrNKqwcgmWx655DAWm6rw1ikF92Z7bp0nNmYtMDYCPlCZqMRokZDHbQXajQVYl6TkXXy3
	p+W2Y3y9aZIYtuCMWg3o=
X-Google-Smtp-Source: AGHT+IFCBv/KT8rnphMjtXUu6X38HNXow2bhYuM9xZwD++R5jlFuk6S0oWKDaY+IEeRbH0340fBfkQ==
X-Received: by 2002:a17:902:d2cb:b0:224:93e:b5d7 with SMTP id d9443c01a7336-22dc6a546bcmr155368165ad.34.1745868773550;
        Mon, 28 Apr 2025 12:32:53 -0700 (PDT)
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com. [209.85.215.178])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22db50e7681sm87345715ad.119.2025.04.28.12.32.51
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Apr 2025 12:32:51 -0700 (PDT)
Received: by mail-pg1-f178.google.com with SMTP id 41be03b00d2f7-b06e9bcc986so4049115a12.0
        for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 12:32:51 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCULNTXYv0PoZhrYExRC39sY2dHBe0XOGsLIrguV9MDG0j3GRav34mLK5i9YfC13ACs8Agc/FFDIOtfZ@vger.kernel.org
X-Received: by 2002:a17:90b:5490:b0:309:f5c6:4c5c with SMTP id
 98e67ed59e1d1-30a01398884mr14674637a91.25.1745868770606; Mon, 28 Apr 2025
 12:32:50 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250421101248.426929-1-wenst@chromium.org> <20250421101248.426929-2-wenst@chromium.org>
In-Reply-To: <20250421101248.426929-2-wenst@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 28 Apr 2025 12:32:39 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XLonF5qM+f6diESvnqAHKm4Y7wwPsNssdNqZfkn2OzSw@mail.gmail.com>
X-Gm-Features: ATxdqUEnTKoRxhC-TaBEXil7UFoCr2GvfRCzsqwspS2g_INzWAwlvG_Di1SAl68
Message-ID: <CAD=FV=XLonF5qM+f6diESvnqAHKm4Y7wwPsNssdNqZfkn2OzSw@mail.gmail.com>
Subject: Re: [PATCH v2 1/8] dt-bindings: HID: i2c-hid: elan: Introduce Elan eKTH8D18
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Benson Leung <bleung@chromium.org>, Tzung-Bi Shih <tzungbi@kernel.org>, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, chrome-platform@lists.linux.dev, 
	linux-input@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Apr 21, 2025 at 3:13=E2=80=AFAM Chen-Yu Tsai <wenst@chromium.org> w=
rote:
>
> The Elan eKTH8D18 touchscreen controller is an I2C HID device with a
> longer boot-up time. Power sequence timing wise it is compatible with
> the eKTH6A12NAY, with a power-on delay of at least 5ms, 20ms
> out-of-reset for I2C ack response, and 150ms out-of-reset for I2C HID
> enumeration, both shorter than what the eKTH6A12NAY requires.
> Enumeration and subsequent operation follows the I2C HID standard.
>
> Add a compatible string for it with the ekth6a12nay one as a fallback.
> No enum was used as it is rare to actually add new entries. These
> chips are commonly completely backward compatible, and unless the
> power sequencing delays change, there is no real effort being made to
> keep track of new parts, which come out constantly.
>
> Also drop the constraints on the I2C address since it's not really
> part of the binding.
>
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> ---
> Changes since v1:
> - Reworded commit message
> - Dropped the enum for the new compatible string entry
> - Dropped constraint on I2C address completely
> ---
>  .../devicetree/bindings/input/elan,ekth6915.yaml     | 12 +++++++-----
>  1 file changed, 7 insertions(+), 5 deletions(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

