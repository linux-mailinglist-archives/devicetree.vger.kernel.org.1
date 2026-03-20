Return-Path: <devicetree+bounces-278246-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kEOZH4w5vWkN7wIAu9opvQ
	(envelope-from <devicetree+bounces-278246-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 13:11:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A7252D9F2D
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 13:11:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0983D3039CB8
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 12:10:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE0E83AA4F1;
	Fri, 20 Mar 2026 12:10:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84F3237F741
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 12:10:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774008640; cv=none; b=Ds1qS5MESFq1xOMWSoVGQTO2bwutf86z/NpD8sQtgOtsIBMD7e9WoDI59OJn7G/qT+YC0TazOibF1ajoRAzbveSORdRgeY88LiERpq7Uctz7nR+GTqCFSQfeNhSOs9+ZmoBpv4xPbmGlg6tjUjsrAB0dAdYHXsMm7Sjha6xxIA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774008640; c=relaxed/simple;
	bh=B3pmlX7fRUqZADkEMiZVMNjp5NfJXRwh+wSOc2Cr4IM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ghGP0lbadEM+np9LUaUMDUk1rCfUmVWnbzow0qK5g4vlgPhOK9Iegc64wj+0r36QlpoPBIfibIvd1YRzrGqO/5ftK92EYBZRBMmKCp9kWU+Urm6hRR4p/nHCgtVw6fsrixgTkb8MNUniDBU6umu/0ZMMPr3gFCKz0velH8aullU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sirat.me; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.128.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sirat.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-79a4e5caad6so20689967b3.2
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 05:10:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774008638; x=1774613438;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ATjBD35P3zbZ6+Azz3hbE7hIAK2d60Azv4xoO5wqRiI=;
        b=mJZbVQpHZ5z8PBK6YjiejaDQbO46Tq1DkNZHO6ef8y4E5eWofJL9AdInv27JscQvso
         s/n88ZmEI4Gr3qYeQt7PdC12PENKuoKK1jtO9gQ+WW+mwrpxUXHwh49aLgpB5D13TU9Z
         iuYKoIaIYVa4kvfmdroxK5MOnnbwZKdOWskLr53koI7m3+qbDsB/famP8R8Y099MMPk7
         Db0LLXWC/DUbUKbViLE1mWqGvjLghcyqHLV/iebkAQPDX6I4unKcX5aKG1P55viOw2gP
         jxUVZDR3HHwtJ0mUod2s5Ia9b2Hzusfo/121rGnk7i0lOqN5tj5Q7uJKPjPPKN6xQa6v
         GYzA==
X-Forwarded-Encrypted: i=1; AJvYcCUMaOvMsXrvr+wMCrh1oS68c3bOfqRfXJ7tqQRMEqD3gMLwESpWI3CPG6uxGiucJerELcIj2tA0QH/+@vger.kernel.org
X-Gm-Message-State: AOJu0YxKT9zdb8ohXyDEmNqd4hhPCM4SsVJM17rVaRaHkq3LJo1jkbQv
	1/mRtZ9DryUzBKtoHreki8HdrncHlsog+Hzg4Q+La+lYLafVUnO0s1OUwi3kGFifVdA=
X-Gm-Gg: ATEYQzyo/pgE5jhYO7neybfxANVn7YlhMviyFPRjSFCZgviBj/nBztKViLmmAs/39/P
	6t2GgYQuskto34lwI4EsnO2TVFzbIFsBxreeeioUwo73DpDAUJk0CyrtMvZ0jKaPK9ZwX9fC5XH
	j2wvvNVkba5OyyX/iiF6XGDSp6m7jblxKdrX4H/l/EzXx9qDaF381eHuy8rg9uyrrGM1qExblRJ
	M5evCMweuk8DE/QVrLph449GTBfI/p3K5pjCIb76Dx3yDKtQQqeHFI77P0rmi/5tCTLqDJ1S7Ua
	iFCrsM+CEe1aYPMNTrWBvDcm+c2E6k3PjZwog6ms370sLg7MrWKjyy1ZaKj2pmJt8fh7EwB8yQH
	jZPm8RpeBFl3LjjMwIYGz/J7COQhHaUfKmAPjN2I6RixPPgxY0rGKNRT4LsLQL5yVsC+ivRWHe0
	FduiFuX99+D3298deolq+M82Cr4JnUPLUOOqUbGv+pn8xtrMtXVEN4it8v3kQLqK4so1Iie17Mk
	w7MVsrOinh8W4WJ+wPy26+oBXkkM7Gf7C3JJPLOhGgCWVJvYJx4
X-Received: by 2002:a05:690c:a04d:b0:799:182:17d1 with SMTP id 00721157ae682-79a90be7f6emr19137797b3.45.1774008638278;
        Fri, 20 Mar 2026 05:10:38 -0700 (PDT)
Received: from mail-yx1-f46.google.com (mail-yx1-f46.google.com. [74.125.224.46])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-79a9057e1cdsm13818197b3.38.2026.03.20.05.10.36
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Mar 2026 05:10:36 -0700 (PDT)
Received: by mail-yx1-f46.google.com with SMTP id 956f58d0204a3-64acd19e1dfso1694508d50.0
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 05:10:36 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWAgIER5wKoIirgvi8bjlwHwGV0Aq7iHzRpjglClKbipu+R+ndwoAxWIq1DYB1as2+6gP3+WgJoMQf1@vger.kernel.org
X-Received: by 2002:a05:690e:190c:b0:64e:b4d6:e5d6 with SMTP id
 956f58d0204a3-64eb4d6e6b1mr279913d50.7.1774008636354; Fri, 20 Mar 2026
 05:10:36 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260319190738.151614-1-email@sirat.me> <20260319190738.151614-2-email@sirat.me>
 <c71a7cbb-d313-4d42-a487-b5f194d4e9bf@kernel.org>
In-Reply-To: <c71a7cbb-d313-4d42-a487-b5f194d4e9bf@kernel.org>
From: Sirat <email@sirat.me>
Date: Fri, 20 Mar 2026 18:10:25 +0600
X-Gmail-Original-Message-ID: <CANn+LWLWiyAo8_+V0EtPyie9AsNZdo+pU2MBhZ1c7im5XhagBA@mail.gmail.com>
X-Gm-Features: AaiRm51RgqLpMK0miW91Gb0hRuE85RHbT74etOPMUjWxfOY7ewwlyNCX6BBm8Jw
Message-ID: <CANn+LWLWiyAo8_+V0EtPyie9AsNZdo+pU2MBhZ1c7im5XhagBA@mail.gmail.com>
Subject: Re: [PATCH v6 1/2] dt-bindings: iio: proximity: add ST VL53L1X ToF sensor
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, jic23@kernel.org, 
	dlechner@baylibre.com, nuno.sa@analog.com, andy@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-278246-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[sirat.me];
	NEURAL_SPAM(0.00)[0.331];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[email@sirat.me,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sirat.me:email]
X-Rspamd-Queue-Id: 0A7252D9F2D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 20, 2026 at 3:05=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 19/03/2026 20:07, Siratul Islam wrote:
> > Add device tree binding documentation for the STMicroelectronics
> > VL53L1X Time-of-Flight ranging sensor connected via I2C.
> >
> > Signed-off-by: Siratul Islam <email@sirat.me>
> > ---
> >  .../bindings/iio/proximity/st,vl53l0x.yaml      | 17 +++++++++++++----
> >  MAINTAINERS                                     |  6 ++++++
> >  2 files changed, 19 insertions(+), 4 deletions(-)
> >
>
> Please read:
> https://elixir.bootlin.com/linux/v6.12-rc3/source/Documentation/process/s=
ubmitting-patches.rst#L577
>
> If a tag was not added on purpose, please state why and what changed.
>
> Best regards,
> Krzysztof
>

Hi!

The vdd-supply requirement and the pin descriptions changed.
I was not sure if it was a substantial change or not so I did not add
the tag on purpose.

Thanks,
Sirat

