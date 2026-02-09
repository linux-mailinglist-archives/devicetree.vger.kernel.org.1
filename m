Return-Path: <devicetree+bounces-263802-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6OEQDOJqiWny8gQAu9opvQ
	(envelope-from <devicetree+bounces-263802-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 06:04:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A8DE10BB26
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 06:04:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 62B4F30073D8
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 05:04:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 528E4255F52;
	Mon,  9 Feb 2026 05:04:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jMgHC/d0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f44.google.com (mail-dl1-f44.google.com [74.125.82.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0DA1BBBE5
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 05:04:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.82.44
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770613469; cv=pass; b=o+MOojFDgyydsSnVtpil+uOVHzXk0wPNM2RG22sSidQAXLbBLgZY7mgFx7jCry5K7FGU72vWjFGXH8xX5Xh10mHwC1b2p6FHs++kOeiML3TjuRph42tQ95wuejSyU/XnblHg+mfOQw4F1/cchgl5sr/mOh+4h5E8Tj9D8onu2Po=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770613469; c=relaxed/simple;
	bh=fBbG1mnFlbose/sSakTAYymCEKLG6HMiS5tjfl9wTSk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=L6vHQyvmjgGXXEHZPApAlrXplCIa0fjTGSCvLqJNqYDDMmWs+rLGYhPHgOzhAYJCK/EcvF2DFe3r0CWRyG55z8r+OeLfjKD5zcyAxoQXcsmCuZLSFrqgAqco6kCgyK93h/ekEjOvQXnSlJHvqbp61TFPTEMVImdC5e4CHVCl3E8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jMgHC/d0; arc=pass smtp.client-ip=74.125.82.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f44.google.com with SMTP id a92af1059eb24-1248d27f2b9so4559806c88.0
        for <devicetree@vger.kernel.org>; Sun, 08 Feb 2026 21:04:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770613468; cv=none;
        d=google.com; s=arc-20240605;
        b=hktZL8VszDX0z+okcTfckYkeGiLFCkBsi0Fd1dW801E4tJrJ2IawNqe3IyE+cUO/7l
         XTqW0oTGX0mPw1fiT0s92RjnPnf7RmngPdykJBQ3ONExeOepWUhEquCSx9hN+0TtYnr4
         8TqdBw2kt5SCWrgke+aTBAXfWN+lCVQwsldzAZrfNw5iEBg0h3J8aCEaVpRfpwVKcspe
         e3exZlcDODsjh9gq1us6GMiETiHpZjbCeiRpHpkhiLLYO9Jh2VeKk8HI0/fYfPWPZkck
         X+FIIMAmI7X3UQQJqjDzksTaAJo3TpPYgnTk0O5O0WsXullwt+Fst1d2LZv1vEiGm4qP
         0Quw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=kLdAMjKN4MfQwM617A7tGdAkD2nzrI/3wQiBJg1Ko4g=;
        fh=hjraGglFTztjvTiKZVQ5ppfTZze9bCLYAC+SbZi4JmI=;
        b=eI7J4QtPmVhlLk0sBkZPeNNgsygquOWs2PqPdS1X/iVAIskzh4uo2Figzfwp9cQvGB
         WqYwfMms9HbuX0Wi6n6jHnT5uuZypKksnDO8TAKixaH5zrYE2uSt8MbdJKzsHgLl9qsO
         jqTKVY+m3kBBY/I23jDL+RZP5kiSTe8vN9StIfvJROEALHtdDvyaC3m1gzpl71yOqi6w
         4nShJ4aYGQqBjpQTNSYKwPuW2EM8hp89i8jdXafOl7oekzbu2mDvNznOs06DWpuPEHKr
         L+RnohoNUNJdxYS1ebVAjznnGExv9rT37Wh1Qs+g03evj9eYBSIhZFmqpkAqZPzeBNS3
         SJPw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770613468; x=1771218268; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kLdAMjKN4MfQwM617A7tGdAkD2nzrI/3wQiBJg1Ko4g=;
        b=jMgHC/d08P1AXJbQaCu2qEQDDCefuGWcdyKjBJLxBhmVxhchmfPbBoET9JJhgifc8B
         r7pmSeY4ifrgyhkUDkNRvhxo8pd0LTLZc6cUShqq4be5hY8LMlS+Rtj+WD71pRrMq8oW
         erSuQIa59WpFLxjK3Ka14ZyR29nhgcZewEgTIOzr6SQBequWa0U+iaMSbf4nwgE9vJ8n
         v4i2prAbEUHchpMDuaW5/DCPxHVsCG80woYbeMmjtz58NaRHeNkp1VQFVVBAQwSPubRC
         S/c/Rm2mMRhyaGwKepa0nf92fSAyA4Y9ixKkJYjm6O6kcxaN9wzhUzlVzfRPu65yAItw
         pDpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770613468; x=1771218268;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=kLdAMjKN4MfQwM617A7tGdAkD2nzrI/3wQiBJg1Ko4g=;
        b=N8iwRKgSmYWUxXfGH0dTrCs+GOgTxqEH69PxL3d8AUq+LmHGTpi7S9kzIzZj7nt/rm
         4yu/5RFxPasJmgZrjIZEsMAHUX3ROM6nxftMqW96GW3MOCkvFrIQv7VNe4hgFkZMCLiA
         YrRo6YR8bcl4BG33OpF4zyP8tCsR639Z4Dt5GebyTirTV63f0aUiO9dZcwk4fctV6OfM
         nD4h3rA8KLBZhcr5dkzTTf9cTriJH+GcmGMLHMQj65osdPu9fBqKGEN0QnxDrhzF3OwL
         J80ejqv1na/QGqn3KM3eVZj1tC9ifOkJR01OlDTfhkDe87jNkowu5wmCkX3Q1ViRc4ey
         Cjfw==
X-Forwarded-Encrypted: i=1; AJvYcCXLznZTVmc/gMqQFB0Av1B3RZvqNwz9C2JSFq9uYQgilsmuFGH5Z/jxzupPi2GebhCsLu3gIArO9SQU@vger.kernel.org
X-Gm-Message-State: AOJu0YzpwlIlJw5MNnRtGqXzyhNbgQ/bBVPEpeL8rmjqTNnCKnucL0DY
	wBlLGAmH3yGxfV8iHfO46WvkDGAnkzKWiB3ox7gArB3KABaSDQPbQA8Pm34S7frZ0L9g/EtWkEY
	fc97hJcbOpk+Nl3WjSXgKeE3hc95szK4=
X-Gm-Gg: AZuq6aI+OlrZMAMk+PX+SQo99ADE8BePjiceXuuh5ftZc0x+mgNzVgF7joEEe2j5m9B
	3qScOdU3eQFbUSjEsleSGo5v6tO2VigP2Y1dkc7UswhomXVyW0gFtU0pbC8E6kvb/KgspY+2zRQ
	5bxv3rNlFLax1saLqWuPMezhl8a/cAPu1zkKQZWgnsuIga4JncFAuFVrMr5ZJkybSUAwcSaWhud
	8yp3OjNpvmWncKXoZfBNVbk5dHpBVmZ3gvnevyOBn0OEtpd6G7jHitAxmkX/6NEvaEUmexw
X-Received: by 2002:a05:7022:45a7:b0:11b:d561:bc10 with SMTP id
 a92af1059eb24-12704020b8cmr5530699c88.41.1770613468012; Sun, 08 Feb 2026
 21:04:28 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260107144507.46491-1-Ashish.Yadav@infineon.com>
 <03da3b10-dfe9-466a-9dc9-b51e29938e3e@roeck-us.net> <CAJKbuCYcRMrX5H5rWXWXOz4FCZi5iu8CCE2Oi3WEsWqEikqsYg@mail.gmail.com>
 <f0d230be-676b-47b9-9565-22319b8e62cc@roeck-us.net> <CAJKbuCYUCr-R-91Ou1y6XDEPdqabSDvCxUypc-YmW=-EPxgNyQ@mail.gmail.com>
 <787ffcff-28cb-43e0-97db-19dd7a996d13@roeck-us.net>
In-Reply-To: <787ffcff-28cb-43e0-97db-19dd7a996d13@roeck-us.net>
From: ashish yadav <ashishyadav78@gmail.com>
Date: Mon, 9 Feb 2026 10:34:16 +0530
X-Gm-Features: AZwV_Qi8ECim-_A_uIZdQNa43I4c3A_fbTT40fu5-EfM7i8A9Souso3kOJ87A2Q
Message-ID: <CAJKbuCav7iCdpph7HYW4=QxEmJ5+vuwadRmaQVUxT-TBSBBGVg@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] hwmon:(pmbus/tda38740a) TDA38740A Voltage
 Regulator Driver
To: Guenter Roeck <linux@roeck-us.net>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-hwmon@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	ASHISH YADAV <Ashish.Yadav@infineon.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263802-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-0.963];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ashishyadav78@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[roeck-us.net:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 9A8DE10BB26
X-Rspamd-Action: no action

Hi Guenter,

I hope you are doing well.

Please find my response inline.

With Best Regards
  Ashish Yadav


On Mon, Feb 2, 2026 at 5:59=E2=80=AFAM Guenter Roeck <linux@roeck-us.net> w=
rote:
>
> On 1/22/26 03:42, ashish yadav wrote:
> > Hi Guenter,
> >
> > Please find my response inline.
> >
> > Thanks & Regards
> >     Ashish Yadav
> >
> > On Tue, Jan 13, 2026 at 8:40=E2=80=AFPM Guenter Roeck <linux@roeck-us.n=
et> wrote:
> >>
> >> On 1/12/26 23:24, ashish yadav wrote:
> >>
> >>>> The need for this, especially why it would only be needed for PMBUS_=
READ_VOUT
> >>>> but not for any other VOUT related commands, is still insufficiently=
 explained
> >>>> (and I failed to understand the rationale provided earlier).
> >>>>
> >>>
> >>> It is specifically needed for READ_VOUT as it is being used by
> >>> external controller to monitor the rail health.
> >>> Other Vout related parameters are used internally in the IC to for
> >>> output voltage related protections and does not impact any external
> >>> decision making.
> >>>
> >>
> >> Sorry, that doesn't really make sense. How would the chip know to matc=
h
> >> VOUT with its VOUT limits if both don't use the same scale ?
> >>
> > The chip telemetry would still show Vout as 0.7V as it does not know
> > about the external feedback resistors.
> > Hence, no need to scale internal Vout related parameters.
> > This scale is only for external vendor use to tweak their telemetry
> > output voltage reading.
> >
>
> You fail to explain why VOUT_SCALE_LOOP - which is supposed to handle suc=
h
> situations - can not be used, and why it would be acceptable for other VO=
UT
> related attributes such as VOUT_MIN, VOUT_MAX, VOUT_MARGIN_LOW, VOUT_MARG=
IN_HIGH,
> and the various VOUT fault limits to show the wrong values.
>
> For reference:
>
> VOUT_SCALE_LOOP:
> "Used to account for any external attenuation network on VOUT sense
>   feedback and provide correct VOUT reporting."
>

TDA38725A/TDA38740A has only two options of vout_scale_loop. These are
1 and 0.5.
If the output voltage is directly connected to the output rail, then
vout_scale_loop =3D 1 as there is no resistor divider in the feedback
and feedback voltage is equal to the actual output voltage.

If vout_scale_loop =3D 0.5, it is recommended to use a resistor divider
(top & bottom =E2=80=93 499ohms each) with a ratio of  0.5 in the feedback
path.
In this case, feedback voltage will be 0.5 x actual output voltage.
As the vout_scale_loop is set to 0.5, IC would use this
vout_scale_loop internally to provide the correct telemetry data.

If a customer uses a resistor divider of 2.21k (top) & 22.1k (bottom),
the divider ratio would be (2.21/22.1 + 2.21 =3D 0.09).
This is not an option available in the IC as it can only identify 1 and 0.5=
.
In this case, they configure the IC in vout_scale_loop of 1 and use a
multiplier in Linux code to correct the READ_VOUT telemetry voltage.

Why can vout_scale_loop not be used?
Using vout_scale_loop for correction will also impact all the Vout
related parameters and makes it cumbersome.
To simplify the linux code, customers prefer changing only Read_Vout
value and accept that IC would still operate based on vout_scale_loop
value configured to 1.



> Guenter
>

