Return-Path: <devicetree+bounces-269543-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uB0sDY/coml06AQAu9opvQ
	(envelope-from <devicetree+bounces-269543-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 13:16:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BB4961C2E42
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 13:16:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id F33C23035493
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 12:16:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76D3443DA2C;
	Sat, 28 Feb 2026 12:16:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JBMCElu+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5522543D4F3
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 12:16:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.178
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772280968; cv=pass; b=D1RvspigLIlqnC4vg8Ck+IsJktHIxqEQhUSJG5lVjsPRLG7spUvuiBXEUSfl2qD8pkvTH82IPxD5j3ctecDJYFqzw/zvsE4R++bEu55/EqVE/uiHHq1/5pB034QoWTNtQSO3GfFZxAwfdSfBQFo2Trwrzzn7gces1WxuR/5gdzg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772280968; c=relaxed/simple;
	bh=YH8/n97vsAqRvTzgx5109fU+90/7iudpKQTfhUrv+MI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TU4FwvfKNHlO6JP/HCS3bU1IxBDgV+i2DtBvW+t1G5g/Y8d6fRToP7mhmCRYfYNECAfUwLIZsxnPI8gaVlSfnWj3UyUzEA1YlolXSV0clnBcnWglkdz1kF8j0GUPfQsdbdzwzFgljDUOK6OwD/kjgaOZ65jDevTl9+NUmamUzuM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JBMCElu+; arc=pass smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-3878de20527so39262231fa.3
        for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 04:16:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772280963; cv=none;
        d=google.com; s=arc-20240605;
        b=JXEEz1vyAMpEp/ICd3aKbUt/0hlPE2/sZHzc9fPhfpzOvK4qsQLPhlo36ta87ifHsQ
         s52Se4y6D0U0YQjRMAhbFyjs4karWzlMcdQnHBrTi+hrnBmBJe9mJOSVbBQ2C/CfW6uv
         O219OPw6AqjIrh3IOIx1YaTlnqwa8NEam+gYdlzeHjGhbDf3tbIjUn1eQ2XfYuNVrpbT
         MOzoooQrsj8DW7CBTiimiwG+P8gNrt1+4WK8moXy0esS7PW29amGS65etFXio1KUWqls
         iCGZdijk0hpBaeVazslVf7ZnHWFNrbgboI6mxjb5DrMjNUaiy+4ZogtOtYiTL/WpNtDj
         Jcjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=YH8/n97vsAqRvTzgx5109fU+90/7iudpKQTfhUrv+MI=;
        fh=+aTMEyjL0zUfTHq6jqKguwzUZUVY/Z6yqc041YkIxSw=;
        b=LrckiQPxNdoefzmHsSOMokurlXKFXasmao+xVqMAmxirWPi6S9xHyAlm8N4u9jzxqt
         WMqHkm0zmLpbIG3KQTWSD7c9X0pllIKGFHKor+htQ3fDOvqsOvwNgz1AmibjJWgK8P5V
         VwUnDHGBp4+BEfJAVtEkIjI32ap3YdmMYCXxyGJFn1zrhufjKf5u/GY7AAxr9kzn04eH
         go+PmLATNzoHzfcKCyO7XudwuOVZX5ZTjp3f+oPmIo+0JyBKbPV/m693FLu72hmJY3Pa
         /lA1Xxlq0YV/GkZ+0w9V1CtKLsf0makgISO25BX6WwHFBgoS8oLOLRftUhOXl0afwUUh
         UcRw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772280963; x=1772885763; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YH8/n97vsAqRvTzgx5109fU+90/7iudpKQTfhUrv+MI=;
        b=JBMCElu+RaCFVfMcQL/dLoJitGALCwaM9Wi9xy/N9A/lhDCyB+lfbiz2st9sXcRbHW
         K786YEZgB8n8sQJ94AKbGSNaiugzjRsJq/0omYXxN+GJ5MNjwRHJkg82+U7nvw6CcIAn
         sUjcYKQjSifPKdZHdcn1iFvRalP6A7EYJYe++vyZprCByfYpzT8T/rFc+v/NqEcHclyb
         OjUmIiWd4c6DyWkel+egljS3JcAcDTeHVjt9DrIs53ZS1SuFKtRf7mEWoAEkPqebjTQB
         gVz4UWNkE4Ghu0yGKeDejn3kKyi+MqyKYVVuXyU4/YJwBrk5QGgc4ybA2pAMQZq3kmp6
         9rQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772280963; x=1772885763;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YH8/n97vsAqRvTzgx5109fU+90/7iudpKQTfhUrv+MI=;
        b=vJbCSrCc7A1oNfXVsfQkizRMd/ckBkg4pBhMdBJqlCrifPC7MyD1SMzazDV673HL46
         6yR6sEQD8D9Ip2vrKmeblmdWRKN9bK5S5UgAdkkTyrIb5OXiFEmPb7wBG42ISBrI3w1P
         Wo5wcOunktQA6Zsy/eBYrYT9siScUh8DSMT3PaWDcZ0PnIby5ZSyvjouWsNgsmGmuHpe
         pEPaVAUWqSg49eUtXS28rkk6rrg82RMuoqwZroJYHFTznDhPtEDVmcZg8p2Tx9rB+D3h
         NYhK4dgOv4pxslsmuJI04FC6yKhee2avtPEqx7rRQ1hPuY/bxeAKHjTMILap3RhZn5Bc
         VGmQ==
X-Forwarded-Encrypted: i=1; AJvYcCXeg7qM2jKQ7v9Rn9L6wqdA8pRhoDOLU2ybzrAFaJzvpvXUM1quPPSRi/ilo74vlRG4+S0qC/TgpKwv@vger.kernel.org
X-Gm-Message-State: AOJu0YzbKIAtUsiBUz/0KHwtFZTUNvIdgSOLqsy5ZX+JPe1tcdEeAfv6
	d/NBL3RB9/567whwFD7YUtaarX7u16jrPwTCadmCjbnOzC5z1ZOc2ZElLU/NIRncbkE7+Aem1jZ
	cOU5haO8EJG6Q+TJ5KJ6WC6TZA2kp8II=
X-Gm-Gg: ATEYQzxUJhQG4LdCIG395ulyciPCErUhSbPnrgVj427C2F8Ql+VgDEhAyrsTAxGRoph
	+JyrUdgfagRPHTKnYh466fZhUSg3g+pZ8GCX+pE+FF8MsJpjqtxPCxWbK7/Zgt3wGjhCUd/veqK
	cxb+/sNCGUTgkaIVwD/5d0Uh/OfDuMUeBLk+pXr0FSYxvqBirDBVVCFYwfK1h7Nz20Nz5jv7ja1
	w4CL1Brk17sUi/HaIKr3AhK4dF/dC9qWlhYWw3GxYA4fKtVJiNocp09ClbqairHupKL5KFsrpeJ
	E2vwXKlgxUJv+CYtTLxs+ZbEMYyX8mZ5cBFgh0VuSiglxO6wnH/QwjE25t6bpdKkOAgyVMlK
X-Received: by 2002:a05:651c:25d1:20b0:385:f235:51c9 with SMTP id
 38308e7fff4ca-389ff363773mr38322271fa.34.1772280963065; Sat, 28 Feb 2026
 04:16:03 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260228013257.256973-1-festevam@gmail.com> <2819870.mvXUDI8C0e@phil>
In-Reply-To: <2819870.mvXUDI8C0e@phil>
From: Fabio Estevam <festevam@gmail.com>
Date: Sat, 28 Feb 2026 09:15:52 -0300
X-Gm-Features: AaiRm50iXphLt7SQaVdrv0ixM_J83T886mNYRbF7vgl6z1M99dJ7PFfQrxlgUko
Message-ID: <CAOMZO5CfmS2UEd8JwbR7WHRhTVR4m6cOZUBxhXWAf2zxNhY-Fw@mail.gmail.com>
Subject: Re: [PATCH 1/2] ARM: dts: rockchip: rk3036: Move PHY reset to
 ethernet-phy node
To: Heiko Stuebner <heiko@sntech.de>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-269543-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[8];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,mail.gmail.com:mid,sntech.de:email]
X-Rspamd-Queue-Id: BB4961C2E42
X-Rspamd-Action: no action

Hi Heiko,

On Sat, Feb 28, 2026 at 8:40=E2=80=AFAM Heiko Stuebner <heiko@sntech.de> wr=
ote:

> please don't send patches that "simply" fix devicetree warnings.
>
> As you can see in [0] the driver uses these properties currently.
> So while this fixes schema warnings, it will break the actual boards.
>
> So first of all you'll need to adapt the driver to handle the "official"
> properties and also provide a fallback in the driver for old devicetrees.

The rk3066a-rayeager board describes the reset-gpios inside the
Ethernet PHY node:

https://github.com/torvalds/linux/blob/master/arch/arm/boot/dts/rockchip/rk=
3066a-rayeager.dts#L155-L157

Is this broken?

Regards,

Fabio Estevam

