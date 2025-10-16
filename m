Return-Path: <devicetree+bounces-227624-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 494FBBE2FFD
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 13:05:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 07CD34247D3
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 11:05:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BA43277C96;
	Thu, 16 Oct 2025 11:05:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="pRpluJdy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA594267B89
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 11:05:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760612702; cv=none; b=VJgok+H3uTmJOH0JmZA7DvnZWU253LO9zD5m/jDDTir2dGTz057x2DrxZQCzy8r0TUF9bhoMwlvl0kyuNAITS1yYFUkkH6HpkOg5jtg/gDHxChzfKJyynm2Lsa2/GRxj+FdxVy2ynbUaFOxN6IW+nprYqRPNAvHsHPtnsaTU/uE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760612702; c=relaxed/simple;
	bh=yNh22VpgcD5iZWVVFSioXx5eXaPdBuNnJFKRzPH5pTU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kHlW/o7DfAIY8Y8hV2O6KyPKSWMoxMYEF0sLeZ2pMDNlyhheTb+UxVvzybjPFZMRMJalp0yVDL0PMTa7mgAyQ6jNd06cHdRLZ1gNTxHuIzcEhXRNQoY9+NZ80W7/FIpRP3LF4s9ApKYUXZdnSFwpteH/AShlKAXTBmQdxbodH2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=pRpluJdy; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-58afb2f42e3so718897e87.2
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 04:05:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1760612699; x=1761217499; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yNh22VpgcD5iZWVVFSioXx5eXaPdBuNnJFKRzPH5pTU=;
        b=pRpluJdy3S+CmDzXCmPjKSBJfhuP8TPPFH+u7ATDkyoMP4R+1l2RoPyVSN67iquszO
         o4uB/WoV0GiLeWx3LNUficLXtDZf9+DTS7qZp5r6FyZoI6UGU/oJV26rioeFEIdxdq0y
         4u5vJiFENGLNf0xFDUyhD2pasms+CSYyW/T4H5SkdsTXToFJJH+WcvyYDho6hgeJIwZ0
         /P0Nvx4GD9Y8DzA4RtPNCo5UBJoh/wFx4LZjE8ECuRJqRNaUQzUNu7p2tP58RlxzBA+V
         CfVmdl4S62YC3zNQhwHKlA8JpONHFDxSrUjfy1KxGo76NQw8edj65PWMQfocxX4/JBue
         trzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760612699; x=1761217499;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yNh22VpgcD5iZWVVFSioXx5eXaPdBuNnJFKRzPH5pTU=;
        b=EzyS2wgukNVgljniFfbo1w7UxAfbz/b+NQgEaSSCtmhvRBCYDHD6RnVhUlzmZcKNpm
         pkoVkNG2hQMgKJx70RS4gWiGHhOOuaGi/kE7Ilcnb93Tg6cod140R70zWRAJo8Te+Y/j
         t+zifTSk7fe5hZwlzlbZsbCbp5QiqcjfBy97j1sh89p62QYvTU37h6fhPxYu7bx9U8h4
         TCWxMyA+YHpZVAPRiSHUNeSTwUvYTAIOOEm+c2ZhIB6W7XEKUR7lUAo/Y5SEh3BxFYAI
         jCpyERGcT3/PEW1omJLnDwgjFdmVjLdIMuS5FO7y7DrS6VQsidKPsjTswlImT13Ydlcx
         azjw==
X-Forwarded-Encrypted: i=1; AJvYcCUKXfLMdeaJQxq3kwZmfnMUZitau44MXZ9EnopKXZxr/KQRGgFRVhCYeoHHdBSnzZsuPn/pEneI23FU@vger.kernel.org
X-Gm-Message-State: AOJu0YxzrWKzUT2TY/lpQZQGb9F48KgRE0GOcNPo6gpvN6gjEcy/DK0x
	GHtQrHRW8tnGZ55gg+km58TjzaP8T68N3ajNch5YdQYygPacqkrm5Gasyb/OB88X32r1Bbd7tqn
	DQtAjHvz3UHi3a/6ZffI2E8uHtF8OXMLqJYJwpe19Xg==
X-Gm-Gg: ASbGncvT1lJO5H9J5PNTHEBfaCrv2KdXeS6The9cETCpxh6xg7mq93qB+c+RvvjPZqz
	q/hHkQeuf4D1j02VfX4eKVL1MMibr+Fb0JtQziawiF20JiUZ4ZkyZQp/UXnH4icGjiFpY4JI8rc
	0VI9NVML6bdOclMIRFdzY4OVKs8oxBjhPw5Llgoa8tnuhAJ/iVYDooS2PL3T1hLgfUeCB7FU9GC
	w5zi0e+CaghkFfL0V7SgBKEIlzjkNcimcdwB0bd9Gtzlb+hkuWn0JNtgfK181jH8qZtv6y9y277
	UBv1hRpL5/q49aIt/+W59i83HFE=
X-Google-Smtp-Source: AGHT+IFayaCD0pSGBkneNyn/a6xVpthdUoJp6sRMc3xLlMt0uMSjEDaswBOJxo1hM6bEJaYHKB510/0SUrWtiIUFhV4=
X-Received: by 2002:a05:6512:1510:10b0:591:c2f8:9a60 with SMTP id
 2adb3069b0e04-591c2f89da8mr2767654e87.31.1760612698712; Thu, 16 Oct 2025
 04:04:58 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1759824376.git.mazziesaccount@gmail.com> <ed65074dbedaf2b503d789b38bd9710926d08a55.1759824376.git.mazziesaccount@gmail.com>
In-Reply-To: <ed65074dbedaf2b503d789b38bd9710926d08a55.1759824376.git.mazziesaccount@gmail.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 16 Oct 2025 13:04:46 +0200
X-Gm-Features: AS18NWBwUA24uaqVHxHl7BqIfjkNE89oORmb5j7GI3HGq5QpCdYV7wiF_boIXL4
Message-ID: <CAMRc=Mcv3Mt1HHBtJtC4ZQt-RL=0UPODxWmab8Sn0-TA1fTtzg@mail.gmail.com>
Subject: Re: [RFC PATCH 09/13] gpio: Support ROHM BD72720 gpios
To: Matti Vaittinen <mazziesaccount@gmail.com>
Cc: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>, Lee Jones <lee@kernel.org>, 
	Pavel Machek <pavel@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Sebastian Reichel <sre@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Linus Walleij <linus.walleij@linaro.org>, Andreas Kemnade <andreas@kemnade.info>, 
	linux-leds@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
	linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 7, 2025 at 10:34=E2=80=AFAM Matti Vaittinen
<mazziesaccount@gmail.com> wrote:
>
> The ROHM BD72720 has 6 pins which may be configured as GPIOs. The
> GPIO1 ... GPIO5 and EPDEN pins. The configuration is done to OTP at the
> manufacturing, and it can't be read at runtime. The device-tree is
> required to tell the software which of the pins are used as GPIOs.
>
> Keep the pin mapping static regardless the OTP. This way the user-space
> can always access the BASE+N for GPIO(N+1) (N =3D 0 to 4), and BASE + 5
> for the EPDEN pin. Do this by setting always the number of GPIOs to 6,
> and by using the valid-mask to invalidate the pins which aren't configure=
d
> as GPIOs.
>
> First two pins can be set to be either input or output by OTP. Direction
> can't be changed by software. Rest of the pins can be set as outputs
> only. All of the pins support generating interrupts.
>
> Support the Input/Output state getting/setting and the output mode
> configuration (open-drain/push-pull).
>
> Signed-off-by: Matti Vaittinen <mazziesaccount@gmail.com>
> ---

Acked-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

