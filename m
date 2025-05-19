Return-Path: <devicetree+bounces-178548-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CEE03ABC1F9
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 17:15:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 806031B6390E
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 15:15:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD26E284B32;
	Mon, 19 May 2025 15:15:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="3N74rHI9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f54.google.com (mail-oo1-f54.google.com [209.85.161.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3698E284693
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 15:15:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747667728; cv=none; b=hjoysgtVvxK+PzB3vtxGqQN2K5mR/rNccR2q5hl569y6bDcvPSo8XO5C5nIuAzBzHpSU15N1C9wNhGNZLjArjjdPoMX4lVNyx4reSHEnJAGTmni4xJ3OTzzG87C37FlV0sFPULecBAKFlJsjfD8vC/Ncie/cNP1QADUXgWfO9gw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747667728; c=relaxed/simple;
	bh=eqHHv6cti0ZoDTZXOD4YVGuzTI266dWkCvmxsUpKywE=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=tVOypZ2qILnYBbTVAEWElOXp4Dy7nRAeIa/Dgt74OZ6NPV8uRhIi4PvBdiPJ0W6+gftqeoLcQ6cBH1i53FGpSOtwTXcIsi03wrYFvCEXC9M7xVE5+pcQmsDiBPPI4NF4Ieqs6GRTXS5ytcambqBAsgpPzk2U729s9AoLp6jkW6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=3N74rHI9; arc=none smtp.client-ip=209.85.161.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f54.google.com with SMTP id 006d021491bc7-609e7f27c66so1422009eaf.0
        for <devicetree@vger.kernel.org>; Mon, 19 May 2025 08:15:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1747667725; x=1748272525; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=EUxqgOyDxcOI5g2n2V0wPOdVEtNRAkky1kpuk2R3KsM=;
        b=3N74rHI9bZMFUmqk4wPg6D8KNYPsIXweGbinoJ1wCl/eJ5xK6Cax8Bx5luhpMXk8Rs
         iWtp6wNU6o0GdE3EOf8sh4JgZmfSgBJmzv9mf6ZzzZFYCUhHkt9aqNU19sdSJwM4SUKJ
         0iRw0r2LieM4WnItX1C4Wq3ZDqwEiESAY3r3orql+lcSB8SjXQl4firweNIlT0SVgppw
         D165QlxZpsBosommKPWZwKAKz/wzP5UsCuY30d5wLlC1cbdp3fj1/JxdsSPEWrekbVnK
         96lRaIm86TLvQBGv8nH4PEH3Il7PhC07F+ey1+wkSkLsz6Ag38OiMmh3RuXxcx4mEI5s
         uHKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747667725; x=1748272525;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EUxqgOyDxcOI5g2n2V0wPOdVEtNRAkky1kpuk2R3KsM=;
        b=IvPlurxcAa9vlhE7sBkbxw5m8QBnPUlbO1WKp5+jW3QLcJef3GKJP32xOJVvnlAZtV
         YfhzxtH9N/ek9I6qD14sgYse8LF2vYUNQqEqQe/4Td9+hcCS1dYHnByDLS/U9PmpqIaA
         62phvXk4QxhLZ8L3fTC78Tfcy9M9uLZUdzt1996buWPAMni1K80ps5wKXuR32VEIUgvf
         MeuOdd97UL/s6MCtxlRTzgUkutljS/QHrYwUglvSygW26Fx9pMa5BzZKVyShGeB5NGXf
         fP1Chu+NnakpESXUPbl2MlzKvQr90Bp4ADB2OCx3w72oniDkHHSlIaDpO6GCTqXj8osz
         wW0A==
X-Forwarded-Encrypted: i=1; AJvYcCUguMPrs/Uo2c+qlYBpPjMMS4MbQkRWnWfyL6pBQhILm1BMRASOVYUx1iYv+XVTMKqE5HkbxXEgk9uI@vger.kernel.org
X-Gm-Message-State: AOJu0YzIY5EStcVWuFPTpIpBQiVoL777owoCxXx/yXxhAqe++nri0LtG
	gsMxpYjFItiS8njflzZJ5ivdgXplkJEuwDoZdWpQ16yWN4PHT7M0tPoSRBQoOtjKLAY=
X-Gm-Gg: ASbGnct33eJ90rXIVutfCDiCI6ENoQQtQoGsGVvemReF1KZWO7cDWqjmGIqZmhUxghu
	DuOpS4+qWLtb+3tpk8cTGa2Vg6bBsKaGF+dqPhVZ80SkQ2HF4BW567AWp3VAIQHlpV8mSynANl8
	nTZSE5yrryKCDbCmF4fKHcYwHxcb3UEWnQF9aHaFzgEEM8IqXDaUESiwftKPG5fcr/SG09jJcjQ
	q7uD3g8M/vxmu9ct4luK6vpSOTsjpk0eC6z5kcAyqS+rzNQEKs+Uwk7PNp8iOjVXKJanU1QopB5
	zCFvajJlLEoXO1fTz6g+fJ2TZVYmkge9pJrJjfOJ4C680cO8Cru4nbo1uKeKQelQDoqmcYVvWyh
	da5hn7ZJPCFAGnM5OeDIdefT7kg==
X-Google-Smtp-Source: AGHT+IE1LENky16XA/1nxfLz2cNQEDM+x/IwIthIkWz/+026QRc8Sk+1CMJx3x06Nx78du+/5N0GsA==
X-Received: by 2002:a05:6871:2208:b0:2d9:3868:b324 with SMTP id 586e51a60fabf-2e3c8384405mr7303802fac.23.1747667723862;
        Mon, 19 May 2025 08:15:23 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:a628:91ca:eb5:d6f5? ([2600:8803:e7e4:1d00:a628:91ca:eb5:d6f5])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2e3c060e33esm1788670fac.8.2025.05.19.08.15.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 May 2025 08:15:23 -0700 (PDT)
Message-ID: <9cf04a91-7763-41d1-b406-014b1b5f0535@baylibre.com>
Date: Mon, 19 May 2025 10:15:20 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/6] iio: adc: ad4851: ad4851_set_oversampling_ratio
 parameters update
To: Pop Ioan Daniel <pop.ioan-daniel@analog.com>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Sergiu Cuciurean <sergiu.cuciurean@analog.com>,
 Dragos Bogdan <dragos.bogdan@analog.com>,
 Antoniu Miclaus <antoniu.miclaus@analog.com>,
 Olivier Moysan <olivier.moysan@foss.st.com>,
 Javier Carrasco <javier.carrasco.cruz@gmail.com>,
 Matti Vaittinen <mazziesaccount@gmail.com>,
 Tobias Sperling <tobias.sperling@softing.com>,
 Alisa-Dariana Roman <alisadariana@gmail.com>,
 Marcelo Schmitt <marcelo.schmitt@analog.com>,
 Thomas Bonnefille <thomas.bonnefille@bootlin.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250519140220.81489-1-pop.ioan-daniel@analog.com>
 <20250519140220.81489-2-pop.ioan-daniel@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20250519140220.81489-2-pop.ioan-daniel@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 5/19/25 9:02 AM, Pop Ioan Daniel wrote:
> Remove chan parameter from ad4851_set_oversampling_ratio parameters
> list.

Commit messages should explain _why_ we should make this change.
In this case, because the parameter is unused.

> 
> Signed-off-by: Pop Ioan Daniel <pop.ioan-daniel@analog.com>
> ---
Reviewed-by: David Lechner <dlechner@baylibre.com>


