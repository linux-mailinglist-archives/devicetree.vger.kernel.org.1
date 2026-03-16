Return-Path: <devicetree+bounces-276304-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KGSkEIApuGnhZgEAu9opvQ
	(envelope-from <devicetree+bounces-276304-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 17:02:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2978329CEF7
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 17:02:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 05514301F683
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 16:01:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E809E3CCFDB;
	Mon, 16 Mar 2026 16:01:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tRvR8jWP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56E293CCFAA
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 16:01:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.49
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773676868; cv=pass; b=Ytj2Sac6FfeSHms+PuW+r3xT3tL9EKIGpfqblnTC5sjVYbLC9TW3QcNIL3FsrWoCFdecWz5zXIQTE3nUe0KXNC9r3hTdoV/3GG1vIbYVhGzhq/ObHmXb5PtBZXeiypBpE+YoSvz+O+1qLXZyN+qByIsBBh26cIZAhmMjmUuWvE8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773676868; c=relaxed/simple;
	bh=nRTROiegC3HHzc2PKkDT6LEu+pHZlAThf22kVsmxLDs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=oqNfOL+YuMLhmquxHKHWYgnC697zOGkUo6zEQtz09NE0KnavB9N5GhcAt5CYxEDuVzz4Ej+qmrEfyFqE/0ZAvgWMH4vz0sw6p2fAjxHrC6PL6WBe0A4miYc6UipcZXMyGv6IjJ6Rzn0PF58P+zvWCRLU3UJErrZtoMhToqaeb9Q=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tRvR8jWP; arc=pass smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-66391baf250so4477470a12.1
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 09:01:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773676866; cv=none;
        d=google.com; s=arc-20240605;
        b=cXB+tk0winZvOklo/ypQlYu5/xtOJ2qiCtxLvHfeNuOEkfyjuDyzlE3UiSFHHKoRgC
         R309vxpUnhZTM/tigI8eQ2KU3xrtLGCSDdfSYL4gN3PnAL9LdbYJtei1o2z70C2WcApm
         GRt45tIUJBaO23Q6ezJIyPABlUskq6EARWurulaxweJrZNQTOPJzHRPn1NpggycJEAv/
         aagkZafYDfA7XbMK0BnAQOzenOV+aswZVIBLwCChq9YVL7/6JKeLul0/9SVyDK6/3DOF
         Q0nNR0X+coodPDcYomArl6GNVCSPtSZAE915/8vVxc1UBOrEuHVPmfflfia4sH7uBcg0
         XJhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=nRTROiegC3HHzc2PKkDT6LEu+pHZlAThf22kVsmxLDs=;
        fh=8/2OEmQ80DbOt2zKp6okrHUMDtUUMI1koM5WyVmYBtk=;
        b=bVzp2QAHi2vb+OjZSZ8upgY1qf9ebkkPL6UhSe0Sad1ef/xUEM3CPMXVeAuqh7avUy
         s/JCZ0n+lrUNKhBRIYZK/CKlmozVrclgNHUnG07oCVVxZ9LDwAPooMQj7udRXaFBi8yG
         iJRB1yHZXiZlRHiZFBoFgaQMDRQpEspNbkgjKrv6TqKpfm6ZliWYaj+wgWn6YbPWET8s
         CxlGZiV/ijUfxwbcR7l+StiqYZW5o1MuNP8AfvJXWgEJk8mQa7SX3ohZDoDRkCV99MUI
         vLUXgPlwC7aZPyutxeq1JQigHUGIs86ctS1FibopBb/GgotjFpZLglJHs8e/DUggD0OY
         ZFRQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773676866; x=1774281666; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nRTROiegC3HHzc2PKkDT6LEu+pHZlAThf22kVsmxLDs=;
        b=tRvR8jWPdYpapywuFbFHAwdbkmfciAm97lupRo23Lz95ol4WDw47KF+V049m3ECDKP
         khDfrPMN6aR/vimprZmLRF6GU2CkUGsd4Jv5xtJGU+u1yNjoX+Yy544KdjdWYeVUqwvP
         PAuT67hKYlEjtdFL0MRqVeSCfe5qhhfNz5y8pDlti3aC5sbdN5iYW7S3kFsgmreBC4CN
         qAGJEDXXCt/WGvWjeZrLQIJq7Yect+cT6Mb1tiyLaxvjXE+m/ds4hH8ov+Y8sMqZNrSm
         SWPoHKrCT3TVDDSq/C0ySD3PoMmRqSWtUYuAZVCOsx/LSb4q+nVLCCHHlStxxvaawLlT
         Ym6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773676866; x=1774281666;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=nRTROiegC3HHzc2PKkDT6LEu+pHZlAThf22kVsmxLDs=;
        b=PpKzLuzn69zSePXb9BixNsC9evVJAJney9LmktcfFCQNskoJU/Pl0NuX4ouHMJvdmC
         UTkCfy5S46Ow4S/GJ2T15nFX84pzvy7DRFBrSN/pUhPtEQThB1/ofntGcx89Ho4ivmyG
         8B4cdnJB4Fe76LG06fZMt2QkcnUhRisEolj/5keWOeWDV8TumYuC66WuQE3KfaN+RAi4
         /g7dX+qo/AlqbEhBaxb/2qDIEHfLNWUs3WOD5FdPTBaCUMdPYCvUFXlJma3NDQ4ws61S
         XlpPRqHp/tZ2ObdRXRVvSXm2IIbZ5JhwN3jSUpaDhWqC97+Yt/jSDiQbDao0TGch1lJg
         mrLA==
X-Forwarded-Encrypted: i=1; AJvYcCW41alCSuPZSEJ++vYpHrvY/3csqzPuczLhSkFjR/9ZSCBpGRefouw4znBY05FxQzEHNEWbVxJQ6J/n@vger.kernel.org
X-Gm-Message-State: AOJu0YwKCHh+NanAu0C70/xVIYZY/DxwBOeekDVYJ1XF/c5hl1k0U+wp
	Z1ted10mrP5jvwc5vmlJ3b85QORyJ5cWWX56xQK/Rdlf0hTrNik8kh5E2Po5ponibJ3qB2q05ct
	cU+Qfilwppu7sWJU+PxqGD8AUtRVTmIBCl1etU6GmxA==
X-Gm-Gg: ATEYQzzPWAd5jJZ9PN45bdQdzkulTAPfJHE44wfZQ8m+s51EzN+q5luUzZRJ+r4sl/4
	IMZSvnpTCfjoOouorrSyCIiwx/jEvjOyTQL7drbc+kO+/TTGVKG7Fi83OpvWXV85eeQaR/0+0EB
	5Cf7kmmX4zjCq/QkSTPCIX+JGqPzOUyjETLMyf5gq0a4fZYA9c7NnaFSl1zGxFeB3xK04T1i3pp
	IPjtbkF3nCriZBi5phonhFaihGBiq0U4cUd6t1J56dH43Ig6rDVnDF7tNHNH9Dm+Jxw1/n+iguJ
	y2yRU6lzj3BXaAb2sEC49cHwgRNRuLJM5HJYHDpVgQ==
X-Received: by 2002:a05:6402:51c9:b0:65c:2af1:b7e2 with SMTP id
 4fb4d7f45d1cf-663bac17dcamr7423927a12.27.1773676865593; Mon, 16 Mar 2026
 09:01:05 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260313195801.2043306-1-shenwei.wang@nxp.com> <CAD++jLkVZc7J+39eUtpWz4+YQm035HDtUyiyrEFGifQkcSMsCA@mail.gmail.com>
In-Reply-To: <CAD++jLkVZc7J+39eUtpWz4+YQm035HDtUyiyrEFGifQkcSMsCA@mail.gmail.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Mon, 16 Mar 2026 10:00:53 -0600
X-Gm-Features: AaiRm52a6xRhLIv8WCDX8JG5wzLTI5tmdCIrfHWi7mJRzbOdI91SV43T2PYw5ig
Message-ID: <CANLsYkyd8x29kz1u2dkyn_5hhWVJehz6VVKEx81Ew6i1nKObwg@mail.gmail.com>
Subject: Re: [PATCH v12 0/5] Enable Remote GPIO over RPMSG on i.MX Platform
To: Linus Walleij <linusw@kernel.org>, Andrew Lunn <andrew@lunn.ch>
Cc: Shenwei Wang <shenwei.wang@nxp.com>, Bartosz Golaszewski <brgl@kernel.org>, 
	Jonathan Corbet <corbet@lwn.net>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Frank Li <Frank.Li@nxp.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, arnaud.pouliquen@foss.st.com, 
	Shuah Khan <skhan@linuxfoundation.org>, linux-gpio@vger.kernel.org, 
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, Peng Fan <peng.fan@nxp.com>, 
	devicetree@vger.kernel.org, linux-remoteproc@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276304-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	FREEMAIL_CC(0.00)[nxp.com,kernel.org,lwn.net,pengutronix.de,foss.st.com,linuxfoundation.org,vger.kernel.org,gmail.com,lists.linux.dev,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mathieu.poirier@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[i.mx:url,mail.gmail.com:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,nxp.com:email]
X-Rspamd-Queue-Id: 2978329CEF7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

[Adding Andrew Lunn]

On Mon, 16 Mar 2026 at 08:23, Linus Walleij <linusw@kernel.org> wrote:
>
> Hi Shenwei,
>
> On Fri, Mar 13, 2026 at 8:58=E2=80=AFPM Shenwei Wang <shenwei.wang@nxp.co=
m> wrote:
>
> > Support the remote devices on the remote processor via the RPMSG bus on
> > i.MX platform.
>
> I think v12 looks pretty good, if Arnaud gives his ACK on this patch
> series I think it's ripe for merge.

Please wait until Andrew and I have provided our RBs before merging.

>
> Yours,
> Linus Walleij

