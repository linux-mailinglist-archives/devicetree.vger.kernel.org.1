Return-Path: <devicetree+bounces-36211-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E8C05840318
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 11:45:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D55DBB22498
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 10:45:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51EB3537EE;
	Mon, 29 Jan 2024 10:45:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nFaBQ8RO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9141856476
	for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 10:45:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706525116; cv=none; b=X8VgXFXYNaIFELKG6Wvqg8m727dwts2kk22K47FWorD5citvjrnNq3yk+eF/L/PBdL4eMPIxhdCbYXp7t70RMW2sPCO1GbpnyHrnlaofgWKLmTul8JkOl3pv+vBD9VKvWLiDgR9TpU8eUFjPhajrxtBTzHpugU7grpltaZLyn2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706525116; c=relaxed/simple;
	bh=Z8mp0RtDl51BFHkxZNr+PFoZ3oiWgxeFj38gUyFpRkI=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=iZ+hlF6z22Ke6Hx/sTxg1uFg8KxrOb5uR42ffQBNsAH5in2NSc7FtgN7c6KgspTaiLm4YMdx6gqwciKNBTjT+K2dul46EwFz+49pegW2iK1V0PHrUHzVtod4NdHskhM9YKVL8gedLLZAEoRAAXBfPRr8LjSpz2cOsph/H4tlQDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nFaBQ8RO; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-3394ca0c874so2348000f8f.2
        for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 02:45:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706525113; x=1707129913; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Z8mp0RtDl51BFHkxZNr+PFoZ3oiWgxeFj38gUyFpRkI=;
        b=nFaBQ8RO7T2Kcea7ugzG1qrFh3i5QQHRzpbdTiqLiertD0wwSiGFRqUFw5E8hslyIp
         TVmjnFRYPJEAuymNs1HA+YnifsWw/fl/zgEHs0qiDCZkVhlnbW8p4SSg6gaEmTXhw4Pg
         FBAdXnV6/22Im0N9n23buznfIE5Nvbmj78vuwREIM4nPgtMaMyYVHVoNHds6CYvBl0UZ
         JdH0kaFnQ8hBCrK0rFoQH7L+Ge14MbGKUNJKLQtcK768y2VGswI0SFNtoVB1ZKWYyZzM
         yrrHMgN29LbjO2YOjsfzVHdsGDe34TpgWCseyWMnQM8eBzF1rYEuSx04q/iz4RKWltUG
         mnnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706525113; x=1707129913;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Z8mp0RtDl51BFHkxZNr+PFoZ3oiWgxeFj38gUyFpRkI=;
        b=B/24N4kE4mAyKMm+Rmg+/2wXg6Y6fQUtBGEkpmzfS0cTDJletOeQiBq7r5k10S8hJ+
         f7iw6qQKBBk1/4VWrvOFR+lVw1qaEx3VldhBG3mTzENr+W5307Ow0ASm3ErdUrGnMx4W
         6p7OZPucRY6/OdNwvRtWDvOJiBB5DC8CpIUN48vlJsVWPd97J8qsD03bmM3ZVZ7CvPun
         ifWWJSp+I+83t7sxSwPaCe4Z/rwj5FRV4Dg1dxqZbWAqE+wt7y760jUw5A1/ykjae5oP
         PkLdvZwALF1hH2qPF9LsV3sbmcWOAPISwu5OBHWD1HU4wvqW5HYNhYmLEQuyFRJUfpKv
         FCnQ==
X-Gm-Message-State: AOJu0Yy9G1kQMRn5WbacPZFLqXnba2W8YC2FbFv+7B37nE6wydxHCOMr
	oAKuceOM4xyp7NxVZHyYuJcTDgxlexNBx7VwxK+Tr6BT7EiqjfUWuNkoDrW5ZME=
X-Google-Smtp-Source: AGHT+IFihQ01Lv/3xhmJ2QRY4zWM3/6pk8fnT64QKAKwosslS/C3loV+UgYjHKedBDBzrFE/BLHtcA==
X-Received: by 2002:adf:a348:0:b0:33a:e73b:b0d0 with SMTP id d8-20020adfa348000000b0033ae73bb0d0mr2794136wrb.32.1706525112807;
        Mon, 29 Jan 2024 02:45:12 -0800 (PST)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id v2-20020a5d6b02000000b0033ae7d768b2sm3982537wrw.117.2024.01.29.02.45.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jan 2024 02:45:12 -0800 (PST)
Message-ID: <d234060148ab6027bd84c5475851a30329e877a2.camel@linaro.org>
Subject: Re: [PATCH 8/9] arm64: dts: exynos: gs101: sysreg_peric1 needs a
 clock
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Sam Protsenko <semen.protsenko@linaro.org>
Cc: peter.griffin@linaro.org, mturquette@baylibre.com, sboyd@kernel.org, 
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
  linux-kernel@vger.kernel.org, kernel-team@android.com,
 tudor.ambarus@linaro.org,  willmcvicker@google.com,
 alim.akhtar@samsung.com, s.nawrocki@samsung.com,  tomasz.figa@gmail.com,
 cw00.choi@samsung.com,  linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org,  linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org
Date: Mon, 29 Jan 2024 10:45:10 +0000
In-Reply-To: <CAPLW+4=PWCegZi8Wd=rhSUUiXNn_J46VGZoxDcRA89MX-2Y9tg@mail.gmail.com>
References: <20240127001926.495769-1-andre.draszik@linaro.org>
	 <20240127001926.495769-9-andre.draszik@linaro.org>
	 <CAPLW+4=PWCegZi8Wd=rhSUUiXNn_J46VGZoxDcRA89MX-2Y9tg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.50.1-1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Sam,

On Fri, 2024-01-26 at 21:00 -0600, Sam Protsenko wrote:
> On Fri, Jan 26, 2024 at 6:19=E2=80=AFPM Andr=C3=A9 Draszik <andre.draszik=
@linaro.org> wrote:
> >=20
> > Without the clock running, we can not access its registers, and now
> > that we have it, we should add it here so that it gets enabled as
> > and when needed.
> >=20
>=20
> That sounds like this patch deserves "Fixes:" tag :) Other than that:

I didn't add it, because at the time &sysreg_peric1 was added, the clock
macro CLK_GOUT_PERIC1_SYSREG_PERIC1_PCLK didn't exist and &sysreg_peric1
wasn't in use until this series here anyway.
If this patch here gets backported to some older kernel due to the Fixes: t=
ag,
without the whole peric1 series, it wouldn't build. Therefore I left it out=
.

Should it still be added?

Cheers,
Andre'


