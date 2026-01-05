Return-Path: <devicetree+bounces-251416-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 88F04CF2B15
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 10:20:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 85345315BDD8
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 09:14:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E6CF32B995;
	Mon,  5 Jan 2026 09:14:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="VZYLsQzK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF6982EFDBF
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 09:14:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767604478; cv=none; b=a/WHEZeLhJ0NK3jNRLkKPLq6B+Uf/xS0U8ktl1M7VfcrvoAvNYRnomjiUiDN4Frslj7ASaIdJBKLuPidPpQurYeiwZhUaq07xs7v9ycTxYMaCI+XsaaMHUpGdXyDEUQkl6Bb7FCryBwCt2nYz4XEuGlkmAoh4tURUvh8sE8mp9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767604478; c=relaxed/simple;
	bh=QW8t2JNOdvI2uXm6GTQqMR2BYg3t2UgJyOvON6wsQF4=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=bfa1lA92qgI5HiPPsJBjAHcXjB1Db1Kvt7pcM0EsmHAcokvPIT+aiou8lvtOiWTp9krsbVebgpoSQRxXawaOWXWbJf8Yvnz/nC7Pvu0t2pvfso2VuNpetKxJpnBl+wLWR9uE7LOsHJIPspcgMfulX/I9JPytqTkSxXt8Kk20uHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=VZYLsQzK; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-477563e28a3so11126035e9.1
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 01:14:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1767604474; x=1768209274; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:user-agent
         :references:in-reply-to:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=miCvpSGVqVVCNMF4tIx1RWrVqnyi6qhzDTvcjYnjzjQ=;
        b=VZYLsQzKlwtV8sZxzeBGSWcaPHwI32eqSX5m3z0HRr2q9Zesf3fC0AfIn0armQTm0/
         OUExTGNwloIss5vTKfN5z/xO5apTuUQDjrXnUY/yzq4NmLNxUkKhFBE2FQ97BTwZx9nn
         Sp4Rs/Vn8lPgBXcUX8yIUaXBbvWsicdyOo4W46ONheLgny//8TBaVd3TaIqqZQV3uoPD
         U6zgcbUk0lGISLFFOYBpntOT/ms694jK5Xy8A4MVQAllatRjwck7dQEHZe8hTM/LIaDo
         W/530rlzZUV6U/R9spb0JXNmN8HGoydQR+5u4aM6HvHeHSrriRRMN13R9kKpS+8tMpa6
         FdcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767604474; x=1768209274;
        h=content-transfer-encoding:mime-version:message-id:date:user-agent
         :references:in-reply-to:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=miCvpSGVqVVCNMF4tIx1RWrVqnyi6qhzDTvcjYnjzjQ=;
        b=rOSZCQX4kLR+YgkoZrNX+eDJOfI8pM/KS3b7TYZXx/Jyx0TeeOkHAXYQ2MQz3C5zPD
         KwbLRiRpsCjqGZZvFakHemiDddd7AzREkIHeJSVrmsMG2MniazTd97bJWjZvlfChwYe1
         M1IgnOtXvKtb2bsu3i6ffM0WGg9jLUPczWzFkDIF78/FsZojY5Z8/ESQ11HiwTVBIdC5
         tFXOT52kFQ1OtLwAu4ahOiWjrq/FFEJekfvyN7/jXOsmW0QI4H9df2+xgRVIyCs95H+D
         bYJCNjLu9z8rf1ejsNaXqm/Awk2Q58k9yOHYnlmFcsC8gnGnzoxEDYXCoHCMrGnGAdK/
         vzqg==
X-Forwarded-Encrypted: i=1; AJvYcCWhwEAWXGL3cVeT3SZMxQMXiWSktdqDXQXP9kjzTcSwAjPsTizWdJYU49O8wF31++lP9bowNAp18MCB@vger.kernel.org
X-Gm-Message-State: AOJu0YzQ5cj1lzas7bN73fqMHoGM3fFlYgjjAqX92UROFaV6Q39KJazy
	k+UpuWaYNfx+MaBfmoobtQukIB5KSSbisinTV6Bf+eYOpdKh16hMr6PGPFYwkxX9Uts=
X-Gm-Gg: AY/fxX7k2DH59DGMhZ0kzPfAApI/N4mcgJHSHW33iGBe87feaOsPd1Uh52dSOf3MKNf
	dbAYQeQbnJMM71r4cBxs94PK98/33WLiJJAMuOIPKTq+DYnMrNf1qfCaTEzc3snkjXYls1TB9e9
	O8R1M5XYO2ucagRgr0W+e5GWhOGOdxheBtFopFrc2itKPD/ZJHEsxjwqZTPO12yZjyQTLn9ggII
	UX6NUGFYIaeA7snnhiVzSdifHiy6hGJ7mjaf7vSDYBu2j97VxBE8FXgFsKSQhMR5MYstmVhbR+V
	PkcDxlAk84IU8nO+1Z7eCDsgVipNGwwjRqKKXjWSNC7+KraakhThsuzPguO2FDFVCbKCsv4MCu/
	qLCa0vIHWREDj2Vf8tAyKXHqPlzXbPZx/hVyRS2SLvkhx4sA5YyF8/hNwowwnFpZPybHFabbh7o
	EzJ4e0iB+R
X-Google-Smtp-Source: AGHT+IHg/Mv8ok8g3lfkv+f6Gs1iCHZthZ9+dvCaKIuCn41ycCh3KmnkNqkRkT2jAbCijygn0KRwvA==
X-Received: by 2002:a05:600c:4704:b0:46f:a2ba:581f with SMTP id 5b1f17b1804b1-47d6ba8900dmr100501615e9.16.1767604474097;
        Mon, 05 Jan 2026 01:14:34 -0800 (PST)
Received: from localhost ([2a01:e0a:3c5:5fb1:b336:bcf:8603:f6e1])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-47d6d143f6asm147207955e9.6.2026.01.05.01.14.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 01:14:33 -0800 (PST)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Chuan Liu <chuan.liu@amlogic.com>
Cc: Chuan Liu via B4 Relay <devnull+chuan.liu.amlogic.com@kernel.org>,
  Michael Turquette <mturquette@baylibre.com>,  Stephen Boyd
 <sboyd@kernel.org>,  Rob Herring <robh@kernel.org>,  Krzysztof Kozlowski
 <krzk+dt@kernel.org>,  Conor Dooley <conor+dt@kernel.org>,  Neil Armstrong
 <neil.armstrong@linaro.org>,  Xianwei Zhao <xianwei.zhao@amlogic.com>,
  Kevin Hilman <khilman@baylibre.com>,  Martin Blumenstingl
 <martin.blumenstingl@googlemail.com>,  linux-kernel@vger.kernel.org,
  linux-clk@vger.kernel.org,  devicetree@vger.kernel.org,
  linux-amlogic@lists.infradead.org,  linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 5/8] clk: amlogic: Add A5 clock peripherals
 controller driver
In-Reply-To: <425ebeb4-8001-4493-882b-dfee87ed82c8@amlogic.com> (Chuan Liu's
	message of "Tue, 23 Dec 2025 20:27:39 +0800")
References: <20251028-a5-clk-v4-0-e62ca0aae243@amlogic.com>
	<20251028-a5-clk-v4-5-e62ca0aae243@amlogic.com>
	<1jpl857e2w.fsf@starbuckisacylon.baylibre.com>
	<425ebeb4-8001-4493-882b-dfee87ed82c8@amlogic.com>
User-Agent: mu4e 1.12.9; emacs 30.1
Date: Mon, 05 Jan 2026 10:14:31 +0100
Message-ID: <1jldice808.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On mar. 23 d=C3=A9c. 2025 at 20:27, Chuan Liu <chuan.liu@amlogic.com> wrote:

>>> +
>>> +#define A5_COMP_SEL_WITH_TAB(_name, _reg, _shift, _mask, _pdata, _tabl=
e) \
>> No, adjust your main macro.
>>=20
>
> Do you mean to unify this into a single macro here? Like this:
>
> #define A5_COMP_SEL(_name, _reg, _shift, _mask, _pdata, _table) \
>    MESON_COMP_SEL(a5_, _name, _reg, _shift, _mask, _pdata, _table, 0, 0)
>

Yes, possibly

--=20
Jerome

