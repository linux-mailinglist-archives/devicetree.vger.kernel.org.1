Return-Path: <devicetree+bounces-69351-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 556108CFB22
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 10:19:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EC5F51F21103
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 08:19:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02A893D548;
	Mon, 27 May 2024 08:19:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WkFaK0Qu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 797843B298
	for <devicetree@vger.kernel.org>; Mon, 27 May 2024 08:19:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716797942; cv=none; b=rz+hF6Hjc8jhvbdgJz6hYszEja7HMf5YE2uiG2XAA+W/R3Xz19opiIiEBpRr8zZcj9bgyB9WBDyWV5zpJHZO1/wTd9ER+jo1W3hFY7VZtoXvOZW5hSgLbceodPx8dBNrM1/tmXofst0ZosE6MDCyVN7OS2IYjY9+EnVIvvs5Ygk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716797942; c=relaxed/simple;
	bh=RCjjYb6wM0nJAwxfMhOLnXCkB8IjXPY5d3/ddwrir6w=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YPCUx7IMn8XwwsZbWtwLrX60V3Vt7vqRqeAUmrFSV4zJnVd7RdQqotLlGfpFHFRHk66F2n8sVe7Y6p5rnmo9iRu2VWGt4xgIq8DL/MB+SlCcUPPNalRhx9KlygJbc6xycsbnQ14eTuVPYj1Ij8Xfamjo8PI44L3oQgNsKg7xbso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WkFaK0Qu; arc=none smtp.client-ip=209.85.219.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f179.google.com with SMTP id 3f1490d57ef6-df771b45e13so2779175276.2
        for <devicetree@vger.kernel.org>; Mon, 27 May 2024 01:19:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716797940; x=1717402740; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RCjjYb6wM0nJAwxfMhOLnXCkB8IjXPY5d3/ddwrir6w=;
        b=WkFaK0QuR01tuVD634KbFyK9vq7BGr4R4Zk3JMk2UnOqJgMovT/25qvxONisjXtDUb
         VA8ZnvNJ3hvDVsnItviF1sJ69DhSdu39uw0bDk3/kP/cJseqgWVDw26wND+fbk+2j86Q
         VcEh721W+NhMQnOli1Ot9x0hwc7OKrDvLFbZY7ESAqOaVtVuHoCc+WT4rTYBn9wKLw8m
         JJfP1J5mBoqwHpwqDNAmJkUT2X0yP7RuSbe6dyWgzB1XSN21OXkeG9Vb6iOetGQFFmV8
         6v7XeptIfojvfQ0NVIfCI4Iagg7H37SNJk9QqQEArhxzViH0kwxSX/clRp3bZkftUCvU
         Dy7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716797940; x=1717402740;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RCjjYb6wM0nJAwxfMhOLnXCkB8IjXPY5d3/ddwrir6w=;
        b=ekOOm7i1SrX66HGUrZlRrKNb52PbVOMUa072TwYuvjZr2AK7sW9aFbgt6qv0Ur2PnY
         b9NtmL7JkTzG87M20+TnsSzFGeaCeTIoEi4GAma/tLoM8KZnXtroZaGq+1I25OwqOeN5
         1pigXZMFfQEYYlFpTn/UmlpcC/vCq/J0QZI0efmSu92XCvLz3RscvL7otyYM59O0PznD
         zbqGX3HP87EPgtSGIeDnvaEtZPczMALp4rQOMix5vkry/CbDdQ+5IaMg/CJ8f8k8pEDa
         573z4IF9B9vP6os+bhGgOFdfUM1lN52H6B0hjE50bbPFi8MXeF2HWcaHSUH0nSFBi7Y+
         BqfQ==
X-Forwarded-Encrypted: i=1; AJvYcCW0t4U5DBdV3mIMmx6+1N2Hz4WiXJOK5vgyIlo6Wf8zJHC5JSBlHpp8khWu5na+GIkxiCmhcQC8teDMry/vSdB86w6i+6DjFUcbjA==
X-Gm-Message-State: AOJu0Yx01MRwiFf8kApH7Oec7fpOFdY9IlgrmYEyk31NEIhjjgvLGYCI
	B9KTJanr3lFc/dPQ5JcFrRklhww6gc7AkajtR44cqzupjKd+EnGRHBGQgBZisHbVUqU5SY+JBS+
	MPH6MMMcuFo9jx808aKbdcHNhqdTL/BcN7QYNuk4yvcpqJVeNUiI=
X-Google-Smtp-Source: AGHT+IFspza8H8xOIqspZETRE732433VV9xaajb4RmIY23jhW/bV6+/uUDSU5Nio8eFEIPU6Q6CftCfqp4wDXKQoQQ8=
X-Received: by 2002:a25:69cd:0:b0:dee:7fc3:ad6a with SMTP id
 3f1490d57ef6-df77237ad15mr7476479276.56.1716797940586; Mon, 27 May 2024
 01:19:00 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240526083302.87172-1-kauschluss@disroot.org>
In-Reply-To: <20240526083302.87172-1-kauschluss@disroot.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 27 May 2024 10:18:48 +0200
Message-ID: <CACRpkdao-fWjNBK9T5=F2gJdAe=-+CoS9o+CrJHw-u07LDJTHg@mail.gmail.com>
Subject: Re: [PATCH] iio: accel: st_accel: add LIS2DS12
To: Kaustabh Chakraborty <kauschluss@disroot.org>
Cc: linux-iio@vger.kernel.org, jic23@kernel.org, denis.ciocca@st.com, 
	devicetree@vger.kernel.org, robh+dt@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, May 26, 2024 at 10:37=E2=80=AFAM Kaustabh Chakraborty
<kauschluss@disroot.org> wrote:

> The LIS2DS12 accelerometer by STMicroelectronics is mostly compatible
> with the LIS2DE12 variant, except the WhoAmI value (0x43).
>
> Define sensor settings for LIS2DS12, and add support in the I2C
> driver.
>
> Signed-off-by: Kaustabh Chakraborty <kauschluss@disroot.org>

We usually add support for both I2C and SPI at the same time, so please
add the five lines or so to st_accel_spi.c to support the device over
SPI as well.

With that fixed:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

