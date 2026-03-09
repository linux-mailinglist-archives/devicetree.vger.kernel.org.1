Return-Path: <devicetree+bounces-272827-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oBGxGhWhrmkLHAIAu9opvQ
	(envelope-from <devicetree+bounces-272827-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 11:29:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F7B7237141
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 11:29:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 947293006230
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 10:29:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D8D238F95A;
	Mon,  9 Mar 2026 10:29:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b="iKKxMWPg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E662536B049
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 10:29:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.218.54
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773052176; cv=pass; b=YtYQm+RMxM3S/yV7vnF1Hi/FZx4Nyzp+vPi7pIG5B3CbSl2TNf69IDWaY+cydifI5h7mQbm84Lr5QF/mtmAML61OpdWufNbXiHwCvSfcECklP2QouZhZh5awp1yMLGJS/X9yX8FV/J4+A4pmLGKwHsmHKzBqMoAPnLvwr+OK31A=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773052176; c=relaxed/simple;
	bh=nzcbenEcYkPYYRcM15AOs1wov/pK1dlaepSRpqvipk8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZDGFrq+z/AxAPTvWQqS9mW83QB0GCpoC/lqoDIOabxDuzISGU2u5vStUfWNDBovP634F7lVF3DvIkrMjcJXHEiWx3IjdnmIxCUFgLDD3lCVHaTIpQlO9DcifH7FRzzfkerESuMYQ4z4jgIopVhncjwgxCc9b87Vb/MHR8l7BqQE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net; spf=pass smtp.mailfrom=flipper.net; dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b=iKKxMWPg; arc=pass smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flipper.net
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-b96da7b2e2eso204484066b.2
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 03:29:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773052173; cv=none;
        d=google.com; s=arc-20240605;
        b=E7VWgUZFq6qq8mB1HysvHsXWoyNRWQrBQZZ6Zw4f+0lpZW1r2ZNRJAzOqjZR2j+Ik/
         nUZFjkBHM1FfeKYdnBE3WVKvDyEl8mh0vzySQLbOc7PwfLj5wlloASRI2K5S4bqlp2oS
         wVO5dlVm8Md6QJZawZB9k6Cmlu+3fesrBNwjGwLc7wp94gr/DwUdXrFb9otnXErg8g1w
         JDkbjWGFMUaqGqjOCPBpD3AoL+2hwNkZqKfWeOdOV7SLOVFCzbcvyWUNZuf8QTlpo+TY
         GNM/CLN8zo5PaEV93N5IlQ48JmsEAqKDrFH20TE/jUOSKVhrU0D8QQmYyWtc5nH/SxL5
         VxWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=ZK2rFDeX0KxwuJJMF0gWd/rE1Tda8J7ydGgJVSDAuto=;
        fh=nxbSa6Eeo01TJ8UFD9mKH1/Si8atAE8t9FJxc60uhmI=;
        b=W4dNLosyzEXmwgUyX0Wbw9UTATzpbJxgJon4M1UV629D0i9XbI3pMeoWueJ2q7QYQb
         2a4JPvGmRZ1QpMsYvd4MrkVO3mUe6RcJe2I1eBCDE+kGZ3pmLXFSC736CCmDOiTzbldv
         94pp2OLiNsmdyjt045nZerMLJ5/K8CtqopaIGqIl8wWtm1P4wGKXdrja32WVJ2hmWVT6
         SutesbWG5fovWGObiK+nNW1wGDKVKOz/VuuduKaFlB99UZuL4gZC9E+DX+PiI9fPp7S5
         MqM4NEE/aD0ZyvwcoZb3xd60EUBrEjJ9W2wUYlFb334dBokIQ5Z3c3KMt1tr2p8oyBKx
         Fc+w==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1773052173; x=1773656973; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZK2rFDeX0KxwuJJMF0gWd/rE1Tda8J7ydGgJVSDAuto=;
        b=iKKxMWPg5la4lx4k0o+gpw2SybnPOtL2JnRhcZBEoawcVs+OnyquSu7WrgfCx61QYQ
         ycMdSLanUVlSvnHkY9fmju9J6bzqCtH+3I+Kp6wLAtr0tTq1HmneIX4fivIjSBf7HxqA
         ofRqBBpfn9KNviP1UmVBw27SRh08P5kMn00D2Prd78fSReqj4+qapv09n5cScXJO0DJS
         oAiYOJPke4DM8M0UqJ3A7owZnLoIW5ms/rPdXtMFMM3E+VmifqcQ9IvkS1E2sByRkOJE
         9/YIVPd8Q5reVbffjCJPm0ZhPvRApJMAv3L4eKzRNGgnwETrydRXt7TXzc/T6F9ZEq7g
         03UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773052173; x=1773656973;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ZK2rFDeX0KxwuJJMF0gWd/rE1Tda8J7ydGgJVSDAuto=;
        b=DmoTBVsZ2qOAHYQQmvgUl56xoBwdbpNSNthqeo1Jof6/aMW7XS7pZv1zRhzyVrevbv
         YMQpCdLc8C+sXqV0gQIIh4J6ij+9buo/Z4alJsNUWxhgGYlZ86Nri63t5/yp+c9kg2GO
         laMNkIX6LgXMz95huoUoTJ///vouNRXZWp1LKHwxdWqazzZQDD0N41cSh+YzC8othdUs
         ScEIWLGNbm87crDs04uXe57IEFNPcas1Tfjw13FUSITQGCk1xG0S/oFQrXv+RZ/3jIyw
         RCsPXeblQVHc0DekU3yrllu1MPDVgD8t2obvdq9VquApfTXEpTjb7HwFAOap9xzjMv4a
         PskQ==
X-Forwarded-Encrypted: i=1; AJvYcCWJyr0mbr8MFmxuxb9HQEML14Q1hAL7dRPbH9J+FzEdqZ6be23j4wqn03WEg8lSVxi315m6UX5dBU3p@vger.kernel.org
X-Gm-Message-State: AOJu0YwO3n0Enp/hVV9Mh4hzbRCODM/8laDflqVNPNmLTs/N0fcwBS3M
	tclQCWgxW/9/5oTs54HCajfP8Juqz9J55D2h8cl3SVnRmgCCjakBilNGAUsbpiFN2+pbdpQ6Ic3
	ckhJtZr6SUw9PCu8VGZAsOygwrECcbjzYZeBa0E4lZA==
X-Gm-Gg: ATEYQzxpZs8H9rBXk5rE5gksTPDFx6Sh1LPLSmrmtfJg3HaDga4O4dIB4IrKRjXgXte
	CPwqGIesm2RxwvRk7HUl1KLxt6Ivzq2dSMAWidAsT50z3oAmbMLgoJm0A5LVvOcLvCBfUU+ijs+
	2tdjGMoVKPo+4W3lvNcXi8vyZsBymNLTIha1388LuS5ofHscBf7hP8jf9Ndgn3X+O0dBsw5ffek
	XlXporltJWmxtlr3AWZ0hRpu7C68Vq+bTLNeY4n3AUaRXCprI3g/Qpjic1DY4m/nBIt7nDv/N+a
	DerNIn0=
X-Received: by 2002:a17:906:ef06:b0:b8e:8874:8384 with SMTP id
 a640c23a62f3a-b942dbcdc8fmr543893266b.4.1773052173195; Mon, 09 Mar 2026
 03:29:33 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260302-ina4230-v2-0-55b49d19d2ab@flipper.net>
 <20260302-ina4230-v2-1-55b49d19d2ab@flipper.net> <8584bf59-84a4-4b23-90f1-62297ee0da57@roeck-us.net>
In-Reply-To: <8584bf59-84a4-4b23-90f1-62297ee0da57@roeck-us.net>
From: Alexey Charkov <alchark@flipper.net>
Date: Mon, 9 Mar 2026 14:29:24 +0400
X-Gm-Features: AaiRm50_OXYeMv9cxXjeiyzokshUjqswaEkBZbVdDO0ssxvP7RrafNQdZtT7u4c
Message-ID: <CAKTNdwGdMoFN3yd+pdS=Bd3vHmx6WE+j3ccworu5O_ysRCznDg@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: hwmon: Add TI INA4230 4-channel I2C
 power monitor
To: Guenter Roeck <linux@roeck-us.net>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-hwmon@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 6F7B7237141
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[flipper.net,quarantine];
	R_DKIM_ALLOW(-0.20)[flipper.net:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272827-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-0.983];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,mail.gmail.com:mid,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,ti.com:url,flipper.net:dkim,flipper.net:email,roeck-us.net:email]
X-Rspamd-Action: no action

On Sun, Mar 8, 2026 at 9:46=E2=80=AFPM Guenter Roeck <linux@roeck-us.net> w=
rote:
>
> On 3/2/26 02:55, Alexey Charkov wrote:
> > Add TI INA4230, which is a 48V 4-channel 16-bit I2C-based
> > current/voltage/power/energy monitor with alert function.
> >
> > Link: https://www.ti.com/product/INA4230
> > Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> > Signed-off-by: Alexey Charkov <alchark@flipper.net>
> > ---
> >   .../devicetree/bindings/hwmon/ti,ina4230.yaml      | 130 ++++++++++++=
+++++++++
> >   MAINTAINERS                                        |   6 +
> >   2 files changed, 136 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/hwmon/ti,ina4230.yaml b/=
Documentation/devicetree/bindings/hwmon/ti,ina4230.yaml
> > new file mode 100644
> > index 000000000000..69839e7a3197
> ...
> > +      ti,maximum-expected-current-microamp:
> > +        description: |
> > +          This value indicates the maximum current in microamps that y=
ou can
> > +          expect to measure with ina4230 in your circuit.
> > +
> > +          This value will be used to calculate the Current_LSB and cur=
rent/power
> > +          coefficient for the pmbus and to calibrate the IC.
>
> pmbus ? Is this a typo or cut-and-paste error ? This is not a PMBus chip.

Indeed, cut-and-paste from ina3221 which I used as the basis for
making this one. Thanks for spotting, will fix in the next version.

Perhaps it should say this instead:

This value will be used to calculate the Current_LSB to maximize
available precision while ensuring your expected maximum current fits
within the chip's ADC range. It will also enable built-in shunt gain
to increase ADC granularity by a factor of 4 if the provided maximum
current / shunt resistance combination does not produce more than
20.48 mV drop at the shunt.

Best regards,
Alexey

