Return-Path: <devicetree+bounces-269957-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2HtTDXl5pWm6CAYAu9opvQ
	(envelope-from <devicetree+bounces-269957-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 12:50:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C9A801D7DB7
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 12:50:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0071C30168B9
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 11:50:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED7583630B3;
	Mon,  2 Mar 2026 11:50:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b="SEW7j9L6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC8B936309C
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 11:50:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.214.180
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772452213; cv=pass; b=lxgTWlWKjUrRynPgkerbjQcbgshrVtzWKsHJrNZ59gok+X1SVMlo5Bh3ktsBiCgSf/Gp6VefTjIbx6ivjMJNCN7L5Uh6jzeIlSy+hPRF5Q4M5m/St3FeyLfIpX0SZq9eLMowt5TFZZITp4LRuWedhxpUe7wbFwvOg7zFI3QixWs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772452213; c=relaxed/simple;
	bh=5qAHqn3E4KqdIyv4rJj7K5venbc/uUWQxC4/jFfSWpw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cWuMs7dkYxoGl6g2Fq1LQWvFLdUYm/IiiHimlYc0LekE3LD9u752kTLy+pMeN8kHZB/u8gCpoJXZplGXft5P/BikBCbI35Iu8wL4zW8NjvM0C003jrzK9ZaC6qf8KteHSxfavRP9TwG+aI4JKlkgd4TqLl+LpbK/ximmwMPrtv8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com; spf=pass smtp.mailfrom=googlemail.com; dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b=SEW7j9L6; arc=pass smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=googlemail.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-2ae46b9c70dso4992825ad.1
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 03:50:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772452212; cv=none;
        d=google.com; s=arc-20240605;
        b=O31DWyXTQ8OSEUY7yHIgLid0D7MzdJt19S5V+rbPUgVm7uv8eDdwoIZZMcyVFRu9/l
         98jemW9oGSetMvshXx9dqrAImaD5BFCxGRQbDkzZhx19EKg4JuBxTBrKfw7TMmX6s5la
         3za9mXhrjdt4qAhMn9Zz/pICY1sL2c40lJH4Rsr2H0TgUlKQs0okR/mC6en2PG/mzppJ
         wNnojCmO1bfHvni+NHoMaS4fmh2Bo1j3LQr1FBq+BOrfT6C8+PXd0yASujSmUtsdtKWm
         wuyL5gjMlhTVdqTdqtNa7wCpCE3pwVyZ5m40Ps6RiOWUmRdDol1K2QoMlsQpWkB72RX/
         G3Mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=5qAHqn3E4KqdIyv4rJj7K5venbc/uUWQxC4/jFfSWpw=;
        fh=STuZu+0BHrvM/wPMexTM0O4Z6ddPe3GPjod80649+34=;
        b=ABkRd0AJ6IkBsrGlPP18OTlsU9zcYgRaVS7n5i5wG+ncWpOW6tQFdst7eC9Ndp2SXl
         USyC7Nsoje7dIojtcBxqmKTEE6ji8GgaAdGhUqf9+FKVNtfVmtelm/yjVI3v5SJ+iH9/
         yH0Srf+Q5rtpMbtwqYuNgzwKKDogWgaBockqjrYMHa+4hAvfnjOvtjrj+mosTW9QbLxE
         zn6+zHEzNm8Ss+eFgQ9RHOEgLfy+PyCMKy+16AzC16FAL+I4d4rjO+p+uM5xpIAy+ujD
         stlREJNkFQTiRdSnrLedPtwoLg50b/a8yWK9ug/Y5YHnh0HTmJ5kuVXFIkNBb4AKm/4/
         BgqA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1772452212; x=1773057012; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5qAHqn3E4KqdIyv4rJj7K5venbc/uUWQxC4/jFfSWpw=;
        b=SEW7j9L62DP2IAKlQEucR4jx8A4RUHE222T+bYBt+F2Dl2sbYr+gpgAnRd5B285e2v
         M+PZ+mPBGhvqmZuOL4+IkA5wFAYopyfIrUDtMFyRTLgdLQn17iLSK853QLJxsLf39AhL
         yb81PAW1vXpHHsbEOq/nwmHQJ5OO5KzN2iM2LpIH7LBohzoyjZh88SXA+m/1KmTPgPga
         A41NNKVEdFg4GZdM9hO4pZXmvRxLCb5jYg3ICP+KDXlqcBpD6WQq1nj/+d7u+cLfs2c4
         wkupT0fZAG+FW9n2MDR0urKAt4d2dSbRkEfRczbe5eI67sDbGT8WW3Lbcr/yMSgWJPSz
         CTFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772452212; x=1773057012;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5qAHqn3E4KqdIyv4rJj7K5venbc/uUWQxC4/jFfSWpw=;
        b=jw4ntG2vU3ag1Gm9F4DkAg4o0uDhZD1LbbJ6K6oLe1YLIrt/+I/M9NydmOqn8URjVT
         D0X36GUuc58afmzmEc6v7BSYGDKye6ESaI1iTsh3EMtD/MrYriv/EOjCkZjIMXoMjm/9
         G3moJEDbnlgENvPPv2IcrxbmAkBXYMW9ofAXrUxWB6xM6BrVDR5fx5vqqrn0n+Mio64S
         DWqQ77dF+WSNI7lWp1nIkLi192cdXHGePEYtCpZPJEKsu2rR0KNXiPeo/82jn+81EqyH
         VaqLj/tBmOlOEg8d7SMHBSMHLbFhVYxZaM3TGXqpz3cJoeoqTe5RfDEMHqtQ3kx4q0op
         7Ebg==
X-Forwarded-Encrypted: i=1; AJvYcCUuETPQdqcus3Tczr0k11PGaIeb0/fAwZfb6Uko55uAd9M1SVsE7QBZ0KXtK3RNGp2NPSoD1Xssg8U8@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+BcYt+ACm8Z7STWAzHFbesOEJdC8i61rsjs7MFuw32hhrntdH
	kIWccX3o6S3MaS7t380zRep9uee2Ajq9Qj6w4USgdSQm4jUs4tbBJqwlRIUockBj/0a3OAt5HRS
	EvG4mZkUnzt20fVedWXpfG9tfknrelwI=
X-Gm-Gg: ATEYQzzpzgwhpEMTIxObUJzaYn2PVAFadj9CinoU9VLgfSnl1kiVPL+gd2xMK78BqBK
	eRjZOni3OJ1SPfYbQNgMhsNR7a3r9E4WWOT/9if9jEt58ASX05FBqQr4PuPN1TW2EvCm48KXVGV
	Czf2zcgf7rBSSQH1ic8dCeYdtBTwiyujGGzk8yxMA1NqK3aTizPvPXnQp2t8XMqz5TbVtnxpsEC
	RA328x0Vh1lqG0tK6wvLAH1Ay58jF87CaGVw4zudb/qbC7gglsbAP8fUWpijq91p6IMcSMGMZqs
	+hrrrMSxQy/7+KqnipcPsEXZmc6MPTN67K0QFzHN
X-Received: by 2002:a17:902:a508:b0:2ad:da28:8c7a with SMTP id
 d9443c01a7336-2ae2b6500c4mr72503075ad.8.1772452212244; Mon, 02 Mar 2026
 03:50:12 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260228065840.702651-1-nick@khadas.com> <20260228065840.702651-3-nick@khadas.com>
In-Reply-To: <20260228065840.702651-3-nick@khadas.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 2 Mar 2026 12:50:01 +0100
X-Gm-Features: AaiRm533eCqYaaq7O8tndrUfX53W9xWv3UJ4VGBrO0ObYcu87bP8ebrDMdBbpZs
Message-ID: <CAFBinCATMbC_Q85QHv_=v1cdiNjD-+X1eR=eZB_0Yvj7DC4LoA@mail.gmail.com>
Subject: Re: [PATCH v1 2/4] iio: adc: meson-saradc: add support for Meson S4
To: Nick Xie <nick@khadas.com>
Cc: neil.armstrong@linaro.org, khilman@baylibre.com, jbrunet@baylibre.com, 
	krzk+dt@kernel.org, jic23@kernel.org, dlechner@baylibre.com, 
	nuno.sa@analog.com, andy@kernel.org, linux-iio@vger.kernel.org, 
	robh@kernel.org, conor+dt@kernel.org, linux-amlogic@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, xieqinick@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.06 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	R_DKIM_ALLOW(-0.20)[googlemail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-269957-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[googlemail.com];
	RCPT_COUNT_TWELVE(0.00)[17];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[googlemail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[martinblumenstingl@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[linaro.org,baylibre.com,kernel.org,analog.com,vger.kernel.org,lists.infradead.org,gmail.com];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,khadas.com:email,googlemail.com:dkim]
X-Rspamd-Queue-Id: C9A801D7DB7
X-Rspamd-Action: no action

On Sat, Feb 28, 2026 at 7:59=E2=80=AFAM Nick Xie <nick@khadas.com> wrote:
>
> Add support for the SARADC found on the Amlogic Meson S4 SoC.
> According to the documentation and current testing, it is fully
> compatible with the G12A parameter set, so we reuse
> `meson_sar_adc_g12a_data` for this new compatible string.
>
> Signed-off-by: Nick Xie <nick@khadas.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

