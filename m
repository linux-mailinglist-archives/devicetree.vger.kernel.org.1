Return-Path: <devicetree+bounces-265169-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aGKzBLQPjmkM/AAAu9opvQ
	(envelope-from <devicetree+bounces-265169-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 18:36:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A3F1212FF97
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 18:36:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BC36A304CCDF
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 17:36:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0180C257452;
	Thu, 12 Feb 2026 17:36:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UTWdxSbB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6342225416
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 17:36:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.219.45
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770917804; cv=pass; b=FTu/kHkmHIshjfRdq52/gcD5auDMo885G5FCj4jNymj3laCrldH4iD0lSdpw5FmSPHYIUtvULEvrqfnbLC7rYldZD0iN6vD4ys7mMb7J7tT8Goe02dSZEUvlojoXS2ziHCqvhA4sMAcH9jekNgKJHPEMYGOLm2P2L3JNifHBwQs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770917804; c=relaxed/simple;
	bh=3CjPaR7dXI70Ts3a0V/kq1h0g73pss7EqLnjg7RrflA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=A8/ughWGI4zk4W02VZhk8YidWxThUok7bMrBgCNPHW3E7RGkGyKCKJ9pPx1owpDJ9TrOIvQMtTMBxQyIDPVeX4Gswc8jJkg20XvtY866BF2m2goB3cATCtzpPW0PzsBWiweGY3Jh70wDcItyV9HgEZLe0lUUE8+xjQLGfi5EPTg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UTWdxSbB; arc=pass smtp.client-ip=209.85.219.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f45.google.com with SMTP id 6a1803df08f44-8954b34b6c1so126836d6.2
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 09:36:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770917803; cv=none;
        d=google.com; s=arc-20240605;
        b=iTbQxGm9VXNpzcloOfDjGMXC5RS5ivyZL/Pf7RsL/T8zch9nABmFF//nNmgQRZRdYM
         6zczOiRb750QT4hPUAckKuLXVq8lMuIRfEW5+y5RwCdpysvln1FmaXQkmC0kCp0bEYTe
         PcikFClXgzqallq5dD7n0+IxxmzL5ZDZEdSc9Yl5FJGncUyOyDsx3B8pQu3ARjV8VmUB
         CMpur2TnnLlGmoHOY3B3Dx5845lSJoEM10SlBiquwuzErw0BG9YB7UBFOWgNdx5C8pMB
         ERNLaeE38uZ+v/GrsTeNoGXSIPpjwF11phkpdZGUphIL1uV/EDpRhiPHgK4MnHinWITV
         /NJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=3CjPaR7dXI70Ts3a0V/kq1h0g73pss7EqLnjg7RrflA=;
        fh=43Sm/ZQV6UCC9D65JwyHL14UQkiuYWcLKS2l4/Q3S2E=;
        b=dDS9YHtA5fY2qoAgS5Ya7DcgD+X7y9A+AYqrSqLi7YbsHQ4WGgSzAxaGYGAMQVBez6
         PQTzV9ukbhsbB8Rgn4DZsYYRBCDxliyYkMvdLnGi4RMka3kiJDvhj+AiNN9s1T8GSCMZ
         bWOlqPW9xPgwan83JAd+ByDiGmarrnhlNW6XglM9xqZPF7KSQTTIQeDb6Fw4xMm5Wn3/
         eOTmCXwmDCsXcnJwfXdY04lAHAS44EtP2NciBPodGoAqSOc5xyhOEcyh9SDvCMfbwaep
         sDvuDGz4JlAs7DCM6I9llte2+kAN6rqCwKfkljKgKVL+mRrBypEFkzTNSFyZe7y50j+p
         PwMw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770917803; x=1771522603; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3CjPaR7dXI70Ts3a0V/kq1h0g73pss7EqLnjg7RrflA=;
        b=UTWdxSbB6Ksgw/BmX8tTuldchaDHKxcI80e31SIESrAxVbSGZV7ftGYue/YA/NJFIR
         f2Cv9BBG+9QQTuvD8aGS7dEJoNwVK6UQKfS8tMpGDL9YyO0ktLyJUVNh5hsh58mva7Om
         XfyED+KGJYFfn13KTFicrL+05rZvoVSjpQWZ74gyAbS9XTocfavGpYS4858+FeFSsIO7
         Xick0uSflEy87+KsgkKmebWbF9CCcpLtIujJJoapFvmx9/OZ0NZN52kEw0Q6xtJx6WHx
         lGr64siwExnSTLNZPYzni7CP1FLQe6RD5uwm6MKfe0dw5dFoGFCayhM8e2ulCzNXV7IV
         iYOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770917803; x=1771522603;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3CjPaR7dXI70Ts3a0V/kq1h0g73pss7EqLnjg7RrflA=;
        b=JZAxWxoV3P/qGiHjQDOJwcwZsrdK4DeduSC93rsFKw++GtqlQ1hxcPlKbeVC1waHT7
         WEWFAUA81BgCF+CUCg5PkdInCCZ5iz/bjIg6/OjuQMGpiYebqGlPdVm61b7vefnAHRWv
         +bsILQUw3PwuIY3SLjw6PElU8Bs6Jl78RzalVWK7lOFmQTp+XTwRgXS3UKM0zLH6xEd1
         qkCIVEmsoHiUVyXn+6kQtKGZx0QPQheF0PwsWkgGX2KqNAkyt0DwtVUE+dLwQicxumH5
         BeEwwi7QVWMSe9A0ERjqznGZLofyda6O3DRZgzDV5NqA6U4moYLsJMzz1Y2KMMY5lHPr
         P5Bg==
X-Forwarded-Encrypted: i=1; AJvYcCU5cbkNsePJMMpzza3ofMbiq0PP0L07OFC0gPV5MDkI3oqK2XTt4F1RNlre2wz6gT23wnIkTttUaiZ3@vger.kernel.org
X-Gm-Message-State: AOJu0YzZ57FLgRq7NhsK7fVdW2qZrxtiyMzEdSST2MJdALD4U/onPlOE
	mOaTw+3nzcAlQ8sUJm3x/FcXJSPiSs60W3K0jOnHDkYotBi1KRtjMLrzWbld6OuPN94mpEU0owU
	0RLz6xvpF6jlEVC8f0mKy0hoZxSgwKpE=
X-Gm-Gg: AZuq6aIXTfqPGkUhGm0QcJ6fn1R9qdmLdqOojHnganYp4sYcDuavfNyd7lsAESR4LvM
	09L4xpUw0Yy11+a8gbPEwQ+0qa21+mVTJfklxBccyNcy8zgm4HKEh+TvoiC1l/zs5D78Ozc+xll
	yX3bSo0TiNdCzfYLGaXtnO9VJmYNjRhtWfP8MLvXZxr8SACopMx+CY4xD7jpaMFa+3EmmjDAFdz
	sr1G5tXlAwrpQ+XBaE7Rfk8KtlGiL7+hAAUMkUA8QtxcLY19z0shX33KmFqDdhT7XtWdYhNQCkv
	5QGWPdXz+yBctNS7gsx5NFSmpACftRl1bZh4kwiQ6tez4MxeC3S0VspS6+ODyBGEaSnSOS/mHNZ
	uhoPy79U=
X-Received: by 2002:a05:6214:4841:b0:896:faba:623a with SMTP id
 6a1803df08f44-897334e73f8mr3987776d6.7.1770917802728; Thu, 12 Feb 2026
 09:36:42 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260212-upstream-20260219-v2-0-2b28fce5d09e@gmail.com>
 <20260212-upstream-20260219-v2-3-2b28fce5d09e@gmail.com> <20260212-spiffy-true-porpoise-5a9e86@quoll>
In-Reply-To: <20260212-spiffy-true-porpoise-5a9e86@quoll>
From: Yasin Lee <yasin.lee.x@gmail.com>
Date: Fri, 13 Feb 2026 01:36:31 +0800
X-Gm-Features: AZwV_Qg12vM3aHX-Jn3bTTB5OYmvRWOZRlFMVgVkibwekXFhwFtDublkvtAqcRU
Message-ID: <CA+NOmz+1=CcczM5avBqBVzFDbeOSbvPit_g3T1qvaMh75hRUnw@mail.gmail.com>
Subject: Re: [PATCH v2 3/4] dt-bindings: iio: proximity: hx9023s: support
 firmware-name property
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265169-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A3F1212FF97
X-Rspamd-Action: no action

On Thu, Feb 12, 2026 at 7:23=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On Thu, Feb 12, 2026 at 02:26:54PM +0800, Yasin Lee wrote:
> > Allow specifying the firmware file name via device tree.
>
> Nothing improved here. So again: Why do we want to allow it? Why a
> device needs a firmware now but before it did not need? What changed?
>
> You already got these questions.
>

Hi Krzysztof,

You are right, the commit message did not sufficiently explain the
motivation.

The device has always required firmware; previously the driver assumed
a single default firmware file name suitable for the reference design.
What changes here is that different boards may use different electrode
layouts and mechanical structures, which require distinct calibration
and configuration data.

I will update the commit message in v3 to clearly describe this and to
clarify that the property represents board-level hardware differences.

Sorry for the confusion, and thank you for the review.

Best regards,
Yasin Lee

>
> Best regards,
> Krzysztof
>

