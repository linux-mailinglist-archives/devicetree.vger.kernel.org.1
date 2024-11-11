Return-Path: <devicetree+bounces-120806-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A3B149C4386
	for <lists+devicetree@lfdr.de>; Mon, 11 Nov 2024 18:26:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 68C432853E2
	for <lists+devicetree@lfdr.de>; Mon, 11 Nov 2024 17:25:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 869D21A7264;
	Mon, 11 Nov 2024 17:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="YZmsLlt+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C85DE1A4E77
	for <devicetree@vger.kernel.org>; Mon, 11 Nov 2024 17:25:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731345954; cv=none; b=C6sgzRsCbOSpZaNUAxq+I4s2jFhnmHoQ2JEKzpKwKtA1AmPNDohFjNeyoebms78hl52tw1mP8J87BQ1S82xF1dVWTj6NiSnCpoMgqRbzdffaEATruJxkUQJChkZ05QOn/wDBCOe/5QMsjaBNJz0Rlot+16oxbm5CkWFKYclKzIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731345954; c=relaxed/simple;
	bh=ZTk11ZVemdflfr0virzfjHPwj/DySg68gOxo+IYI7+0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YNNxGgH7L+OADu3w2pnlDKnBbvPHFdFdFNb4wS28CMAAtOP2B7JKjCIVDTXweSLZM6hMyY5V9WOSwYkAfIIIfXzRh8DhJg+Kt0GYyq1PT8qMvoVIPJ7WWLs6SkqR8PUxbJxe196vOPxAxRiYpLKm2oci+xtXB0UQ8xp7X8QeI50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=YZmsLlt+; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-539e13375d3so5516062e87.3
        for <devicetree@vger.kernel.org>; Mon, 11 Nov 2024 09:25:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1731345949; x=1731950749; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jH1JjioDnQEXEHp1YxtApalVozz8jy8hPAeJoS9fBbM=;
        b=YZmsLlt+y7Rd0Omr+40zZ/HfxSdmp0NmvrfXBCqw62B7x5Va7ImQLM/xAqXjDKFADe
         3aYUcZtVg56gQ7lboA9dN1oU/LsqMNnPCjephIRAXq/pSISP6oTEwnzzhjG7C10sU7XZ
         vPAOOFagaSsKbSzmRmU1/JkdEVAFMqst0Sh+0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731345949; x=1731950749;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jH1JjioDnQEXEHp1YxtApalVozz8jy8hPAeJoS9fBbM=;
        b=ahZlFWcdxoNfZ4KK69x/kLKP9cnjzRl3vUVr7p5LevVjZ+g+VRuTFRtAQkVLrkM9ZH
         JeaePxuZToh6Jj65UyV4/fyqDTKkNIf1y/AfmmlkCSp/41R6ckBWjO7Fy4qoseIRFGlC
         SA8Wbm2N0MWtJJkoksHfwSOsFdqUPKdm0kvZCmVrQe2ZW5T0EhLoH6ZE3uuXiYUfN1zC
         Jhg061VoZKdNNyFS8lcktY+rgdnaBVaGVICru4+VbVvBjuB+TyiesQpUADgUkJnVOOhw
         Xpf+/z0RMf4WykmvtkD69rOMMhyIK286B+6Ugqh1IFGCVG0Ee91vuAS30y/j77LJD3Tj
         xbYA==
X-Forwarded-Encrypted: i=1; AJvYcCXtbcE+wu4XFk2nLiec5YIHMpMulXWlO3nPPhmgY8439OJPkfEMpsi3HEqKIrkzk88mdhzeYGwOc0xE@vger.kernel.org
X-Gm-Message-State: AOJu0YwCR+HGY+oZMQoh9iHT8FBe5DcHRI1Y+8hPVvAfFzRk7viAXevQ
	+qL/ldC0p6816fh2fr5o0JUPX5hICV823vh+1EGyee6PoIYIBqIjWJDeWe9mw1KE9x8ElEuIQYY
	Ogg==
X-Google-Smtp-Source: AGHT+IHmQsSQ5xu3oxZOWn4SAZk63T8K3bRBVRiKoDM8Jd7fdJ07KQbRAkSAj9hOCQl9uTNo0kvrJg==
X-Received: by 2002:a05:6512:ea8:b0:535:d4e6:14e2 with SMTP id 2adb3069b0e04-53d8626c8f7mr5064797e87.36.1731345949221;
        Mon, 11 Nov 2024 09:25:49 -0800 (PST)
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com. [209.85.167.49])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53d82685e48sm1641105e87.94.2024.11.11.09.25.47
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Nov 2024 09:25:48 -0800 (PST)
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-53a007743e7so5663075e87.1
        for <devicetree@vger.kernel.org>; Mon, 11 Nov 2024 09:25:47 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCW6LiuqIuJQZ9HxySIHtkMQjV55nh6dvGzvfneP7AEd9ae50+of6p0lR2tAeamJ03QIbtpaawbf26Om@vger.kernel.org
X-Received: by 2002:a05:651c:1593:b0:2fb:60a0:f4e1 with SMTP id
 38308e7fff4ca-2ff201b29a7mr58237271fa.24.1731345947358; Mon, 11 Nov 2024
 09:25:47 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241111075000.111509-1-charles.goodix@gmail.com> <20241111075000.111509-2-charles.goodix@gmail.com>
In-Reply-To: <20241111075000.111509-2-charles.goodix@gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 11 Nov 2024 09:25:31 -0800
X-Gmail-Original-Message-ID: <CAD=FV=UDGqVHxFLEh1e5BW5p1Db+WNjntuSqFjf5uSFLncJUvw@mail.gmail.com>
Message-ID: <CAD=FV=UDGqVHxFLEh1e5BW5p1Db+WNjntuSqFjf5uSFLncJUvw@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: input: Goodix GT7986U SPI HID Touchscreen
To: Charles Wang <charles.goodix@gmail.com>
Cc: robh@kernel.org, krzk@kernel.org, hbarnor@chromium.org, 
	conor.dooley@microchip.com, dmitry.torokhov@gmail.com, jikos@kernel.org, 
	bentiss@kernel.org, linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Sun, Nov 10, 2024 at 11:50=E2=80=AFPM Charles Wang <charles.goodix@gmail=
.com> wrote:
>
> The Goodix GT7986U touch controller report touch data according to the
> HID protocol through the SPI bus. However, it is incompatible with
> Microsoft's HID-over-SPI protocol.
>
> NOTE: these bindings are distinct from the bindings used with the
> GT7986U when the chip is running I2C firmware. For some background,
> see discussion on the mailing lists in the thread:
>
> https://lore.kernel.org/r/20241018020815.3098263-2-charles.goodix@gmail.c=
om
>
> Signed-off-by: Charles Wang <charles.goodix@gmail.com>
> ---
>  .../bindings/input/goodix,gt7986u-spifw.yaml  | 69 +++++++++++++++++++
>  1 file changed, 69 insertions(+)

As far as I can tell this looks fine now. Thanks!

Reviewed-by: Douglas Anderson <dianders@chromium.org>

