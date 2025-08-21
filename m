Return-Path: <devicetree+bounces-207160-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EC382B2EC4C
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 05:46:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A990F1CC471F
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 03:45:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75D9D2E7F1D;
	Thu, 21 Aug 2025 03:45:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="vSDGKzlK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7BFF2E7BDF
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 03:45:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755747909; cv=none; b=mOVbDmzmoUSglTCW9PtrqSu5uYOqC7JfctNHmpzkJjtIuve/EJ7blNLACWYl9K0Got9tUL/LsamGhZcfY3pkr/w8XyWTErBJvxrh3m71krsGWEPpKW5ZuvAT6qWQHSHH0eAMNPtHo0W+UNGK8XShRZPNu5O5zMd2MQtI69p6sMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755747909; c=relaxed/simple;
	bh=RXOpSrix9UpiXiqz3m7Asn7b5jcVM4AJa3WjZvLUE5s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=r6gWwCM4BNvrhJd0YQgWdZO9PKCqreMZdKV1a/LRR+Wl8IE8LCN9NzFOdkciw8D7sfN2GaH1qwwrH6xtmMMyOBsfoYAFnLM27GqqBAb3juEn3RT3llB5spgZPdTj++ZwTHVu/DvlueEVzZIRihkxRG9YBWkNswi89klSE3Pt3zk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=vSDGKzlK; arc=none smtp.client-ip=209.85.160.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-qt1-f180.google.com with SMTP id d75a77b69052e-4b109c58e29so9892071cf.3
        for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 20:45:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1755747906; x=1756352706; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fiE3Yh9HLu32nPRPAj9hq4fRnZM1rWhHLDD+Kq+cBWU=;
        b=vSDGKzlKWeLwMreXD8jleeS5BOU43kNmNgXnWGLhW+FfzhAxwrob/wL59l30vfEYg5
         /leo7lqRAO6BzcAXyhC0+sURW5GvHpjS9VEGcDNN2zVg38K96I+EYOzdKsfoak624bqT
         s65smWq6GEualbmAnSeGt4crXK3Xxa50+JHcZK64NKXUCVezLju+XsFoWtRMWGs/8Hml
         ua1oeP46JSFJwCNzZupna2UsbhLGN/Qfu7ZkPsYsH5wXDpkBiOZqQrCcOLVNgsaRqxs0
         Y3DJ+4hjYXyp7sa+i9O0NX8wOwQ9PqMQMi14zyFNTLi13CG6et6Wgv/q0XYD/SLakQNA
         E8zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755747906; x=1756352706;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fiE3Yh9HLu32nPRPAj9hq4fRnZM1rWhHLDD+Kq+cBWU=;
        b=kGzc2S1vCVs+rG3bC/7hpahszhueq9rKmoS61IHHQNdnDnyy0WXK+uW7OsS3m7SBfQ
         D5jq8OXuZMFV//Q5hkTTL/xZNehAs/63yckW/ZmnF8tIlcGqBOQGKwGxdSNEoLu8SlHQ
         jsAiAQ+Off7uAljGLq7HQdCADwU91XO/U9+Y6riPHiQMXCVgL2KibEiRxQdJz8t/S597
         m44ukETNrkzVCvCOc7/T5crXx8Ctu8p510sesUi1F8ADjTA37P9cgne5UnXVpHXcjfgs
         I9muGjRPPmv/4sO0DFp9g5egodeGLs6mi2m9sMck9SZ7hPb/6NxOaVh3s5dNK3+LooHM
         vpQQ==
X-Forwarded-Encrypted: i=1; AJvYcCUXKhvz+rx5XNLTlSEgKYbN5J/jdQWLEsMzdxCm5sVVcJ5gB8t/CtS+6dipQyjkSth8L/3ap7H7wlvk@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+qRd96oe9k15ddVRdmPabb3JPtjgwjAZcAr2/6zU0yD4j3lMU
	RdDy16UfrPyFKcPl9gCfpBHMUdGI2MWQMBnljbEBo4MvLNjw4wGkiBtDAMxbr+RkIU/ZHEXJF3i
	68ENL4fAbQzsczogjC5RWDgKcd6b0ryQhsUOdsCVo+Q==
X-Gm-Gg: ASbGncvS6j/4MmhzRHdflW36W7GihQGFhM2AwXu9eUq+OcL0Yy/YjnBtog0avCladGE
	IZZwhFam+3hliL9phqfgGepjulyq+iVWvle+NscqFTnFP4Bauu3Hyz+IqhDZp3Qx5r8jTo5mU4j
	seJ7yFhuiyDSRD6ZgWIgRULgvbwwBJtSMEHjom9l0fzMRod/dN/V4m6X9MD7yDB+et9Z0KJOpdm
	40vBg/q
X-Google-Smtp-Source: AGHT+IGXTyFK3xz+R36l9e+TJiI56LYwF4z978HRe+c4os6j/REG/pla7Tv4Hx3g5sKF9/0tCU9dcttqYEnmb5ZmnqA=
X-Received: by 2002:a05:620a:2991:b0:7e6:5ef5:8469 with SMTP id
 af79cd13be357-7ea08e80c18mr104986685a.63.1755747906598; Wed, 20 Aug 2025
 20:45:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250821031514.49497-1-yelangyan@huaqin.corp-partner.google.com>
In-Reply-To: <20250821031514.49497-1-yelangyan@huaqin.corp-partner.google.com>
From: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
Date: Thu, 21 Aug 2025 11:44:55 +0800
X-Gm-Features: Ac12FXxOPPOiZTgdG6dOtQKc4mxwM4nRdgfY0u6QqW8Rdf9SOc-Vt1HgddabZpw
Message-ID: <CA++9cvojHApEr0b5ZbRNVjYtWvCS8WmZ-mrGMDh5O9mp1fkT0w@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] Add tc3408 bindings and timing
To: dmitry.torokhov@gmail.com, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, jikos@kernel.org, bentiss@kernel.org
Cc: dianders@chromium.org, linux-input@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Langyan Ye <yelangyan@huaqin.corp-partner.google.com> =E4=BA=8E2025=E5=B9=
=B48=E6=9C=8821=E6=97=A5=E5=91=A8=E5=9B=9B 11:15=E5=86=99=E9=81=93=EF=BC=9A
>
> The tc3408 touch screen chip same as Elan eKTH6915 controller
> has a reset gpio. The difference is that they have different
> post_power_delay_ms.
>
> According to the Parade TC3408 datasheet, the reset pin requires a
> pull-down duration longer than 10 ms, therefore post_power_delay_ms
> is set to 10. In addition, the chipset requires an initialization
> time greater than 300 ms after reset, so post_gpio_reset_on_delay_ms
> is configured as 300.
>
> Changes in v3:
> - PATCH 2/2: Corrected post_gpio_reset_on_delay_ms: 100 -> 300
> - PATCH 2/2: Dropped Reviewed-by tag from Douglas Anderson since code cha=
nged
> - Link to v2: https://lore.kernel.org/all/20250820122520.3356738-1-yelang=
yan@huaqin.corp-partner.google.com/
>
> Changes in v2:
> - PATCH 1/2: Drop redundant "bindings for" from subject
> - PATCH 1/2: Improve description (describe hardware instead of bindings)
> - PATCH 1/2: Drop "panel: true" property
> - PATCH 1/2: Drop redundant description for reset-gpios
> - PATCH 1/2: Use unevaluatedProperties: false instead of additionalProper=
ties
> - Link to v1: https://lore.kernel.org/all/20250819034852.1230264-1-yelang=
yan@huaqin.corp-partner.google.com/
>
> Langyan Ye (2):
>   dt-bindings: input: Add Parade TC3408 touchscreen controller
>   HID: i2c-hid: elan: Add parade-tc3408 timing
>
>  .../bindings/input/parade,tc3408.yaml         | 68 +++++++++++++++++++
>  drivers/hid/i2c-hid/i2c-hid-of-elan.c         |  8 +++
>  2 files changed, 76 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/input/parade,tc3408=
.yaml
>
> --
> 2.34.1
>

Hi all,

Apologies for the confusion. The last series I sent was labeled as
"[PATCH v2 0/2]" in the subject, but it should have been "[PATCH v3 0/2]".
Please consider that series as v3.

Thanks,
Langyan

