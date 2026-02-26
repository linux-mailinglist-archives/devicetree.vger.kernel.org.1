Return-Path: <devicetree+bounces-268795-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IIYSM9c0oGkqgwQAu9opvQ
	(envelope-from <devicetree+bounces-268795-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 12:56:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B25C1A56AC
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 12:56:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3A7E83072187
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 11:49:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABBF7377546;
	Thu, 26 Feb 2026 11:49:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Wlzv0UuL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f178.google.com (mail-dy1-f178.google.com [74.125.82.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 717E937647B
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 11:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.82.178
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772106595; cv=pass; b=Z/+WIhbD1Efqi+LoPMTev+Pc/ZYhARYe9A25cT6ULDRwDHq50uazUUdrm9u8NDeoKgYD82WcYs6xzPGWQNdwQ4j2agfJctvpgzWs1GGSa4yJWQTmX4qte0kNX8ILpvAQm2o9A+lvRVVRdujO+SgYHbtNEi+mdXT+e9dII3bRHX8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772106595; c=relaxed/simple;
	bh=8USySdVc06N/5HajwYAONs9vAxxrNNmkXVB6jZlGPyk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=B2sa2tLvwrIk88zDuD5Il6Lo+DdkdP8AO+y8Ob2W7FsqyLWxAsp6y0Wr2Be2PTm+Ga7W3/KKmFnFSjS5jQS54PQpP3lQKvvfD/cnTNEN7T42bNpKbLft3RCWmadzzyfhB5MUDHQESP61ZYTYzvIXfQ+TCtteEDG9zSiD/PND9kY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Wlzv0UuL; arc=pass smtp.client-ip=74.125.82.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f178.google.com with SMTP id 5a478bee46e88-2bdcada445fso362270eec.1
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 03:49:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772106594; cv=none;
        d=google.com; s=arc-20240605;
        b=Et6cEzRzA/cqK+ihOZs9RI4lHh3TAOAHD4s2x5iIhyawDDwGoWvhpfO1TW1jJf8VCZ
         KhtHe7cxuE87AlzfamK/KlrVQ+S3XPI9FI7r2QcL0RmSl1J/9kU/FZaOkt9MCNlQ2BDV
         hBGgTJ53l34+AS2n/s5KYWyO6/jZ5XkRX8TiLhSoiC0j1SN8mO0CP16z7FZyTiTfGT82
         nsr0WYNQ7LHrjY/UvqXoA3IzWS9Jfb20YFCWthPVuAlqIYx5DMgS8gyzZmVH6a+mZv+e
         haKAc2kyRmNrUUE0l0XFPEHIg1R9rVfBe3NzfHl2VZcT90rGzcL7UebtIU0305xtiqJV
         wj9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=rgmPn19c/p+qMI402YeYidJ3CVeGin48tR6uiGvvny0=;
        fh=yRH5mBE/tIjxpL0alGMQPq22dSxx3LVzUnGad2OubzA=;
        b=C7mlrbYw0iSyOIRnst9CUoVuWwItaGVKD/2peevkls79DzZGe3l88lIas6kuaEm84f
         8ss5DazkcVp2s1Xj4tXy/5T2crw3pP4l98up+KR3HRa+w2ZU+JmdzFRo5+UuENVp6BOK
         akIgXSNtFZDUoxGaJAvJpoThI80ofPCJZ3RvRRkweIAcXiOp5GVOGh7Thn50EeM0fgsW
         IGNcB6X4UaTBpBuxX500DEPocpqOXumSVqcS3krTDB4lKtLsW8ODXgDzMZ3j1TaMTWuh
         I4KU7kVc6AHKKk6VjqDoNizSecE+T8S8ifnQ2P8IEDOq+YB+yhA7m5Ro8sr8GVuWBeeC
         ZM1w==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772106594; x=1772711394; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rgmPn19c/p+qMI402YeYidJ3CVeGin48tR6uiGvvny0=;
        b=Wlzv0UuLpRmodAEQoYcEY7TxQfvDqAvAY04MRJ1Kn6BoVPWliUoq2YyBqu/F5FeIpp
         VJ3aXu0oxedxiEpgd2MQNDNqRwQyqF/e3wrcTiDOtkSwbpheqRFRRBjz6qWtENt+IiQ7
         xspqGLEFaURgajIvRje8Ij4gZEIkZdkPQlgRmB+xfNGWiHzjj5IZGW97oEY5DF+WeDAx
         +3uhHm5XFjvq/eU7LMCGZPM6XYodDnL/fyyO5Ml9R5hMv7eEEVVfZPX5NhQmddFgWH9i
         g6ovc7IZLO8aCH6HOuIgQ4oKFThC5jIINxZHhQaYiqWUHET0NBwnJxb9ZJjZi6I5r17D
         IIRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772106594; x=1772711394;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=rgmPn19c/p+qMI402YeYidJ3CVeGin48tR6uiGvvny0=;
        b=o8x1H/Y/jCEa3ei/gk6EmsMol4THGetXDmOUyHhQyEnXA/0xfswP2ic1bMbwYEztCM
         pfujScvQmdxSu0mLfiurkE/qt+/Y9NsX2Wbf7JS86qGgAlPDUYGU7txJM1HGUNWHrlXV
         NbGeZiLtgYToPnD7dralBHJTQbCd6tOTW/yG8GIMB86GJUha7VS4ShGCU7WULqADxvdC
         xoEytA+9G+142+/fB/DUgQlD46Nt7PgMzPGcdWJdTy1d/ghSiR99gUUIVP95R3ktEzRs
         fEXdsn8+pNSoOVD/l0YBycdXAffGeYZAQaYdEsO+vMHKlHYwJVfM9RrGWc2pmq4VPdHP
         oyKQ==
X-Forwarded-Encrypted: i=1; AJvYcCWtXKNJ4Q1q2mBpoWwc05CAH7CM1XD38znhyXYyh8Jj3aWN0N3N+rEyLZpnjPsbfkKGyyfrAaY4efO+@vger.kernel.org
X-Gm-Message-State: AOJu0YwAVFeFbTuIeC+Hrld4h4Pzzyywee70NnTGm1AyzspGOJQWbJgI
	b+5HGU4xNfmi7070UgTszRwGzPUBCVGVslqp+vkY904AirV/Z28N9PRtBCDD6uIE/zoRIITUtRg
	t798r7nmmrHhDNFOuV50fOqoS3SQ7/r0=
X-Gm-Gg: ATEYQzxA/E3sWaYEuun5kZiIrDlC24ejy4SkQdAMi/JSZCv1xWNGqfCK9lmhCL1F9kV
	CCpJS7RQzbF/HC9pc4o8VsK3nlu/E2dZGp7+FdrSHginQH0ftILqAYZEVGzLr6RiIXPJraa8Mkx
	ZcYu02nrCifVMAua0R7Om+hJTAZ5zGg6wMrYpIbaT883pZWX1pyFLR88WSa3J3baJO2NWw6V695
	gzlrkQkFtuvZzwg0H3OmozjHLrSXpuQJPfGs4lhp/PX7z+sLkjUQDCfZbWTZl5S6i9uDDi6gAA0
	gF0m6kg=
X-Received: by 2002:a05:7301:580a:b0:2ba:749f:81a7 with SMTP id
 5a478bee46e88-2bdd1072184mr1276503eec.21.1772106593534; Thu, 26 Feb 2026
 03:49:53 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260223-panel-patches-v2-0-1b6ad471d540@gmail.com>
 <20260223-panel-patches-v2-2-1b6ad471d540@gmail.com> <44283903-f11d-4b13-a6c7-6f0d40a3d00b@ixit.cz>
 <CAHuF_ZoZDJ9bGKv9FqAoJsBMjVeyHAJWqoc5NA3sshep3cdDwQ@mail.gmail.com> <c80683ec-9c34-430e-8007-7d5f9677263c@ixit.cz>
In-Reply-To: <c80683ec-9c34-430e-8007-7d5f9677263c@ixit.cz>
From: Yedaya Katsman <yedaya.ka@gmail.com>
Date: Thu, 26 Feb 2026 13:49:41 +0200
X-Gm-Features: AaiRm53RyeCUYF1TdO7He7BUB6Q3FObLNVXo7a9OvUo3vwH6_hGF0E-ikadLDVc
Message-ID: <CAHuF_Zp6Rhe0e2FCGgDYXhqRJTf6w5Ly0UGy5u2ORAQofiRCtA@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] drm: panel: Add Samsung S6E8FCO
To: David Heidelberg <david@ixit.cz>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <jesszhan0024@gmail.com>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	=?UTF-8?B?S2FtaWwgR2/FgmRh?= <kamil.golda@protonmail.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268795-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	FREEMAIL_CC(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,protonmail.com,lists.freedesktop.org,vger.kernel.org,oss.qualcomm.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yedayaka@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 2B25C1A56AC
X-Rspamd-Action: no action

On Wed, 25 Feb 2026 at 23:24, David Heidelberg <david@ixit.cz> wrote:
>
> On 25/02/2026 22:13, Yedaya Katsman wrote:
>
>
> [...]
> >>> +static struct backlight_device *
> >>> +s6e8fco_samsungp_create_backlight(struct mipi_dsi_device *dsi)
> >>> +{
> >>> +     struct device *dev =3D &dsi->dev;
> >>> +     const struct backlight_properties props =3D {
> >>> +             .type =3D BACKLIGHT_RAW,
> >>> +             .brightness =3D 268,
> >>
> >> ~ 10% of brightness at boot? What is the scale? Shouldn't make sense t=
o
> >> set it around 50%? (just asking)
> > This is just what was configured downstream, it looks bright enough for=
 me
> > fwiw, I can change it if you want.
>
> No need to change it if it=E2=80=99s bright enough. If it=E2=80=99s usabl=
e when you
> power on the device outdoors with some daylight exposure, then it=E2=80=
=99s fine.
While testing this I found out that the max brightness is actually
1023, anything
above 1024 just wraps around, i.e 1224 is the same as 200. Will update the
max to be 1023.
I tested outside and it is a bit hard to see, will update the default to 51=
2.

> Also, since the user can adjust the brightness later, it won=E2=80=99t ma=
tter
> much either way.
>
> Thanks,
> David
>
> [...]

Thank,
Yedaya

