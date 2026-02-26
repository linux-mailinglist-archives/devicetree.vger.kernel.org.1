Return-Path: <devicetree+bounces-268639-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OL99HC74n2nkfAQAu9opvQ
	(envelope-from <devicetree+bounces-268639-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 08:37:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C99341A1E7B
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 08:37:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9633E3030EFB
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 07:37:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 914B738F920;
	Thu, 26 Feb 2026 07:37:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b="XaVSBYMS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C49138E116
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 07:37:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.45
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772091431; cv=pass; b=daJKM2qWvF1zAr4TDJoGyvlKFW2JVOOB4YAtW6MO848Mj5KazvhSTV3o+/KtFLVTMy5R6KyHKD1Q7kpfLcwSSD4UxYJ/bPlGYcLsJTQaZhmgZHGZ6BAb6eIOJXgn6dru1gS6c/QDPfFaQ2gYsQ2zTXkW4f+C73ve4Nhd2i1Twg4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772091431; c=relaxed/simple;
	bh=zMMoC9tW+ovG5gEv/EikKuLCdiFcENkonHNXGvJwtY4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=DIIXOWOCFr0k2u2mwcAcmLrXCEBisAEVb7njGOOq6zBxONFU+dy7vgviYNY1oygiWtuvka+1noPZQ0/Sn3bbg4FJ2RNzAaElyWP52tqfVLRHM+dxELU1qItZ29mnZEWsNsHkv5pW2Vh3868WrbWUvEhG48xvhEWWMlDZOKP8BKA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net; spf=pass smtp.mailfrom=flipper.net; dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b=XaVSBYMS; arc=pass smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flipper.net
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-65baa72399fso891137a12.0
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 23:37:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772091428; cv=none;
        d=google.com; s=arc-20240605;
        b=DpcpZZlzDa6d3bH/CHDBGqWIRe4WW/XzOuW9nQF79GMwOQMA0OCzwyXvoEdB9f2UAH
         8Ypgvo9D4EtQ9K5dqjJc2tsd/+WSgXmVUD4H+kjJVRYzp6k4kTLkHGNWlI5h3RApyjME
         0A5mblL6Z4EUKkYavdNd4sS7a/Q2phBAvXKrhVs9RIGLQW1YGkdqT9GYvxw6eC37l4AG
         4WUSyiz1/3BPPTenD9geY3K+XFD35z8LScxYyRUQNGtUOh55npKPCwPqJM19cjefnOSu
         hyVocYY9bS6TTR5wOWchMlQgrpFlrsG22mSJnuKrfsbFfe/3vqQe2WaaqhJJgvXO+o6n
         OegA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Sy5pSpIT1+34GDUf2p6GIfTrx9hUeuZulWhjNSVORZ0=;
        fh=3bhPK4+EiiUlgnBdpxgrRm4pg5xV/k9MushJ2YjhKwE=;
        b=agt96/ZFhU7SzkeR0kkw8lggKmWpiQZtAdi0hywMdNssgQUAO+ekoo5+97SvN1LwUh
         QSTENpxvxFvSrq1VCYbtmwzXjzuAwyd+vsoMOb2xDrzfwTbiZEQEvIf9E3tcp+4N5L/F
         0iL6LwdM0VT2AdFGSTQh9GxtWQV3MP13TpRd3VdYX5ljsZMDXFm5jMY9Ad0S6B9HjRpW
         NipxkvQsaY1CtSfNZV2/nXlupsTVPo5SeLgDlM62Vn9McG6IT1cC+yezHwl+bSlb6PVm
         mLJv3kRyXynMrIaHs3YfX9RLT4lI/KRJbDKlomyG//fE8uzvOC0BZi76P2x/94yn48ps
         t5Ng==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1772091428; x=1772696228; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Sy5pSpIT1+34GDUf2p6GIfTrx9hUeuZulWhjNSVORZ0=;
        b=XaVSBYMSAUm9nzMMq86NELNAi6N9riA8DiEAaFERPF3uqnbS7/3NFU7cDP40m2MKT2
         zLtusYZ3u0VWmwn9UueNQeRfuzN0PYurOM5hm/dPOMImUp4zNhCz0Fh8O/30Fd6iNRt2
         qlZ6qD4QUDS+KDp2F2hxPK+0kX7mZfw9S82pS76Z+/kBoh1IqIxDwrKn5vT5aBH727U4
         3l1qHH4Hw7g8mmY22EIZZXPFGC+Fo+ipLk//1s2t5Rft+xOuezKcMwBeHmz9Py74d2AL
         EmiZdjM9EiubBYnGbavfBP8mjfiWUg4IsIYUSLrfED5v18B9d8UvZT8h5t8AWtBEPB+v
         knIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772091428; x=1772696228;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Sy5pSpIT1+34GDUf2p6GIfTrx9hUeuZulWhjNSVORZ0=;
        b=i15LXWxcLgT1xDBCgkfAMbyDXLoq4PKIH5K/JMJcfffkhbLkspK9PQY+VdHbOyYAhK
         xbWd8BXNnxtANRO1J6Hr8W/zTnEMbfQCOfepSREHYxK8CWTS8Q1YkVEGeH45YPkRlIVN
         diQ6qzv9Jpg1IL7iQYDR0rDJNA5UlHQ2VijmmuFb8zAustAXGBuFP1e8GouJaYQ1OSC5
         SSXfC/uCMztA+Zpc7fvA6QoBy7QdkVid9+iHKbL9JPNQ9RR547mpOKoVjbFzUl15Ra51
         Ji/kacOUnPaL1GPZOBTJm6dS5gdCWjJ7sdm1Qw8UkLHABmHSUUvHFOR/fk8JtcpSYCnc
         BX1g==
X-Forwarded-Encrypted: i=1; AJvYcCUO6G4lU1qPoT29XTKiSFBI0VIod5zbsQxl/eiCCtuEYOtpAAL66FV5DtSFuFWql19v5sd0OOSjjo3v@vger.kernel.org
X-Gm-Message-State: AOJu0Yzgurs16LOSP43PHEcYPXxawE9STcM3ZaGJRMuwimD8i1G/b8Lf
	ox9ffpum1njbOa5kv5m5lbzjQX5ComFjdjOI5bSvEByF7eYe4jpriNRHn5JaX+88D1RfGLP+rVR
	3+2CbXwDQ6LW8kB9fzikn94RMer4ZF/oSQOHtaur5+w==
X-Gm-Gg: ATEYQzy9pfrKeOf59gWXlclrJphDC3e9B10FaUqW2ht/wn1qgPOB7k6YeUlayVpOa2V
	ZS0HoYZ/UfS1h9iSCKfpObGhQFyp74+HtViJmFRybkjBuVOPKiK1TCxtq8DUd1jlDO+ldK0E0Y4
	XwNydYY/W0vuDCeO6dUkB6eM7UqBGszP9iHHCkCFKI44qK58A2n7ZaZn26qLjHoyQFpatbGu1GZ
	HnGOpiDL111laRgP2umU934/HfwrOEUx9WjOy7hNl29XlHl20Zl42K8Hge6yvEhf+8YCVeKUCaN
	I2MLmw==
X-Received: by 2002:a17:907:1b10:b0:b90:bc06:2abf with SMTP id
 a640c23a62f3a-b9351492d3bmr217956066b.4.1772091428009; Wed, 25 Feb 2026
 23:37:08 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260225-ina4230-v1-2-92b1de981d46@flipper.net> <202602260418.XKPUlQmZ-lkp@intel.com>
In-Reply-To: <202602260418.XKPUlQmZ-lkp@intel.com>
From: Alexey Charkov <alchark@flipper.net>
Date: Thu, 26 Feb 2026 11:36:58 +0400
X-Gm-Features: AaiRm523uaAkpoMIzz0BIKHXKFT4QsucGv2thoPccSpDCoItrF8k9Gyi_Md5Wd0
Message-ID: <CAKTNdwEoHEKeRGvz=XoMT1RON3ud4rMrUW2oY0M5Uhx2z_gyCQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] hwmon: Add support for TI INA4230 power monitor
To: kernel test robot <lkp@intel.com>
Cc: Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Conor Dooley <conor+dt@kernel.org>, oe-kbuild-all@lists.linux.dev, 
	linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[flipper.net,quarantine];
	R_DKIM_ALLOW(-0.20)[flipper.net:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268639-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[flipper.net:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alchark@flipper.net,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,01.org:url,mail.gmail.com:mid,intel.com:email,flipper.net:dkim]
X-Rspamd-Queue-Id: C99341A1E7B
X-Rspamd-Action: no action

On Thu, Feb 26, 2026 at 12:33=E2=80=AFAM kernel test robot <lkp@intel.com> =
wrote:
>
> Hi Alexey,
>
> kernel test robot noticed the following build errors:
>
> [auto build test ERROR on 3ef088b0c5772a6f75634e54aa34f5fc0a2c041c]
>
> url:    https://github.com/intel-lab-lkp/linux/commits/Alexey-Charkov/dt-=
bindings-hwmon-Add-DT-schema-for-TI-INA4230/20260225-173657
> base:   3ef088b0c5772a6f75634e54aa34f5fc0a2c041c
> patch link:    https://lore.kernel.org/r/20260225-ina4230-v1-2-92b1de981d=
46%40flipper.net
> patch subject: [PATCH 2/2] hwmon: Add support for TI INA4230 power monito=
r
> config: arm-allyesconfig (https://download.01.org/0day-ci/archive/2026022=
6/202602260418.XKPUlQmZ-lkp@intel.com/config)
> compiler: arm-linux-gnueabi-gcc (GCC) 15.2.0
> reproduce (this is a W=3D1 build): (https://download.01.org/0day-ci/archi=
ve/20260226/202602260418.XKPUlQmZ-lkp@intel.com/reproduce)
>
> If you fix the issue in a separate patch/commit (i.e. not just a new vers=
ion of
> the same patch/commit), kindly add following tags
> | Reported-by: kernel test robot <lkp@intel.com>
> | Closes: https://lore.kernel.org/oe-kbuild-all/202602260418.XKPUlQmZ-lkp=
@intel.com/
>
> All errors (new ones prefixed by >>):
>
>    arm-linux-gnueabi-ld: drivers/hwmon/ina4230.o: in function `ina4230_se=
t_calibration':
> >> ina4230.c:(.text.ina4230_set_calibration+0x584): undefined reference t=
o `__aeabi_uldivmod'

Alright, I'm spoiled by AArch64. Thanks bot, I'll rework this part in
v2 to avoid the 64-bit division.

Best regards,
Alexey

