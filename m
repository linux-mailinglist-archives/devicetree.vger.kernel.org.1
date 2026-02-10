Return-Path: <devicetree+bounces-264456-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sK4ZN4NMi2mWTwAAu9opvQ
	(envelope-from <devicetree+bounces-264456-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 16:19:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id AE59511C696
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 16:19:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 105CA3003628
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 15:19:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26BFD328B48;
	Tue, 10 Feb 2026 15:19:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="H4vpFBgk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E02CEB67E
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 15:19:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.222.178
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770736769; cv=pass; b=FUQmANEvP5EfomL3fMHMti4jwH6TAlX1ZZlJwb3zxWtLmLTs9U7m5yr9CHZ9hzTgLioueSoM7G2gecQvZYzzDvBjyorKIiC7VChlFEEnYvthF6bWQ68NLpO/ontm+IVB/DOzCRXog/8yAoj+L00BKvNCkTGpUNV6n34YLzASuic=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770736769; c=relaxed/simple;
	bh=KFwy+XHZ/qPXtJJVIJ01/iLROV8v9nLijRRiE15GBaM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=efcxC2moa4SojFJCM9cWqaOqyRuwf0lj8MtX79RA4xKl1sw2rGMjhB2IkGPDwTVx9C9qzhDt34Ja4aVvMBLj24LrbeZy2BNKV+Abihg3gHhL3iFiyFnvT6TLyI0RYE7kaQir1KRxDSDND6gR5y0Q+GRhQVmpTqKLbfPr8a9XwMY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=H4vpFBgk; arc=pass smtp.client-ip=209.85.222.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f178.google.com with SMTP id af79cd13be357-8cb0bce7770so25480885a.1
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 07:19:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770736767; cv=none;
        d=google.com; s=arc-20240605;
        b=hzOC/BSh48SDLgukl7cvyqSn68enbK5RlayEMu1YWSgRQrDbFIzXLzlknG2bQcZwV6
         RGReU5B3KVrfpNq4JYtaYH4QiZnpsF1I5pYOii78GAULsa0D6Ru5AG7rF3VhR+/0VxJy
         FUHlBSc8vNKKNb9//Gw5DaJmLoIeenoSNwY0Ux82a23hIJh28bdGqc5k8Zl0w++ZqgAm
         pNOz7mSY1AYqX2EeyB2v73bHXP+P7BdyGSOiODA8XFudU99+RFM07EWF8T9m1rd+piEH
         1M2xQgkHVausEVJIIQz/Y61IDloFJGiZL1iXbszGjhol8sYtu4TKoRzZU0cHJh2tJH70
         HR5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=hU5GmP8IVcM4rMy0RzpLrIA+b1h4F9ciBJu+AummglU=;
        fh=YYYFQVVKuMqpYcTinSX92I3tRVt94qcc0YsE11755NM=;
        b=QZnBSKYg7Ebwet+ShTlUxsyLcPU/liRWKq+0sZ8a0moSe1eMPhesxrkdGpzDJRQh6t
         maI7bB0ghOKDyhwCwBF9COTkhCwSDpvFAozh0Omo5IuoRE7o5RnI0vlWxWbHCnoigWRB
         m0bslPdrHI/RYQOjutPrh86TxxSNXRxFxFK0cwXf+WoV5vkiSWb9+Y8rkqhkIVe3Ro1w
         jy2E5KvXrVnR5c9MBVCGp427kOU8+zkBcxRwfJpCRDgvyuRsAg+FfdnWG+HvwgLcEAqi
         g1vzc9eM9wW7zp/vPg4Xs63kJvdL31oOrRSBLu7peHBfHXNAnqszthT0ldXoCGtNUiAu
         ZLUA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770736767; x=1771341567; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hU5GmP8IVcM4rMy0RzpLrIA+b1h4F9ciBJu+AummglU=;
        b=H4vpFBgkCgjshVx9qxuV4K0ClNoL8nBRvsB93+r4Ob9wOJ1NLDNgnBAXJDrG5+biU6
         O36hiNp4fJuXRwbwqMViZG+mJY/9FU0Vy1MVGS6r88v/cryuXjB0MZxxRGP1fO53GNZF
         iB+Wx4eBo3zCH/xvUbvniNXyBYV8fEWzBCB6K/LPQRbuYS3gFzwd+foThf20gdE82YAs
         a1D8iJrwXnnCKWDDNsXg3a+ar1WvHITDPBrqeLlF+i0NOTwW6MKDueWfHqvGS816TpS9
         p/x5u9kkbBV/84z4pp7MOp+VZ7L90aeTcr8ZokBWckaHW33BCROBpLIIMJz3cVe/lMk2
         meIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770736767; x=1771341567;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=hU5GmP8IVcM4rMy0RzpLrIA+b1h4F9ciBJu+AummglU=;
        b=ixPGn7++f508P6BXyFMcJzoywaq5450lks0dsTTl4pg7Ozx0uJf/j9genBPx157xIP
         fkyiswINB5AAV/sQ1sQY2xMSDxqXjkbkMqX3A3DVhiIKPWNgEd1EC36zcBdZHWUMcffi
         BpjDuJPp3Gnk9fKQBK2ex2TYbXw0+bLr/jbImRCstGEtGv02xlIV5TK4pSSvLHhqvTnM
         jHV6tJ9QaPed9aZUAbxbHnIKzRCfI+APrDiirSnIOMIllT7XYJe8s8djlsTFyGJQ8Tpa
         uZNoKUzCdj5RktiG4yG/9L8Q+C//be6hW4OB8/X+1mm2/R31iTmGZTCEaNyWnjhIgr1S
         pYmg==
X-Forwarded-Encrypted: i=1; AJvYcCXI5S5xs/YVgGtn8YDDMUqXL8yDnnLesqEk0fTGue8AMEmfnKL35e1aqQTR5J0bPYNOZQOFGCiHdevy@vger.kernel.org
X-Gm-Message-State: AOJu0YzS1tjX9P1DHgRL/wsTel+PI4yHd2YJpPByNYc/4VmzWO5pPDLO
	5SlNoQRj+wvFFl6LhOK6c4Xza+lGR2Xcr6xU5vZiOJllS083VoD2mr6ufk0yqafb0YwjAtHgzA7
	aEiYG2ltpbRXKDL6V20F3Yols2byuON0=
X-Gm-Gg: AZuq6aKhVF9c65zJwlCh9sVEZNkfXPyfb6KKfzYIQk+a+AifDPPM0JclQRYHeJoeui5
	JjNESZZ2Ru6Kfu0FEWVPkI5K2cg6KAK8ATm81iW0KX25Af66U3JBYvLUnofUMnVRR/bivesBpKR
	YIL/4kMdYrRNiNXI386dIIlU0/MoWU5exUu2GqTcmDbxwMErc8bqN18jsOsIrJz+IxQuZIJlxw/
	M/UpRz2Ff7VKxgmhVASum5zRinwbHEG+H9K/xSELgmIgsFkV+Soo6sS1l1mFzIlA63Amkwtka65
	LUXjQKguQMJyaVi8QKOu1LFf2VDMmeNxDSKJHvr/AEXV54vKwIEF+THym0xpCT5oiXtc5CbQ
X-Received: by 2002:a05:620a:2584:b0:7e6:9e2b:6140 with SMTP id
 af79cd13be357-8cb1ff6fb59mr213066885a.8.1770736766777; Tue, 10 Feb 2026
 07:19:26 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260209-upstream-20260219-v1-0-2b4d74e309d1@gmail.com>
 <20260209-upstream-20260219-v1-3-2b4d74e309d1@gmail.com> <20260209-masterful-fluffy-pegasus-bcc0de@quoll>
In-Reply-To: <20260209-masterful-fluffy-pegasus-bcc0de@quoll>
From: Yasin Lee <yasin.lee.x@gmail.com>
Date: Tue, 10 Feb 2026 23:19:15 +0800
X-Gm-Features: AZwV_QiEqpPddOaPW--sP2JoPVxG7qV0-Jt2wC_EEXrk88javWqQ4GwU6BS7Wns
Message-ID: <CA+NOmzJou6bvoBnY6WvwpZw+aob2qokzXwmOT23t15CGo4xEeQ@mail.gmail.com>
Subject: Re: [PATCH 3/5] iio: proximity: hx9023s: support firmware-name property
To: Krzysztof Kozlowski <krzk@kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264456-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: AE59511C696
X-Rspamd-Action: no action

On Mon, Feb 9, 2026 at 4:02=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.org=
> wrote:
>
> On Mon, Feb 09, 2026 at 11:37:04AM +0800, Yasin Lee wrote:
> > Add an optional firmware-name property to specify the firmware file.
> > If not provided, the driver falls back to the default firmware name.
> >
> > Signed-off-by: Yasin Lee <yasin.lee.x@gmail.com>
> > ---
> >  drivers/iio/proximity/hx9023s.c | 7 ++++++-
> >  1 file changed, 6 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/iio/proximity/hx9023s.c b/drivers/iio/proximity/hx=
9023s.c
> > index eb4902d18d74..b680b89956bd 100644
> > --- a/drivers/iio/proximity/hx9023s.c
> > +++ b/drivers/iio/proximity/hx9023s.c
> > @@ -1089,6 +1089,7 @@ static int hx9023s_probe(struct i2c_client *clien=
t)
> >       struct device *dev =3D &client->dev;
> >       struct iio_dev *indio_dev;
> >       struct hx9023s_data *data;
> > +     const char *fw_name =3D "hx9023s.bin";
> >       int ret;
> >
> >       indio_dev =3D devm_iio_device_alloc(dev, sizeof(*data));
> > @@ -1111,6 +1112,10 @@ static int hx9023s_probe(struct i2c_client *clie=
nt)
> >       if (ret)
> >               return dev_err_probe(dev, ret, "regulator get failed\n");
> >
> > +     ret =3D device_property_read_string(dev, "firmware-name", &fw_nam=
e);
>
> Incorrect order of patches, see submitting patches in DT dir about the
> order - documentation always comes first. This is here an undocumented AB=
I.
>
> Best regards,
> Krzysztof
>
Hi Krzysztof,
You're absolutely right, my apologies. I'll resend the series with the
correct order.

Best regards,
Yasin

