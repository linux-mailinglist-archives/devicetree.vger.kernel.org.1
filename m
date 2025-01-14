Return-Path: <devicetree+bounces-138385-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A9A04A102EF
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 10:22:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1A9927A13E4
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 09:22:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8C26284A7C;
	Tue, 14 Jan 2025 09:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fg/34Mwn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40E961C3BFC;
	Tue, 14 Jan 2025 09:22:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736846553; cv=none; b=tyy/rtJnIY9BEMLBlsf5BUF19aJNL8empO37V8GFtvFjaJXeLuIz1LBLsPl6NlH7z09D1ZQBG2qNIwhKSR0kD1aixdxHECs/mNOOFOOIsgSWFu9au8bhVlUkglDceq56u+mxvVuv6IsLdk8zI8qPt5jKvv9DTYpR8q/GsGwHYQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736846553; c=relaxed/simple;
	bh=MaCmJ233eT2WiOTriAslC3oFILgWS8EmsqGuiDrklOc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=d+UI/z/iOeolNSf1yDiSf8vHcpfT4Thi+ICxUn+ocDwecR/0hlm5539LquIM7kA9cy0bF/FLmc4guFrUatET/ux9Bv6xBWOzvr6lSIWV7FU31U0ItpwtQsWzYutZ1u5GhHWKAwneiKu0fMxZYHV/7Lgmt01U2KJBYsGzQMwRv5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fg/34Mwn; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-2164b1f05caso91383165ad.3;
        Tue, 14 Jan 2025 01:22:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736846551; x=1737451351; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3Z4LX5lwtVmpDeNtFjY28PP+zpGux3htcdBHReHRR7k=;
        b=fg/34Mwn2hQ/5vGefbgfqayzCeIEldaIcxvnSomNvzyhqrhDx7v2OzX3Hgmi57Qjud
         x0MSkBlm0+JQRFUeTIJf+mLwAbqi1zbwuzViE4huwpTK12yIz+/cV0P/CtBFgpG7yAMn
         4jEfVyq7p1SOuxmbcKPl37OWyz/hdtoe27FT0cYvAGuLm7aYXYiXVKB9roghGrO+P7H2
         bUmTTcs2GYXdFYZYNex3UTFI7psrMmXCfgmc+4AckTL47MrkW5gWztrVkQuTMZwNJmlz
         WRq4+itlryAKQG+gdE355x2FWG9scBnShUuwDMeguvZPvSoqAzdMKcolBmN0XfzqFAYt
         GntQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736846551; x=1737451351;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3Z4LX5lwtVmpDeNtFjY28PP+zpGux3htcdBHReHRR7k=;
        b=QVEGeKTE8Y7AAAEspykM03l0funqkQEotBdq89tHfoGg4x6KMbNa+hr/1GoTmPg8vL
         9J5k5eQuI9YrIOa/mz3kTOoA/4XgjCfJAKn6JAdVDiSZEFiMpD0G4185mWLvMIfQ0DIk
         bYs+YywAZYgXKDXinlNmYPWhRc+gyG83yL9aOpLEwiANLvHyIESKyJGHLU19QuoMi2mJ
         kgV6IJ1wvwCaJaOjnkC5GN9reOedtT6iKilPC3dHSYcnNkn9JMk8QgX3ijN596luTX3u
         tTOMqQb8D9wVIyjt6RSEQyOVCOSRTf6J5i8149SJ+PKnQq4aABZD3e0YQ0q6Q93aM3Z+
         wccA==
X-Forwarded-Encrypted: i=1; AJvYcCUFoC9NuB/SvJ0z3r/xmB+hbL9hX0VVBdepZnuTDRYARhjG1qh5dM/QpPE8T8oqkOXHRiI7HVyjMsrX@vger.kernel.org, AJvYcCXzaUTHs8MQW+nkygry7+jMS1cFGmMmgjsOK+MUUgBE/Zc8Jw+f2FaF74kTA7KyWmwdrJmJwsL8CCv6snRN@vger.kernel.org
X-Gm-Message-State: AOJu0YzfGnd+nXJcsx9Qxw/vfcmB52uZPqfqo9A6E0ySyLk3kFNqbqZX
	wgqZfdRDS19gj5OP0DbXouYQJrG/6ZvGxxix1qI88eeqZWfAWIz/
X-Gm-Gg: ASbGncvl9HHOG6aoTh9GjBMsaYGc5EVcj+4sb/sBRcUTuIiCdd6QsNNn7eZsBZG65vP
	+6q5Dyrvfol5F1Apoa+vsVAWxM7b/lPLL0bUT6V5TkiR39hVzGPKK1C7yUiFbb3cIIpckHt1Jm8
	QfWHY5TxsrbYrXbS0+1mqRf8/5VQ7kCQd58mRl1AmhuGaHlPDClJWTNk35m7MtUxFjKb5N63nX0
	gzowwBpxwkYVLdD6jTlwD+yZXtRHHJF46LOcJ003pL5taMjk68iLKM=
X-Google-Smtp-Source: AGHT+IGFwDYeYkpNHqhvAd/SxiIC6AuscsQfEKEwBJjgYJJMpFpVqOJ3ei425eGqfMkjSosMGo/6GA==
X-Received: by 2002:a17:902:d50d:b0:216:4c88:d939 with SMTP id d9443c01a7336-21a83fc77cemr359026715ad.38.1736846551435;
        Tue, 14 Jan 2025 01:22:31 -0800 (PST)
Received: from nuvole.. ([144.202.86.13])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21a9f219b00sm64368855ad.150.2025.01.14.01.22.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2025 01:22:31 -0800 (PST)
From: Pengyu Luo <mitltlatltl@gmail.com>
To: krzk@kernel.org
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	krzk+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	mitltlatltl@gmail.com,
	robh@kernel.org
Subject: Re: [PATCH v3 1/6] dt-bindings: platform: Add Huawei Matebook E Go EC
Date: Tue, 14 Jan 2025 17:21:04 +0800
Message-ID: <20250114092104.637699-1-mitltlatltl@gmail.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <7mojfix3wobcowdlmux6gznwdqlhd3y7q3zxb5jvjkqzt2tzol@ogdrn7yxs2r7>
References: <7mojfix3wobcowdlmux6gznwdqlhd3y7q3zxb5jvjkqzt2tzol@ogdrn7yxs2r7>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On Tue, Jan 14, 2025 at 4:27 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> On Tue, Jan 14, 2025 at 01:50:23AM +0800, Pengyu Luo wrote:
> > Add binding for the EC found in the Huawei Matebook E Go and
> > Huawei Matebook E Go LTE 2-in-1 tablets, the former one is a QS sc8280xp
> > based tablet, the latter one is a QS sc8180x based tablet.
> >
> > This series has a codename, gaokun. More information about gaokun, please
> > check https://bugzilla.kernel.org/show_bug.cgi?id=219645
> >
> > Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
> > ---
> >  .../bindings/platform/huawei,gaokun-ec.yaml   | 124 ++++++++++++++++++
> >  1 file changed, 124 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/platform/huawei,gaokun-ec.yaml
> >
>
> This got disconnected from the rest, so you need to resend. Otherwise I
> don't see how maintainer can apply the set.
>

I am sorry, I screwed up. I used a wrong way to send it. I think I will send
next version in the next few days. Since Guenter and Ilpo have reviewed the
base driver, I need fix something.

> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>
> ---
>
> <form letter>
> This is an automated instruction, just in case, because many review tags
> are being ignored. If you know the process, you can skip it (please do
> not feel offended by me posting it here - no bad intentions intended).
> If you do not know the process, here is a short explanation:
>
> Please add Acked-by/Reviewed-by/Tested-by tags when posting new
> versions of patchset, under or above your Signed-off-by tag, unless
> patch changed significantly (e.g. new properties added to the DT
> bindings). Tag is "received", when provided in a message replied to you
> on the mailing list. Tools like b4 can help here. However, there's no
> need to repost patches *only* to add the tags. The upstream maintainer
> will do that for tags received on the version they apply.
>
> https://elixir.bootlin.com/linux/v6.12-rc3/source/Documentation/process/submitting-patches.rst#L577
> </form letter>
>
> Best regards,
> Krzysztof
>

Best wishes,
Pengyu

