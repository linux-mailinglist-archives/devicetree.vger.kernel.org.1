Return-Path: <devicetree+bounces-268700-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qFwgIRQQoGnbfQQAu9opvQ
	(envelope-from <devicetree+bounces-268700-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 10:19:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ACA01A342C
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 10:19:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 50803302F171
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 09:19:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B451F3A0B0C;
	Thu, 26 Feb 2026 09:18:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="daGGBv51"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53DE339B498
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 09:18:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772097535; cv=none; b=nZtmHnaFYdfilVTUD1mx4kTqFgVDz8ZTIyH8k29EK/McEZAluzf6OnaIBnr9frrhDXrtUOdEX7D0d4JS8UQRw0L3aQIZ986bXnYRymFh+TooRGKZMiFBDyvTP7mlWDSgoz9+9Ra38Vmj3LAnaOId9TNdL88KRnticRmiv2U1ldg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772097535; c=relaxed/simple;
	bh=Z+rlFlf82tJSA5RGkL3NrpaTjpsrsH5TKbIor2Iko0U=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RkLuVdyx0v52hCOj3NyYL4xVigVWGa8JAJX0vq0oY6GkfTOpd4Gsj1Zig3oEap3Xs8zhS9sipypMDI2v5Vfz7OV+qQ/jH3rETzWNSpdXt3zjbbCNlMqMvafNsW1kVJYEQwhTvCTrBIe5lovS0uQjBr5q4aU1H+XukxeuVvLfwCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=daGGBv51; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DB3C9C2BC87
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 09:18:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772097534;
	bh=Z+rlFlf82tJSA5RGkL3NrpaTjpsrsH5TKbIor2Iko0U=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=daGGBv51ajs81ihoMwHF2nl4DCUfFvWVpFDtsJp9zKdgz7btf62kmnJBtFgDv+m2j
	 KRZsrEXamIiJR6cqYKkUdSpmjQps/aRdXKW0pwzjMSn3gb6N4ndBrYIsF0g/9vqtjh
	 P0wqgyXm/b/8LM9XrzXG6P7+B31XgqNHMdV6JBDb1sVvpd3Gh+1GuoXvwsE7FtZ118
	 5ei9GW4vt9/znNlpJhmDbudDNPK5aAOHmxaaupYxOjs6GhKgrTZ5e6y9ubXgMQpCgk
	 UE6Pv4czH/kDn5ozjH++gM/jS8U82NH4tN7zX4Dhx8BGVmv97aduw6N7knz9a0ZgDR
	 DLvrNfdn4w/5w==
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-389e2950f54so5529881fa.0
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 01:18:54 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVBe+z+uUw/DSZC0zCfE5HqVHIk9otIpWfV3hE9KB9KdsnENo0aD/h+pTOq4pJ2m7CtQzahI17dtod7@vger.kernel.org
X-Gm-Message-State: AOJu0YznyYwGD/OFTY0QniWiMizKu0TKOoLl2A0dHS0U9qA9c+6pf0tJ
	+sJ2NAd27+P1vcvsQbT81NlTMhKVUkvdxXsFXVTd9iwma7Xb/Ps50o57OCxkzu7UuMIYaklRQVu
	hIF1O7E+YAi+JmXZfDtpOairczaeAUIg=
X-Received: by 2002:a05:651c:154e:b0:385:c15f:6bd with SMTP id
 38308e7fff4ca-389f1db1be7mr6846191fa.10.1772097533253; Thu, 26 Feb 2026
 01:18:53 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260225170045.1707778-1-wens@kernel.org> <5050123.GXAFRqVoOG@jernej-laptop>
In-Reply-To: <5050123.GXAFRqVoOG@jernej-laptop>
Reply-To: wens@kernel.org
From: Chen-Yu Tsai <wens@kernel.org>
Date: Thu, 26 Feb 2026 17:18:40 +0800
X-Gmail-Original-Message-ID: <CAGb2v64ixefsSDR1bJb7uYjPWOz-7yJ=+27apx4kb+aH4ET9rA@mail.gmail.com>
X-Gm-Features: AaiRm530ZuEda_MZygW0LXGcfkJ34WBOn92bG3Hhz3-OuGkIcoYFg-ebkdtXFC8
Message-ID: <CAGb2v64ixefsSDR1bJb7uYjPWOz-7yJ=+27apx4kb+aH4ET9rA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: allwinner: pine-h64: Enable USB 3.0 host
To: =?UTF-8?Q?Jernej_=C5=A0krabec?= <jernej.skrabec@gmail.com>
Cc: Jernej Skrabec <jernej@kernel.org>, Samuel Holland <samuel@sholland.org>, devicetree@vger.kernel.org, 
	linux-sunxi@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268700-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wens@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_SEVEN(0.00)[7];
	HAS_REPLYTO(0.00)[wens@kernel.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3ACA01A342C
X-Rspamd-Action: no action

On Thu, Feb 26, 2026 at 1:09=E2=80=AFAM Jernej =C5=A0krabec <jernej.skrabec=
@gmail.com> wrote:
>
> Dne sreda, 25. februar 2026 ob 18:00:44 Srednjeevropski standardni =C4=8D=
as je Chen-Yu Tsai napisal(a):
> > On both Pine H64 models, there is one USB 3.0 host port directly
> > connected to the SoC. The VBUS is shared with the other USB 2.0 ports.
> > Unfortunately the DWC controller binding does not have a VBUS supply.
>
> IIRC this is exactly the reason why it was never added. Adding it without
> vbus property is not a good strategy.

Or we could describe a full usb-a-connector with vbus-supply, which still
doesn't do anything ATM. I plan on working on that in the future.


ChenYu

