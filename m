Return-Path: <devicetree+bounces-224341-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C39EBC32BB
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 04:40:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id DE2444E7C33
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 02:40:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC3E129BD96;
	Wed,  8 Oct 2025 02:40:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hTAdcuHp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C58E129ACFD
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 02:40:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759891249; cv=none; b=nh/1pH5sYROXrNcJhYCk6tc6JFlhM4bZzPXz7lDC1tACcLuHESmUpUfRg1HhDpj0oT3UwMsAcgOxk8ykFI1G883boATYmBLCqu1dpgY8KL9POiXrdnRntpPYjnGvjb+M6Ndj4w4+TVbA0/rlR7+1W0belK7PD6m5YFxHDkaJYhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759891249; c=relaxed/simple;
	bh=vbpwXTejC+yajTX3XXncJGeds605AJHrgdSUCP7BbNs=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=nY0PHXDrDhUA+0DLZUdlfghQ9LWZYDMkL0HbUaouhJe/5jL/X0OtQg0kXXEr2xyZkoUgXJSvnw4YvlDaXu9mdRKXegA/CINCW8gpa+TKRQMxZqMHTsuiDuyTzJta8Hx+h8RmE9bCEqxFh+Y5W568KJKO4U1yFpbVRBJx3e1i2Ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hTAdcuHp; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-3fa528f127fso342710f8f.1
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 19:40:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759891245; x=1760496045; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vbpwXTejC+yajTX3XXncJGeds605AJHrgdSUCP7BbNs=;
        b=hTAdcuHpIxENGBpN9STA3bI7YsxHoTZ6EtRCkJqoMD/wiGNCAwTIKV7IsP8wPyG4bB
         U6GLpIU57vGx18Wjj4enoKZBERR5wmO+CeozzgXfVXfvblWakhfgees/6FpyeltmCUju
         r+vcJuwd/tQkQivDRtnhhfLFNyUpFiDRI8wWzWJph5fSpU5lb4/WfoN4XMlMK2tNKP4c
         q7vH969Hk7rYMvcGQmv2gquNNzh3cjb7FCO5O54XwwE3VQJr5H+Ly2ZHS94RxjpZKVZp
         Ty+Q+9JpswO9NMCEI7NDDv3pmVG0bz3NJfKPd27U5kJIHoTQcYK4lmCsqIRreMdBdLK6
         1NOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759891245; x=1760496045;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=vbpwXTejC+yajTX3XXncJGeds605AJHrgdSUCP7BbNs=;
        b=HX5BfDmGSxUp1VUcIddvgOuKh/mB9ElGKVL9RqcqakQ1X78QxDNgLrua+ktXCVJvbv
         V6mUNHw253+C9/EjYh8YEgITFaAaP1XIfIc/eagp9vReRM6JcGDZs0p56wT58J1+aSpS
         yUTI9MBDIbwX+KSkpLqlfsrjs8wcuPKCBynVfjjv0e1G8rl/P8b0COD3rbyUjuc5aZ4p
         /MlrYJRmqitGHy0u4zS+0q2AG49krtL4dX3qeKRGX+qznC6mDvUmvd29TxfV/f+smQtS
         oOcXiDtbMtqdi9OLZjCpTRB8087bzrDHlDHq02nogVNvbkE0Bz0suYXEMzPa7jo7QGoP
         4KAw==
X-Forwarded-Encrypted: i=1; AJvYcCXGQd5/84GX59YCaA3apmHD9x+0y830Je3EZswL/JSuObo9iWY9Lp63tci/5xdHxRBR2qyXdCYhNYNm@vger.kernel.org
X-Gm-Message-State: AOJu0YyIUbRx+nQtFLANpwGtv4Eq2LdtXn9RIik2kG6YmDwrMkzjukMu
	pkizGeS/WP57fBTZ+5xWDDvJytWqYE8iByoj2HcX1x9yxmQXV/jwfOo9JtcxJdWWK9Y=
X-Gm-Gg: ASbGncvREib5X8xb7fnUYd19d/jXtpnvX7devFgwdGZlpbeIR4KBwB440tlJYwpYD9s
	m1v0oY262MG96BhLay5XZV/jTHP5QS9K3GkA6Imvo57uIdfec6VubzAgyj4ap09bS5Ye0CmQVAu
	8+o6UmAQfcp5SZh4UDqbi0JzzNmzrZOxYXx8mnubPqkrVaq4Y77s+I2en/03pyR/v/oa7rik0KC
	+ggf56qm0NDV3lg/dHbpv0BijAOwTvhP13q03vKO3GMj87Iy1vMql3c0TWElm2MyGrLsE2rfEcO
	douIeVF4E7iWpGLRC6O5FOftjLaOu6eR66tEhQmlX/HpSebSnydGobwJSQ9tZRLaipZI0mjj7qL
	3BiarpIonzqc4kfgCZKdegiTqsMNOggoVzBA89IxfCYveqG1NYA/ii94=
X-Google-Smtp-Source: AGHT+IFFqlDGt7h0nc+NuKrTo3pc2pheELlH3q2GeHR9OiCLFLF0nYVBjizloysNNRJBS6y4P310LA==
X-Received: by 2002:a5d:584b:0:b0:3ee:3dce:f65f with SMTP id ffacd0b85a97d-425829e7935mr4259067f8f.14.1759891244667;
        Tue, 07 Oct 2025 19:40:44 -0700 (PDT)
Received: from localhost ([2a02:c7c:7259:a00:8c32:dd4d:57f2:8be7])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4255d8e9724sm27496800f8f.28.2025.10.07.19.40.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Oct 2025 19:40:43 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 08 Oct 2025 03:40:42 +0100
Message-Id: <DDCLDNFBCALB.19TNBLSQJ5X86@linaro.org>
Cc: "Jaroslav Kysela" <perex@perex.cz>, "Takashi Iwai" <tiwai@suse.com>,
 "Dmitry Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>,
 <linux-sound@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: sound: qcom,sm8250: add QRB2210 and
 RB1 soundcards
From: "Alexey Klimov" <alexey.klimov@linaro.org>
To: "Krzysztof Kozlowski" <krzk@kernel.org>, "Srinivas Kandagatla"
 <srini@kernel.org>, "Liam Girdwood" <lgirdwood@gmail.com>, "Mark Brown"
 <broonie@kernel.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>
X-Mailer: aerc 0.20.0
References: <20251007-qrb2210-qcm2290-sndcard-v1-0-8222141bca79@linaro.org>
 <20251007-qrb2210-qcm2290-sndcard-v1-1-8222141bca79@linaro.org>
 <67e313d3-1f91-4205-8aec-fbbfa41004f2@kernel.org>
In-Reply-To: <67e313d3-1f91-4205-8aec-fbbfa41004f2@kernel.org>

On Tue Oct 7, 2025 at 2:45 AM BST, Krzysztof Kozlowski wrote:
> On 07/10/2025 10:26, Alexey Klimov wrote:
>> Add soundcard compatible for QRB2210 (QCM2290) platforms.
>> While at this, also add QRB2210 RB1 entry which is set to be
>> compatible with QRB2210 soundcard.
>
>
> You explained here what you did, but you should explain why. I don't
> quite get why SoC sound card and RB1 sound card are both needed. I would
> just go with one.


I wanted to go with none in the first place and just make it rb2
sndcard compatible (as a fallback). Then Dmitry suggested to follow other
sndcards patterns and implmenet it like this.

There is also at least one qrb2210/qcm2290-based board -- UNO Q and at this
point I can't say if it will need separate compatble or can use
qcom,qrb2210-sndcard as a fallback.


> Please use subject prefixes matching the subsystem. For bindings, the
> preferred subjects are explained here:
> https://www.kernel.org/doc/html/latest/devicetree/bindings/submitting-pat=
ches.html#i-for-patch-submitters

So the order in subject should be reversed. Got it.

Thanks,
Alexey

