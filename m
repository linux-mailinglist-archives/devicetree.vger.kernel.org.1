Return-Path: <devicetree+bounces-218299-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9007BB7E855
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 14:51:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3DD061C070CF
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 09:11:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36503331AE9;
	Wed, 17 Sep 2025 09:10:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="y3LMGCoy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1A7331AE3
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 09:10:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758100251; cv=none; b=iLk3w7/jh094lwJtD2UhIQ7HUv1By2m84u3Xjjlo8DoB9qO8jkzpsSN8+mn3Dewi2V02c5L3pXYNTIlMdDGHhHK0XdBpsKZ/hn55OKdD/Rj2Ve9nNX9HDTWZk/9XAPLM++0/UmwSxPFaI6hjTMyUavEQFeTNSQjJx2AwvBtdoIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758100251; c=relaxed/simple;
	bh=tp3yfkg0GbRWDYfv+9qGd2iSh8ZB1FOcDNuHn8ewKpM=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=KtVNMzWMIKzKB1eKhGAnh4oKdoWbi0M1EPM+F40xXeLJyRk80GWNnZ/PvfIDTKP6S4ZOzx47J8/uSabzauT6DKN/yX4n5woqa+rQDunzQRUggF4uPAniFv5QKZcf6ALdWYXipqKaqExIp7LGQAmbqbCKUo2ICZ9HWR2cKoVliVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=y3LMGCoy; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-45f2c9799a3so22900575e9.0
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 02:10:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1758100246; x=1758705046; darn=vger.kernel.org;
        h=mime-version:message-id:date:user-agent:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PlK2stUccurl04mbWawfAf/ha/VEIfyoutD9WxWnA1M=;
        b=y3LMGCoy5EzRxef+IzIfpv6wwqryKRAsVx5bVrSfcgdSAjvjQZw2LE8wVBHR3wIw8J
         Bfd4tz3fjEgm0mVgTpQ/H5xDSj8rogrKOCZU3QnVTps2oGvBPyhP48F9/YtCNfpzemVV
         t3AetX6g5jiBuF5c2A+0GAsch/gtPjnrsSj2p9+JZ4ESxMpZqkTQ34lcABBYVlVIcA9U
         VeCL6NOlOO2kTRbDNJejrU469TcNMOZ/L6mU9u6RvRuQAUlV8CI58iqs9vEWoZTq6/nj
         EiTBKQwPu4NzsSr6ls8lQM4T8RCMiXIGVuwicCT2QV21DtYXcdpbMrEr31JLuv79y2X8
         deOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758100246; x=1758705046;
        h=mime-version:message-id:date:user-agent:references:in-reply-to
         :subject:cc:to:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PlK2stUccurl04mbWawfAf/ha/VEIfyoutD9WxWnA1M=;
        b=Z9AJ/U6+VYvkfbY8ewocex/jJzaymM37g6eF8DY1NFy8zv8Cyd0fkF3Jk1DDbcJ1d5
         NsmtoNfuT8jlT/IwCo/ML9HerUPMW5w2CBvQwcGtNR+Dmy8c1WHiXgLfrVbakmw7NLLf
         U0JUF7Q5XsdUnoZ/tDXnEHSv31x1OH0Ekrl95hBCUnQvj4i6RNPlRVHyCD9Cgz9WwU/3
         omA+0nj6BfnQZUTe7DHt6gNp9G2VvBmTcJWSi+0wpvBTh8OE5TRkPS1o8kRsaFlVVy7A
         SG3uOpBgTxt7mplRBILsprCAXaF6jw3CEV7Anqyw1ZwY3a4YDvVcBdWqsZXXjqtU0b5s
         0DBg==
X-Forwarded-Encrypted: i=1; AJvYcCUVV8NCYOVtqigPbZXvbm7EwFL0xQhikGII9w83SMVt37eP2hZ8ZouJ3DrUjqIEQAd4OvQq4pbW6bzE@vger.kernel.org
X-Gm-Message-State: AOJu0YzC/eZVjTeUZMh9BW6Z1/NwR37E3pehgAyxtsw3qzLPG0TgaN9V
	wdlslixiwK3mJn9Wc/Y/r0h/OsRLfh3PfMuTYOdqBsVNYkGGwnUh/7GMBBuSPLQUEVA=
X-Gm-Gg: ASbGncv/dL9prlZ8YYBj9pnSOGZJIfwCYKqjaA7N4x1mQDoJqu9GE3mD7HLueM8qJUG
	jljOp28B4bIaV4hcF0AGghckFwYcm9uwGjoMs7UcyACmOFbKbLSCCMcjb05WZsbsnBvaJd0JHIu
	p3v1kGlF/Y7RXk3BNStCwTqoqlN74TNfdB7pVju7VigaB3cMsRjiPRa+hqTPswblqrULCkLyEgW
	+qFImUCKKkumW5SVf2mae8mt6gIPLkvn6D3gXNbRaTY0YAzajPd7E0RO93C/QNJ+vQ/1ce+XTgv
	tLSh5XtwkrTPVWQxRAFfJvwPj5Bk/0oC/X2zWFfo2esp7e0LySu2gnNTV3O3WsHIqQducNdElGI
	ooEIDOrY+Iiqsq5+QH6UShw==
X-Google-Smtp-Source: AGHT+IFPGc7ic+PrwXQdYuhF8XZWH7tHR3Wzubn/3T39N6UzWqLydVcD4Osfm3AnC6uPAm7ruqpt8A==
X-Received: by 2002:a05:600c:1c87:b0:456:fc1:c26d with SMTP id 5b1f17b1804b1-46201f8aa4bmr12363615e9.2.1758100246219;
        Wed, 17 Sep 2025 02:10:46 -0700 (PDT)
Received: from localhost ([2a01:e0a:3c5:5fb1:d458:6239:fdc1:d868])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-45f32181a47sm37857465e9.1.2025.09.17.02.10.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Sep 2025 02:10:45 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Chuan Liu <chuan.liu@amlogic.com>
Cc: Chuan Liu via B4 Relay <devnull+chuan.liu.amlogic.com@kernel.org>,
  Michael Turquette <mturquette@baylibre.com>,  Stephen Boyd
 <sboyd@kernel.org>,  Rob Herring <robh@kernel.org>,  Krzysztof Kozlowski
 <krzk+dt@kernel.org>,  Conor Dooley <conor+dt@kernel.org>,  Neil Armstrong
 <neil.armstrong@linaro.org>,  Kevin Hilman <khilman@baylibre.com>,  Martin
 Blumenstingl <martin.blumenstingl@googlemail.com>,
  linux-clk@vger.kernel.org,  devicetree@vger.kernel.org,
  linux-kernel@vger.kernel.org,  linux-amlogic@lists.infradead.org,
  linux-arm-kernel@lists.infradead.org,  Krzysztof Kozlowski
 <krzysztof.kozlowski@linaro.org>,  Conor Dooley
 <conor.dooley@microchip.com>
Subject: Re: [PATCH v5 0/2] clk: amlogic: add video-related clocks for S4 SoC
In-Reply-To: <91935087-0f0c-42ed-8ad6-f6312240413c@amlogic.com> (Chuan Liu's
	message of "Wed, 17 Sep 2025 10:02:19 +0800")
References: <20250916-add_video_clk-v5-0-e25293589601@amlogic.com>
	<1j348mj0sw.fsf@starbuckisacylon.baylibre.com>
	<66f130b4-88d7-46d2-9f66-9055896d445a@amlogic.com>
	<1jwm5yhgqz.fsf@starbuckisacylon.baylibre.com>
	<91935087-0f0c-42ed-8ad6-f6312240413c@amlogic.com>
User-Agent: mu4e 1.12.9; emacs 30.1
Date: Wed, 17 Sep 2025 11:10:44 +0200
Message-ID: <1jqzw5h2az.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

On Wed 17 Sep 2025 at 10:02, Chuan Liu <chuan.liu@amlogic.com> wrote:

> On 9/16/2025 5:46 PM, Jerome Brunet wrote:
>> [ EXTERNAL EMAIL ]
>>
>> On Tue 16 Sep 2025 at 17:30, Chuan Liu <chuan.liu@amlogic.com> wrote:
>>
>>> Hi Jerome:
>>>
>>>
>>> On 9/16/2025 3:47 PM, Jerome Brunet wrote:
>>>> [ EXTERNAL EMAIL ]
>>>>
>>>> On Tue 16 Sep 2025 at 10:06, Chuan Liu via B4 Relay <devnull+chuan.liu.amlogic.com@kernel.org> wrote:
>>>>
>>>>> This patch introduces new clock support for video processing components
>>>>> including the encoder, demodulator and CVBS interface modules.
>>>>>
>>>>> The related clocks have passed clk-measure verification.
>>>>>
>>>>> Signed-off-by: Chuan Liu <chuan.liu@amlogic.com>
>>>>> ---
>>>>> Changes in v5:
>>>>> - Add Acked-by tags from Conor.
>>>>> - Remove unnecessary flags as suggested by Jerome.
>>>> The request was "in an another change" ? Why was this ignored ?
>>>
>>> Sorry to bother you. I'll drop the flags for 's4_cts_encl_sel' in this
>>> series and submit a separate patch later to remove CLK_SET_RATE_PARENT
>>> from enci/encp/cdac/hdmitx clk_muxes. Is that ok?
>> Why can't make it part of this series, as requested ?
>> It does not seems that hard to do.
>
>
> The topic of this patch series is "add video-related clocks," so I'm
> concerned that patches adding or removing flags for other clocks might
> be considered off-topic.

If that's the case, you could simply reply, stating your concerns
instead of ignoring a comment which does not suit you.

And yes, you should adapt the cover letter to explain what you are doing

>
> In the next revision of this series, I will include a separate patch
> to remove these flags and provide the appropriate commit message.
>

Please start with that.

>
>>
>> This is another unnecessary revision and the community will have to
>> review, because you ignored some feedback.
>>
>> As noted by Krzysztof, you really need to pay more attention to the time
>> and effort other are spending reviewing your work.
>
>
> I'm still a newcomer when it comes to upstreaming, and I'm not yet very
> familiar with the rules and processes.

That's just not true.

You have been doing that long enough and have been reminded time and time
again not to ignore feedback. Continue doing so and you'll be ignored too.

If you still feel "unfamiliar" with the rules and process, then you
should read them again:

https://docs.kernel.org/process/submitting-patches.html#respond-to-review-comments

> I apologize for any inconvenience
> this may have caused during this period, and I sincerely appreciate your
> pointing out any issues with my patches.
>
>
>>
>>>
>>>>> - Link to v4: https://lore.kernel.org/r/20250909-add_video_clk-v4-0-5e0c01d47aa8@amlogic.com
>>>>>
>>>>> Changes in v4:
>>>>> - Add Acked-by tags from Rob and Krzysztof.
>>>>> - Fix compilation errors.
>>>>> - Link to v3: https://lore.kernel.org/r/20250905-add_video_clk-v3-0-8304c91b8b94@amlogic.com
>>>>>
>>>>> Changes in v3:
>>>>> - Rebase with Jerome's latest code base.
>>>>> - Link to v2: https://lore.kernel.org/r/20250814-add_video_clk-v2-0-bb2b5a5f2904@amlogic.com
>>>>>
>>>>> Changes in v2:
>>>>> - Removed lcd_an clock tree (previously used in meson series but obsolete in
>>>>> newer chips).
>>>>> - Removed Rob's 'Acked-by' tag due to dt-binding changes (Is it necessary?).
>>>>> - Link to v1: https://lore.kernel.org/r/20250715-add_video_clk-v1-0-40e7f633f361@amlogic.com
>>>>>
>>>>> ---
>>>>> Chuan Liu (2):
>>>>>         dt-bindings: clock: add video clock indices for Amlogic S4 SoC
>>>>>         clk: amlogic: add video-related clocks for S4 SoC
>>>>>
>>>>>    drivers/clk/meson/s4-peripherals.c                 | 206 ++++++++++++++++++++-
>>>>>    .../clock/amlogic,s4-peripherals-clkc.h            |  11 ++
>>>>>    2 files changed, 213 insertions(+), 4 deletions(-)
>>>>> ---
>>>>> base-commit: 01f3a6d1d59b8e25a6de243b0d73075cf0415eaf
>>>>> change-id: 20250715-add_video_clk-dc38b5459018
>>>>>
>>>>> Best regards,
>>>> --
>>>> Jerome
>> --
>> Jerome

-- 
Jerome

