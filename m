Return-Path: <devicetree+bounces-266963-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qBN3GLVlmGmJHgMAu9opvQ
	(envelope-from <devicetree+bounces-266963-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 14:46:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BE37168013
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 14:46:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D84CE3002F44
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 13:46:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3389034887B;
	Fri, 20 Feb 2026 13:46:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mUp07UiY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCD1E320A23
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 13:46:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.53
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771595184; cv=pass; b=jOcU79dNzfpFzsUtoEXcRG3riKOKFVLBFaCJlcZMfybWOOi7fiyIkigJMrzgygSWo2je2pxGCMbatFwTX1uaDW4XDan7vAv6W5RWEfgboe7T6kaJVU+9omCEhjfUqu+RfPUipu0pvxzh+qzsJA4ZYYhLqxF2WitLJtveBbUCyaU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771595184; c=relaxed/simple;
	bh=XOrJsV7xngK5oabafDdTfaQdbOak3Z+Z+nL4+6By2TE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=XO4NQfOFGEFggSb6A/Y5SMGbPty4YR1zmqBjty//N/vZ9S14kFG5DESj+8SB5/jR0vgY64vIq1nmZ66pkozuTU2o9SLc/t3IVc4YssEj0ZS1fksxmj2z43TQV48DAid2+5kertOsS2feUYU/T4Dqtw8hoUZtKZyH4ko1Zu07HAw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mUp07UiY; arc=pass smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-59e60b3ccdfso3038622e87.0
        for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 05:46:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771595181; cv=none;
        d=google.com; s=arc-20240605;
        b=jzJbaMRZ1Ep/WgichTtJvk1UrZLK3QY/4sJXdcpz17/Q61Q5+JkCy3l2eIYMKODOzJ
         Lke36/zorEEEYrUCOyqxLtsNjxLLDT9zQK1MDEqST/A0FmBs8UOSCUKNvY/6Kh0C/ZrE
         nFzQtQBiFr6F89L8NSRFxZwiDdblE1tHGBLgwSioqIoX8xLBYhYlS2hYWBAZMxq2M1V8
         zGf6QDhLwMC39qVR3BSGVXPhwiTYrxcHoApXzkJa9/3KPRmTdD0Pl/o3K7Nk+pePdm/I
         Ugu7Nad6yMYkhGAfWjEa3aJ2GSVJWL37PAQ88io1Bp0DVS9pbkcsWFIM7NMElOAoqc8Y
         vbQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=XOrJsV7xngK5oabafDdTfaQdbOak3Z+Z+nL4+6By2TE=;
        fh=5/96KtAlauUL1kghcbWbERMdxnBImDJ/W3ZpZvIwVnE=;
        b=H1dI7StK9wRww/IHGYmVgL+NsTiazw8qJ7mRIB4Jqv2c0iSBEurJjmFfdtD9MRtPE5
         ZDo3369Y9EWjQzvISMhiMwlfF7R9qrC4VUafjTHkT5YH3nMk7P5r2faKqU1/TxzMsC6u
         F3Uh42NHchbWrq6x0SUnCK5TZaDyWXm5jPFb2WaFXeLtmxBdtm0DyZ07d+AUn2lgm0tB
         pS4uYz2tHx4W+7ZeoGAz4/U1UuJ1VVK2S4VxpNPDNAn3e6POssPtlDErCz3O30EFNj8T
         RsrLLKJC+jh4YUoqKTUVity6FoVq4agDVbR1OrGUTb8L7MHQWLQiF0fmgUoHLp39672O
         sA1Q==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771595181; x=1772199981; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XOrJsV7xngK5oabafDdTfaQdbOak3Z+Z+nL4+6By2TE=;
        b=mUp07UiYb81+syGmorIce+hGL6+Qb8/YlhtbOLdC8+Q3cNoBEX8IH7Jwh4qFbg3uJj
         2PtbTW4haR1AlToNWjoBsM+bUnGaqDOyUK0hgk/nspCjqzE9aEXkJxSUIexXCF1G4JLs
         qMAuZwuPcOaDkj661zfhuwMDHps7EF/VWZN7St6qd/B1yX+4zqkCLc0Q+axi5InwiO7R
         +JL87qWntoAxtxPBU7wXbqNqzqrbeQypLn+m0Urn9khwS4T9+HnDCZJ7+U0RKzan6q8h
         +98iBc0YxYTCfuQ1yq/ndXPgF3yId+xMyFiQGqAqw61GDGVpmGfJUwtoNvc9aqvjkqds
         Cw1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771595181; x=1772199981;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=XOrJsV7xngK5oabafDdTfaQdbOak3Z+Z+nL4+6By2TE=;
        b=FB1Jm5h3Qk2csp4k7xqGIxQnWchgnWyDevBeqFM60HZjH/xfEO/IZcTCNiotxaNcaP
         SQB/XnbyaYOQy6NRDxbxrh3oPAJ4XZT9IVfQ88wl57Ol6qDJTJ0MRUdS08Sx4OgdPSpO
         XNdJeFokwGopAL6neCFqK3tBv9bEvptwXsF0gL76i6gWRFGOgqYm527C/rcgXNTxbuSq
         AL7w3yP8+NZgX3Uvj23VolRnNOgsN+LFfY31QrdN6J4hKU2s1aX5jXNrbZKQQzcXhHRy
         F57BS31w1j2j07Jgf1zI4JCJnzVfrkpIhrhTOxn+kHiwwo0llbA7N6Z5vG/7iYtd/vRL
         +viw==
X-Forwarded-Encrypted: i=1; AJvYcCUUjzW2Yv21DiyINqXmIEJEJR/RoD7Z5sV/6/+BnZuVnXik37wVILL2FFe6O+8ueHOtjEht0mGk6MoR@vger.kernel.org
X-Gm-Message-State: AOJu0YzRprlA//3vmg1PWB35RvmM0FFypNAN5nYhlPtvbSIMHvbVRVjU
	TWM3N1ddr4uKNSBUfk5c3Ud2w3DezrYOgLbIxcWOtmQLwMIVP9YymhEOWuKWhCvd/UXgOKkmNM2
	wxQBFb2cbaJZle+Qhp0h+Px2esqqdMh0=
X-Gm-Gg: AZuq6aJz/fLymkSkoH5CiVOfWS+KGyZ7QJFzN04VE6MXLMGRCnlr4U6awTvOeJE9PF7
	Wwj3FtZxAz+kA7swtSAi4TqLfKQHaKMZOXO9rnRNDzAugPaqoRiOF33zV2RhpBCuxi07LAAtzJF
	wHqGwAdpBEEgj47vcueRWE5JVuJ0HcvXDBW/qC1+2bqc1N//xBJKXHgYrQ+Nwk5gISxM6AtYVJz
	/BB1opZoEuPJjHmyWEcP8NcZCJEgSHAr3WCpfdEr7ulguhX36FXapc02up1fD2M8LLAkwPkE6fe
	j+Ps97PXP2LIFb5+klx/pXml8rbSFczTsxHJjv6GyaQB5YHsifOGUAHjm13XbNleU4imISs=
X-Received: by 2002:a05:6512:15a3:b0:5a0:4345:3b83 with SMTP id
 2adb3069b0e04-5a043453cd8mr632693e87.47.1771595180578; Fri, 20 Feb 2026
 05:46:20 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260218132339.32157-1-Max.Merchel@ew.tq-group.com>
 <20260218132339.32157-2-Max.Merchel@ew.tq-group.com> <CAOMZO5B5k_i_q4cd7SMNAkicF4WfEYNVUSrg8AamQHNpGys5mA@mail.gmail.com>
 <be39b302-a29b-4dcd-a3f1-1f3781476951@ew.tq-group.com> <d1a87e01-f887-44ad-9b95-08c0e29be6ee@ew.tq-group.com>
In-Reply-To: <d1a87e01-f887-44ad-9b95-08c0e29be6ee@ew.tq-group.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Fri, 20 Feb 2026 10:46:08 -0300
X-Gm-Features: AaiRm51_GsoZDQD00zZcBnGdIZ49TtjBpvahUOln8EYXFWstEClOh9muiMle6fA
Message-ID: <CAOMZO5A1+kynXqCDXA=aFw1y9UxnS4SQN2hbQXEmdXVgA8PjUA@mail.gmail.com>
Subject: Re: [PATCH 1/4] ARM: dts: imx6ul/imx6ull: add boot phase properties
To: Max Merchel <max.merchel@ew.tq-group.com>
Cc: Frank Li <Frank.Li@nxp.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, linux@ew.tq-group.com, 
	devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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
	TAGGED_FROM(0.00)[bounces-266963-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 4BE37168013
X-Rspamd-Action: no action

On Fri, Feb 20, 2026 at 10:14=E2=80=AFAM Max Merchel
<max.merchel@ew.tq-group.com> wrote:
>
> Hi Frank,
>
> I forgot the boot property for the spba-bus in imx6ul.dtsi.
>
> If Fabio gives me feedback on my suggestion to improved the comment
> messages, I will send a V2 at the beginning of next week.

Yes, it looks good to me.

