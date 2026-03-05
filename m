Return-Path: <devicetree+bounces-271710-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qNdRC43aqWneGQEAu9opvQ
	(envelope-from <devicetree+bounces-271710-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 20:33:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BF36217970
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 20:33:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7A5D6300A5A6
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 19:33:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5748303A1E;
	Thu,  5 Mar 2026 19:33:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jVeZOfAC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83738200110
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 19:33:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.44
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772739198; cv=pass; b=mKNrWIo6z7YVWQkl9ct44ZFaUY14NLOII4vbiUQe+hMIz3gqAKqgQiTS01M2wKL+rjRdkFKBdR7tGXWwws7KAM7sxQ3YhQqCT6pwrKL7E+6gAV7xq5VHu1RT5hc9k9yM31d0QaMNvq8BBgkE181ttEBJAkXeROy/tQRERpFyW2Y=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772739198; c=relaxed/simple;
	bh=3qFS8mp0A4He5fJiw82IIXCHjDSfPLpUJggQOZM0oiw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=m7C90C1a3KVb8jtnD72x7Qz9mBjxSs3Otr3DoTlJjPyUl6JEyIMjaYvWqYv8vn6gIHQauEbyVrEwMxjFS8yF69/cDr0YI5/HhJjhTSPY6me1K07yQWC6NiMvo5zdduB1Wr/aWlC0FRPW2STvlSH8yiGV0p19IxLVckNB5V97Q3c=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jVeZOfAC; arc=pass smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-439ac15f35fso5204680f8f.0
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 11:33:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772739196; cv=none;
        d=google.com; s=arc-20240605;
        b=lAeNOGd6BqteZ0ZMNGjrgs4Ro01oMjl0z/23u8sxd+/sWtyMmEVuOBTdDzrkN/nKo/
         AVGvZnZIyEb86sOyC1g0aovG/TINsdncYuY+JngWhJq4kJm1L1Dv1GVyo1aCFalZxGLI
         IhsKW9bs8y85UAZqCgih5DorChqHAbpzmqwmFPrl6AQENjoi5Cm1vZhIcwb60gBPt8GQ
         9cjqw0VqDqXbHlIdvmU6XeG+9V3G5Uae45Oyy+6WXopJdqpatLHoDq9HSB3dp7TaGG0/
         svHIfGBazQuiNxa1LhZRZdxdDrwGMVLo53rNym6sEOos1AzQFBk1RsH6LD1Z/EV9KzFN
         8zIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=3qFS8mp0A4He5fJiw82IIXCHjDSfPLpUJggQOZM0oiw=;
        fh=wQDUkFRjx96fH25+H9Skv/PKD31TL5eMFD8gbCFSKIg=;
        b=HHEu0cERHxQFdqU6Y84VY8GuVABUx3DVP5snoLYlqCUbSWRX13zi40raR6h/xrB8Js
         JZax49GKnaEJiJRTa4RtOK10RxR4A0bDD1mL15lpmUbgMCC0/TtWz0QCL4Rk38cz84vw
         NA6rpeuMXgYi6CRpAvFrEIcFjvt5s1XQsNOzvxJ1uduMuVZ41npXZIBYHiA6etsKTj4Y
         WlVUofiypF/+R9UYJnn8yB6ajG8c9A6QjKuVCRkBb2I5jS62RwMnLktV98QcweFHPShD
         S7o7/cqJ7+XAZZvE+L2EDR8R7Ubh1Jezeba3rxUamZQ/j7oP8YH3P8zQdlI9ZmaSvbZ/
         8ThQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772739196; x=1773343996; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3qFS8mp0A4He5fJiw82IIXCHjDSfPLpUJggQOZM0oiw=;
        b=jVeZOfACPg/8VWD7c0bO3LaI/kL5nUbhPlYeOSdEfTHOF27afXdxGnlRqQy3x4KBPZ
         1Nm9UbzSUO7kjZpPI4DFnNmXW3D798vg8pR2z30ej+P2w4rHKXeC4KN/W78+LDbXnWGC
         xnaSmN46c+6c8yEgX6D6QvtkgUhsJ1G/lI0NtyvM3EeP3ZcNGG8++qjDkaHcZrSt2jhw
         Wxk6Ek6Aqxf4dI/5g/nqXwrQqFHpZg8RpvKRk2ez9wSuwas3rXG+s88ez0wDouD3EpB3
         1jU7fxTH5Xg2gsdAoiBXb7qEV4O4qG410kjIqh6/vlTR5Nb9mARFH74fptWt5EYCDrPj
         RlOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772739196; x=1773343996;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3qFS8mp0A4He5fJiw82IIXCHjDSfPLpUJggQOZM0oiw=;
        b=HXUYfM2dxT/1bzp2lRVY4NkXWC3NOwvk04dVEPWWLgiAChgKj8MRkXCzDEC8NReYkQ
         9/y+b2bEIPvbdgFhV0xZcbBo35nbRoPZ3oMD11uObkvK/I2t/lIKz2Nt+wcX589mqQwX
         PO+MK80hU5ugeMq9GQrCxtC2DEVSyY2RUF60CV0yJUBzD4ym9z79QSMlSWLjzqLkKo2w
         QkbkNgZResDs/eHa0gF78OYAOyrAX/CagpGtsMSPk3x3GQL2Txma/zOFwwcSymJdVFXv
         SwTSb7kHRN7P/Ff/+gwxW/VxFAusqORNkuVWlOVg/xgi+CGsQMKH8Mirmbp3I1rrGb6a
         ankA==
X-Forwarded-Encrypted: i=1; AJvYcCWAZzV+QPmV5gLHt96NAxzahk0KqdycP3DntKw9aN92uomdmxt4JZAlB3cREgkzNRSP7yE4rWO1eB8e@vger.kernel.org
X-Gm-Message-State: AOJu0YynmwVtW/db/+1wyJd6U1xf01d5gm/HUTaq9+W76+OkhKRWZDpR
	NtJjrlztEV+to2TkxugKDXeSRzALzIuwXESR5Y+lGyEbe60SRugux6ZJyyVlyXA3HwDbE8fXgue
	YXsEdIKC0pgikiBa6xTcIEuGAFaHrJL8=
X-Gm-Gg: ATEYQzxILzPMU8QwH01s1/b6pAs9BJ1kfybFotIM3Phkz2agSUbLXALpbHAvvgSyJtB
	0DTlprMj2cKwmILqCCTt6u2Yh5Ti8udgbPyxZ44Fy0ZiLtke55mcTgxCrfDwe2GB0/Md79rwFdA
	CKNuvKHccgvZ5DMHkVihwOw3qR/yVkAezwZcKdUDThA7wAdc3rMBmJEhmLIyZ1uTc0B8VvNt7kE
	cfYSsO5LAxMcJNRRt9pkKPfgAW3V6afIUqmWgUh0z3PpNtDZA2DQD6DB5SvqP/s733zbig37vBZ
	1Z/RUYgfvL0rtJ6NQh2e1NPdBO0OiJuYueLqJ3q0s2onkgqSJYV0tAwPkHIVAzEh5VRbRXMIDH3
	4YJGL5ty9TiOuVuP8gVTdhsA=
X-Received: by 2002:a05:6000:2891:b0:439:be2e:7339 with SMTP id
 ffacd0b85a97d-439c7f62551mr14098972f8f.8.1772739195787; Thu, 05 Mar 2026
 11:33:15 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260305003253.1022386-1-kerigancreighton@gmail.com>
 <20260305003253.1022386-4-kerigancreighton@gmail.com> <dea45e4e-aebc-46e4-a245-3603da1779f3@oss.qualcomm.com>
 <CAN6+ztxfcNR8xR1qwgHQcHHM=zoQbMd-8oggb785ssPZ7f=y4w@mail.gmail.com> <CAFEp6-3JVicAVJB_+5ceSar2Jqstexo-0tyemg3C=qcznQsmxA@mail.gmail.com>
In-Reply-To: <CAFEp6-3JVicAVJB_+5ceSar2Jqstexo-0tyemg3C=qcznQsmxA@mail.gmail.com>
From: Kerigan Creighton <kerigancreighton@gmail.com>
Date: Thu, 5 Mar 2026 13:33:04 -0600
X-Gm-Features: AaiRm53h5gsIaUcJ-3bFQKEClfESn_bqkCltTUpNu0-wZ5K6CdZUoJq1mcxWf_M
Message-ID: <CAN6+ztxepeRaYPoTBj5rkeHZFhpZbNu4UYZ1Ajo-0cwsG4++Yg@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] wifi: wcn36xx: add support for WCN3610
To: Loic Poulain <loic.poulain@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, linux-wireless@vger.kernel.org, 
	wcn36xx@lists.infradead.org, andersson@kernel.org, mathieu.poirier@linaro.org, 
	linux-remoteproc@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 5BF36217970
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271710-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kerigancreighton@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,qualcomm.com:email]
X-Rspamd-Action: no action

On Thu, Mar 5, 2026 at 1:16=E2=80=AFPM Loic Poulain
<loic.poulain@oss.qualcomm.com> wrote:
>
> Could you please add these details to the commit message?
>
> Regards,
> Loic

Yes, I will send a v3 with more detailed commit messages for all patches.
I was asked to wait 24 hours between sending patch set revisions.
Apologies for my poor etiquette (sending HTML email).

Thanks,
- Kerigan

