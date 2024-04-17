Return-Path: <devicetree+bounces-59925-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D20E18A7AD3
	for <lists+devicetree@lfdr.de>; Wed, 17 Apr 2024 05:01:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8DF06282A1F
	for <lists+devicetree@lfdr.de>; Wed, 17 Apr 2024 03:01:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D819C6FB9;
	Wed, 17 Apr 2024 03:01:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JjtC0VZm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 984F5747F
	for <devicetree@vger.kernel.org>; Wed, 17 Apr 2024 03:01:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713322867; cv=none; b=mpUuiUYejv/xKHlTPIEl1FPSWVlCQDvWpjXdcd309ie0Dlv0mIxNk9vnHHLflW7++7De49FCsubIY4FtXm+bbshsu2LqUlDfqbUFDKxIjuZ7B5X45rLXXpayYMGB62Ouxcw2XYSarmcDub+xS6AeODE545AOmKSi4+WjTcwB57A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713322867; c=relaxed/simple;
	bh=3dcef40osgm+WNL3Un0dMoU5Efciu1Hqwptf1yE7UW0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=DILr9o/gSL6RKHFeEszBc7G/+E4kv1F9XQPhQXsUb97o9Czzx1QTNSQrW8wrs+rv7AYG/oHrIw2Iy6okS3BOaqc61DzPvui93QTDuOId+CVANXPuJFpRCEBFfarNYqs74xWAzAmVJkGpakW3HvvLrj10/9mEYJ0Tp8UwS3/kRVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JjtC0VZm; arc=none smtp.client-ip=209.85.216.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f48.google.com with SMTP id 98e67ed59e1d1-2aa0f3625aeso715425a91.1
        for <devicetree@vger.kernel.org>; Tue, 16 Apr 2024 20:01:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713322866; x=1713927666; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3dcef40osgm+WNL3Un0dMoU5Efciu1Hqwptf1yE7UW0=;
        b=JjtC0VZmIkKSJbFFRExGyOu6LrLVwtbg11t5UB4F3T8q88MsPk9kfJ/cmXWE2HIXMk
         R2/7R5I1A8E+9Bm6by7cDixyxQ94U9Hs5NB1kcwHHgmbRWP8aw+tGyDk1Huq4C/CY53y
         N4MeML8JDP6HgGbhlWN8fvLKPAhJ6mREsya6pMwEa/wKlNnKlj9/ZSORiQAJUSlZKUvz
         ID3ydZKFuLeAhZzouQhdgIliIIY0x+5w0pOP1pa5Y39wIX8FG+RbZSwZvRayEhnJt1ow
         nX+6osVIswjEK1haiKcra7x3vcLzTCScywgxn1cltB02rd0tWOZ1nAtSKYXJxE13wAS2
         ktbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713322866; x=1713927666;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3dcef40osgm+WNL3Un0dMoU5Efciu1Hqwptf1yE7UW0=;
        b=bZFuLx9J5NZ0SuLlvImwyK4DEAzrgOiUG9EAWl0wdinzAzmyERhLE1KOEMXFYv+GT6
         PMG4cJvOhPUOJc+dyyxMDSYA9EOCGjEoVq7GQvjZYHCYZbFWQAIorYvDMOFONwxHwDy3
         92PI+IvKJfvBCTTXsYYdij8Qr0LhfGtS1zY8UFJtaAuIKE6EDnxZ4L/zg74OUnuggUTk
         /p90R61Icbw50n6H7O0UJsHZuaSlJRAiIwTFWFH75jbdheNxztD+sjE4+djSA8okP6Wr
         347wVV810lYeizB0+AZs2ns5lgPRXuLYRXFGdZYpui8+t1d6S97R7AnNA7QhPWyiLef0
         3zbw==
X-Forwarded-Encrypted: i=1; AJvYcCU4BU2/SIscIjP9MowQxs/MAp5u9+rnWj9ULHpT9/uXdzGdBFjFaeMwxkGS3/0DxiVJ5dsRPhPYPQE1Ka036AbFUk8vy7eDwNngjw==
X-Gm-Message-State: AOJu0YzCc6biQO+9URSSA0h+ArQkzKfzlrkGLnNMPPRFwc0O51vcBF23
	SNVnbwBPhzklVVRKe3mM5dLHzxEfzYlwUDD7AQaQDcHTMmgJERXB4axNFeC4yxzmps7RCW2v3Lo
	ek0xlCghxNdmfW10Yr+cSEZifSB4=
X-Google-Smtp-Source: AGHT+IGoFzpKM2GBjy2HLaM220rTX5lMUE7KlwkCXfWJFeox+mJNj88qw1rqVTQ7uBs6ir6T5i3BSgzeaV1+D2oly2E=
X-Received: by 2002:a05:6a20:8405:b0:1a7:703e:ee24 with SMTP id
 c5-20020a056a20840500b001a7703eee24mr18939600pzd.0.1713322865601; Tue, 16 Apr
 2024 20:01:05 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240416190659.15430-1-wahrenst@gmx.net> <20240416190659.15430-3-wahrenst@gmx.net>
In-Reply-To: <20240416190659.15430-3-wahrenst@gmx.net>
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 17 Apr 2024 00:00:53 -0300
Message-ID: <CAOMZO5BA0f9Y9knYm3MPbZ-t0=v2V3kkLTa7111tUndNep7moQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] ARM: dts: imx6ull-tarragon: Reduce SPI clock for QCA7000
To: Stefan Wahren <wahrenst@gmx.net>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, kernel@pengutronix.de, 
	imx@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Stefan,

On Tue, Apr 16, 2024 at 4:07=E2=80=AFPM Stefan Wahren <wahrenst@gmx.net> wr=
ote:
>
> Our hardware department recently informed us that, according to
> the specification, the QCA7000 should be operated with a
> maximum SPI clock frequency of 12 MHz. Even if it appears to work
> at a higher frequency, we should not take any risks here. A short
> performance test showed no measurable loss of speed.

Should this one have a Fixes tag?

