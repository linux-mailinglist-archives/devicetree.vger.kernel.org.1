Return-Path: <devicetree+bounces-257436-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gOEtL6d6cGktYAAAu9opvQ
	(envelope-from <devicetree+bounces-257436-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 08:05:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 88CE252917
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 08:05:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 9335568473A
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 14:10:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1F0A43DA55;
	Tue, 20 Jan 2026 14:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BGjvjIkG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f41.google.com (mail-dl1-f41.google.com [74.125.82.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0CE43DA41
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 14:06:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.82.41
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768917994; cv=pass; b=EPWztrZwzSQIjVMHaJHUb0nP/VI7chCMoQ7fIY2OWstgFXJJYlyNd9lJfOdthHapkC+EK9rlsyW+rWTsaziFWd6oiQLoDaRQrK3KTnGrm6HNlCHJsoG3y0I7E69S6Ys6uX9AY/rOU7L3AthJRjvdjZiX4GUuLt3h/GBMmQ/lyPs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768917994; c=relaxed/simple;
	bh=wpxEIKPcpfz5xqKXQMz+0Waal/J17WkYT/xpNLwvFpE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZIu+yt7S9T+92KXw0afADPOjJupzX4AC9Pgp8h5jahiUehrE3/m2n52HDVjyoV4suWFLMtiduCyKqvAD3vNiCsafxb0ttLxG1KwHu3ZXl4YHw/3edN+F72ZVgwTIsTahv2OzMwnd3C41Jx86nlYCweTMUUl0MUqlYufOf1ou/+A=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BGjvjIkG; arc=pass smtp.client-ip=74.125.82.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f41.google.com with SMTP id a92af1059eb24-1233c155a42so6913686c88.1
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 06:06:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1768917992; cv=none;
        d=google.com; s=arc-20240605;
        b=bfpYoqQ7EX7H1X0KgNAJpEUQjrNJgcxF8LI0pEM148VvKNT6JgteOrdYxQ/JPRt6H5
         ow4bGpdUxpSudQfhlYhGkJ6jb850qee3QQKgm1/0RaLY4oyZPi2CeeqKvLlMEC8lXewf
         eeou6bKFoP4Tz22BXoGogwxpMzfmGLY+2yVGZmT6JQ3ngwOEe/jayiPEC5Lg0WMMj1Fb
         90kC24gNcf1hq4ncScokeSWqAyhW9CHpC+ZD4s/lURAC1Q61fReqEYhdSRKjgj6ZvSUy
         iSx/awwkQoz1O2MIXaBf5BPtl2uoOLYMtng4xGK3RkFInK6Q7J2HnC16INaDw75ml7Rv
         NK7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=VXFM7Jkpwqf/MKm70+eA7jdHdZGuqW/xQ6SJbuMNCrg=;
        fh=2WOd+69rUMXQLNicrkG3B0VFgg9QcBf11z9pu93ESL0=;
        b=I20A71RENm7mC1L247ZWgroPed1xywOZbEqvYZr8zhRzOlYsIv9AWhMAM+f4Nb0ZqB
         6aBy3HOjs2uT+jjxPFvWozJ4jQyG65DznthrLiRJ6mYz2y/oLObn/+AgYvO42GkzmsjQ
         BGRGTWhqn3SW2LUINFMMRBgy3mrl7k7I9MZ8EJ92WTqU0dKDEZEQzjXLdG5Km+aRTUeA
         6GKoMLRpWMk7HW7H6U2UclrnMQOWaxSygY6jj8B+UZd07jRqXhh6Xhg0xaQ5NhNtwl4k
         +t9AMTq1md1v2gYQxbwQlojiOi4TQOWDmHGmsx9YOeAkV2e3n9G5JI4v7K2Xr8+PEwgx
         cIQw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768917992; x=1769522792; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VXFM7Jkpwqf/MKm70+eA7jdHdZGuqW/xQ6SJbuMNCrg=;
        b=BGjvjIkG4uOb1dM73dWvbk4Hu8M58GHUOBVlOsB8DWVeY9zDC/HPtYlwHB+HJjAMrQ
         ntkNBRCVRbM6cf+NpMuQa2al3OqnbxiYUwgjJRTd5dNe0OXGMLKX9Z+IFHaH82TqS881
         c+y+3VYLH34zhmjCY6L6H/+Z6NH/AXjrs/MPXYA0rz3CCpWiMsrG+zq0Ct/giU1CxMhl
         xvRDdJV3Pog3EsjhkJir5yWiWHWFjlt5a6XGDS6XTS1zeBliuzea6ILRMlXvmNWcXSTS
         XEoJS+Es50o/314X8cJBIS+RiUKoNTE60veOxnVENWzEBx9HSzUl28TXedQXJT/Vsulx
         ZtGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768917992; x=1769522792;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=VXFM7Jkpwqf/MKm70+eA7jdHdZGuqW/xQ6SJbuMNCrg=;
        b=PzVmskdMIAsxqm3ePeV4Gpvu+6RvvVrT2FXwgfkRhNKmNuUFO6xw3FYfPA1G5+n0Ng
         8nVAa14OPQezAlXJF8cVqhFlVgxU2UMnn8jEHEmKKq+pIPznndGan0ZVvIxv2vuw8Lyg
         Ge4nP6MdiiGOHAvG+cslaMyRV7aVE9kWmNvpCgA7A6tuanhxB97RoBzSmZTTU7/rLBxJ
         nPnokk+2XOfI1W4K2GLcSi2CKsCLbKsLvbX1eCKEIUJNDkkMkrbKXiOV2bdOqSpz95KG
         6YhayiDXgQyH9wsHMzU7b5UbbbkLsL56X+XsD6fE0AZNJy1Olc66jXUJEltfJfg7zcyL
         xbmg==
X-Forwarded-Encrypted: i=1; AJvYcCVSkYQr/+D6XWs9n6sXIQZLf9Oohs2rtpZtLBMo4n79+Gc8h1f9qRapn5SVR4nf88wtOejNzGBvHhUO@vger.kernel.org
X-Gm-Message-State: AOJu0YwNIyeSlvmkA+AcQREAhIUtujtDvGv0wK5wgeCkt7+FQOp3ZH/E
	dBMLhitZxM3tbC92EIBiUhSHIOvS3xr95gzcZw/MswXMYG1aOW3FxsDRDHklkuWzFKJFK7hqkSg
	79H9ClIt8tyXDmOXFWbcHcD0ZHZwgRXI=
X-Gm-Gg: AY/fxX4naOM7bjzAf0hxERt2RI/MsbdROUOHz5SyeGYF6unyv8HIRLp8iETXhx5FYmR
	zpCfcPgX8WWbNFhi29v3VRN1ZK8Nejja33imuAR6Bz+FwqVMsTH54IVY7MFIk1SOSGj39kJ68o8
	W1GJ5sqobrKaSrMyMmqsf7FdmBxCMjQFf4YDjgaTIqUnFva7m7gWMjDSu80ySYvlXDGxGiLjqel
	AweSKq3muwrEl/lKoldzDAshSbniIUmdQjEBeGyTMHsE2T7AWcbNaY5xPx/pQAnSZu7CF+G6VR/
	FheNNo39Ox9yLe3bZsH+YfixkOLetzH1syyvnu3nYArLaStTpl+rgYHEPpkyXRxhnc54UCIhpk7
	SIcEWBRdcYQ==
X-Received: by 2002:a05:7022:eacf:b0:11a:61df:252a with SMTP id
 a92af1059eb24-1246a95864dmr1539061c88.6.1768917991939; Tue, 20 Jan 2026
 06:06:31 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260119-tsc3400-v1-0-82a65c5417aa@protonmail.com> <20260119-tsc3400-v1-1-82a65c5417aa@protonmail.com>
In-Reply-To: <20260119-tsc3400-v1-1-82a65c5417aa@protonmail.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Tue, 20 Jan 2026 16:09:12 +0200
X-Gm-Features: AZwV_Qio-O-vTE5PHylE3IQy5B0233NJK43z8Dbc2ZFFAu4-CQCiqmv-S4Yu3Bk
Message-ID: <CAEnQRZAuSkDmJuMAaJwKXhZRZ868_hFbUAy+raeS-vuZPMnjxA@mail.gmail.com>
Subject: Re: [PATCH 1/3] doc: add Device Tree binding for AMS TCS3400 light sensor
To: petr.hodina@protonmail.com
Cc: Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	David Heidelberg <david@ixit.cz>, linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-257436-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[protonmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[danielbaluta@gmail.com,devicetree@vger.kernel.org];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[protonmail.com:email,ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 88CE252917
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Jan 19, 2026 at 7:19=E2=80=AFPM Petr Hodina via B4 Relay
<devnull+petr.hodina.protonmail.com@kernel.org> wrote:
>
> From: Petr Hodina <petr.hodina@protonmail.com>
>
> Adds a new YAML binding describing the AMS TCS3400 I2C light sensor,
> including compatible string, registers, interrupts, power supply, and an
> example node.
>
> Signed-off-by: Petr Hodina <petr.hodina@protonmail.com>
> ---
>  .../devicetree/bindings/iio/light/ams,tcs3400.yaml | 54 ++++++++++++++++=
++++++
>  MAINTAINERS                                        |  6 +++
>  2 files changed, 60 insertions(+)
>

Please use the correct subject prefix. E.g: dt-bindings: iio: light

If you are not sure what prefix to use just look around:

git log --oneline Documentation/devicetree/bindings/iio/light/

