Return-Path: <devicetree+bounces-57249-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F182589CBE4
	for <lists+devicetree@lfdr.de>; Mon,  8 Apr 2024 20:44:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6CAC41F27DFE
	for <lists+devicetree@lfdr.de>; Mon,  8 Apr 2024 18:44:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCAED143C4A;
	Mon,  8 Apr 2024 18:44:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="TRxboXp3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49A2E433BD
	for <devicetree@vger.kernel.org>; Mon,  8 Apr 2024 18:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712601876; cv=none; b=KFilRxkSHSbhVHjn10SwxxeID/QP0ste7l/QdDsyNuEC70AaoqhGWIMEtMWfVFSEX+eo0mep+xF0XtyfTyW1ba6bKHjTnvjqvlqgtcbu5qrhgBxJmePqvWoh1UEade4klgiA7uJQX/UH/ctBPKDiS6dz6YI11xfRsgoWHlnECOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712601876; c=relaxed/simple;
	bh=QsSIkayfit71CMzo2MxJNsqu2tSFf5gVAt8k/a4Lmp0=;
	h=References:From:To:Cc:Subject:Date:In-reply-to:Message-ID:
	 MIME-Version:Content-Type; b=CPzOtWMIrBfYngNL6tZxMN/HOYgP/f6E/uQWNUMclVHejygpEXdBykn8NxDjIqRdFHzVjoaKo5WM+z1kx9poAlJjffuNm03XMhbEg9XfXoDUptz+r8fE8wbq/5Q8UwPNAXKo1A37jQ/h61nC1cuXCCfdhoN89n1k3H2Xg46VzDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=TRxboXp3; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-343f8fc5c69so1836849f8f.3
        for <devicetree@vger.kernel.org>; Mon, 08 Apr 2024 11:44:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1712601871; x=1713206671; darn=vger.kernel.org;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:from:to:cc:subject:date:message-id:reply-to;
        bh=PhxFWGtJcYu82R8UeAJlsE6XDeHCwucqCh4MxZcEi6Y=;
        b=TRxboXp3qO9jnw4i3XecCQGL26XRf59oI6ZmeeH78jXUXiQlsuRuse7INN7RSfVxPT
         kTjRZAG4HE/UjH7h9k8CP9ZTOEFiA0jq8100Ma7Aas2PodOfBDwljSLhZJRtx/zRKhy2
         4E2nYWV1XNnMjp6Y8NJ1WjfCp4PR+z0T6DPE3APudJR/YAwkV6sIizECqc/9+0YN2oMe
         opaEU5Cjmij/u9gsVTg4nr5J89pSfcP9WRF8WTp+GZAHnCJFwVoE88kuOvOuy1ABd0c0
         qPl7vxdeNsxCJGJYJqyC8g6xIb+JHSaUliirVJU4KW1hD1kanJTSKizrzZCk/NNbovxg
         CQjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712601871; x=1713206671;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PhxFWGtJcYu82R8UeAJlsE6XDeHCwucqCh4MxZcEi6Y=;
        b=egH69BqMGS+gI+J0VFFnRYpO6iGct7tBZR0VUGeKwk/2CQ1Y0CcBkhQayR7DlcyqP9
         WUupG6yJoP8ozTrbRd7mPMDN5b2LqEiuwGr3sRwA7uv5wy7iKx6zCaVM0m4gi+m9tiAN
         x8dh/x+05WZfFOHbKR/dkPNBAydg+lxzL87l/ebMPGT+/hiuOjS9w/IwveOxDHH+zfXf
         TlXuRC0btJRViDOLpryOggdVP3ThWLjjOw/zXvTt3P6ITt9jxHFC2TCQWv9KyakusiOk
         OhjE8BpRoGBkoV9HDYZBUw0zeFLKyNsUEaZ+aa9uOrkt/aAaqUVWqF1B82qypuEPu35u
         lnCg==
X-Forwarded-Encrypted: i=1; AJvYcCVqNLYKgkzzrblaK9u8hZHG0wQywjzfmiezinNwEJPVxwzCoqUbkOXaksnS1Gm8ZyXd1zwEttRPKsoJw81A1xk/98olSl/BKpWjdg==
X-Gm-Message-State: AOJu0Yy+3nWT7SaPUSCzShWqlLlvgBEQtWCBYd71ZX+UYSWzG/iGsiD8
	VQgQ4fy4c5okxfSHpuQ7Io1Fs8joOpC/CFRZ/tV55+w75sNA4H0GwMQ0SZYszck=
X-Google-Smtp-Source: AGHT+IFs9R4mz6UqK5BlaXGtELLYaVlJZoW6nTa0CMEXjr6omfui96tuEN/xbadb9qr3EQuod/33ww==
X-Received: by 2002:a5d:6e56:0:b0:343:4727:d11e with SMTP id j22-20020a5d6e56000000b003434727d11emr6395149wrz.47.1712601871525;
        Mon, 08 Apr 2024 11:44:31 -0700 (PDT)
Received: from localhost ([2a01:e0a:3c5:5fb1:90bc:1f0d:aae2:3c66])
        by smtp.gmail.com with ESMTPSA id c9-20020adffb09000000b00345c2f84d5asm2736320wrr.10.2024.04.08.11.44.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Apr 2024 11:44:31 -0700 (PDT)
References: <20240408164947.30717-1-ddrokosov@salutedevices.com>
 <20240408164947.30717-3-ddrokosov@salutedevices.com>
 <1j1q7fpv1n.fsf@starbuckisacylon.baylibre.com>
User-agent: mu4e 1.10.8; emacs 29.2
From: Jerome Brunet <jbrunet@baylibre.com>
To: Jerome Brunet <jbrunet@baylibre.com>
Cc: Dmitry Rokosov <ddrokosov@salutedevices.com>, neil.armstrong@linaro.org,
 lgirdwood@gmail.com, broonie@kernel.org, conor+dt@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, perex@perex.cz,
 tiwai@suse.com, khilman@baylibre.com, martin.blumenstingl@googlemail.com,
 kernel@salutedevices.com, rockosov@gmail.com,
 linux-amlogic@lists.infradead.org, alsa-devel@alsa-project.org,
 linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v1 2/2] ASoC: meson: implement link-name optional
 property in meson card utils
Date: Mon, 08 Apr 2024 20:42:22 +0200
In-reply-to: <1j1q7fpv1n.fsf@starbuckisacylon.baylibre.com>
Message-ID: <1jwmp7ofsh.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain


On Mon 08 Apr 2024 at 20:15, Jerome Brunet <jbrunet@baylibre.com> wrote:

> On Mon 08 Apr 2024 at 19:49, Dmitry Rokosov <ddrokosov@salutedevices.com> wrote:
>
>> The 'link-name' property presents an optional DT feature that empowers
>> users to customize the name associated with the DAI link and PCM stream.
>> This functionality reflects the approach often employed in Qualcomm
>> audio cards, providing enhanced flexibility in DAI naming conventions
>> for improved system integration and userspace experience.
>>
>> It allows userspace program to easy determine PCM stream purpose, e.g.:
>>     ~ # cat /proc/asound/pcm
>>     00-00: speaker (*) :  : playback 1
>>     00-01: mics (*) :  : capture 1
>>     00-02: loopback (*) :  : capture 1
>
> The example above is exactly what you should not do with link names, at
> least with the amlogic audio system.
>
> Userspace pcm, otherwise known as DPCM frontend, are merely that:
> frontends. What they do is entirely defined by the routing defined by
> the userspace (amixer and friends)
>
> So naming the interface in DT (the FW describing the HW) after what the
> the userspace SW could possibly set later on is wrong.
>
> Bottom line: I have mixed feeling about this change. It could allow all
> sort of bad names to be set.
>
> The only way it could make sense HW wise is if the only allowed names
> where (fr|to)ddr_[abcd], which could help maps the interface and the
> kcontrol.
>
> Such restriction should be documented in the binding doc.
>

Thinking about it further, even this does not make a lot of sense.
The information is already available from dai_name, prefixes and all.

Please use that instead if you must rename the userspace pcm, not DT.

>>
>> The previous naming approach using auto-generated fe or be strings
>> continues to be utilized as a fallback.
>>
>> Signed-off-by: Dmitry Rokosov <ddrokosov@salutedevices.com>
>> ---
>>  sound/soc/meson/meson-card-utils.c | 12 ++++++++----
>>  1 file changed, 8 insertions(+), 4 deletions(-)
>>
>> diff --git a/sound/soc/meson/meson-card-utils.c b/sound/soc/meson/meson-card-utils.c
>> index ed6c7e2f609c..7bae72905a9b 100644
>> --- a/sound/soc/meson/meson-card-utils.c
>> +++ b/sound/soc/meson/meson-card-utils.c
>> @@ -94,10 +94,14 @@ static int meson_card_set_link_name(struct snd_soc_card *card,
>>  				    struct device_node *node,
>>  				    const char *prefix)
>>  {
>> -	char *name = devm_kasprintf(card->dev, GFP_KERNEL, "%s.%s",
>> -				    prefix, node->full_name);
>> -	if (!name)
>> -		return -ENOMEM;
>> +	const char *name;
>> +
>> +	if (of_property_read_string(node, "link-name", &name)) {
>> +		name = devm_kasprintf(card->dev, GFP_KERNEL, "%s.%s",
>> +				      prefix, node->full_name);
>> +		if (!name)
>> +			return -ENOMEM;
>> +	}
>>  
>>  	link->name = name;
>>  	link->stream_name = name;


-- 
Jerome

