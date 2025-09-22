Return-Path: <devicetree+bounces-220111-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 229CDB91F5F
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 17:35:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8FFCF1904E61
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 15:35:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6B4C2E7BB4;
	Mon, 22 Sep 2025 15:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="Vyhse1P0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB5F32E7BA2
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 15:33:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758555234; cv=none; b=j1jOdwedMPVx+GtAzCJaDYWhPLX0a1ykTpIWKCE/w2oZyPTiyItUhKbPo53zSAAAiDMybZDaV7s+pWogaOSWB4K8nZan2/74H/3JNh+XGTtmSqmPjNhCng5oHw+1hl7uYvJOAQOQwQnLceqLQG5MBxreJ9XnZBftNxuqLHni/bQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758555234; c=relaxed/simple;
	bh=ojYCHT6pXa+exxltZgESY7Zvtrqth85NG5vUjQjg5a0=;
	h=From:In-Reply-To:MIME-Version:References:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PnGbCNks9weUFX4DofmQrwvXzHdscdxslkzPrSlFUfpe6Z/gyYu18vv03LYUcPC0tRlBxw2qiY0cRhe5zCsSNdmtpg13AgVW+nKdwB/MhaE13hglPdVcQZaG66lZ2jPqb8JZQhFJkCQjF4WLP36rgXe9x9xUqSQb8AeFxf87bGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=Vyhse1P0; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-363be237227so30908271fa.1
        for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 08:33:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1758555231; x=1759160031; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:references
         :mime-version:in-reply-to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ojYCHT6pXa+exxltZgESY7Zvtrqth85NG5vUjQjg5a0=;
        b=Vyhse1P08xdAwVF7IUBO0VE3gPqvNZiaHJFiTnrslHL8S32Gsj7co/6LECCPjweuNX
         3iKWmCXFMXGmTJYsJcciVK01yJKMS1D+ZPTH/Rj6qsyKbGkckSFFJZfhezG4wtO5/Kvq
         /h0DlyMKdyY/3z70kAxMsAZUgqCyk3Xss7D0bRx4ipkHy72/5I3BOWItzv8VAlEZ5lq3
         /Mf0Xqqj0I6W4mhm2CXlZEXeaZqJj9bgvno7tYYK2tkuhuNdO4lNg+GsKe4DTFyxsybU
         dr+k20oK3Yza0CfhMhTtYd17ErVHFEE9SQjL3yV98V3O9UHS7RzdlcuQKQ7KZWsmDaFn
         7XaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758555231; x=1759160031;
        h=content-transfer-encoding:cc:to:subject:message-id:date:references
         :mime-version:in-reply-to:from:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ojYCHT6pXa+exxltZgESY7Zvtrqth85NG5vUjQjg5a0=;
        b=qICTL7O3t4blsJLOJvKU+wKgnpwW/TJHEy/bddrMWHmFD6VZByVY7jj9SajoUii5NS
         Lwu3P/KlLnvNPfRpK8CMbui5FH7O5kG50SDvXuFDufhq27iyOJr/xMGuPIGLGHK3rDRP
         AaWTMXxcnfDD/ApRzTnBYop0hbpV1PV5TLIwCx/dDejbYTgGwU/+VwqNfaQ0esrMr0e6
         FumrdavMVI31YvgiLyuUz8XhIM4pKnSMPjPtLDNGgoG0Uo60MFjTOri6cQDNMU6qR0gA
         6hAV3Z7MStHLKfM8Aa12cXj/cIeALthrXI4JJ9Avuywc8NMwJDhnLkiAhrK69vqu5V2M
         gRGw==
X-Forwarded-Encrypted: i=1; AJvYcCUR+jNjnvPyC1S8Ut/yNE+n09rHqTV/c4yq+nQt3kFyrBjhc0l60hI5H+/yqifSc84jWQt+G3GwnkuF@vger.kernel.org
X-Gm-Message-State: AOJu0YzZJyjZIztEpnjKj/ceAqtZ6DLD1yvW1jiMJuH/OqSTfTwEwOIW
	Y6G3UidU1cANjrYBcdMWJdM8Oa81BkF+bkCMaDgPJhMoNCwXVtY9FYqTQIMMwBwfoFdBqPX0Mr6
	57NSvfkQadIODfzMHDTu+I/7fKkSRTWbs/HeOdGf64g==
X-Gm-Gg: ASbGncukpOs1+XKIlo7EtAOkMWaw/NlXDRzSl7pyB209uT9zA/SjyqTSCjBw74jalJ9
	ck8JygJlKIbgyM5pJzZJaAEXg0hT0S+Xk2RXwauYeuvSzaGXiNosovBQDhOskGzojN0RNEnxaPg
	UyHVGKyqv04tvXMgYu5G1WOElPrP9xaLwrp3K/skTeExGWer/ghpVVsNEGl3RJt8Li0SXdrt9Nh
	wNKYNb4128LQg/3RiUTB+GhZykhmIl0WB3ssw==
X-Google-Smtp-Source: AGHT+IEaxzAg/HmbDrrm3iNmazyaqrQDYYZPj2rvNhR9IFx4P5LS5+Mzvc1t7Vk0Fk6HmKT8D4/HKt9kzkmiJNQ9aDI=
X-Received: by 2002:a05:651c:23c6:20b0:332:1de5:c513 with SMTP id
 38308e7fff4ca-36413f129c2mr36067881fa.4.1758555231093; Mon, 22 Sep 2025
 08:33:51 -0700 (PDT)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 22 Sep 2025 18:33:49 +0300
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 22 Sep 2025 18:33:49 +0300
From: Bartosz Golaszewski <brgl@bgdev.pl>
In-Reply-To: <20250922173145.4d4dbb2f@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250918104009.94754-1-herve.codina@bootlin.com>
 <20250918104009.94754-6-herve.codina@bootlin.com> <CAMRc=Mf9OB03FXEpSXG8XeJhtd7MkwJTH=rY11SBb9SazCMqJw@mail.gmail.com>
 <20250922173145.4d4dbb2f@bootlin.com>
Date: Mon, 22 Sep 2025 18:33:49 +0300
X-Gm-Features: AS18NWAxwgYw0JIB0GARrV9RmnofX0awI5c9l6TU71Tk5COkBcCbFGmDIfXMzbU
Message-ID: <CAMRc=MeLDe+o6dWkFCv6zc7ubcXicWdw4FA_A2p519OC4SH2BA@mail.gmail.com>
Subject: Re: [PATCH v3 5/8] ARM: dts: r9a06g032: Add GPIO controllers
To: Herve Codina <herve.codina@bootlin.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Hoan Tran <hoan@os.amperecomputing.com>, Linus Walleij <linus.walleij@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Saravana Kannan <saravanak@google.com>, Serge Semin <fancer.lancer@gmail.com>, 
	Phil Edworthy <phil.edworthy@renesas.com>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, Pascal Eberhard <pascal.eberhard@se.com>, 
	Miquel Raynal <miquel.raynal@bootlin.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
	Bartosz Golaszewski <brgl@bgdev.pl>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 22 Sep 2025 17:31:45 +0200, Herve Codina
<herve.codina@bootlin.com> said:
> Hi Bartosz,
>
> On Mon, 22 Sep 2025 16:22:14 +0200
> Bartosz Golaszewski <brgl@bgdev.pl> wrote:
>
>> On Thu, Sep 18, 2025 at 12:40=E2=80=AFPM Herve Codina (Schneider Electri=
c)
>> <herve.codina@bootlin.com> wrote:
>> >
>> > Add GPIO controllers (Synosys DesignWare IPs) available in the
>> > r9a06g032 (RZ/N1D) SoC.
>> >
>> > Signed-off-by: Herve Codina (Schneider Electric) <herve.codina@bootlin=
.com>
>> > Reviewed-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
>> > Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
>> > ---
>>
>> Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
>
> I have just sent the v4 iteration.
>
> This patch has not been modified in v4.
>
> Can you add your 'Reviewed-by' in the v4 series?
>

Sure, done.

Bart

