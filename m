Return-Path: <devicetree+bounces-276184-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qOxbKNAKuGkWYQEAu9opvQ
	(envelope-from <devicetree+bounces-276184-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 14:51:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 26F7529AC2B
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 14:51:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6AA3C302F999
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 13:48:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C8D82874FF;
	Mon, 16 Mar 2026 13:48:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zr28obzB"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09DFE21D590
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 13:48:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773668881; cv=none; b=e+0ZRaHLLmqIDM/F82gxNDpkY3lZlZTv11UozwaaobDwuEwNvE+RAPBtpvIW9tyBdZaucgVyZdez5O+mZ7ybtd0NhRpDf2JnWMMchmKP4ljI9+wzAWDWhlbNiHODbDOZ4s1JMJLrx/Af0LpCLWrOkn4ty0aYgycr4OU1yVSK3QA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773668881; c=relaxed/simple;
	bh=wYH3+XpB4a2gyPrlHeP5QGbRc5PtadVy9tM/LQIg5+4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=f9AO/nSugGe3WHlyVpwgF8ykam/NaPzGfpRQ7neCteSa3qz31/l+GdLUba9ZZGQI23R8LRz9Ylb93fCKiW5C095MHc0Kr9IdZ3UM7jhiZ+DEteAvqK/OJGClWZN91iT4Uxpnmox3a/Xh2Fmqrbnm+KXghtd9x9tv05xAkpQ5mb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zr28obzB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E09D0C19425
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 13:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773668880;
	bh=wYH3+XpB4a2gyPrlHeP5QGbRc5PtadVy9tM/LQIg5+4=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=Zr28obzB2/uEDuh3BIv5vyyyx5Wzyc1kKJE2tYjnlJN3KaFJWJ3+i0JGfF2CeOc9B
	 H//Sf9loybFwk6aCh8uYG1+Cuiq3LWnmN79j7fPzvFgZvlrJNyl/EmbzWY07PQhhef
	 Sdkj53/l4o6cihupIm4+ksuRVKSGOffOFVxD23xdPo4v1KqVpkgpWpU4jjeLqghE1+
	 vNbN7wgzW+yHvQCG/Pv4Tws5H3IixFRQANMsuZXyAfe6cTICh2rJadZRSW53MlaJxu
	 HYz5hJKngmPzZREOB8I1uT7DmyaHgmiCc1OYnkXg8HzmCLCSCBPodD1oNWXvinSz+p
	 XnW2EeBqcGVjw==
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-79a5ad7cc52so4480167b3.2
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 06:48:00 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCX5jV8Qmij8PEgCZy3UrjQGCGBQCdY1salm9bBvyarctqWK+bfMV/3Ut2ZsNd4SjkOfPh+lW4DNFRfv@vger.kernel.org
X-Gm-Message-State: AOJu0YwM/todN+NOVEIU8WFyI8VDQSaUZboN34rkL92SZlasV/m1hZ/5
	1IARIsjSgyAbpUhLIZjmj0k/uKNGDzPTNsHRXiKgHETeZ/M3/4HUTmAHpaEGwmaPi++dy8EG47m
	N0rSkqM2As8pUSg6mT3ECqEHBq3WMP+U=
X-Received: by 2002:a05:690c:20a2:b0:798:6cc2:69c9 with SMTP id
 00721157ae682-79a1c0d0184mr99248767b3.24.1773668880274; Mon, 16 Mar 2026
 06:48:00 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260312113040.68189-1-eleanor.lin@realtek.com> <20260312113040.68189-4-eleanor.lin@realtek.com>
In-Reply-To: <20260312113040.68189-4-eleanor.lin@realtek.com>
From: Linus Walleij <linusw@kernel.org>
Date: Mon, 16 Mar 2026 14:47:49 +0100
X-Gmail-Original-Message-ID: <CAD++jLmyGNR-242npzHpENhXu7mmuwfLf=ZnoFnfKECFdinS2Q@mail.gmail.com>
X-Gm-Features: AaiRm50SIXiDQuSs2d8ukotnHyL489fbFBxqS63wwvx1B_UNJFo44E1ehctETTQ
Message-ID: <CAD++jLmyGNR-242npzHpENhXu7mmuwfLf=ZnoFnfKECFdinS2Q@mail.gmail.com>
Subject: Re: [PATCH v3 3/7] dt-bindings: pinctrl: realtek: Improve
 'realtek,duty-cycle' description
To: Yu-Chun Lin <eleanor.lin@realtek.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	afaerber@suse.com, bartosz.golaszewski@oss.qualcomm.com, 
	james.tai@realtek.com, cy.huang@realtek.com, stanley_chang@realtek.com, 
	tychang@realtek.com, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-realtek-soc@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276184-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,realtek.com:email]
X-Rspamd-Queue-Id: 26F7529AC2B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Mar 12, 2026 at 12:30=E2=80=AFPM Yu-Chun Lin <eleanor.lin@realtek.c=
om> wrote:

> The previous description was misleading because this hardware block is no=
t
> a PWM generator. It does not generate a signal with a specific frequency
> and duty ratio.
>
> Instead, it provides a fixed nanosecond-level adjustment to the rising/
> falling edges of an existing signal.
>
> The property name is kept as 'realtek,duty-cycle' rather than being
> renamed to strictly preserve Device Tree ABI backward compatibility.
>
> Signed-off-by: Yu-Chun Lin <eleanor.lin@realtek.com>

Thanks for working this out,
Reviewed-by: Linus Walleij <linusw@kernel.org>

Yours,
Linus Walleij

