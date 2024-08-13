Return-Path: <devicetree+bounces-93382-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DC8F4950B6E
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 19:28:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 92F05284D5C
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 17:28:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6ED51A2C20;
	Tue, 13 Aug 2024 17:27:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="cBAWJHMM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com [209.85.222.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5709F1A2562
	for <devicetree@vger.kernel.org>; Tue, 13 Aug 2024 17:27:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723570076; cv=none; b=ECPm6+OlL9xoCMV2ikE/CJS8RsF55G+QqtwPLZ3KAc1oU1oEz2+6xDZ3KuYfgtE0Ebz4UIodFnnoUc8BSrU7N0FJzlG58lvBjRylMfGojS0I/0bOZhEsgOeehjq69sYWChaqkichlA5AsbAaE4KqAI4m45jcbJtYFxS4ss+LG3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723570076; c=relaxed/simple;
	bh=fVPQXHdsqHUwi9VIGaY64omTQpZNyJFY9/T1nVkDXzA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=OSGujnAu9c605vmjqK1ueZuOlR5xPWXs9G1n31pp5Kb26dWTKoHKF2Z3qF2sNT32qpXQzRwH9JBcjERob98PkEsuyVBhpt4q1uq+XIhB2OIj7KOPagjBt6N3FuYVM/w1JsEYIZjBYb3FGfshQoA9d6JgaEOtjRGSSEtV6AwbJh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=cBAWJHMM; arc=none smtp.client-ip=209.85.222.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ua1-f49.google.com with SMTP id a1e0cc1a2514c-821eab936d6so1798514241.3
        for <devicetree@vger.kernel.org>; Tue, 13 Aug 2024 10:27:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1723570072; x=1724174872; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lxBfeskCK9StEbhEGdoE9N+4iMSwlDDr96ExPJPkhg0=;
        b=cBAWJHMMMGqG0SwxBkMwGyr7v2TgnDa0FcV4IjxH1RlbFCZfaX6cIIJzJ7PmAS2hwQ
         /ULG3W/WoVrAG8TvXGh1L1h2yOiNMyBBqnQFuaJqYqGoICyyLnxr+kOTk7qq/3y40QJa
         XO+j7XDS2HnFFw225Eycr2tDa5Oxyqt+GoCls=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723570072; x=1724174872;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lxBfeskCK9StEbhEGdoE9N+4iMSwlDDr96ExPJPkhg0=;
        b=IqKDuJ4P7Kp2LbOnTT6O3glrzZUh3SFq6BEUi9mxkbaT//1in8XpqrCjF7aVLnPjPF
         +T7174THwzOx+QYZqhGsgJFZmENkZoFWy2JpncT44Iub3By9OawDP/zOftGKYrCaP0wv
         1UIxZPOoib79gnDiYCp6Ehdc/4rpvnvLEUiRBgkmCSRgVlZzupaXEjDZSB41HMk1fx6H
         589mytAaF2bczDGH++wE4U067bML4LJhnpCX054yrMYHJySlfUUt3GCZ/YkWf6eaRCWc
         X3//uHrH05pMeqEXSGZ8TNmwGRosP73XisjRwid/bPtO2z4B+IsPG9Kzp/fDvOjE2KRp
         wG3g==
X-Forwarded-Encrypted: i=1; AJvYcCWNy+Hpo9ra+l+QyCtIjZwpIOVv3MANot7jcFrtGRDukhSKaUVBy4w/eneApF2VIk2E4sS6qj5gbGzXhlDItRLJxo97HRp+HeuMXg==
X-Gm-Message-State: AOJu0Yw6s+ZiYmaBoZTL9zqK7v3BbO5QaD1YWKeuPvKG67ss5D1ZtdpZ
	F/X+PVxi4QkQj3ZSJtq2ZWnLIgRcxyfh/QcuIMAKZAAUPzuebMil4xaFSYDdFu1N3eR6c0B1V7A
	=
X-Google-Smtp-Source: AGHT+IHnqeFNabxqZ/fhxObT0Baucrm07p/geQaA0E8RgeJXMGkZopYJli58gTQ/5pwYuDsVcnyA/w==
X-Received: by 2002:a05:6122:308b:b0:4f6:adb5:aee1 with SMTP id 71dfb90a1353d-4fad221abf4mr421312e0c.13.1723570072364;
        Tue, 13 Aug 2024 10:27:52 -0700 (PDT)
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com. [209.85.222.182])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4531c1abb16sm34011731cf.13.2024.08.13.10.27.51
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Aug 2024 10:27:51 -0700 (PDT)
Received: by mail-qk1-f182.google.com with SMTP id af79cd13be357-7a1d6f47112so343942285a.0
        for <devicetree@vger.kernel.org>; Tue, 13 Aug 2024 10:27:51 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXEObnh+CXRcHC9A2jqEjCBTpa2yvj9b0tM6ZKgMKsBimzQJKZUOQg36gTVwtWvZMbVj0VhL2qU4I306HD3AJ4fohyN4NxMv1h7GQ==
X-Received: by 2002:a05:6214:3d02:b0:6b7:b197:c825 with SMTP id
 6a1803df08f44-6bf5d17293cmr1654126d6.14.1723570070823; Tue, 13 Aug 2024
 10:27:50 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240813133612.49095-1-charles.goodix@gmail.com> <20240813133612.49095-3-charles.goodix@gmail.com>
In-Reply-To: <20240813133612.49095-3-charles.goodix@gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 13 Aug 2024 10:27:39 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WLse_tiiMr8t7Kq0EguzJtt4iqhr6cPUvuDcy8MT0k7Q@mail.gmail.com>
Message-ID: <CAD=FV=WLse_tiiMr8t7Kq0EguzJtt4iqhr6cPUvuDcy8MT0k7Q@mail.gmail.com>
Subject: Re: [PATCH v6 2/2] dt-bindings: input: Goodix SPI HID Touchscreen
To: Charles Wang <charles.goodix@gmail.com>
Cc: dmitry.torokhov@gmail.com, dan.carpenter@linaro.org, conor@kernel.org, 
	robh@kernel.org, krzk+dt@kernel.org, jikos@kernel.org, bentiss@kernel.org, 
	hbarnor@chromium.org, linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Aug 13, 2024 at 6:37=E2=80=AFAM Charles Wang <charles.goodix@gmail.=
com> wrote:
>
> The Goodix GT7986U touch controller report touch data according to the
> HID protocol through the SPI bus. However, it is incompatible with
> Microsoft's HID-over-SPI protocol.
>
> Signed-off-by: Charles Wang <charles.goodix@gmail.com>
> ---
>  .../bindings/input/goodix,gt7986u.yaml        | 71 +++++++++++++++++++
>  1 file changed, 71 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/input/goodix,gt7986=
u.yaml

As a point of reference, in v5 Conor gave you his "Reviewed-by" tag
[1] despite having some nits. It's usually expected that you could fix
the nits and carry the Reviewed-by tag on the next version unless you
did something other than what was requested in review feedback.

[1] https://lore.kernel.org/all/20240618-affluent-unroasted-e6d5d34d1ea2@sp=
ud/

