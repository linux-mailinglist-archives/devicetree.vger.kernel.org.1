Return-Path: <devicetree+bounces-271626-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QHVnJHCnqWlSBwEAu9opvQ
	(envelope-from <devicetree+bounces-271626-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 16:55:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BA7B214EFB
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 16:55:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 021C430488FC
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 15:50:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53C313C6A2B;
	Thu,  5 Mar 2026 15:50:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dJH9FJa4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBC1C3C6A45
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 15:49:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.160.173
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772725801; cv=pass; b=GaXZJ74vmDzkTL7iXu1LHTbfoYN/Rx2hvi678dn12jLuqYuuhHErgzzu6rdospn4Qrt/nfPGIK7bHjCrgb4hE5zI3LGckujIi8z85kLRDieceX2ToUz2tbAo5YFEXrAKPkIgbiNB3L8+5j2fxk2RwDph27d7QaEl3Kvw+aTLvAk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772725801; c=relaxed/simple;
	bh=LE+AScxjPYYD9QwdOzddEW71T2JKPYNTn6PMQzi01cU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=AlWGiGXzAYnWN5NIBoIUbw9s/zD5dNjXd8Vj2G0h2hE/q8Oq/kOFWq9iqdtiBRruVv8M6jknjVMmeIBp/c3iJdrudPRl0ZvsZan1SukRGK10xDmn0hWWTqolxfcy9QdO3ck/82BXZUAKTii8A3j82LQhFh5/vyZqPfP5V/kh0rk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dJH9FJa4; arc=pass smtp.client-ip=209.85.160.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f173.google.com with SMTP id d75a77b69052e-5069ad750b7so70261511cf.2
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 07:49:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772725799; cv=none;
        d=google.com; s=arc-20240605;
        b=VWxm9dryUuIuWpIlWEZlBrTSIBEjXW+s9Eg7fFFFkeR/t/iDFLKsq+QX2zIJ2FFUDF
         BX/+HgM8hPHSHqamO0ZweU6OTp4Zd6GVZUg8V+/x/W0Q65d4qt8ktgUWn4NRuNcpVMNG
         9OHO9C91Nzs7gpm4/im3H5YAvmXNEycbHURSPvaycW9Zl+R8EKAhr0lw1/r5OngRCXA1
         dgMsPrqGrIReCkhvup4onYzOJlc3KehCu688UBFVSpvyIMAUn+B5h2TXTWNOF9NpEoZY
         FO2+w1qIYIyyLioNGxdxSlj/46RAQpllBnEz+O+rJG3x58vNQStNerp1pHRlGXBD7lrI
         O3hA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=b+pXAeMXzWroKCOYvz9KbDSldPuur+STmUT37F1ZplU=;
        fh=L1zFi/RVdjWNI+bqIAHpLqkKc4XQOtFH04EceDQSyP0=;
        b=DDkLMBHCMBRxeiGcG2LYRB3laf5cgwJ0lrmMZpkJ4O/1Ww0rEsriuiqb2T4jEhLoWQ
         FqXC7fg0Qu1HEhnWlcmXr5oOd2gbkxwYLXpodW8QLQMeGjp15e+FS92aJvPwR7oheJnh
         t2vTEWPhvD7NAD4DEeiUM+9BgBTjPMP6KbWF0xw5RoxnzsIGMrnazNwGczjHFjncnaE8
         HEu/UQEJ9eP1zaIEVGPcrK5lAYsbb6deGmOJkQAy/OHgIEg1i3n7oTZeXhRoIO7Eccju
         94D6YOCUckVOQoPoy4Y2XwFTboFuxKJ7E6h42UaV9+HRoGxlTz1RZAH3J2qZCPJeVEJd
         2H9w==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772725799; x=1773330599; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b+pXAeMXzWroKCOYvz9KbDSldPuur+STmUT37F1ZplU=;
        b=dJH9FJa4mNJdALjb5aZ1cGg/gxN5iscbJJN1Cfg3ruv3KWW4xKUt/LQ3VmTZk2HxeR
         zVpcpV4ZWCHCNDttWZpHxxbBDnmzYa91IfxRw8FQhMwAvlL1jTORaRQvBVB/G0Fl/cHU
         CWVYcQdOuF3JlTbRT+8qgcO7i8FWBv3riXUung/XPJJpOR7Vg2O5nJaxTVZD0+jd2tqe
         2wMd/HVOOntPxOpoLcZ8fuWpxQoOh42dkmAADfZg7tCxYR6sFnKZQZQ2s1AhStJxtzjr
         Ad9QFhHfDYzLLSrtm5SFQXHP96ScsUItyhwz8B8PaIhe0L0ExNjfWa9jL0V22w8Hm39F
         EYng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772725799; x=1773330599;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=b+pXAeMXzWroKCOYvz9KbDSldPuur+STmUT37F1ZplU=;
        b=kOpvFiLYgmVjLAkDnajtMw0FNyjhSKuYOKV+t5x0L+jcfOJS21RNwB0YWu661fV1jx
         +5HHzZBNZ1YmIdsLl6Rw0sF8s0vh3e206DHO0Pyuy+BM6myenjTWi3sH+fW1e5uP0iKe
         KzN654qEI13GPdrbahz3N69612BQaQ4E9JK6x+X+Q92Tway6jm38B4wsWFW5PI/fLReq
         dz8I/kt9YPVLFq2K0l+86N5I+13wkUIb0lEBzj7g/7Ty/ezW6Qxh24cVidod0GvptaWy
         sCaIZv8Hwex9bKFOp2ANVPAM7L9WWE6grfuihICiFZrpzfm4H4mM1r9fMpdzTQkcO1E/
         eCuA==
X-Forwarded-Encrypted: i=1; AJvYcCUIbXh0TTipr12jKBU65Q7r0fO2bRxtCv9Gknmkk7KisiJW1J16k6QI6g3zkZfC46Q6QglysgAjs/0a@vger.kernel.org
X-Gm-Message-State: AOJu0YwJ7T/y7MtPclzx/JM8W2l1IzXLMMCYdoriFYLttD7Nf+UJolkn
	tD/IGVMYLdnG00g8bu//JEq9fG4YjoqYPdVccyuUDj/ip6AgJ/Agy2oUrkTwJMOlAFvXwVxYelj
	yuF9gd4pRciR7gXd+pOmHER0TTRZs+Ns=
X-Gm-Gg: ATEYQzzSYTUr+dESFA/JAwg/3HnUwpcITGOhF2ShYzSzTZcu420QXKhfh47JZqD4lrx
	jPr/ns8mgG3fYran/888z7514wPqbBeOHj7BPocpfCVxVmMvrtYEGOte5FOHKu/n4wZOKRvB/bn
	euRcVlrfyRCScuadOdT7Cx9ao9AMwAR+ZQGI3MMBDIy3OseF14DL1jPLGGlbluD9BvuiM6pV8Ef
	EWiDtizfEbsEop5yD0tSGVF50uZtyQEtFxspymNh7p4W4N66Tbz007mOl90+M7SAtRnu4N6y/5P
	70f5mEclD63BY4YH9THlNrRWcQ==
X-Received: by 2002:a05:622a:1484:b0:4ee:2510:198a with SMTP id
 d75a77b69052e-508db38c1a8mr76337861cf.39.1772725798828; Thu, 05 Mar 2026
 07:49:58 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260304192417.818211-1-akkun11.open@gmail.com>
 <20260304192417.818211-3-akkun11.open@gmail.com> <94465ca7-b3dc-4736-9d58-4024f2494e54@collabora.com>
In-Reply-To: <94465ca7-b3dc-4736-9d58-4024f2494e54@collabora.com>
From: Akari Tsuyukusa <akkun11.open@gmail.com>
Date: Fri, 6 Mar 2026 00:49:47 +0900
X-Gm-Features: AaiRm521wTMvM9tiwSeKP0vcH6dUDJ_V9_ra6wgn6PHQaKXTEdU0XLC1ALsdj4A
Message-ID: <CAKr_iV5cmE-GBp679Q-=bZi+186BvMvD41ctxnxNC3mTKEzuRw@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm: dts: mediatek: mt6589: add basic support for
 Lenovo B8000-F
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	matthias.bgg@gmail.com, sean.wang@mediatek.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 0BA7B214EFB
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
	TAGGED_FROM(0.00)[bounces-271626-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,mediatek.com,vger.kernel.org,lists.infradead.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akkun11open@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	FREEMAIL_FROM(0.00)[gmail.com];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,mail.gmail.com:mid,collabora.com:email]
X-Rspamd-Action: no action

Hi Angelo, thanks for the feedback.

On Thu, Mar 5, 2026 at 6:46=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
> Okay, but this is just a simple framebuffer and a UART; while it may be i=
n some
> way useful, there's already one device based on MT6589 that was upstreame=
d with
> just a framebuffer and a serial port, but then didn't receive any more su=
pport.
>
> Could you please extend your efforts a little and push at least some supp=
ort for
> clock controllers and power domains for the MT6589 SoC to make it at leas=
t barely
> useful?

Your point is valid. I saw similar minimal Device Trees in
"arch/arm/boot/dts/mediatek/" . Currently, I am actively working on
MT6589 kernel mainlining and Lenovo YOGA Tablet support, so I submitted
this patch as initial support for this device.

I will send patches to add the following features in the near future
(preferably within this month):

- Clock
I wrote drivers and they seem to be working.
However, some parent clocks are unknown.

- Pinctrl
I refactored it to common-v2, paris and it's working.
A little more work is needed to add support for R0, TDSEL, RDSEL, and
device tree binding.

- PWRAP and MT6320 PMIC RTC
PWRAP is working fine. This seems to be almost the same as MT8135.
MT6320 PMIC has confirmed RTC operation, but it will take a little more
time as I haven't written the regulator driver yet.

Additional time is required to add the following features:

- Power Domains (scpsys)
I've written a driver, but I haven't checked that it works yet.
And, some features are missing for full support.

- eMMC/SD (MSDC)
Likely compatible with "mtk-sd.c". I have written in Device Tree, but
it is not working on the device. It needs debug mode.

- USB
Almost certainly compatible with "mediatek,mtk-musb" and
"mediatek,generic-tphy-v1". The device is not recognized by the PC,
and there are logs saying "couldn't find an available UDC".
It may take more time.

- UART DMA
Boots without any errors, but I can't confirm its operation because
I haven't soldered UART.

- I2C
I don't know the details, but the clock is supplied from the PMIC,
but PMIC clock driver does not exist. Fortunately, MediaTek engineers
implemented MT6589 compatibility in the I2C driver (but it is not added
in the MT6589 Device Tree).

- I2C devices (only in mainline)
Touchscreen: syna,rmi4-i2c
Accelerometer: bosch,bma255
Magnetometer: bosch,bmm150
Fuel Gauge: ti,bq27541
Battery Charger: ti,bq24196

- SPI
Like I2C, there is a driver (it seems that the PMIC clock is not
required for SPI), but  I don't know what devices are connected.

I am committed to making MT6589 and the Lenovo YOGA Tablet fully
functional in the mainline kernel. I will send these additional patches
as soon as they are ready for review.

Best regards,
Akari

