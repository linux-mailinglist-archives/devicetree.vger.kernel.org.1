Return-Path: <devicetree+bounces-274791-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QHkHJvwUs2mDSAAAu9opvQ
	(envelope-from <devicetree+bounces-274791-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 20:33:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C21D2780BE
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 20:33:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B527630B3DB4
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 19:31:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 146CF402443;
	Thu, 12 Mar 2026 19:30:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com [209.85.210.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 921F1402420
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 19:30:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773343851; cv=none; b=a93nXrIXIcbp4KNsBhNRLOxIDTvM7cRr78L1V+mA+r9nN5IkXBGyQ3oAX3L1tGZHGuC17NnUwuBE9ayaf+xe+fPN1NcIM88e1LSO+nrJObAliXkEc7CxrZKNnGfb0/A0mKRUxbckntvvgbWH/43jMoPf+wv4ECfkQXQ2yawhAZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773343851; c=relaxed/simple;
	bh=y7Ic8SkZEutrwZjF9wbUzch2Yj6Ry/4aJx/GuhaJsnQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=O95pDe6iqeaIj/PpQNQ03Fk+Xr/nCWGTrh6tOEv56kEFBZ0HpQTNuobBeVQExTxhl54SmFqfCo08XJf9lya+/yhfBGv8tr0tKLFewEiufQrtOdKEI3f8KsoGLaaUyu48FQ10UTuq2cZ59Uj6W1kLwFM9ecyoWi7kubRUUmj/PYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=gompa.dev; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.210.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=gompa.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f44.google.com with SMTP id 46e09a7af769-7d76c145ed9so1485501a34.0
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 12:30:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773343847; x=1773948647;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=nwiFGJRSfB6hzdknB7fn9cdgGxf64BtP9o6kcYSkeQ8=;
        b=VS38kuZSs6LSSyXwqgCX5sVXfCfSttq8wW5O5jPsPoU6mTjicquduSvG/gNInFFlmp
         hUqo1iTz54BS2pnfJ5v5XHe6LwdPTXxEtouNChJSp8vMydzlAklbdX3Qv1JdNCQwxYjq
         eJRBncP6+QqK6tKABtY8gXXgc9rlOr/MJJLzQYcwrebwQ4gc8ZexAlQX/8SHvIPOkpOf
         YnuS/lOD8bj5N98s3BD/pX7OMKLBsKCX8ml0TjVAm9fdS+20bE+T84lzqAYzH28lgZOy
         ip1/5aQdQlVr3bdq7zx3RSQXhMf4gD5ohXjZLk9sPVUdiqTVJVyqJag0oJvYRnH7/Fo/
         f8hQ==
X-Forwarded-Encrypted: i=1; AJvYcCXj7ynJ1NVN+lWMpg8ur8bP0HOTIASQ5e3v3SsrHJEBJARdIc3GqV0NfY0OaXix2bAqrvosz3QuLARx@vger.kernel.org
X-Gm-Message-State: AOJu0YwQ4KiYYMTSNozvyRWMeomQEdnDiLn4/llkfEV43atd0eK2lU91
	K+1gMzQGTmSp8FTiRU8Y8XGEf5aSYA3zMvn4ZyCJQ265F5pu/ZbjPsj0NR8r5A==
X-Gm-Gg: ATEYQzxEX9Ex9xoRtyt+2EsmEdG8TH3dUc0LJ/ISY71/4cp9XM3YvN8rE7ZKqw3i45L
	vSMM16oAQzlh0tSa/uTnSgMzjIraPHiFULkauBcq2MDG418QOhOhWhLwt3ooqk1PPMTgaBRsj4j
	yHRuVE2iIdbhisxPcfTH2leatESRuZITkGqiQDrW5QxBwf+aykM2b5kJV1OwNjCsl1hmT0b6no8
	1PtiqwPaV8wHdaxwLkhjNeUxGKNafBrq2lJkRM8Gp5j32ViOCYQ8+9Q2lKNhXv9ibEehjXQjhzv
	VeT3ieer0iwoPkq7SHQoSpJmp+qijBDa413w61WhRKduYPinGWWykKFN93rWI7gav/f+gpNHjCH
	MN41BAZuQSDCIQC/LfbehceWV31LhjD9iKoMM8K+8TOD3kBwnS+GtjgiUK3VBkYmnheVlgFKmrW
	HVT9yYcWn5EItQaQCLJ/5mY9qqWUTAF/eKIVhREQp/AEBNYzqW0CAB6kklt5Z5Seq+WS0R6jZ6s
	R8Yvzz4oENNfhXP/LeKV6xGuRuqyyurxB7Gy15r2rcOHDsKcSvSJfZt7W+1ziTgdMv/7W6Ujw==
X-Received: by 2002:a05:6820:81c8:b0:67b:bc25:2670 with SMTP id 006d021491bc7-67bda9c891bmr381659eaf.26.1773343847285;
        Thu, 12 Mar 2026 12:30:47 -0700 (PDT)
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com. [209.85.210.50])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-67bceb88b47sm2421013eaf.7.2026.03.12.12.30.46
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2026 12:30:46 -0700 (PDT)
Received: by mail-ot1-f50.google.com with SMTP id 46e09a7af769-7d556c1a79eso1553574a34.3
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 12:30:46 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVnGUGyUvn2rrxPliyArwOVZCLZSyhzy0rf/nSQSYwVjrvjt5jfmsg3dlgnDZIpoLK/MzIROd9Y30Rs@vger.kernel.org
X-Received: by 2002:a05:6830:6508:b0:7d7:44f2:cf6 with SMTP id
 46e09a7af769-7d782574aadmr414436a34.22.1773343846017; Thu, 12 Mar 2026
 12:30:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <2838895.vuYhMxLoTh@fedora>
In-Reply-To: <2838895.vuYhMxLoTh@fedora>
From: Neal Gompa <neal@gompa.dev>
Date: Thu, 12 Mar 2026 15:30:09 -0400
X-Gmail-Original-Message-ID: <CAEg-Je-KwNNGoi3mpPeNq3Jmtzj_5seuj1Qeh2_1dt994iCJSA@mail.gmail.com>
X-Gm-Features: AaiRm53c1qZCB280A2IGi5tKHEffuGeO3K6uS7gw8tLpnvn5EhoDD4Js_TJQtX8
Message-ID: <CAEg-Je-KwNNGoi3mpPeNq3Jmtzj_5seuj1Qeh2_1dt994iCJSA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: apple: fix spelling error
To: Axel Flordal <axel@flordal.net>
Cc: Sven Peter <sven@kernel.org>, Janne Grunau <j@jannau.net>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, asahi@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[gompa.dev];
	TAGGED_FROM(0.00)[bounces-274791-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neal@gompa.dev,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[11];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,gompa.dev:email]
X-Rspamd-Queue-Id: 2C21D2780BE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sat, Mar 7, 2026 at 5:29=E2=80=AFPM Axel Flordal <axel@flordal.net> wrot=
e:
>
> Change "configiguration" to "configuration".
>
> Signed-off-by: Axel Flordal <axel@flordal.net>
> ---
>  arch/arm64/boot/dts/apple/spi1-nvram.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/apple/spi1-nvram.dtsi b/arch/arm64/boot/=
dts/apple/spi1-nvram.dtsi
> index 9740fbf200f0..d2720b307774 100644
> --- a/arch/arm64/boot/dts/apple/spi1-nvram.dtsi
> +++ b/arch/arm64/boot/dts/apple/spi1-nvram.dtsi
> @@ -2,7 +2,7 @@
>  //
>  // Devicetree include for common spi-nor nvram flash.
>  //
> -// Apple uses a consistent configiguration for the nvram on all known M1=
* and
> +// Apple uses a consistent configuration for the nvram on all known M1* =
and
>  // M2* devices.
>  //
>  // Copyright The Asahi Linux Contributors
> --
> 2.53.0
>

D'oh! Thanks for the spelling fix!

Reviewed-by: Neal Gompa <neal@gompa.dev>


--=20
=E7=9C=9F=E5=AE=9F=E3=81=AF=E3=81=84=E3=81=A4=E3=82=82=E4=B8=80=E3=81=A4=EF=
=BC=81/ Always, there's only one truth!

