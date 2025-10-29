Return-Path: <devicetree+bounces-232721-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 271FCC1AABA
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 14:28:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BB9731AA5290
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 13:21:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 389352C0F72;
	Wed, 29 Oct 2025 13:14:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="hlOtlWVn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D846A2C0262
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 13:14:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761743645; cv=none; b=PHDeQ0fAmgwK0mseR7daCW/ZesBL0RVX+hcYpaT8CsZtGigMtfdxnwXOs5bhLSgJ2ffcGnfhS0iJtSAOj2ET/EIUqbWg6URhUWQmnqg/QMT6Ui9oeDPwkWpJ3Z62z6/rX8vbEqZDznynn3HS/zekF3XcezYbx+3eQpptMYemwjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761743645; c=relaxed/simple;
	bh=HXh8XVhftIlOuBLfg8NVk9leceRLV9HU/K4pAv4S7GA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=UG9lvFvxmObEgR/OZ9AtsAIMM9T9tA+sSPK47+W30/1YHU5u0BSh9Q0YeEqE5DxvjWaA8nRMCJp1ZV8x/ALIF1OyzhXGFTFpbRLxEP4MIOyYFYiGNDnflzgJhqRmjFiQQ889nz+Uj46s+ow4MqNLcVi/IBBr+DzDV35Tbn9eisY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=hlOtlWVn; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-3717780ea70so92995581fa.1
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 06:14:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1761743641; x=1762348441; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cqA6GSygQlCbGGE92uS1aB1PWjkaAYd841Sg4SieyII=;
        b=hlOtlWVnpwS3XHlygstKeC9HQVK9qNA2JkqB1DjoDbBqjJI28RY8aBgzwcu5zobn6v
         sjQKZ51sZzwj9Yo3JpjAfR/gZAs04ZPoLxvUkc0MZf4YpTU9O0erq77GdSZybw37WnP7
         IfJ5EgphNSGdC4Kr55/1gLYQkQ2fb+iRbNM4z7fVFcxL5D0bt72gcgGRbSX1tc4Pz0He
         f4lSbcZRI3eg6XPKLdtuJiQ+PJAuk5eTwYBfPhc8LP4zZtl2al59/lFALKr+pI86Jqow
         isqLqslnToa664tkOsZ4Texuq9tE6N7j0k/gFF8LE/O0HEo88CCre1sa+lOpNVE/vQ9A
         rZQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761743641; x=1762348441;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cqA6GSygQlCbGGE92uS1aB1PWjkaAYd841Sg4SieyII=;
        b=mVaXrIL7ixxSNspwY5Q7UTw5i45rqV78m3cbLKHfYKDDil9DxruMa72O+qQ4D7IkGO
         5RvU7e9eXWeVbD3wvLgixrTqhRi43c3k4Kn6oI+KQgqZnyGnx5d344O3cYo6qx7WK/Hq
         kSgJrly7axoB5n72Np3mWZICoRS+l9RM3aO0iiPnus1isItzr9sTGyTJqoW1sc45Vl3R
         NvpXN/MfQeyg4PGm2YxVSgfvHqs3mOofRE3xe5sMWhr6+1ZAprzRnPBOadaKR/q4Ts1Z
         1varkXenIVZFGy3qWg2ncY2JjCyVJfTjdztp6t8Y49aqVF7OchWPM2KaoZUFmmiaea0a
         ej5A==
X-Forwarded-Encrypted: i=1; AJvYcCWAwYq4M9d5kZi/4ettN/xQvTbTFaqKLu3IonO9dkpy506roxJHFWX0m7ajQJ84iioiMvarLiREuC/y@vger.kernel.org
X-Gm-Message-State: AOJu0YxZCDE3mYmKBizfrZCaCN2MIhO0LoUgdZzDu8XjvSsPAtvNYEXE
	VwNc5oW92BjOWTUMTk6QUjgxPJgfmk4YP0zTGafHyjlcodKy8sjFvSVrDA2ld6MEcNJgMEyJ6R5
	+JTPigIVqkwwybidtHN9ETLTfndyLHBBLK3Ph6EFHJw==
X-Gm-Gg: ASbGncsX2afazLVUHgYTNL88WKGviapyOCzJZGmgAVoIBa7ktUoJOaaxYb4+u61gMHL
	XZvyOaG6ObX158J//32Jma3T2g6kkHqYatA8F+wncDIj6Qwe/rCQHhaFPTch/ekOv57uHX7jghK
	ZHDDswU5UayyaZOds7ETqdMbYvgbjeqevZTzZaeHvW9xYLDizI07Ki92nKXI2ev/zBcmf0LkQEC
	gRaiQdX337JXXOwd1KTEHIU3X3GnxCTsSnlmh8uL9MLvUZl70qnshWZc9AXCdBPfc6BShfOjamT
	j1eVpemOidhpPY/ZvRKU3o8kqwQ=
X-Google-Smtp-Source: AGHT+IEDeO7pOWXIiKISaidNbH4GhhTTnet358H+WU8HbsJA+qhtiRiRxFILoq29B6HEL7w4GKQI73DKFNYwKm/mQwI=
X-Received: by 2002:a05:651c:1107:10b0:36f:4c94:b583 with SMTP id
 38308e7fff4ca-37a052cfe5emr7976601fa.16.1761743640602; Wed, 29 Oct 2025
 06:14:00 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251029-dt-bindings-qcom-bluetooth-v2-0-dd8709501ea1@linaro.org>
In-Reply-To: <20251029-dt-bindings-qcom-bluetooth-v2-0-dd8709501ea1@linaro.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 29 Oct 2025 14:13:47 +0100
X-Gm-Features: AWmQ_bm2G7-iNhdxoXC19qDeGT6XRmVTZTDbAiHUQ68hSenSjedNVmrrWyCNe44
Message-ID: <CAMRc=MeGLUvyM5GGv=eFpKd8_KCcSOnfKXCtZqJwpTGuRTixxA@mail.gmail.com>
Subject: Re: [PATCH v2 00/11] Bluetooth: dt-bindings: qualcomm: Split binding
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Marcel Holtmann <marcel@holtmann.org>, Luiz Augusto von Dentz <luiz.dentz@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Balakrishna Godavarthi <quic_bgodavar@quicinc.com>, Rocky Liao <quic_rjliao@quicinc.com>, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-bluetooth@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 29, 2025 at 8:44=E2=80=AFAM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> Changes in v2:
> - Drop in few commits the properties (supplies) from
>   qualcomm-bluetooth.yaml which are not used by devices left there,
>   instead of removing them in final patch (qcom,wcn7850-bt).
> - Fix dt_binding_check error - missing gpio.h header in the example.
> - Drop maintainers update - split into separate patch.
> - Add also Bartosz as maintainer of two bindings because he was working
>   with these in the past.
> - Link to v1: https://patch.msgid.link/20251028-dt-bindings-qcom-bluetoot=
h-v1-0-524a978e3cda@linaro.org
>
> One big Qualcomm Bluetooth schema is hardly manageable: it lists all
> possible properties (19 supplies).  Split qcom,qca6390-bt to separate
> bindings, so device schema will be easier to read/maintain and list only
> relevant properties.
>
> What's more it messes up old (pre-PMU) and new (post-PMU) description in
> one place adding to the total mess.
>
> Best regards,
> Krzysztof
>

Thanks for doing this. I would argue that the deprecation of the
legacy supplies could happen before the split but that's not really
important and would probably be harder to read.

Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

