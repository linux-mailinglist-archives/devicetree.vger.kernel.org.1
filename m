Return-Path: <devicetree+bounces-106502-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0939298A68A
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 16:01:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 662E2B253F9
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 14:01:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25149193073;
	Mon, 30 Sep 2024 14:00:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rasmusvillemoes.dk header.i=@rasmusvillemoes.dk header.b="Rt3Lqz4X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2E811E480
	for <devicetree@vger.kernel.org>; Mon, 30 Sep 2024 14:00:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727704812; cv=none; b=GdMyUpq2LB1xN7NfvPvgjxGLQlq2c1KQ5GgrWYAOTfa1hsdI2lKG1gdweZ198tPPy4DWVrCcm013HPcVmHVJN1OkPq4Gfh/sznZg90Z/Nit5EROqwCmMpAJltkI478V/1mx9KS5iNG+k+DVw9LuoJVzlA70MBcvmBgGWqb/KY50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727704812; c=relaxed/simple;
	bh=3ijB4GlXO+25BXCSGu/vsofAjiikfjurTHWwB9A1V40=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=g5GlXECsN+l6gs8vSfOkUEuEufQBq7e28TVcFxDPMaikofJAZug/HsYHsla+oyOe6JIWzPKxg1PWEmwbS27q2wZ++p7xxpsT7PTNKp6NPcLtVJcdOfCLE4uDyKU5ciLVjSgwW5f6mvrTa1zgC7bNE9BKWmrvL6yugwDcPRFaK1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rasmusvillemoes.dk; spf=pass smtp.mailfrom=rasmusvillemoes.dk; dkim=pass (1024-bit key) header.d=rasmusvillemoes.dk header.i=@rasmusvillemoes.dk header.b=Rt3Lqz4X; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rasmusvillemoes.dk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rasmusvillemoes.dk
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-53959a88668so3475473e87.2
        for <devicetree@vger.kernel.org>; Mon, 30 Sep 2024 07:00:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rasmusvillemoes.dk; s=google; t=1727704808; x=1728309608; darn=vger.kernel.org;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=GUVJY0IXomTgT+0Kh65kRbP76txfvO137vhXRmIMRvY=;
        b=Rt3Lqz4XgiL7D7bZ0SIfI8aBV6Eu8GO4FH52yelW3pR6okq/L/tK08af8uCtSp1+0E
         74lFjpua28iIw8uN6EN4fhKfn1Ab5WahH6FiiFshnUNwCj9KaFh5ORDk4t1RMuj6J5zu
         Ta3qKuFKLDApCpg7lq/M7n55oOdIXJFd/wdn4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727704808; x=1728309608;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GUVJY0IXomTgT+0Kh65kRbP76txfvO137vhXRmIMRvY=;
        b=UgtXoS+pj67ULfoIwrHkATx0/3NNwi9xMOA0+TPp+xnI+KKlbPUCj3JABXWXb4MBIl
         SSzw800vkNhxvPaVQre58pe1HPoEl/f1TzGQEaOoBDWYhFiMMIIKZ3NTj5Idr+WrVFpi
         DO8p/nNbFxqAeH9cVfAP0hf7/C6vKAT3k0pcfYkrbrPBO4AY9KK9/2ophrkTIjT0FwpT
         qG0Qp/fjtWbkVFIl6gJQH0blskUBVwP0wNoduwpMPPOpLBX3OyEH0aDfxXzJdw1wBIS+
         xG6lK5haPx/DgXIlCY/AkHAvxPO+YtNqtPor0LQYOjp9NOEYynZxpOrQeX/3LvbnMQbQ
         CZbg==
X-Forwarded-Encrypted: i=1; AJvYcCV4DsEMsMd3cA2ujffJvHl23OC7adAWrbbz0neERctDaEzsmBDoDmmTcjaDYwAgBPVzIwjcmbCv4VsF@vger.kernel.org
X-Gm-Message-State: AOJu0YxRzrErHzKKAXqdtFB2kkMeFurbOyqauuzXJLYwBOp0kMaxidQx
	EYwunlwX1Pod1QfetD2JE5wcvO5q3AJoaWVrdALMqnF/uEIIoaxPq+F32soHKuE=
X-Google-Smtp-Source: AGHT+IEKI7Weq7GjSrmgYABMSBw8sViHYEBtfUq5wTxEWLE74jtGdVLHWUX/PFqWZwy723EiPNA5iQ==
X-Received: by 2002:a05:6512:398d:b0:530:daeb:c1d4 with SMTP id 2adb3069b0e04-5389fc35936mr5226141e87.12.1727704807805;
        Mon, 30 Sep 2024 07:00:07 -0700 (PDT)
Received: from localhost ([81.216.59.226])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5389fd5df47sm1233224e87.78.2024.09.30.07.00.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Sep 2024 07:00:07 -0700 (PDT)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Christian Marangi <ansuelsmth@gmail.com>
Cc: Rasmus Villemoes <linux@rasmusvillemoes.dk>,  Jens Axboe
 <axboe@kernel.dk>,  Jonathan Corbet <corbet@lwn.net>,  Ulf Hansson
 <ulf.hansson@linaro.org>,  Rob Herring <robh@kernel.org>,  Krzysztof
 Kozlowski <krzk+dt@kernel.org>,  Conor Dooley <conor+dt@kernel.org>,  Kees
 Cook <kees@kernel.org>,  Andy Shevchenko <andy@kernel.org>,  Daniel Golle
 <daniel@makrotopia.org>,  INAGAKI Hiroshi <musashino.open@gmail.com>,
  Christian Brauner <brauner@kernel.org>,  Al Viro
 <viro@zeniv.linux.org.uk>,  Li Lingfeng <lilingfeng3@huawei.com>,  Ming
 Lei <ming.lei@redhat.com>,  Christian Heusel <christian@heusel.eu>,
  linux-block@vger.kernel.org,  linux-doc@vger.kernel.org,
  linux-kernel@vger.kernel.org,  linux-mmc@vger.kernel.org,
  devicetree@vger.kernel.org,  linux-hardening@vger.kernel.org,  Miquel
 Raynal <miquel.raynal@bootlin.com>,  Lorenzo Bianconi
 <lorenzo@kernel.org>,  upstream@airoha.com
Subject: Re: [PATCH v4 5/5] dt-bindings: mmc: Document support for partition
 table in mmc-card
In-Reply-To: <66fa9810.050a0220.3b136f.bc29@mx.google.com> (Christian
	Marangi's message of "Mon, 30 Sep 2024 14:22:32 +0200")
References: <20240930113045.28616-1-ansuelsmth@gmail.com>
	<20240930113045.28616-6-ansuelsmth@gmail.com>
	<87y139jpx5.fsf@prevas.dk>
	<66fa9810.050a0220.3b136f.bc29@mx.google.com>
Date: Mon, 30 Sep 2024 16:00:10 +0200
Message-ID: <87ikudjl79.fsf@prevas.dk>
User-Agent: Gnus/5.13 (Gnus v5.13)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Christian Marangi <ansuelsmth@gmail.com> writes:

> On Mon, Sep 30, 2024 at 02:18:14PM +0200, Rasmus Villemoes wrote:
>> Christian Marangi <ansuelsmth@gmail.com> writes:
>> 
>> > Document support for defining a partition table in the mmc-card node.
>> >
>> > This is needed if the eMMC doesn't have a partition table written and
>> > the bootloader of the device load data by using absolute offset of the
>> > block device. This is common on embedded device that have eMMC installed
>> > to save space and have non removable block devices.
>> >
>> > If an OF partition table is detected, any partition table written in the
>> > eMMC will be ignored and won't be parsed.
>> >
>> > eMMC provide a generic disk for user data and if supported (JEDEC 4.4+)
>> > also provide two additional disk ("boot0" and "boot1") for special usage
>> > of boot operation where normally is stored the bootloader or boot info.
>> >
>> 
>> This looks quite useful.
>> 
>> Could this be extended to also be applicable to the four "general
>> purpose" hardware partitions, i.e. what is exposed as /dev/mmcblkXgpY ?
>> These would often also contain some fundamental boot data at various
>> offsets but also, as for the boot partitions, often without a regular
>> partition table.
>> 
>> The eMMC spec consistently refers to the boot partitions as "boot
>> partition 1" and "boot partition 2"; the boot0/boot1 naming is kind of a
>> linux'ism. Similarly, the general purpose partitions are _almost_
>> exclusively referred to as 1 through 4, except (at least in my copy),
>> the heading for 7.4.89 says GP_SIZE_MULT_GP0 - GP_SIZE_MULT_GP3, but
>> then goes on to describe GP_SIZE_MULT_1_y through GP_SIZE_MULT_4_y. So I
>> wonder if on the binding level one should use partitions-{boot1,boot2}
>> and, if implemented, partitions-{gp1,gp2,gp3,gp4} ?
>>
>
> Just to make sure, they are exposed as disk or char device? This is the
> case of rpmb.
>

They are block devices, just as the so-called "user area" (the main
mmcblkX) and the boot partitions.

> Adding support for this should be no-brainer as it's just a matter of
> more case of the strends and more regex case on the binding.

Yes, that's what I thought as well.

> I also notice the conflicting names, to adapt to JEDEC naming I will rename
> the property to boot1 and boot2.

Thanks,
Rasmus

