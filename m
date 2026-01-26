Return-Path: <devicetree+bounces-259629-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mI4TOfXEd2nckgEAu9opvQ
	(envelope-from <devicetree+bounces-259629-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 20:48:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 522008CBC2
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 20:48:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id AC25E3014C46
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 19:48:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B623C287269;
	Mon, 26 Jan 2026 19:48:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XkKUh7MJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D14E280A3B
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 19:47:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.43
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769456880; cv=pass; b=hDiQAKp65EYZT7lFH5YpnISOezhbyBejlmUtoWqnBMq07adF4m9XBbHoZXbynoQCieat+uYNSHfkPLtiowO4ltvvhT/I5BFcFC+YUYY8fBQsuixhEprtOKhvXZMba8xTEApHBn6aYRvENKbovrL7PtwA6ibBk/cMwxljEKsIuAs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769456880; c=relaxed/simple;
	bh=E86U2Pp1+kEMZ5xTDOjPoM6DE7sOtiZh75Z6gIblXu0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SOinfnYd7+zETRxRZDup2bmZWniv0UDK8ZWuljczVkpe4Emuh24j//vTRtpSr4LzvHELWBkrbBivv6qx65NsRM994VuxfVitW/uTLqXsUYFIjct83gI0oQtjDu2rs4ZCJm9j9/xXozW8WBrGnnqYadY/y89oNz8Pqystv12wDV0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XkKUh7MJ; arc=pass smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-59b6c89d302so4787023e87.1
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 11:47:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769456877; cv=none;
        d=google.com; s=arc-20240605;
        b=knCU4RhnCHCA38BuKp0BAl/wJDCzpi9Oewl7x9+Du6ssThlP/2zj9gDaSfj5AC8Ko5
         H4LOED0Hm7ArZ+J4RYr4TdVTxNrDOF1xxN3V08gxe8qJGxq33prqMZ99IVT2yuoDaCNf
         Oa3WRGvvKBA/08C9CTeaE2xS20GqNWat3hTixuAqyOOjg7I/IqkDoyS4C7uF1kSvGgws
         PWU48LmV33L61wR9m+qpb1Qh6jILmacPXLaVRNEJSWlyb1POOzVepVxsWIQS1HU1cGrf
         B+PzuqGeuHRAFsmu4Cl/oZ3N0HnYzB2/BFX0QMraytc4d4dboBhflg8SSnjLn6dAmVs/
         RaBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=tvHi5BlR/jfPN2hk45XeIUKXD0zHTAJed9qhiZYAB1U=;
        fh=YNsuL9a92OD0Wm/mkrmshUefmL67usJFN/IjPpzYOCM=;
        b=Wqu2CeEnZxVNn7XHvrZsiom3HG1CIi85V/0km71ZZ5wA/qkHx7ZbJVWZB9HW7JWZ7T
         OX3sWrmgyh1JHob58A/P1R5bu8Vyh4sw+q/av8n4dwGukbzxmW9eAcU/bxU6GO1dhieV
         lWjkD7FNGbtoxYwM6m3FW1Q0IxCIQwRrq+7Lmtyk3356spvQFth6m6x1vedFQxUv9PmQ
         XhNha2vfgoJi78myxpQCUi+ghqFsmHh0iWo0sDh7byJ81iBxOF2Y6FU5gG/UbkQtGnie
         KDf1fXH+bxrPYlWa4CsxfREvetLJyV1xMzFWt4lHyDjLt1rtPxS5CIR2YKC0vjJ9aE/r
         ZhhA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769456877; x=1770061677; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tvHi5BlR/jfPN2hk45XeIUKXD0zHTAJed9qhiZYAB1U=;
        b=XkKUh7MJ/zGes0PcTeUsbvgslelXmKBmQI4dXrHzTH8/SydUKBsHUHd+dSj6ja7f2U
         2xuzpUA5KrwEZynOIObv6Fdl23tqhsm2ZDoTBHDzQs4LTNHBfTIISmkNYXtmtDHhOZY5
         EGQDq8euupglnN6bqxLPsdYw3yM3vjDzovy3NThI5iZWQuMzmd/32KMPPSXHwZg5udDU
         aRu3qVFwtS6KjB/662HWKZpXh22h2U5MYWYbu2Fp4ww5fI3TxUpWHrLgFBtMVQ907PKT
         3irV2aUDzAsjvSM1jXGXc1Nb24OJzx17bs0yh9Cg5ZmaWG06ZJw+v2r+SR3ZvoSmBqgS
         D5/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769456877; x=1770061677;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tvHi5BlR/jfPN2hk45XeIUKXD0zHTAJed9qhiZYAB1U=;
        b=PcQHI2eptVZpBO/+tZbbCWhCF1BOq9CuskvyopqqIXVhU03KmQEQEHLlkuY4fqOwRH
         bJKBfuyBCmXBciugkZGEHDYlt7bnj53Pt1AD7V/F8D6bkZGcfW9b6Un+NpwnjnpDtULH
         g/6DEsGFkPnxZLe6UCnTBwCvvHqACfY8bKdQ/ZP8iLftf6AczhLs/uJi12yISthJWCCc
         DNp78mGzdIdKMOd79hf02qaUGjKgCRUSEuy6H02QLr+9nSQHhD9RtjSU6+8cN/lmUcah
         yHZ0fURFVg1QKCAU2SjCU0islZ5AqYarIxiDFv/cdK9Shbt1ZJW82IE6NYt2lRonIM91
         g4lQ==
X-Forwarded-Encrypted: i=1; AJvYcCWAPdHwiljmiHexLZAc/F6gpxXCXOSRJvaW8qyRt6/axGJcoqNPIi5LzrVROZiStJ3DzX6jdgtOIhio@vger.kernel.org
X-Gm-Message-State: AOJu0YyzTRlwAdIhhXCytCAFOqx3y8njocKlMFhFdASSGz3H/mTnUb3e
	fsIvXWtd6XG3cQQ7JpPuQVBxEavi2kBnkIq3g1UMjmlRkHfzEfmxFSk2lRrTdvk7PzTfeHmzton
	5qOw8Z6pVfe6hTl6E8D2loOYFyP9qotQ=
X-Gm-Gg: AZuq6aLp++5MzxoiOAF5ZMpUh32/acmY8ws9+onx5/WoAfGr89rlC0JpX0iMun/7NkM
	GZlOd++nlbdveTp5ViTVvrwuVh08VfulnJVSZjaXO3m8fP889T7lYyJ8OdnRhSQ5uHwK+mHsz9A
	mmzICY9gycHsFiEfcaFDc3mP8xKMX05AGLODhDjDIY4wqTm0wSZzEbLQUII6zKpzo+9z/65zmxh
	VyRMccg2Ed4xP90+9B+qhNYJ08x5cJWEciVfbgeY62tzrXnr/ao9ekjBUPcRjoa0g9W1y/ypE6o
	XetwWUb3bQQb5Qny53fBouJT1WU=
X-Received: by 2002:a05:6512:1087:b0:59d:e9f6:1391 with SMTP id
 2adb3069b0e04-59df3a1408amr2177134e87.34.1769456877066; Mon, 26 Jan 2026
 11:47:57 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260126115349.1750578-1-lukma@nabladev.com> <7671b833-f823-44cd-b5af-0b473a8ae23e@lunn.ch>
 <20260126203307.6076ba9c@wsk>
In-Reply-To: <20260126203307.6076ba9c@wsk>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 26 Jan 2026 16:47:45 -0300
X-Gm-Features: AZwV_QizXfEBcPuoLKyFUr1dg6OQ-LmaBQRERKbYiAht9E5yQHfaWrYosy_qY4E
Message-ID: <CAOMZO5C2Hg06wb08cRDLCXGDS_rmUAq3fC7Jm++kSumjukyuXA@mail.gmail.com>
Subject: Re: [PATCH v2] clk: vf610: Add support for the Ethernet switch clocks
To: =?UTF-8?Q?=C5=81ukasz_Majewski?= <lukma@nabladev.com>
Cc: Andrew Lunn <andrew@lunn.ch>, Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abelvesa@kernel.org>, 
	Peng Fan <peng.fan@nxp.com>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259629-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[17];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,mail.gmail.com:mid,nabladev.com:email]
X-Rspamd-Queue-Id: 522008CBC2
X-Rspamd-Action: no action

Hi =C5=81ukasz,

On Mon, Jan 26, 2026 at 4:33=E2=80=AFPM =C5=81ukasz Majewski <lukma@nablade=
v.com> wrote:

> Conor (on CC) explicitly asked to remove VF610_CLK_END:
> "[PATCH] dt-bindings: clock: vf610: Add definitions for MTIP L2 switch"
>
> ------>8------------
> > -#define VF610_CLK_END                        191
>
> If end is modifiable, it is removable. If you need the define for the
> driver, please move it there.
> ------8<------------
>
> I just follow what he asked.

You should still use VF610_CLK_END. Just define it inside the clk
driver instead of in the dt-bindings.

Please check these two i.MX93 patches that explain the rationale:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?=
h=3Dv6.19-rc7&id=3Dc0813ce2e5b0d1174782aff30d366509377abc7b

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?=
h=3Dv6.19-rc7&id=3D0af18ba60752e8a4ba34404c1d9a4a799da690f5

