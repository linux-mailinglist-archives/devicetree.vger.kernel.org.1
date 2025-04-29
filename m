Return-Path: <devicetree+bounces-172065-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B2E64AA11B4
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 18:39:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9FEF87AC246
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 16:37:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8091E24633C;
	Tue, 29 Apr 2025 16:38:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=easyb-ch.20230601.gappssmtp.com header.i=@easyb-ch.20230601.gappssmtp.com header.b="a4FKzEKN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90661245019
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 16:38:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745944739; cv=none; b=OUaKfVwewU31kfc05DYR3UARxATtkZDqvsoCFmkrXnfpH0XWKIJWo0lh1thNPHfF6AZ0wWwbyVKJfBrNzLNQSs6b9hkXTqJqHpB4w/KDAWyFRWSanBuZL1JoUUaFULpxWyjcjIaYNCtVJgNwUjFQEV9qv6E2B9RyKY1HQu4AiSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745944739; c=relaxed/simple;
	bh=hR8Y+nK0cX/CZdCBzLn+W3sfxRoUxjFKeCQdBb+BaYs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bGMmC7bPgFK0OPqd5jmIOyZ15Cn8UmgLH97GMx8Fe76HrbkmlSWIVM+d6qmNBFu21FPm5OhZDvRM+lbcyc0O1gbuf8vxbVvF3U3HoSdZU7ViFenSq+RnPzFWFS7UVK7ibhbXq56x1qFOe8gIaKVKpXxwgM55UCWaQB73h7Oa/WU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=easyb.ch; spf=none smtp.mailfrom=easyb.ch; dkim=pass (2048-bit key) header.d=easyb-ch.20230601.gappssmtp.com header.i=@easyb-ch.20230601.gappssmtp.com header.b=a4FKzEKN; arc=none smtp.client-ip=209.85.219.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=easyb.ch
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=easyb.ch
Received: by mail-yb1-f177.google.com with SMTP id 3f1490d57ef6-e733cd55f9eso2301107276.1
        for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 09:38:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=easyb-ch.20230601.gappssmtp.com; s=20230601; t=1745944736; x=1746549536; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mKJPPGmtZ4Q4FEXLrbVF+XChkMZLyTXErk0JCwdy/xQ=;
        b=a4FKzEKN+YLks3QNu8GVGLGXipONF0ukBLVeDOqGDULOPB8dCvDeDGrOrnG2RF+Hbr
         yj90RDrwwu4hbJr0gZpboNQ6SlQ1zmGb/Tj+8KbTvpeG0HhlV0AzKjtIxG3p9pFcFyTp
         ifIAYzatPar1wSeTyGSSSr/NGndkUv9h4DG+tSibE0LLbjDpvGtNL3n1FhTPw8PYIYGA
         ltEM8zccIR10PxRsidosJwORNXUeRMb0vFCFzaXakK+eYN2UMH+Fa/RBVpgbZMqZuyNO
         T/7ZwWvxkJUCihGYXtlNRY2V2a03DMeuEPDaWouoIeRKqaxY1ily/jHzf8a8vNuyVUUn
         cypQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745944736; x=1746549536;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mKJPPGmtZ4Q4FEXLrbVF+XChkMZLyTXErk0JCwdy/xQ=;
        b=XvZuaA8IGe8+lrrTAQRoGQI8EElAMJWtAMenflxeoTC66LdI/lt3D6++qQP5g5EAxD
         lU9NC2sSErEfNVIAka3r82EZCz9JBVIGZgAvH21E8UKNi4jd7IxC3PzVXdqgtD0651DR
         3UT1qkLPhQm79oAiKlOwrrXPUYMbkBYb7l0LXFhusMyfuZQu/lrKq7Qyo03HLxxxNSMg
         g2/s2YwrjfU9xs5Ja+eSgSKpjODdGXCODJ7+cYF0Tmf+2cITziRK6S8HynCQHlsNLDlD
         s8j0NWEPg1032llDj92Jz20H9zgBroeFtB9Oe0aj2F0mKauVqNeNF1HLGBWylgC+aQ49
         GZQw==
X-Forwarded-Encrypted: i=1; AJvYcCXCDHRsbdZKXSjKDwxWKVRt3IX51SyPQeRd8CIS5OR0PKvGdH0pJDVZJegXftq/fjMwNm6UWcivwFYW@vger.kernel.org
X-Gm-Message-State: AOJu0YwcVHgbJah3cbCvE/xu/vS2qXyj+XlnxWD/8ST2EPAgKrUwTyrI
	LxiCm4K6W/x9OkGVGfJyYEF9N62GQ8H1vQbmpQiJabtQPadEgx6mshaRWqc80FTvlyLao8n1rvn
	PSbZOPRmuvBX63IjxhlQ/T2L5gIGrs78d4YSHCA==
X-Gm-Gg: ASbGncuWNd50RmLIvLrHEvoy/ho2Te9V2nB+Fx1O03QhPpR1eXTZrOxR0mXAKiWgYj8
	gMeSYKSajgM+4LsrZikNy8HpcHJGRlCNkuYwnEJImfB/3gnoMK6Dds7Om7+W5IbH2sKYV6KWH/g
	X3Y2eQRp7dvVIiEKvxrthlpj23gXlnpwBobUZvRzH9DPYg7YsjkdE=
X-Google-Smtp-Source: AGHT+IEBBaq5tsglGxhuINvv6IZSxaRI9dE1eDAka1Xuo1qsb8GlnVfNRulVXOsQNgsWdqejnZiq9iGFOJQ10Z6pJ+o=
X-Received: by 2002:a05:6902:154a:b0:e72:a02e:a797 with SMTP id
 3f1490d57ef6-e73511f984dmr5201544276.44.1745944736100; Tue, 29 Apr 2025
 09:38:56 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241107125209.1736277-1-michael.nemanov@ti.com>
In-Reply-To: <20241107125209.1736277-1-michael.nemanov@ti.com>
From: Ezra Buehler <ezra@easyb.ch>
Date: Tue, 29 Apr 2025 18:38:20 +0200
X-Gm-Features: ATxdqUHV5CP1dNwzjt8THrj9C95bgv7pJhkhoTGKgrCVvTrrD0jY5bAxDeZ-Gnw
Message-ID: <CAM1KZSnvDqUHd2ENKyaZc=WyRgL18TrsF766_ZJVeeAiPth+Vw@mail.gmail.com>
Subject: Re: [PATCH v5 00/17] wifi: cc33xx: Add driver for new TI CC33xx
 wireless device family
To: Michael Nemanov <michael.nemanov@ti.com>
Cc: Kalle Valo <kvalo@kernel.org>, "David S . Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-wireless@vger.kernel.org, netdev@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Sabeeh Khan <sabeeh-khan@ti.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Michael,

On Thu, Nov 7, 2024 at 1:51=E2=80=AFPM Michael Nemanov <michael.nemanov@ti.=
com> wrote:
> This series adds support for CC33xx which is a new family of WLAN IEEE802=
.11 a/b/g/n/ax
> and BLE 5.4 transceivers by Texas Instruments.

Thanks for going through the effort of upstreaming the driver.

We have started looking into the CC33xx chips (in conjunction with the
AM62L SoC) and noticed the following behavior:

# curl https://speedtest.init7.net/1GB.dd >/dev/null
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Cur=
rent
                                 Dload  Upload   Total   Spent    Left  Spe=
ed
  4 1024M    4 42.4M    0     0  2358k      0  0:07:24  0:00:18  0:07:06   =
  0

After downloading some megabytes of data, with reasonable speed,
something seems to lock up and no further communication is possible
through the Wi-Fi interface.

AFAICT nothing is logged, however, when I unload the driver, I see errors
like:

[16590.256433] cc33xx: ERROR failed to initiate cmd role disable
[16590.256446] cc33xx: CC33xx driver attempting recovery
[16590.256455] cc33xx: Driver being removed, recovery disabled
[16590.272950] wlan0: deauthenticating from ab:cd:ef:01:23:45 by local
choice (Reason: 3=3DDEAUTH_LEAVING)
[16590.784390] cc33xx: WARNING Unable to flush all TX buffers, timed
out (timeout 500 ms
[16591.296388] cc33xx: WARNING Unable to flush all TX buffers, timed
out (timeout 500 ms
[16591.808379] cc33xx: WARNING Unable to flush all TX buffers, timed
out (timeout 500 ms
[16591.816792] wlan0: failed to remove key (0, ab:cd:ef:01:23:45) from
hardware (-11)
[16593.840379] cc33xx: WARNING CONFIGURE command NOK
[16593.845172] cc33xx: WARNING tx param cfg failed: -5
[16595.856352] cc33xx: WARNING CONFIGURE command NOK
[16595.861159] cc33xx: WARNING tx param cfg failed: -5
[16597.872323] cc33xx: WARNING CONFIGURE command NOK
[16597.877079] cc33xx: WARNING tx param cfg failed: -5
[16599.888317] cc33xx: WARNING CONFIGURE command NOK
[16599.893069] cc33xx: WARNING tx param cfg failed: -5
[16600.400303] cc33xx: WARNING Unable to flush all TX buffers, timed
out (timeout 500 ms
[16600.912270] cc33xx: WARNING Unable to flush all TX buffers, timed
out (timeout 500 ms
[16600.920388] wlan0: failed to remove key (1, ff:ff:ff:ff:ff:ff) from
hardware (-11)

We can easily reproduce this behavior on our ATMDS62LEVM board in
conjunction with the M2-CC3351 card. We run a Yocto-based distribution
(Scarthgap) using the latest linux-ti-staging-6.12 kernel recipe (Linux
6.12.17+).

So far, I haven't tried to dig into this deeper. Any ideas on how to
debug this further?

Cheers,
Ezra.

