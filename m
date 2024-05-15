Return-Path: <devicetree+bounces-67189-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A8FAF8C6ED2
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2024 00:54:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 540E81F216B5
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2024 22:54:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD5CC3FE55;
	Wed, 15 May 2024 22:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="vwN/CmyK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01F8E3FB1B
	for <devicetree@vger.kernel.org>; Wed, 15 May 2024 22:54:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715813693; cv=none; b=l/FS9MVHzaza/e+JjUblEyf22HPHVj2t5J+ByBJLEMUxZIA43MfBjxchjea3qtOVB9GLs7ioB3AbuxXT77PKGyxIR00ktQF02b4+0B22myhr3uIDyaF6oKr/AzWaJ2y23do1iu0LNy09Zwoqd6Nj/LP9xc1QHMKVoIBNdTqhgtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715813693; c=relaxed/simple;
	bh=NTl/aihEJcTuHdTWgEWUNqFvQPS1+TjI61Y+qlo2AzU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dmrVWxxhXGVBsoCGN5j9GHYzja6HuWDZdU+yFUqOMqReCjR9t3Xgl6OFwlB9yX5rRPJsxxa9EIiczktQ85OSskikoh/4U/ktbsa8NNz3yvPSWMpfjLD/U+XxfztCPwQo5zRuJRiFXDDWOOZ3+2xQZM+R7QdRlVbQugEfuiUIU94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=vwN/CmyK; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-6f449ea8e37so6390199b3a.3
        for <devicetree@vger.kernel.org>; Wed, 15 May 2024 15:54:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1715813691; x=1716418491; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JTR8dQhkwufEMJDvzAGSNaBiVeFMhzNSh23L6NaBC+Q=;
        b=vwN/CmyKPuu+CL/bHNbWXwtFRxCpbdCScTZCHZnq0eRlfT/EXESbnG9f4WpIRyGH4V
         SEhwZgGrYKRTnpv/3s2wiAWdlZ4/lluX6MOD8hi218Po+ixSRNzqXisOGBUp6TTMoSZ9
         5b53un8s8JBrb+zXdQR3BcECT77NRzyziw2lkBs5oNWlqomIEF5AqOYAcV2U+c3vZez2
         qMk+SvI+Mz/EQ+1vqpSUf6FXHs72q/7klLV547GQcSjlnGlmLwGy8F5Ueh566ygLw5Qn
         s/CJ9SZ8LTTi10Tb0USWqWc2sgSySTwJPlwtt9/74oOhwZzcQnArhyaqBSFOxbTGUSwA
         Bw1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715813691; x=1716418491;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JTR8dQhkwufEMJDvzAGSNaBiVeFMhzNSh23L6NaBC+Q=;
        b=OsKaik84eCI9ebv4ZMO1VEe54L5awUXcerCRPY/6NEJM+bdZy7W0IAnemAORawWM8R
         si7Q90tHKHCTJl/3oXuZJL0/JrWiVhAz25ZVcfQRhbXsN4fF97NKDtoIWMO0GAfvtFfC
         hH57o5cD1mHvLnnEgB/PeBv79V6ZpIQJ/E7eRezMOu+gJz6Rg86QhL9IrYvuvwQ5IpY8
         8QrSdE4ZcjKzGNc9AXM5dDLwM4/QhGxBZi5UwYUdT6gmuJiWeUkeVAYoJLav8JFWLR22
         Rr9aRDps2w7uZlVP2/xsZPCciZ4cDXPVY815GSZ0GLMWLpAa0nuI6/kJRiIkOBa1NuAi
         0qOA==
X-Forwarded-Encrypted: i=1; AJvYcCUaIza0vAnzMLSw3Toc0qo0tow2L4TlWMNMdRK/41fQMMbc9dKhQpcsAtCyGUcc8lOu6IEAhjPB0NJcWqKCMAVVxUI3stnwCnXmCw==
X-Gm-Message-State: AOJu0Yy/IPa4Xr7obWtUmmum2sm0NHExOZ1nMV9kIIS71S+lK+4WcoDH
	c4XGOr2+U/iK+rqvk8sJwOYDa5Ej7XnYG8C0rEYIqhciZUIFfoqh5BgTnChWy/di3GSBo5+jYpe
	fVOF1qheLJYOUsMhThFmO/ImVDOu50AgjZJSCZw==
X-Google-Smtp-Source: AGHT+IGPGnW+8Zu6/zpLCOms1wOIqtztMZPQ08nZZujHVz3O4sOz9IR+JCRhfpCQnXiukvs2jqZ1OMqB/SNY8Kp1lD4=
X-Received: by 2002:a05:6a00:391a:b0:6f3:876a:c029 with SMTP id
 d2e1a72fcca58-6f4e02ac99bmr23987572b3a.10.1715813691341; Wed, 15 May 2024
 15:54:51 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240514-ad4111-v2-0-29be6a55efb5@analog.com> <20240514-ad4111-v2-4-29be6a55efb5@analog.com>
In-Reply-To: <20240514-ad4111-v2-4-29be6a55efb5@analog.com>
From: David Lechner <dlechner@baylibre.com>
Date: Wed, 15 May 2024 17:54:38 -0500
Message-ID: <CAMknhBGCoP8kOTYdVxjYMUjpN1jgBM_unoUe8wH-+tbQdgVBYw@mail.gmail.com>
Subject: Re: [PATCH v2 4/9] iio: adc: ad7173: refactor ain and vref selection
To: dumitru.ceclan@analog.com
Cc: Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Dumitru Ceclan <mitrutzceclan@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, May 14, 2024 at 2:23=E2=80=AFAM Dumitru Ceclan via B4 Relay
<devnull+dumitru.ceclan.analog.com@kernel.org> wrote:
>
> From: Dumitru Ceclan <dumitru.ceclan@analog.com>
>
>  Move validation of analog inputs and reference voltage selection to
> separate functions to reduce the size of the channel config parsing
> function and improve readability.
>
> Signed-off-by: Dumitru Ceclan <dumitru.ceclan@analog.com>
> ---

Reviewed-by: David Lechner <dlechner@baylibre.com>

