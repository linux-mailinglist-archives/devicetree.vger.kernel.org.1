Return-Path: <devicetree+bounces-298963-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IOv/ITDlCWo6twQAu9opvQ
	(envelope-from <devicetree+bounces-298963-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 17:56:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 922495622F5
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 17:56:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1FE0B3001A4C
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 15:56:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B74C3BE15D;
	Sun, 17 May 2026 15:56:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hkYUKrx3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEECA3B9D84;
	Sun, 17 May 2026 15:56:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779033385; cv=none; b=Arm+Ye1hucZCLKZa727aFx3nFRXywoHRw68f9ADXmgPUXx1LNGqWX1EzS3afOMD4I7G/rfwgW898Frs87ctigZnQw4sMcF+3fqr7YTlzi1TZThXezNwusI8xhHmfbt2uG0zBl/W3zkTBoQbtLWcp/JWuzJfXDHJfRk6ZOhRVSPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779033385; c=relaxed/simple;
	bh=/vouAuRiL4u0L4OBvt2/nK/kw0Ct2vHfD2gvkrC+aaA=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:To:From:Subject:
	 References:In-Reply-To; b=asJtssE8ZMhcfWAx4inBML37m/s+GaLhFnidmPzqEZ59wVpDNnl6+ihK9WgK/NVtybNfNWK3ViY+Ktvn/V4VA6bBMi/t3S/Ctxum7jn/X9Ar47tfy/m61zI2d5S4/0MbnVZ6ta2EKwbupt+JBLj7DGd+7/i099r1AyQTZ5neWo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hkYUKrx3; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 02A08C2BCB0;
	Sun, 17 May 2026 15:56:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779033384;
	bh=/vouAuRiL4u0L4OBvt2/nK/kw0Ct2vHfD2gvkrC+aaA=;
	h=Date:Cc:To:From:Subject:References:In-Reply-To:From;
	b=hkYUKrx3r8FP5x9qgjbJLhoYa7v56trxKb8axZawQNS0FvBQ5zpBC2+fZffDtI2nv
	 Zwv7Dg4hg2N+LPhV0Vyr9bWOTaneNjBkWIWPudJVbNtAZcbQ9ARDOLnNB6NaeMgsKl
	 TQRvu6U6HMC9gkTAc8+ho/K20Zk5eriWRndGZ/DPkWSHuL08Giz4OoT2rh04lTMnFt
	 6H/b/M3U0WLfoj7Kri0UwkXH7ayQm3iE9GzRg8LxWxJogj93zsbnBFmg1+GjR//POH
	 PUsioLy1G6e+fNO0MdKLVYAM2e3NdLD7cts96DNwilGj9uOXLLlWM+WkQAyK6vHcnG
	 I22s2G3dZPlpw==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Sun, 17 May 2026 17:56:20 +0200
Message-Id: <DIL2P8CHKVZD.2WVQQRN0FM28N@kernel.org>
Cc: "Krzysztof Kozlowski" <krzk@kernel.org>, "Greg KH"
 <gregkh@linuxfoundation.org>, "Konstantin Ryabitsev" <mricon@kernel.org>,
 "Guenter Roeck" <linux@roeck-us.net>, "Miguel Ojeda" <ojeda@kernel.org>,
 <sashiko-bot@kernel.org>, <sashiko-reviews@lists.linux.dev>,
 <sashiko@lists.linux.dev>, "Linux Kernel Workflows"
 <workflows@vger.kernel.org>, "Linux Kernel Mailing List"
 <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <kfree@google.com>
To: "Roman Gushchin" <roman.gushchin@linux.dev>
From: "Danilo Krummrich" <dakr@kernel.org>
Subject: Re: Stop false review statements
References: <b5989c0f-90da-42cc-a623-3b60df077848@kernel.org>
 <FA45D2AD-1135-4480-8423-63C0D37FE78D@linux.dev>
In-Reply-To: <FA45D2AD-1135-4480-8423-63C0D37FE78D@linux.dev>
X-Rspamd-Queue-Id: 922495622F5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-298963-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[13];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dakr@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Action: no action

On Sat May 16, 2026 at 9:15 PM CEST, Roman Gushchin wrote:
> I agree, it=E2=80=99s sometimes gets tricky when a patchset is sent to mu=
ltiple
> mailing lists, which policy to apply. I have some improvements in my plan=
s,
> but it=E2=80=99s not always possible to say how it should be handled.

Which improvements do you have in mind?

> It=E2=80=99s not fundamentally new: landing changes touching multiple sub=
systems is
> always harder exactly because maintainers might have different and someti=
mes
> conflicting views.

It can also be relevant in cases where only a single subsystem is touched.

For instance, in the case of Rust, the rust-for-linux list serves two purpo=
ses
-- when it is a Rust subsystem change and when Rust code of any other subsy=
stem
is touched, i.e. the rust-for-linux list has more of a LKML character and a=
lso
receives patches for subsystems whose maintainers may not have opted in to
sashiko email delivery.

That said, I personally don't mind too much, I really like sashiko, which i=
s
also why I asked for adding the driver-core list. My experience has been th=
at it
does a very decent job in providing feedback for C code; my feeling is that
feedback for Rust code is not quite on par yet, but of course it also highl=
y
depends on the complexity and scope of the corresponding changes.

However, I still have the same concern I raised previously when it comes to
email delivery: I think that when sashiko sends feedback to contributors
(without Cc'ing the mailing list and all other recipients), it should activ=
ely
ask the contributor to raise things on the list with all other recipients,
reviewers and maintainers before acting on them, such that changes subseque=
nt to
the first submission on the list are aligned.

Can this be added please?

Thanks,
Danilo

