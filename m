Return-Path: <devicetree+bounces-257416-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QNdkBmpCcGnXXAAAu9opvQ
	(envelope-from <devicetree+bounces-257416-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 04:05:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id BA4C550383
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 04:05:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 2A19D6C9DA9
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 13:17:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B52242E001;
	Tue, 20 Jan 2026 13:14:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fFr5+SXq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8918642DFF8
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 13:14:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.160.178
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768914899; cv=pass; b=UW5LrCudD66JhQ63Dbqlw/NX6VZ/PZP1r0NVaI6mZ0YAbe6ERWVWJFcCXfcKrwju8+qIX1Xu5BSwnZ741OVmt4KCyGo6VN88OhDBdNyD1mpp/Ni6MoCijQrd0GCFbmgzLEdeQLVVAbxdBfjVV8sQa27AjQPeczpRku5YU0U8h8U=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768914899; c=relaxed/simple;
	bh=JUFK8qKP08ZRWFLH22g9Uv2mxoFc4rdFsO7jZeFdgb0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WHZ4vHw2JqTDESNlsVca+FIjS0feYZH4edSt1lrXLNhFWDIiMvGQsctI6EfBtuauhR5i7snYJqrvASyqAmRak8hus2fNlj7ZlK/sRIsJYbC8e/k+IAxmspusmfAuEchYPRzOaW3smvE2c7YFJrdhzXZhr8WxkttQ0H05grtEGQs=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fFr5+SXq; arc=pass smtp.client-ip=209.85.160.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f178.google.com with SMTP id d75a77b69052e-502a4e3e611so34404311cf.0
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 05:14:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1768914896; cv=none;
        d=google.com; s=arc-20240605;
        b=S+q5GjycU1fyVpBpTZEBlMjeSYOWrnNgzz0Ac3hfC+P66gdZoBPyltIsuFCZwRulxA
         JGxIgAji2JuH7kRo6Wt7801GUoB5tXAIcmP3vcPEhQfMFlPqKTne7uWvpojD94qrSzOS
         ym96XSNkCNRrRWc5+48ydMuGz8ckBDVGtcoi9inBXyPOJxGo688KTpB8DX9yMFbwdYSI
         JcXFd76xWQbYsD1ryDTg+uE4Em+f6PKhZZksKZbwqLedeBd9qiYU492x4j3UmcQkyEAU
         1aAjjFJmKPpqZ9bO/GrO42rVvgv82CX5OiXsN1y/CSmIU1UuU3kraBxJPAYdNHQ56Wew
         mTLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=61FVTvC+OPYsLfCnTMn5A70RhUk+8hVfV9yJPBCxid4=;
        fh=Vh8Z9T3Ef39HlmmxTa+GCerI/FEFyyJ4Eky0hxwVsn4=;
        b=lremNYuLNZR8n2bwzHv759uepvzzeStU6uTxY6NcoFkQu+M+DgzmyE/QKRERa3sPnq
         kbwGeKli2Yke0n7PoYjR84YIIovce1C1kmB0KRMRt+Shaa50+Nv3/nX34q5vE8sT6TEg
         liyCYjeRZb6r472DxkeUnA4tyCBwt8ZfALRjQFOcThfkQADbWZ2doVzbgr/ZllIUnaNh
         J3rPOPMk4oBZh5z20Se+JTOE6QALSMGOsT+SieVt1esKma7tjcHDYp2fN1lZHNBygorJ
         MY/lxxgmXbIg9xkL/Kf56egZ+jmtb8wJluiHYdpsY/y/Mlqv2zVHZOsPxAAB8knabV41
         wXhw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768914896; x=1769519696; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=61FVTvC+OPYsLfCnTMn5A70RhUk+8hVfV9yJPBCxid4=;
        b=fFr5+SXqN76cCULuB7R6wohEESZ8p9HZlTSiL31trGkfn2C7fXp94UVqJkJjW9jBoH
         QbiROSfbVWa2BqFM0TwnFl4vM0EW5LZT3/68URFZ+/52iSyjN3teF+jKZLY9iLyV7XMN
         2Ly8CS4a44e5iiqS5bEhk2O3KBTPS//Q/zH5ixCUA75i+oOtPcPVF/yX/9wRUlzjp/hj
         fUU2nJj/1LvVbFD1FgSEq5r+B7Vigy/A/MET2czwKtPOL8z03J0vCrxYaMZRRa7ND9uF
         MljXSCZhiefbjr90BNTyUqcZepqoyPtGJaJePa4V9z9YcOKETE53kvQMhMwbT70iJePM
         1y4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768914896; x=1769519696;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=61FVTvC+OPYsLfCnTMn5A70RhUk+8hVfV9yJPBCxid4=;
        b=q7OnQVlMEvyi8uBU4te1msyqL+Oyh66BPDdzfB9X6hcyOM3gL1te7pfGKFeUTFNwfz
         BVrx8VAPLRpxYK/LMKWaT2Nc4RZP75BJ+uIS0/EKxoiiKvNbMkwbhGh40J+E1DYh4hUf
         3qnYedQMcVNCtecVW05xUnGWFfio0+9HLgTQycJJe3wCCmqyIOhnyoSAODCBfCMjhZ28
         tQBxK0XWd8t8QuBaRV7Qfv3IsWNFZz2gr2Z1MNaIXmVKdBWWKLgR8UjdOV7trG9R5HoJ
         SiBZgJiDmxBjSaOV/Q8EFDzuao6UwTN2Cb5iSllTvDz56BeDxmCoFF6/VIXP5L0xBdZH
         J1XQ==
X-Forwarded-Encrypted: i=1; AJvYcCWfQhZJZXr6piZ2OR66l4jKaUBpoPDxaVik0+27PX9fhGp6XRLS0+u+8ISBQ8XcJK9lC7pOXe10Zeqe@vger.kernel.org
X-Gm-Message-State: AOJu0YxVf+Uda5iZasrYDUoBTWbtuoop1OuPuonCoNLkzRAyQRwKCrIk
	tyzmlUtaLeVi0ynCycyYzPxJTuoL0zoH5AmWxcC/fD7HHgJscADa7Rz8wuBFt2QdrGtqbbnlApo
	1I7S8a+wjp0+bgm0M8xFc6rZsTxVcAqg=
X-Gm-Gg: AY/fxX4R+6J9ff/MNPztXl6Sdye+yuFqL/rsm5qrlIMFSqDzAVCSSRC3wd4y4yM1flv
	MTOpPqnjPQr8nzgr27+BEGQ9C6IGL5eKwy6RQQjUDvzWKJ+i5msKLankufFiRLk3T4RGYrD9phY
	EkIL7PR/AlVtUMGJpf2NjFgJImEEomP/esiilnn+8UsiOZuUr3SFXRPOYgdZkkHtDflo8v5Xtf8
	ZHeezTCESbNHnVf1HZ5IrlzBzI+7SeT/97pfIHchHNyvJZZtpADD1Usg95vuPqOtVSXCvYmFow4
	L7AzM8rjlWuvsRUDmp4Mtmj3jBNr0X5Wuzdfhw==
X-Received: by 2002:a05:622a:204:b0:4ff:a8c1:b00e with SMTP id
 d75a77b69052e-501982dcb6amr257878141cf.2.1768914896054; Tue, 20 Jan 2026
 05:14:56 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260120-ufs-rst-v2-1-b5735f1996f6@gmail.com> <9e51b504-e0f0-4d17-baa2-387339507c86@cherry.de>
In-Reply-To: <9e51b504-e0f0-4d17-baa2-387339507c86@cherry.de>
From: Alexey Charkov <alchark@gmail.com>
Date: Tue, 20 Jan 2026 17:14:48 +0400
X-Gm-Features: AZwV_Qhp14S3f8jxRdEKOTb8-WUOX2RQGlmlwHiEcT4hA3FpWfhKr4Hgbt-e0zM
Message-ID: <CABjd4YwAMbH21jcjhks7ThoXzcF8GeOzBPYDvN+7cip0iA6stg@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Explicitly request UFS reset pin
 on RK3576
To: Quentin Schulz <quentin.schulz@cherry.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	"Martin K. Petersen" <martin.petersen@oracle.com>, Shawn Lin <shawn.lin@rock-chips.com>, 
	Manivannan Sadhasivam <mani@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, stable@vger.kernel.org
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
	TAGGED_FROM(0.00)[bounces-257416-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alchark@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,mail.gmail.com:mid]
X-Rspamd-Queue-Id: BA4C550383
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Jan 20, 2026 at 5:00=E2=80=AFPM Quentin Schulz <quentin.schulz@cher=
ry.de> wrote:
>
> Hi Alexey,
>
> On 1/20/26 1:53 PM, Alexey Charkov wrote:
> > Rockchip RK3576 UFS controller uses a dedicated pin to reset the connec=
ted
> > UFS device, which can operate either in a hardware controlled mode or a=
s a
> > GPIO pin.
> >
> > Power-on default is GPIO mode, but the boot ROM reconfigures it to a
> > hardware controlled mode if it uses UFS to load the next boot stage.
> >
> > Given that existing bindings (and rk3576.dtsi) expect a GPIO-controlled
> > device reset, request the required pin config explicitly.
> >
> > This doesn't appear to affect Linux, but it does affect U-boot:
> >
> > Before:
> > =3D> md.l 0x2604b398
> > 2604b398: 00000011 00000000 00000000 00000000  ................
> > < ... snip ... >
> > =3D> ufs init
> > ufshcd-rockchip ufshc@2a2d0000: [RX, TX]: gear=3D[3, 3], lane[2, 2], pw=
r[FASTAUTO_MODE, FASTAUTO_MODE], rate =3D 2
> > =3D> md.l 0x2604b398
> > 2604b398: 00000011 00000000 00000000 00000000  ................
> >
> > After:
> > =3D> md.l 0x2604b398
> > 2604b398: 00000011 00000000 00000000 00000000  ................
> > < ... snip ...>
> > =3D> ufs init
> > ufshcd-rockchip ufshc@2a2d0000: [RX, TX]: gear=3D[3, 3], lane[2, 2], pw=
r[FASTAUTO_MODE, FASTAUTO_MODE], rate =3D 2
> > =3D> md.l 0x2604b398
> > 2604b398: 00000010 00000000 00000000 00000000  ................
> >
> > (0x2604b398 is the respective pin mux register, with its BIT0 driving t=
he
> > mode of UFS_RST: unset =3D GPIO, set =3D hardware controlled UFS_RST)
> >
> > This helps ensure that GPIO-driven device reset actually fires when the
> > system requests it, not when whatever black box magic inside the UFSHC
> > decides to reset the flash chip.
> >
>
> Would have liked a mention on why pull-down in the commit log.

Indeed. Heiko, if you're going to apply this to your tree, would you
mind amending the commit description with something like the
following?

The pin is requested with pull-down enabled, which is in line with the
SoC power-on default and helps ensure that the attached UFS chip stays
in reset until the driver takes over the control of the respective
GPIO line.

> In any case,
>
> Reviewed-by: Quentin Schulz <quentin.schulz@cherry.de>

Thanks a lot!

Best regards,
Alexey

