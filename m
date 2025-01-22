Return-Path: <devicetree+bounces-140257-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B431DA18FE3
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 11:38:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8D7313A5722
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 10:38:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE2FF21129A;
	Wed, 22 Jan 2025 10:38:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="EVf6W+nN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49A9420F987
	for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 10:38:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737542332; cv=none; b=U30WRLNWF6bscfbRPAU2T3M8UpF+jT+6AtT/7+5M7bkWefnPkhJSFtNO4UNJy+49fZP0dSTDVC83djyHyQxz64S3ZLD8f1dLWqS4CD4syVuc4ApKQ1NwGl4AUHuJ/w93NBHOqhQG47UjUe55fq9RlL1yQwsfao0t4hjvYYplFQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737542332; c=relaxed/simple;
	bh=2t8HACXgNdpkCFzOmCwLprVtUhEk0/fR+04oTuG4bWM=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=KWIrPPHLczFIXGwFHVBuGJNeL8BY/Cxd3kv78ZZOlCaRbb0btNG5nzazbEzTuvaJoHZnX+i3H+mkITbTF1BpnS4Sdt4F1+HKrRQzjiXMFAbeUN4ZdvcAr+kAKctaox15Q/+akeRb6R6nEJyTKoAL5zIFXCsScqRX4JeQIvwKQVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=EVf6W+nN; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-43624b2d453so73463545e9.2
        for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 02:38:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1737542328; x=1738147128; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:user-agent
         :references:in-reply-to:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wIz5Dg4pJALggVCJV3aAQrkAcnenmZfu2TddhDFfjFE=;
        b=EVf6W+nNpxlBJYy5s2M/jllAjwQzO2YDckGdGtk2C+nxen7jb4hXoLw0+E1fDSK1Se
         2aYYog3EnP3rAzntG9hJa2jNb3LJ5YGPi/y8mOFam8QRqdLY1qh0rIvAV6ZwY6uhA63x
         8nGIQ5dVYtJGvuaiAs9qoA2I1twuVNdg88J9bKGbb3Z2D6aQTV7REldwEgHIEx//E6yD
         tdW4PCUAuKyIzrK2nSjA9DUUxm0IidjfTqb/syh2qYxAkPqk3NQNNSWa8l7e4WwPXNQE
         2mKIWLhRpNnByifFuqT2hGnV6YStQrj+lyN5CiSrJGxb8BP+TVmLX5idTu+fXNY3jzzW
         Er8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737542328; x=1738147128;
        h=content-transfer-encoding:mime-version:message-id:date:user-agent
         :references:in-reply-to:subject:cc:to:from:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wIz5Dg4pJALggVCJV3aAQrkAcnenmZfu2TddhDFfjFE=;
        b=OqIgXa0KfcfkrVxlRUNkxgqNSRE0JPGYmnyu5OoChUm06t1fbMfNN8KLJ56n1FCPYH
         6m3EkVITa0AmJjBX2vxtujtfBuSXuHLaUXhH6HDkXtxjnpgvhrncrMgv8R0J325u8Tqb
         6dgBC6Jq6iA1KXzp0AcIKd7xlHevo70x+5h3Tkauc4lBNgVX7Mq2t2RaO3G/qWFK3wOE
         eGfcoiaffmCSVbtANFzwLo+WD2A5CaOLWd4SmVdscWWfBCj40GyJE0mO5yRiWZn8HTjy
         Vcyka4LFs1+Y4z5mJgfUAuibou2xwzpFRbebi6FO+skxXLugmnBwjlHllLJKj2jy/Ljw
         tGTA==
X-Forwarded-Encrypted: i=1; AJvYcCVED18s61dBOMmmAjNJddNoOx1cu5KEahSiM/5bRlxQimsBOXDgFs/QwadAb4jW+JsdBdw6fq0N/cyy@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6lLFwPPztj+V0150sWYTdePLHSQ4EATwGPQtH2lpFqQ4q/gUq
	nDu9sRQGQqibu5MYQkXv8slbE99HUQyNcUt3vs2o+SjzlaMc3wXMkOF9udVAh/M=
X-Gm-Gg: ASbGncsOK1oahRx/e+jpdwuGUcCLAhC7aPHgGZCEG6OtDwZITbr+KkRFZ5NVyQsvqRJ
	2+Ea31ILpvO+A1exMYrsQ5TJssIpZ7gPof25WSw8Vcu8l2llry0tlbl5b8K5dvw41aWgMqcu5Vw
	0aHGtKPLXQ3MMgYAqtWGx/z4W7uyXK78QHOqtF04YuMkV87U9gOook40BgJS7A3ZloqXk62o8kU
	vqXGaKK++c+RI5b7gcKzPSF2g4m/xgJAQosogjZr3ggQneUFoncGykaUv5ihqHHL2Om+Q==
X-Google-Smtp-Source: AGHT+IGHWICVymyczl4ii8tG0TEJPCRASpGt6Bh6um0Z96LWBrB4SGwG4XeA1Yko2Ghrm1yauaArzQ==
X-Received: by 2002:a05:600c:35c3:b0:434:f131:1e71 with SMTP id 5b1f17b1804b1-438913cf2e0mr197285195e9.8.1737542328421;
        Wed, 22 Jan 2025 02:38:48 -0800 (PST)
Received: from localhost ([2a01:e0a:3c5:5fb1:c6fe:2fe2:acd6:8e99])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-438b31b1566sm19283775e9.24.2025.01.22.02.38.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jan 2025 02:38:47 -0800 (PST)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Ao Xu <ao.xu@amlogic.com>
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,  Neil
 Armstrong <neil.armstrong@linaro.org>,  Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>,  Maxime Ripard <mripard@kernel.org>,
  Thomas Zimmermann <tzimmermann@suse.de>,  David Airlie
 <airlied@gmail.com>,  Simona Vetter <simona@ffwll.ch>,  Rob Herring
 <robh@kernel.org>,  Krzysztof Kozlowski <krzk+dt@kernel.org>,  Conor
 Dooley <conor+dt@kernel.org>,  Kevin Hilman <khilman@baylibre.com>,
  dri-devel@lists.freedesktop.org,  linux-amlogic@lists.infradead.org,
  devicetree@vger.kernel.org,  linux-arm-kernel@lists.infradead.org,
  linux-kernel@vger.kernel.org
Subject: Re: [PATCH 00/11] Subject: [PATCH 00/11] Add DRM support for
 Amlogic S4
In-Reply-To: <3aa88bdb-ce84-4029-b497-2502ab1eb7a5@amlogic.com> (Ao Xu's
	message of "Wed, 22 Jan 2025 17:50:25 +0800")
References: <20250110-drm-s4-v1-0-cbc2d5edaae8@amlogic.com>
	<CAFBinCDG2in4ZZAp2LXnz8bgiZoPL3G_c9+aCo9+Ort2W-tFCA@mail.gmail.com>
	<1jwmex5lpc.fsf@starbuckisacylon.baylibre.com>
	<3aa88bdb-ce84-4029-b497-2502ab1eb7a5@amlogic.com>
User-Agent: mu4e 1.12.8; emacs 29.4
Date: Wed, 22 Jan 2025 11:38:47 +0100
Message-ID: <1jldv3i154.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On Wed 22 Jan 2025 at 17:50, Ao Xu <ao.xu@amlogic.com> wrote:

> On 2025/1/15 1:50, Jerome Brunet wrote:
>> [ EXTERNAL EMAIL ]
>>
>> On Sun 12 Jan 2025 at 23:44, Martin Blumenstingl <martin.blumenstingl@go=
oglemail.com> wrote:
>>
>>> Hello,
>>>
>>> On Fri, Jan 10, 2025 at 6:39=E2=80=AFAM Ao Xu via B4 Relay
>>> <devnull+ao.xu.amlogic.com@kernel.org> wrote:
>>>> This patch series adds DRM support for the Amlogic S4-series SoCs.
>>>> Compared to the Amlogic G12-series, the S4-series introduces the follo=
wing changes:
>>> Thanks for your patches. With this mail I'll try to summarize my
>>> understanding of the situation with the drm/meson driver as I'm not
>>> sure how familiar you are with previous discussions.
>>>
>>>> 1 The S4-series splits the HIU into three separate components: `sys_ct=
rl`, `pwr_ctrl`, and `clk_ctrl`.
>>>>    As a result, VENC and VCLK drivers are updated with S4-specific com=
patible strings to accommodate these changes.
>>> Jerome has already commented on patch 3/11 that this mixes in too many
>>> IP blocks into one driver.
>>> This is not a new situation, the existing code is doing exactly the sam=
e.
>>>
>>> Jerome has previously sent a series which started "an effort to remove
>>> the use HHI syscon" [0] from the drm/meson hdmi driver.
>>> In the same mail he further notes: "[the patchset] stops short of
>>> making any controversial DT changes. To decouple the HDMI
>>> phy driver and main DRM driver, allowing the PHY to get hold of its
>>> registers, I believe a DT ABI break is inevitable. Ideally the
>>> register region of the PHY within the HHI should provided, not the
>>> whole HHI. That's pain for another day ..."
>>>
>>> For now I'm assuming you're familiar with device-tree ABI.
>>> If not then please let us know so we can elaborate further on this.
>>>
>>> My own notes for meson_dw_hdmi.c are:
>>> - we should not program HHI_HDMI_CLK_CNTL directly but go through CCF
>>> (common clock framework) instead (we should already have the driver
>>> for this in place)
>>> - we should not program HHI_MEM_PD_REG0 directly but go through the
>>> genpd/pmdomain framework (we should already have the driver for this
>>> in place)
>>> - for the HDMI PHY registers: on Meson8/8b/8m2 (those were 32-bit SoCs
>>> in case you're not familiar with them, they predate GXBB/GXL/...) I
>>> wrote a PHY driver (which is already upstream:
>>> drivers/phy/amlogic/phy-meson8-hdmi-tx.c) as that made most sense to
>>> me
>>>
>>> Then there's meson_venc.c which has two writes to HHI_GCLK_MPEG2.
>>> I think those should go through CCF instead of directly accessing this =
register.
>>>
>>> Also there's the VDAC registers in meson_encoder_cvbs.c:
>>> I think Neil suggested at one point to make it a PHY driver. I even
>>> started working on this (if you're curious: see [0] and [1]).
>>> DT ABI backwards compatibility is also a concern here.
>>>
>>> And finally there's the video clock tree programming in meson_vclk.c.
>>> My understanding here is that video PLL settings are very sensitive
>>> and require fine-tuning according to the desired output clock.
>>> Since it's a bunch of clocks I'd say that direct programming of the
>>> clock registers should be avoided and we need to go through CCF as
>>> well.
>>> But to me those register values are all magic (as I am not aware of
>>> any documentation that's available to me which describes how to
>>> determine the correct PLL register values - otherside the standard
>>> en/m/n/frac/lock and reset bits).
>>>
>>> I'm not saying that all of my thoughts are correct and immediately
>>> need to be put into code.
>>> Think of them more as an explanation to Jerome's reaction.
>>>
>>> I think what we need next is a discussion on how to move forward with
>>> device-tree ABI for new SoCs.
>>> Neil, Jerome: I'd like to hear your feedback on this.
>> I completely agree with your description of the problem, that and
>> Krzysztof's remark on patch 6. This is not new with this series indeed,
>> so it does not introduce new problems really but it compounds the
>> existing ones.
>>
>> Addressing those issues, if we want to, will get more difficult as more
>> support is added for sure.
>
> Hi=EF=BC=8Cjerome
>
> =C2=A0=C2=A0=C2=A0 What are the next steps for "an effort to remove the u=
se HHI syscon"
> patch set, and what is the schedule?

I have no idea. You should check with Neil whether or not it is something he
wants to do and how.

If you (or anyone else) want to make a v2 out of the first clean-up I've
made [2], you are welcome to. I'm handling other things ATM and I don't
expect to get to it any time soon.

[2]: https://lore.kernel.org/linux-amlogic/20240730125023.710237-1-jbrunet@=
baylibre.com/

>
>>>> 2 The S4-series secures access to HDMITX DWC and TOP registers,
>>>>    requiring modifications to the driver to handle this new access met=
hod.
>> Regmap buses are made for those cases where the registers are the same,
>> but accessed differently. There is an example in the patchset referenced=
 by
>> Martin, to handle GXL and G12 diff.
>>
>>> This info should go into patch 1/11 to explain why the g12a compatible
>>> string cannot be used as fallback.
>>>
>>>
>>> Best regards,
>>> Martin
>>>
>>>
>>> [0] https://github.com/xdarklight/linux/commit/36e698edc25dc698a0d57b72=
9a7a4587fafc0987
>>> [1]
>>> https://github.com/xdarklight/linux/commit/824b792fdbd2d3c0b71b21e1105e=
ca0aaad8daa6
>> --
>> Jerome

--=20
Jerome

