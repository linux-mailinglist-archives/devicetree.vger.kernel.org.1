Return-Path: <devicetree+bounces-264468-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qBf/HdBZi2ljUAAAu9opvQ
	(envelope-from <devicetree+bounces-264468-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 17:16:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DA2B811D01A
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 17:16:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 39FDC3063B5F
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 16:15:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD6403876A8;
	Tue, 10 Feb 2026 16:15:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JTfVn+XI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DD4438A705
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 16:15:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.219.49
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770740115; cv=pass; b=b3o5cya4FUoWM46YC64w5VXj7JHkJAxNbNcH9/h0mrDMkLlvaESFCqJXSPQkc2U7QQCvgwiHUf+REyn+KcON/JX4QUNw2UqY61x/JKN11q+nJpPOGW+sYDlhdG34TfgMknJCOnFPdEN+A5gS2xncHe07N7hi2xpZ0TkzGH6PuJw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770740115; c=relaxed/simple;
	bh=iH4e5Jowcat2Bj14dBv+UFq9ySSKQcMntdR6j2k3xG8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NHCA34i+LBZBxsJNeBoBMdizeInVLS0vUb/Flr8YmMJl6KQyQUQpNtLEBwVKFje98sKZdjROkyurvdml8nT24yOqlIY8ZGelY/K55d664h+chOTATXElxvFzhfPKwWqexn/nVjS8QA9v9BtqH8uUpkR2KDhj7hLIIO8chkw49k4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JTfVn+XI; arc=pass smtp.client-ip=209.85.219.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-8954c53259dso5129016d6.3
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 08:15:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770740113; cv=none;
        d=google.com; s=arc-20240605;
        b=HbMUjKNOs/rflOLijeAlgrvkNJq4GJuTtsqqfFlC4Xa6FRBli1h25bSS2sjoChdtb5
         PiYmQ71WvEW/BYU9fvF6A4+65Vj8ZuWHip/ATzEpvXVJfFaDcZtkMBuoC9YmbX3DZ8l0
         wn7+n0TgnTgMY/jMf6CxTCz/DdJgrmvmykBKRUcxh5WfgzdKaVEVqJrRi4OV6Kglrjsu
         aT+V6LrkEJVGr/ld5/oJY2MJNh2RjoCC6sA0NfaEv+6XK4ErFuikAxu5mlL90yKPsSZ3
         bXRPk437TMHH7zyAMdC7PtziaqGsgYpx6SijQvtoF3PK3MZKW9Syyn8NPd8SI1dVMDRf
         WEHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=K2812jiuGlQ5vn+WoZtEaqHAJ1LIQ42eAqZWJrwtTGk=;
        fh=34WBoHRX+xXSXwc4Hoa45E2A4DCozy80otlXWTARCg4=;
        b=VIL1g4NuGi9fLFe9mhPRlkdsFwOb/hPt0mKbV8NBcGClpsN3MDbv/Yep+qh8BoLTcg
         1GbdaO5ihJ6luws22/dLLK+8cDLgs2c44YzUA6Lvg59VdlyXQPL8BqOwEeIpLOGXLpsG
         S190rnXX4+wiFEpNCa3oZiVTA2Z1qh1605T9cIHE3XiYW0iDBZNUsfodyaaWKwjnzmS7
         ZPbjv5R4j9bcmHy1z1FuqDGfEAeMtW3XBRYcJGBUGUNTzpVa3oQI9F3WnKAqojK3Qyic
         S98bYtqyKZeLZ6ZvRzOHCG5XE8pFv1CcQqQdgPLFDFrEJp6cSnDQCE3jI/UUI11yF9//
         sdPg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770740113; x=1771344913; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K2812jiuGlQ5vn+WoZtEaqHAJ1LIQ42eAqZWJrwtTGk=;
        b=JTfVn+XInD6lkZVxrpcWAgMKqDEbN9Yoq4O9LkwGtkp2zQ2ynu53KA/UKF/G26Ky6b
         mLBsSUGcRstyrVwaNFhUbQBQ2oSFUmA0lYK/EYaQ5xEGQUy0murv/97AFVmOg83rZ7Ux
         lbKsxeO75gXx8iEqBmIaijB13gm4+opNppOnGvJhKA4KmNCeZdopGIkCVKGCCZ+pqENZ
         pKTTu2utye4sRuOpl2KC64W7CI+m8IBWjG0ok2WjbBTDKShMKOE68JtDnRvPNvKuF30Q
         u+r1Fv+edLwP80r5RJXVeSuWwSLuJBtJez1UWBC9EV28M1zfOtfeMKONg61fOcvR1qH1
         VZXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770740113; x=1771344913;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=K2812jiuGlQ5vn+WoZtEaqHAJ1LIQ42eAqZWJrwtTGk=;
        b=r1uBTUDcev7/BAgpClJL3dRM1+ci688nXxQIg/QEUI+1vhzXaO6FAX+BPKWa5Vfaqo
         OClhHqPl+KZROlgWn1qRgiUhnyVDP0LOfw6s4QclxAToWOPFHcCN0ExFt3krPNt5T/MP
         iKrkGl0dhODW++0qWkNtyp9I6klSOh4OQO+V3C2Ltb0lq8zG808ArEmoIjqOf1/yVnVr
         lGj5wEcNu6AbEvHorqyMpKUySb89b0mL34EIm5Z8XYkdUKo8ZNx7+jwsgoErOjzpxT36
         2KfVn9RTF0TsxWRKH7xkFTYvT09YfOWbPQ1V7GK3Suj34+hR9GVtifgX+c7A9i55KLeB
         qRng==
X-Forwarded-Encrypted: i=1; AJvYcCWT3W0bveEkZXdsexOnhVDX5nzfOHX80+LBCpjPAUo3JdMcuCGKed5AuwYS2B2dMuF20ySJKwWafBhe@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7LEfHYk6lDbKIBKO3K9ud5o2aTrizdWsq2vmQGtgAP0+ZJyyJ
	FJnzTv3bzef5K2eISE+RB94lPRroFANvYl7VhKA2S7UsN1uGDVgaX28Rv/QwNJJlWR8zL8CK25p
	y/OD1Vkdt9tblE1fiQusxLnsPfBZPxOQ=
X-Gm-Gg: AZuq6aLP6//wR441RRaY5bjGyYzTszoWD4zIGMPdL5TVyKeCIAwdB3JIUVBehNia1qP
	wBy2kw3rXc840c1sCn9Y16659mwsICnu/+mf7xovBbm/eFyJ2a3nvSS2ItTuGdVxCG+1pdbo4is
	QIUGIcNa2RXdmBI0OHRegNJw6h8NgI6lfQ5JpWeTHI+i4iFOCROeo9++njbgJ+mVERTyAaqP2Mk
	wAwV7as1tulN+lV3hyw1LEUluxlVeB8tmEE22a2RR54Q1K+LHawxKFWBg/CZSi0qCPWziWcVCeK
	7YMe/lYBKxo+PJdfH9H6s++JNbFVf6XxWgQ/WiawazrLz4cFokG9JkZyXQDWg4Bw9n7Ka5XVtNX
	pd8DLrrs=
X-Received: by 2002:a05:6214:4708:b0:896:f523:155a with SMTP id
 6a1803df08f44-8970febb062mr21085446d6.6.1770740112834; Tue, 10 Feb 2026
 08:15:12 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260209-upstream-20260219-v1-0-2b4d74e309d1@gmail.com>
 <20260209-upstream-20260219-v1-3-2b4d74e309d1@gmail.com> <aYmf4MtCBmwZBuAV@smile.fi.intel.com>
In-Reply-To: <aYmf4MtCBmwZBuAV@smile.fi.intel.com>
From: Yasin Lee <yasin.lee.x@gmail.com>
Date: Wed, 11 Feb 2026 00:14:59 +0800
X-Gm-Features: AZwV_Qj5NaqNtf0Z9zN-OvR7xN3-iTpFXdm4oagK87YM9LtQiYsrqJb1rM-G7kU
Message-ID: <CA+NOmz+cH_5C4T2S+UPeSFJdxSdz5fimbmp6XmovUqKMcfYV+Q@mail.gmail.com>
Subject: Re: [PATCH 3/5] iio: proximity: hx9023s: support firmware-name property
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, yasin.lee.x@outlook.com, 
	linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264468-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yasinleex@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,outlook.com,vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,intel.com:email]
X-Rspamd-Queue-Id: DA2B811D01A
X-Rspamd-Action: no action

On Mon, Feb 9, 2026 at 4:50=E2=80=AFPM Andy Shevchenko
<andriy.shevchenko@intel.com> wrote:
>
> On Mon, Feb 09, 2026 at 11:37:04AM +0800, Yasin Lee wrote:
> > Add an optional firmware-name property to specify the firmware file.
> > If not provided, the driver falls back to the default firmware name.
>
> ...
>
> >       struct device *dev =3D &client->dev;
> >       struct iio_dev *indio_dev;
> >       struct hx9023s_data *data;
>
> > +     const char *fw_name =3D "hx9023s.bin";
>
> Preserve reversed xmas tree order.
> And looking at the usage, please split the definition and assignment.
>
Ack. Will fix this in v2.

> >       int ret;
>
> ...
>
> > +     ret =3D device_property_read_string(dev, "firmware-name", &fw_nam=
e);
> > +     if (ret && ret !=3D -EINVAL)
>
> Why is this special error code check?
>
Good point. I will simplify the logic as you suggested and remove the
redundant check.

> > +             return dev_err_probe(dev, ret, "failed to read firmware-n=
ame\n");
>
>         fw_name =3D "...";
>         device_property_read_string(dev, "firmware-name", &fw_name);
>
> I believe if wondering one can get a debug information from
> request_firmware_nowait() on what firmware file has been actually used.
>
Agreed. Thanks.

> --
> With Best Regards,
> Andy Shevchenko
>
>

