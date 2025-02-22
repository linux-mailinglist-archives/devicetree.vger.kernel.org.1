Return-Path: <devicetree+bounces-149901-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 484A8A40BE2
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 23:37:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 094CA17DA46
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 22:37:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B09421F0E47;
	Sat, 22 Feb 2025 22:37:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iTCwvpZN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1A112AF04
	for <devicetree@vger.kernel.org>; Sat, 22 Feb 2025 22:37:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740263825; cv=none; b=RHsgqYJ+kTeufiqHdTMiEQXIjDxEnC2GxIw0HLi/dTMMuGQOhgqgCV8YQ2DNyR5NYK89lKpiHtTAee8lVBSYVDfaVLlpwMwMM8Wdrp3oNTLUfxIfM8zv+Xvz6dIP94vyfPqIfbJd7J2ML9+i/C71TUswHdUSpoLVrpyugoccddo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740263825; c=relaxed/simple;
	bh=2/GVEbxQ97fbkhIcJUEnqr5o5JOI8aPTh6cyD4iHKT0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=a8bZwurgrwUyp792YsJtyo9S72APv57zKU1yrQAKklJsPSk0jS4O6zymxbjxkNqIfMFMve1t3BJliydvtNH/CMmBpfDnugsA3cfNGNzDf9+zjpbqqnMRUjer87O4dCVRtfvnLZrClBwxek4GGawLHOKGeYbawUA5nJKR9sjuuyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iTCwvpZN; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-438a3216fc2so31401825e9.1
        for <devicetree@vger.kernel.org>; Sat, 22 Feb 2025 14:37:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740263821; x=1740868621; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2/GVEbxQ97fbkhIcJUEnqr5o5JOI8aPTh6cyD4iHKT0=;
        b=iTCwvpZNWcofQrZ7s0HE+fSBK1MX0DGUKJElUJ8g7si7NP5hlcEQxVuJT+njcsn8vy
         LKQ60tdGndJs1SPHnO0OkN7cv862iwP6lqUwhoHScI67oKg53kTX9diT1AL8FhJCb2Pk
         xnmYvXgvzp6TUPsHXa7krO7jo91Zrt/ZbwNcRRV6t4b2EJhkKtEaX6CWhuY02IHv4zOP
         LifP2S9ygP6k6N4As0F7RWouuQLzcir6lDv2N7GFLIM3ApHgqpBrFPK/DbBQMUDbg5a3
         SH1IaDMIenapwZ9m5WuOh/xz0ysulsfy4b1/S7X8KZlYr30uo+Gy3aCXd38o635OcsSE
         NS9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740263821; x=1740868621;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2/GVEbxQ97fbkhIcJUEnqr5o5JOI8aPTh6cyD4iHKT0=;
        b=sOXbr3DE48x6cpKG9GGVAOHSTSGttPQlfaEj6PWso1hXQx3wbcEJQy4qBVLsCSjcI1
         OkGsEzlYggPHqGdheFonkLuNJ6FO1O6NpSr8BsElDS6+XG8Y7h8f6yWQ7LOrNlmASOG1
         Xzo/aAvxuswxe8TQ6++4EiD+SiP6KMzPf+IhFzpoKgEW7hHkj6zJBh/sov64U2xG0gCm
         be62v7p6EWQ1kFHiYm12k9MAzsve/cf1hwTQr7+cjAbtClWxe+ekJIsf6aJGyHe1/jv7
         LlQkbQmhdmeLOX4l8oay3neX7zECKvhV4Lmt752dFCqwA9IRsDGoQfnZ+bQdcG1P9GfC
         NfCg==
X-Forwarded-Encrypted: i=1; AJvYcCWPBwWsVMsn2ZeM6gR0gctIONUeq9PddyhGpHN3HcbmfaMDqwnE6G/Gu0p7ZZKpjMlQQ/m7/gYseJaJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yym1AFknTzTkUCDi865f4m/0HPy2mSMfnQsXuzEB2OVwM73w0OE
	xq2bGOGpV5BxKqbPrKxFcA5rkRKjw/f/lojubwPEFUJ/jP0vKw1xlQ8D8TJ1ZFqB4HorDjPMiDa
	U6P+Km+BXOJ6Vhx31kM7Wl9XSpcbO0MhW4GCfmw==
X-Gm-Gg: ASbGncsG2TAT9B96AKaaINxd9BIil8Pz/LUtQ2EoyYeCqOUGSlNlft79OlDXjmbrfoB
	vWyrS/0QK/jjnDEd540PW4NcStp47Cxhnppw0WU0mfO8lortRFEFFe4e24FkwZShibDzXwAenZr
	AZd8ZVJoHmd0TFtH/sLM7yxzQVLQfxCH25AtAyL8A=
X-Google-Smtp-Source: AGHT+IGHmpDWi6/WtmtOBhBVoA+cMa1qycvf3lB7IeXFUX1UY4PKgFEcR3pytfVzteR2rj111qNX0UWQpuYrewIJGhQ=
X-Received: by 2002:a05:600c:5489:b0:439:86fb:7326 with SMTP id
 5b1f17b1804b1-439aebb5558mr53829545e9.22.1740263820918; Sat, 22 Feb 2025
 14:37:00 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250222193332.1761-1-honyuenkwun@gmail.com> <20250222193332.1761-5-honyuenkwun@gmail.com>
 <20250222211820.GY16911@sventech.com>
In-Reply-To: <20250222211820.GY16911@sventech.com>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Sat, 22 Feb 2025 16:36:50 -0600
X-Gm-Features: AWEUYZl7mqFGT6hL26BmUv2bUvBOH_-pwsfvZ96RvVOY1DCUAzUtL_VvJwDEiN0
Message-ID: <CALWfF7+82pkOhqpRxCzPMhvdV6_e9o4UGixWMvwj2gStQ9PgLw@mail.gmail.com>
Subject: Re: [PATCH v7 4/5] arm64: dts: rockchip: Enable HDMI1 on Orange Pi 5 Ultra
To: Johannes Erdfelt <johannes@erdfelt.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Feb 22, 2025 at 3:18=E2=80=AFPM Johannes Erdfelt <johannes@erdfelt.=
com> wrote:
>
> I've tested this patchset up to this patch. I unfortunately don't have a
> way to test audio on the HDMI port currently.
>
> All of the issues I had previously are fixed in this patchset.
Thanks for the verification. Will you be sending your Tested-By: for
patch 3 and 4 then?

Jimmy

>
> Thanks for the work in putting this together, especially without access
> to hardware.
>
> JE
>

