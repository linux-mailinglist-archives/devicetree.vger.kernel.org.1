Return-Path: <devicetree+bounces-176733-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DF2EAB556F
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 15:00:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BB2223A3359
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 12:59:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C733128DF28;
	Tue, 13 May 2025 12:59:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="T6ldBcNB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D74328DF1D
	for <devicetree@vger.kernel.org>; Tue, 13 May 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747141195; cv=none; b=eygHv/xVxQm+dT40IBR4JudvXr2gnwWH82LyB6suFxOfooT5MvY+RNGKEldKDP+hfrTrg8VHzh37OHpIoJf94PcJ8MKoNgud6VeTe7Qp6sAhBYq3g0zN7GIbgPZMfkGcbikHaoZThv47v7VemYy5KCwHETV/2oe2+nLOh1DjEoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747141195; c=relaxed/simple;
	bh=n4HHDxiwyS43Uzo641LVoWesPTkSKiy9kn2zSxXbKcc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GPeE7jGQstOxtp8+6VyjY8IiC3jz5aYt179B9Y3XUe9z2z5rgz3fD57EwQSetDFjKW2au/lWwtwDfQHSejUFYACmyNy+I07Y7H7s/umin8ZgRvoi0+C2jaip4R84U5jR7pcliHQm5VJitJfE9pCQ/p5YCuJbUxatlUJPxmzSYQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=T6ldBcNB; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-54b10594812so6953888e87.1
        for <devicetree@vger.kernel.org>; Tue, 13 May 2025 05:59:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1747141192; x=1747745992; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n4HHDxiwyS43Uzo641LVoWesPTkSKiy9kn2zSxXbKcc=;
        b=T6ldBcNBnf4l7urO5pmT68baJXZeA7R8P/+U6XzTMi3FuZoCUuZzL2NRk9rty+k+05
         SuFnna7BtyS54XyPwEv4cdEAexwDlDYv39hUU7p5JYgoZm68t4668jB8FyTFmz000fqC
         ShpSObw7v+nwlSURTPjYc32qrck8uFc2Wc8cY+CeRDz7QOG6Z4hNX11LfziCq2Gup9t7
         VGqX5cRsyqiTnBwvKcbeF0XLqnAudGdOo8KhsGMI4pvqxDBCcsnToEj+I17O+YT/xgqt
         ITQT3V34iIrxH/nBc9Fn/FDQr4Q52/9qsFlAbHkd1ogakdNxSRPngkUiRw1P+b9oxy+f
         RuEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747141192; x=1747745992;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=n4HHDxiwyS43Uzo641LVoWesPTkSKiy9kn2zSxXbKcc=;
        b=eOZnIecnDseznLiR0cA9S/McyBZiirHVEOmcaCtyAb0eXIBACa/nNfIW5xKYl5E7PU
         oRERYBxqNGoQAMwRbKq72Lep3dg4CpKFPsOiCkyqJRTMqojwvhhoVxlMOX/dfCyUOGc8
         eV7HSgl4lKTBDL1nF/c88jaxjIaU6AwtRsZashq3U5KHHryXXXvI9TmSoMNB9Iiqr7cp
         brLMfMwS9N7fHP5hcxvb64kLI7JahvEvan16GdGnzEDVsluA8VVNnuAj4K3tyLNLQG/7
         Kh9wzeXc0isdZORrSqEjLVxe7bqiKAOcITdN2bUSuJxJpwhreL2xXj0bEm03h5GZyK63
         RmXA==
X-Forwarded-Encrypted: i=1; AJvYcCWsNFFMkiIGYK/yD9n84GEnizw5YD06ZAh0YHNEzT9ypMFk97LsBMaPVlyacYQAghcljAQZu7ioREsf@vger.kernel.org
X-Gm-Message-State: AOJu0YwI858mxxwuHV980mhL3UjljNdpNVFSFzU+wlJxL3q/cyOUBMv4
	a7ShBs8jYyRDZJBv0Qdh3RSBGKwLWK1tjpClZR2GoljKXVZefj3DP4hRkGkrsRv0Eg8QrzIgoca
	UgjxSsmYKvJ+g0dNHarV6wavgGeBxUHLd2AtUtJlK06wZtHJlanc=
X-Gm-Gg: ASbGncsFxCwQatiSZwlgMv+ikrCID2Z6fdWevDKr/oaH6UnmdAKZaA08njPm2EAyanG
	9K+TGW/5PNZ8SOabj2Qgc44r+eVoTfUgTytBEG08jDKiuPCErQmJVq06UogJHNort7dgqxrfbTu
	BPpidYapBHGzlF4r1Q9kw/0xpgIhoO70g=
X-Google-Smtp-Source: AGHT+IGh7Gsy/cDcj36RHw2jCE38uR7GSCi2WlmyZnTG93JEw96iwF0JQ45Hv/w3Z+WZa9JBNWhtbqQqNZyXzx3SJO4=
X-Received: by 2002:a05:6512:2282:b0:54e:93cf:33b1 with SMTP id
 2adb3069b0e04-54fc67ac5dcmr6030443e87.4.1747141191989; Tue, 13 May 2025
 05:59:51 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250512215706.4177925-1-robh@kernel.org>
In-Reply-To: <20250512215706.4177925-1-robh@kernel.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 13 May 2025 14:59:40 +0200
X-Gm-Features: AX0GCFtF3DYNUj4xgT79oLU0FZ-WXziGOTo8wtyBZoLkNqk-ZheWP3yStomlLsU
Message-ID: <CAMRc=Me1Q+nujB09107-tB+ieAuMgGRfME-FLCqMfvMonyKuLQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: ata: Convert ti,dm816-ahci to DT schema
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Damien Le Moal <dlemoal@kernel.org>, Niklas Cassel <cassel@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-ide@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, May 12, 2025 at 11:57=E2=80=AFPM Rob Herring (Arm) <robh@kernel.org=
> wrote:
>
> Convert the TI DM816 AHCI SATA Controller to DT schema format. It's a
> straight-forward conversion.
>
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---

Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

