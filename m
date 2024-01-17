Return-Path: <devicetree+bounces-32705-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B50D283036F
	for <lists+devicetree@lfdr.de>; Wed, 17 Jan 2024 11:21:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C57D51C22E01
	for <lists+devicetree@lfdr.de>; Wed, 17 Jan 2024 10:21:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 013111429A;
	Wed, 17 Jan 2024 10:21:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="owr485wz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FDFE1429C
	for <devicetree@vger.kernel.org>; Wed, 17 Jan 2024 10:21:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705486872; cv=none; b=eYIHtBCI/Si5PrajueHaV3Dc9dedG0aWIiUNd4FJzJgigX+wECPsZmaqnM1UTlc1jYW7wAzSeSH0QaO1d9k93AndpesJ5Ajl5kyNS25XQoP0BpYrEt9npIuhWSVWCufg0q7DKpVjorUE4XITOGPmRfbtst7PuRiXrUV4qg6otc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705486872; c=relaxed/simple;
	bh=fA8fOIDmpDf6O1sgGqy94Z1yqgjC5fUGvhAPgezy1N0=;
	h=Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Google-Smtp-Source:X-Received:Received:
	 References:User-agent:From:To:Cc:Subject:Date:In-reply-to:
	 Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding; b=lfRjOIBdZkRXoW1SLyUzfNs3EoWeve5RLbRYvggZ3/p3EvFk/cTxoRbXVMq20QEmYN+epswLQWDLaIHgdOqMQq1eCvzI/aEEO+1UmTLGqmmxcUdo4YY/GY+L7UGDUpJmltLd3MgRKRIy5gn7FtIDD76avGw8t8Byyp6IsIDtj5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=owr485wz; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-40e883287baso7111555e9.2
        for <devicetree@vger.kernel.org>; Wed, 17 Jan 2024 02:21:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1705486867; x=1706091667; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :subject:cc:to:from:user-agent:references:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5mSVG7D4F/4/rMlg7YZmDmtDRH4U8gyyZuRonzPy+H4=;
        b=owr485wzoOgCgR7SlEzjfEy+Cl+cdj/22FfX4CcxSFSHtx6Dt5iAJWgkJ0q5VZ9vgr
         fs7rgRtaCBVN6c42pRwbYb8evWjvVvU3jLcYijFTgLSqyD7vsjSQv1US48gLqli2zy7o
         sl2nLgXJh+kTaivTGzjvSvkHGKPOSd2xcUPuLxd75bGf2zurL7wwL9l11ceCVYHhu68w
         705aJgy0G0wQ/dztCtwdFlPA35w1xzpdIey9R5kLsb3qL5K6VgQdN+dVs0IPnEuIsD/p
         4yALn3JWFMKsLSs6wqC8SE0pSMLj/O3eTYZy9Pb4C7KFFkzApvdDILDlbuOPWRNQDlGI
         oW1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705486867; x=1706091667;
        h=content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :subject:cc:to:from:user-agent:references:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5mSVG7D4F/4/rMlg7YZmDmtDRH4U8gyyZuRonzPy+H4=;
        b=I66dcCzlEDUbkU1oNq8wqWJl6pH2pFYyWZirr/SODafpSRvya0jAnSlrSvO6lUi9qj
         FRaw2iUqIb2Yyf0e6NFiui4ivJtrxmEB5E0cgeigHPgm7+RRYEsr7mRPtN9bwA4ymG8g
         2vMd0xbVuzoR/hQFD0dZMJi/Nl/II4vzMhR8lOw/HJ5+6NQNQR+xi5pyTBrNUZnfryPu
         Oupt11aU9wHCYwgR4tCR/7Q0rszWNWSsMXqr+gNgk7GISLsStUyOByMndfwzyVOxFXnw
         s4BdDJ+iWfx8nPww9/Hc8z9nMW02+r88GjGn1gcMGm/ISEC/zsqyheDrKoco8wrRO7F/
         Pp5Q==
X-Gm-Message-State: AOJu0YzNxK4S7kykK1cce/KiEiQd1xX2mfivLPhBtwHBrDLJUM49W1L6
	TBLQhJkPLNHmMvmSzBlmKIBbuaUjS7thOA==
X-Google-Smtp-Source: AGHT+IHkPtaUfaJlpb5rgGajtKU+P5rzVz0YPS17UdzuHDV8aXYHDcinmlVZjk1+b215qJd7ggkx8A==
X-Received: by 2002:a05:600c:22cc:b0:40e:3dcd:2e24 with SMTP id 12-20020a05600c22cc00b0040e3dcd2e24mr4695637wmg.180.1705486867325;
        Wed, 17 Jan 2024 02:21:07 -0800 (PST)
Received: from localhost ([2a01:e0a:3c5:5fb1:c1f6:14ce:b96f:2df5])
        by smtp.gmail.com with ESMTPSA id v13-20020a05600c444d00b0040e526bd5fdsm1894578wmn.1.2024.01.17.02.21.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Jan 2024 02:21:06 -0800 (PST)
References: <20231222111658.832167-1-jbrunet@baylibre.com>
 <20231222111658.832167-3-jbrunet@baylibre.com>
 <4rdb2be2bfzak3s4uaizthcdcdwdrxnx4kr2sgn527hvsie3pb@gfqciim7yryz>
User-agent: mu4e 1.10.8; emacs 29.1
From: Jerome Brunet <jbrunet@baylibre.com>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Jerome Brunet <jbrunet@baylibre.com>, Thierry Reding
 <thierry.reding@gmail.com>, Neil Armstrong <neil.armstrong@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-pwm@vger.kernel.org, JunYi Zhao <junyi.zhao@amlogic.com>
Subject: Re: [PATCH v4 2/6] dt-bindings: pwm: amlogic: add new compatible
 for meson8 pwm type
Date: Wed, 17 Jan 2024 11:16:31 +0100
In-reply-to: <4rdb2be2bfzak3s4uaizthcdcdwdrxnx4kr2sgn527hvsie3pb@gfqciim7yryz>
Message-ID: <1jfrywxnu5.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


On Wed 17 Jan 2024 at 10:58, Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutr=
onix.de> wrote:

> [[PGP Signed Part:Undecided]]
> Hello,
>
> On Fri, Dec 22, 2023 at 12:16:50PM +0100, Jerome Brunet wrote:
>> diff --git a/Documentation/devicetree/bindings/pwm/pwm-amlogic.yaml b/Do=
cumentation/devicetree/bindings/pwm/pwm-amlogic.yaml
>> index a1d382aacb82..eece390114a3 100644
>> --- a/Documentation/devicetree/bindings/pwm/pwm-amlogic.yaml
>> +++ b/Documentation/devicetree/bindings/pwm/pwm-amlogic.yaml
>> @@ -21,23 +21,35 @@ properties:
>>            - amlogic,meson-g12a-ee-pwm
>>            - amlogic,meson-g12a-ao-pwm-ab
>>            - amlogic,meson-g12a-ao-pwm-cd
>> -          - amlogic,meson-s4-pwm
>> +        deprecated: true
>>        - items:
>>            - const: amlogic,meson-gx-pwm
>>            - const: amlogic,meson-gxbb-pwm
>> +        deprecated: true
>>        - items:
>>            - const: amlogic,meson-gx-ao-pwm
>>            - const: amlogic,meson-gxbb-ao-pwm
>> +        deprecated: true
>>        - items:
>>            - const: amlogic,meson8-pwm
>>            - const: amlogic,meson8b-pwm
>> +        deprecated: true
>
> I think deprecating the old binding and adding a new compatible should
> be done in two commits.

Hi Uwe,

There was the same comment on v3 and Krzysztof said it should be done
like this:

https://lore.kernel.org/linux-pwm/e127dcef-3149-443a-9a8c-d24ef4054f09@lina=
ro.org

I tend to agree with Krzysztof on this but, as I previously said,
I don't really mind one way or the other. Just have to pick one.

>
>> +      - const: amlogic,meson8-pwm-v2
>> +      - items:
>> +          - enum:
>> +              - amlogic,meson8b-pwm-v2
>> +              - amlogic,meson-gxbb-pwm-v2
>> +              - amlogic,meson-axg-pwm-v2
>> +              - amlogic,meson-g12-pwm-v2
>> +          - const: amlogic,meson8-pwm-v2
>> +      - const: amlogic,meson-s4-pwm
>
> Best regards
> Uwe


--=20
Jerome

