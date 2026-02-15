Return-Path: <devicetree+bounces-265596-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eDkxDmJGkWn2gwEAu9opvQ
	(envelope-from <devicetree+bounces-265596-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 15 Feb 2026 05:06:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C10513DFA2
	for <lists+devicetree@lfdr.de>; Sun, 15 Feb 2026 05:06:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EE056300DA5B
	for <lists+devicetree@lfdr.de>; Sun, 15 Feb 2026 04:06:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95BC123A9AD;
	Sun, 15 Feb 2026 04:06:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kMoww0kX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF91230BD9
	for <devicetree@vger.kernel.org>; Sun, 15 Feb 2026 04:06:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.160.177
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771128412; cv=pass; b=cLGNORZCGX8tCLpenRwjgkXxOnhY5Tq9udkR0ROc+SaYnJeyUgajVCT1y93FQ6pUb077EfGhTifXPBEqxYciC25J2LxaS9q0asr2JiRUCrT32kLHmjqqWYjYkaGc22/PGgrCKzT4Lv5tdyAveYnpOE1SXi4MBOCX18hz+f0s/mk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771128412; c=relaxed/simple;
	bh=Cg/UB636EWecP2AJFXinJ2G1jlune6FD0wjfEnUOnmY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=AnzUF2elNdQ2iG8g7a2rXWxCzX2sH5X4M9S6ovV9GCRhJqBoGy+Zr+3q3XTcIzKh2JIEoKmxIOmSvr4GrQJ8fLNavffBSgBfXGF3B92w2QOlH5mtA88DwmVhjsTEypwqTqCDv5xWw7Xuf++vq41KMaE2a/FsocKGMLl7WuBbKRc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kMoww0kX; arc=pass smtp.client-ip=209.85.160.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f177.google.com with SMTP id d75a77b69052e-50332392929so2130271cf.2
        for <devicetree@vger.kernel.org>; Sat, 14 Feb 2026 20:06:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771128410; cv=none;
        d=google.com; s=arc-20240605;
        b=SlhQfAnE6pWDO6x4jkLV1kGH71HbO+UpitCF6HAdlT5IqLfuOLS/WWoV+q3IXqXCTq
         PyweMSYVepU2IbztOyo78Jq6pmi9Ue+RP0qE/6XjlBY8kc8yG4dcPMXooqws62dW93N5
         Hucpo1/4VtSmAWR87wvdPQSryT4EVg1cAfxUn8gbqiIiiBapTVntOAY3fqSX26zZ9rH/
         LT7eopA9RxoHXCfmOC2zRkr8YGKtanLTZ+H3C7vV9P7fhlYpj/xR5fDyqNQK5TKHZCKb
         DnQl8eF8UX9al2vAzuPuO72uH/tcoNnfOlMnfyg1HnuYmD+7zCxqhdbxjlVg66WThgF9
         5v0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Cg/UB636EWecP2AJFXinJ2G1jlune6FD0wjfEnUOnmY=;
        fh=4+nf/2bfSgLtk6ow6WB1lsjxqQxmsueEXmVInV6ueGo=;
        b=QVJu+6Z6qdDuHmBgJuRH80I/bEL0I0TavIeJQU+M+HjBlg4oKnmq3e8SP+TnbxKKJH
         oCGojgXI/gZpM5XZhXE/JV3qEVusoWSAjcjHkpfGXKORuHbXA5ZGw8DTkq4ImqBc9m5N
         IJIzSnLh4fVQZ9P45pK4LuiJQv5BW/6jB+m8oK++XgUIFfltZ7BrjUXZb/bugnrMeGGA
         4peCBWzliTvNc9DDAN8CJ8wLgoG/Qlx4k2LqWT95rjjRwmwoUHR9G43TwYqpMRemX5YG
         FmUIt8b0IqIQBF6SYLY1gfNTXBayRfvmivUFWzZ/83AOpLTCXyq6HIH8MkRXC1bOFUuX
         rQ3w==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771128410; x=1771733210; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Cg/UB636EWecP2AJFXinJ2G1jlune6FD0wjfEnUOnmY=;
        b=kMoww0kXWSlb1Nnb4D9BQREmWwLMT4Z7xy9RF29WOXk77PH3Lh8iyIIfZr9+uVLNBK
         rm3oOMDgs8ErPZvVjyWzbfVA681hrkjPN0w/1+1VXCms+cU2i3z7K/sDbL1zN/y6LtA2
         qxx/kGlnhnT+CrlTcnLs/8Bh3vI+3G3BLzG4GCI4aRjMgldUXkMGsTWxiUG4PBEVRVXf
         te9nLFkLdQH91V/H2nUeZ5Ug+N1aKzB3rEySaa1WQNDBlw0dv4XtJiIlBOK1FDHVuCXG
         VVyHYxtI5x+iPMeTj/llFheSu+g4+CjAynbt8mPCwYFJN93fiM8vP+cNUkU/sWhc4ROS
         WdXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771128410; x=1771733210;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Cg/UB636EWecP2AJFXinJ2G1jlune6FD0wjfEnUOnmY=;
        b=utVcakBIddQbwbyRmvkyOAhjH15xCUufAGss8HTPna1vxPa/J420AUgkIXxfs+u0Sz
         wASoM8FZi0WbaWm3Ed3QtXwZnAhxRWBw/zEPln0UHYeAylPPbZPpQB32rrsW4OootsLz
         9JtNLPH84rslBdCVa5G5ucSQlVgt1k4SKIetbbXjyeXfKdpgiioQDFDAFLybpkOdFxHe
         kOF8S4USjhQCKPHSqwQjZ0ffizbGTUT0P3NEGmCzQo8yNK6C+gJW2y1aps8qHeswyFoP
         KaGKu9XW/VD98Xs3o9lQFW9XWe2B4omGjkh+2NWPp8oTSXCrc3MWNsgP8lQcXNj9uJhU
         p0UA==
X-Forwarded-Encrypted: i=1; AJvYcCVR2sAbhAyqocAwZyGUna9CUnluEhwkTd8P9VgEwchkC2ykDP73MUSDHTf5XF+xq+y6Fjnfc2hHWA9b@vger.kernel.org
X-Gm-Message-State: AOJu0YyUtRY9FcT66inf8jVz7Dt7dG1gUKPJ6/1AJMM0kpTx6Z8xixDe
	HZ/wJIyk+cXfRFjL0VxIbbmJL2UGg9aff6Ty/DlF2tB68TeqFjFm90uOWSmCS/oHpJA6qgTuAC7
	ZH0viwyf2KPcmStuC41AmnPGbQ6jIqGM=
X-Gm-Gg: AZuq6aJl487IPVQ7NPCcaSW2tJKTyn9ZJ7e3QR9q9QIyllHRqP1UlJimJ4EyVsNSCg4
	I7kLtO9AC9veUP+PPCXOrJ52uuTdohynDVbOBh2OpRURMXAHRrKWQAEdI7OG2UXxK9PnzpGmbD0
	wfhOXpHciB/GzaCAG8uVxak+kivacdy39OwJAYxttXyFxDLte92henFgApWXpl7EjVpsxpf68yJ
	bYzVnL9A9iMbSYuCqam/LJMV/jqY4F94hr7bXd2J2zw+FOv4KCVdgrbh8NkcQhi+C0dMQq7I8Jm
	8fE9Mgb0D6bM8SoD/MHQ2CkW5/OwWnVL29Z/Ova80wll0Z8WaJZNwwd9zPCrIdf18bFEGB8R
X-Received: by 2002:ac8:594b:0:b0:4ee:87e:dedf with SMTP id
 d75a77b69052e-506a6a2d1acmr74533191cf.8.1771128410127; Sat, 14 Feb 2026
 20:06:50 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260213-upstream-20260219-v3-0-df9371d29f5c@gmail.com>
 <20260213-upstream-20260219-v3-2-df9371d29f5c@gmail.com> <aY9TtJQoIyLVqqR-@smile.fi.intel.com>
 <20260214174312.7f6e299f@jic23-huawei>
In-Reply-To: <20260214174312.7f6e299f@jic23-huawei>
From: Yasin Lee <yasin.lee.x@gmail.com>
Date: Sun, 15 Feb 2026 12:06:38 +0800
X-Gm-Features: AZwV_Qh7AlN2Nm6jnpkv5cFhBmD9NtGsFQfL1-LB27hQtvR_tsPptkMgUA5H0yE
Message-ID: <CA+NOmzKYv4H70axDMo3POufOW3ryTYVJ-=_rfvVaD2XkSS1FOA@mail.gmail.com>
Subject: Re: [PATCH v3 2/4] iio: proximity: hx9023s: Protect against division
 by zero in set_samp_freq
To: Jonathan Cameron <jic23@kernel.org>
Cc: Andy Shevchenko <andriy.shevchenko@intel.com>, David Lechner <dlechner@baylibre.com>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, yasin.lee.x@outlook.com, 
	linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
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
	TAGGED_FROM(0.00)[bounces-265596-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yasinleex@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[intel.com,baylibre.com,analog.com,kernel.org,outlook.com,vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 9C10513DFA2
X-Rspamd-Action: no action

On Sun, Feb 15, 2026 at 1:43=E2=80=AFAM Jonathan Cameron <jic23@kernel.org>=
 wrote:
>
> On Fri, 13 Feb 2026 18:39:16 +0200
> Andy Shevchenko <andriy.shevchenko@intel.com> wrote:
>
> > On Fri, Feb 13, 2026 at 11:14:44PM +0800, Yasin Lee wrote:
> > > Avoid division by zero when sampling frequency is unspecified.
> >
> > In case of agreement this is the desired behaviour you can add
> > Reviewed-by: Andy Shevchenko <andriy.shevchenko@intel.com>
> It seems sensible to me as avoids undefined behaviour + is
> unlikely to make any functional difference as I assume that whatever
> we got from the undef never in practice matched a valid input.
>
> So applied patches 1 and 2 to my fixes-togreg branch. I'm not pushing
> that out just now though as I want rc1 to rebase it on first.
>
> Thanks,
>
> Jonathan
>

Hi Jonathan,

That's great! Thank you for applying the entire series, and thanks to
Andy and Krzysztof for the detailed review and guidance throughout the
process.

Best regards,
Yasin Lee

> >
>

