Return-Path: <devicetree+bounces-278653-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id jFygEmMsv2l6xwMAu9opvQ
	(envelope-from <devicetree+bounces-278653-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 22 Mar 2026 00:40:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ECE52E7A94
	for <lists+devicetree@lfdr.de>; Sun, 22 Mar 2026 00:40:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5C4613014128
	for <lists+devicetree@lfdr.de>; Sat, 21 Mar 2026 23:40:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DE92285072;
	Sat, 21 Mar 2026 23:40:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f53.google.com (mail-yx1-f53.google.com [74.125.224.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0BBEDDC3
	for <devicetree@vger.kernel.org>; Sat, 21 Mar 2026 23:40:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774136415; cv=none; b=Ej8RxgiY5q+yhUkni+WE0xUnrAX9YPQ9qT8sC11pSRDH8zmT1trw7sqKMD7AZLPGOnmi22MBWSwOY6nYOP7PaYGLU8Zd18YFJFzYyTL+9fh6e5Xgan9BDxrhaNxs58+Gg6N/yDnii+ke6gN6cKEHxXttnER6ExvMWB51kLGMTtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774136415; c=relaxed/simple;
	bh=03us+33m88mRKaEpcnY7w1F++szT5Qz0wSZ5EgbUMqM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Yw2t/32kzPd/2Tn+7FmwufAyJD4W8rq3hRZhvQhSWQQMiGZSZr9pg/lB2tQVa3hm53Z1Jlu3wkAoOeyyQ4judka1Fo9Zz8C8XN3PBC7WrXdmrzRz+xxBMxY5LBnIMjNB6P73WKCweNBi2ky1x2vsoqv9AYslY9HhmNF6nrA3bNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sirat.me; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=74.125.224.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sirat.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f53.google.com with SMTP id 956f58d0204a3-64ad9238d8fso4096167d50.3
        for <devicetree@vger.kernel.org>; Sat, 21 Mar 2026 16:40:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774136413; x=1774741213;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=AAamBCEutf15hcPE8pkpuda+NYT3m26yn5a0i27N0ng=;
        b=ouzo+fvoUXR+AGwmfACskwIQE7l5RpiUXFo4Qu+SV6nj4ET544gQylzd2MA/mjLaOu
         ENKyIrouhskyvRwUnI2MRlG8LeqgtBjEsPJifP+mWICnze1zp1BxgkTtlNEIHpsvxoda
         9Df1dDltA3h0/sDqmtPG6weAWn2DOD+/Ycj/XvMmk7GwRWVCr8JRuamZR+NBXrjwSMkA
         G0WF+0Qbxvsb4shpOaGoK3huVeIL6OPMlBj0CJqh7rTn4WkcARJMSjyNBusO028f4tsK
         K2tCZ2dhOob2yvtYgqYZUDd14Y87dL1CJafa0RLbgweCpA/w4+4gEbwr8mZKZBTaJCED
         La2A==
X-Forwarded-Encrypted: i=1; AJvYcCXJXVI/fykXUQBZOuVpYvQWzz0w3MdJw2iDBS4tfiByD8ko0ljLXQqFFANKCdXd8gZ6gPPpIXUSJgYu@vger.kernel.org
X-Gm-Message-State: AOJu0YzbfZP23wrh+q7vCyZDnUzsdSEHJYqy+2474TAg3cLwzpUWABEc
	PR8uiiR7k5/gl9BRKghJV/NjP/uPoWO/B3b02n0xGgQuPvkuvb0glTRtHsxa2pGw1HE=
X-Gm-Gg: ATEYQzzVnezJ9JrIFHBglUcKEGPbjW/FSq3nJXKYRY4cPTMKZubq8qG3WveDrg1bKPD
	Z8D3tYU1f2RkJv1oGmba9KPYeXzmrgxduvEjIAQMmHxUfZD5AywVEdguLB1OSNmOfJ7bUYmbCJO
	wmlW8PfHB94GHCU1EYUj4poazQly7XiV8sjRCgdwzsY45v0WD6T/hYtFYTuoyxAFg2mtWz+HFsN
	Kg+3686oe/78J7iNhriCm0H8zobqMzdnS3DIdssAcMnXbJKOoj8tQ9KjLYGV962N93WUEGO/WdY
	0hgKYfr/rrIVTasPek+ZqygIeE13mpuwUQlG8XjGXRzuEBKHERGBwPL7bRdvKkJI9CsZAXu7oiH
	roubV1Tx9v1/TCkF5WE9sxVwSDw8rJp9i2W+ff3q/r+XEjWFnNUhSNTqwsw+Edr2mA7qxw7n94W
	79dFQI89apS/CbHjlEj0B19yOJq3ZKs+Ym+P2gOmgnElWwx2F1CbZ2q8f6x8frJ8rxehiS+W8jC
	IhT9ULDJhdLZ0fq/Wah+0g9of/n2sS1kKX95F2OuA==
X-Received: by 2002:a53:c04f:0:20b0:64d:664a:3063 with SMTP id 956f58d0204a3-64eaa6e1186mr6355257d50.24.1774136412579;
        Sat, 21 Mar 2026 16:40:12 -0700 (PDT)
Received: from mail-yx1-f50.google.com (mail-yx1-f50.google.com. [74.125.224.50])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-64eabd813ecsm3898778d50.7.2026.03.21.16.40.12
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Mar 2026 16:40:12 -0700 (PDT)
Received: by mail-yx1-f50.google.com with SMTP id 956f58d0204a3-64acd19e1dfso2593260d50.0
        for <devicetree@vger.kernel.org>; Sat, 21 Mar 2026 16:40:12 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUQQShZ+2V+aZyBU2wxUep/sQmmmNYgY588gB6GTXHrITm95y5B2Sw6eyAcfIF1yDu+j+RXlBO3xRzF@vger.kernel.org
X-Received: by 2002:a53:b466:0:b0:64e:a59f:fca3 with SMTP id
 956f58d0204a3-64eaa6a36d7mr5414313d50.4.1774136411946; Sat, 21 Mar 2026
 16:40:11 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260319190738.151614-1-email@sirat.me> <20260319190738.151614-3-email@sirat.me>
 <20260321172151.1f434680@jic23-huawei>
In-Reply-To: <20260321172151.1f434680@jic23-huawei>
From: Sirat <email@sirat.me>
Date: Sun, 22 Mar 2026 05:40:00 +0600
X-Gmail-Original-Message-ID: <CANn+LW+FNy+oCr+XskZoVS=eeCwnYvoKkFyX5fX2fbv8NbALGQ@mail.gmail.com>
X-Gm-Features: AQROBzAvLoOgRGxh7sqALu5OHkzgOo46gcPVkin7WpjyMuHj1YVI7aaRb077v6I
Message-ID: <CANn+LW+FNy+oCr+XskZoVS=eeCwnYvoKkFyX5fX2fbv8NbALGQ@mail.gmail.com>
Subject: Re: [PATCH v6 2/2] iio: proximity: add driver for ST VL53L1X ToF sensor
To: Jonathan Cameron <jic23@kernel.org>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	dlechner@baylibre.com, nuno.sa@analog.com, andy@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[sirat.me];
	TAGGED_FROM(0.00)[bounces-278653-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[email@sirat.me,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,sirat.me:email]
X-Rspamd-Queue-Id: 9ECE52E7A94
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sat, Mar 21, 2026 at 11:22=E2=80=AFPM Jonathan Cameron <jic23@kernel.org=
> wrote:
>
> On Fri, 20 Mar 2026 01:07:14 +0600
> Siratul Islam <email@sirat.me> wrote:
>
> > Add support for the STMicroelectronics VL53L1X Time-of-Flight
> > ranging sensor with I2C interface.
> >
> > Signed-off-by: Siratul Islam <email@sirat.me>
> Hi Siratul
>
> Just a few minor things seeing as you are going to v7 anyway.
> If you weren't I'd have applied some or maybe all of these as tweaks
> whilst picking the driver up.
>
No problem at all.
>
> > diff --git a/drivers/iio/proximity/vl53l1x-i2c.c b/drivers/iio/proximit=
y/vl53l1x-i2c.c
> > new file mode 100644
> > index 000000000000..771598b92e04
> > --- /dev/null
> > +++ b/drivers/iio/proximity/vl53l1x-i2c.c
> > @@ -0,0 +1,820 @@
>
---
> > +     /*
> > +      * vdd-supply is required in the DT binding but we
> > +      * continue if it is missing to support older DTs.
>
> Given the driver does nothing different for an auto provided fake regulat=
or
> and one from DT, I'm not seeing the comment as particularly useful.
>
> Drop it.
>
Considering there is zero difference between the fake and real regulators
in terms of functionality of this driver, should we just drop the hard
requirement in the binding?
>

Thanks,
Sirat

