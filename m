Return-Path: <devicetree+bounces-260113-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QK7GHaMceWmPvQEAu9opvQ
	(envelope-from <devicetree+bounces-260113-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 21:14:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 169799A46F
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 21:14:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4366C300B1AE
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 20:14:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1719432D0E1;
	Tue, 27 Jan 2026 20:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="av2YhStI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com [209.85.215.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D828A32B9B4
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 20:14:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769544863; cv=none; b=QTQbXmsbetJC9PEglGk1PomaUVY+FEr5+8TPYuk94N5VZ1T9UFNuQfjpC4sbfpPBuTmdCy72j/g0yR8UXmA/fEtY/ygGlHE9oVpKvJJAnE6xvxY5enpxnRor9txUlfQ5AIYY2Vfrbd0tqi+VLq27SXAmwd/Z9/fr6Q1p/xvTHzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769544863; c=relaxed/simple;
	bh=TajH8yN8UqkekEASPsMQ18gVGY2nFAz8e8hQXy99WE0=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=jrEzHYabkHioHSg4VDE4/VtG1l1vv07+XhG2dLGk5VFWna4EI6YmrCQr+DgHQqt15T7x1XqZCN+nK+SNZmDXWqlr5JpSB1uh1Yp94AN0aZwPoG7/xUpzxIGMnDBUchT7u0Mzk/ZjoPAieczAwjJE6pAjux5LXmGtwVQALYLMRa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=av2YhStI; arc=none smtp.client-ip=209.85.215.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pg1-f193.google.com with SMTP id 41be03b00d2f7-c63555db09fso59656a12.1
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 12:14:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1769544859; x=1770149659; darn=vger.kernel.org;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=TajH8yN8UqkekEASPsMQ18gVGY2nFAz8e8hQXy99WE0=;
        b=av2YhStIDCAYGaFNP8HTvKCIknQmIAusKqHq6ZaDEATHuL1FUks8LAzSDCEq3tAtHp
         bU/witTro6gFHznFPk6TFZo03VUHl/Ov5TZwsvavPttUsgPibORMJyXneeu/tWkjTA8c
         oBkGuxfTM+UdTZFDlPkYJ213JC1TSurfVeijr06vZL7/+nVqxmXsXtIXxtPQABzZi8YA
         zAwsA+QurVuUpZHC6ctyGIbLA8SVag4MSi8UvdV86aPNSHRmzfRs84XCipbY8d39tuue
         dlghPN64hhS0ihVZzLcw5krpbFu4Ao3CfFBdJQFNc+fpTwtd8QXrIzf9J9HmD6HiYpch
         Xi7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769544859; x=1770149659;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TajH8yN8UqkekEASPsMQ18gVGY2nFAz8e8hQXy99WE0=;
        b=xC0KRKxP64YR6YFjRMax6qTfcduO2B/h3NIjozRH1f7NVkyZ4BDmGEMKj6rO3WZ27P
         iA64DlTLJxIOAerx02cmx6HvVQEwAiciEtI97d+TR1km1Mo3zsAvTl7zYu/aAmvbBwWJ
         ZpfomnTXeZxif8d6aYwZAjiShJf29M0JKzz5TwIXoH1VmSTFucxiV6np+ChIyVfIKL8P
         qWN9dqC/TQNsDG5LvmOHWqYH8oh0v4O5fchSFnTfb/yzVoMeLXat+kAF21joQKa4aK4b
         u7u/CEYYsMFHN+GKdvBri+gMTjxV4VsBClxaSNuzEiVzkLOet+akuqKEhxAWcqLlPboe
         7pIg==
X-Forwarded-Encrypted: i=1; AJvYcCWFwK1D9/Wrc4+sLgB5oNfuNgM07C5At7+A9xnqBXWdDlWtw2qPC8wCSD5Ch829nCdLrjrA1NZLG9dU@vger.kernel.org
X-Gm-Message-State: AOJu0YxGY5IxL1qqhIgJ+E0r6mNKz6XwA8n2ZSdQ9/7Wz0ZtoVrxlx55
	q9UnYmk2/lpPiNRVXVaBfATINk/Ub5gZll2v6vdDBV/qQP1gHeWhFYRXfG00nPmdxZw=
X-Gm-Gg: AZuq6aJsPbI1+B/m/Id21vS/w6BXmQFVa1AfgiqUIGNkvRCeEx9RaDm85V7poqFbkXn
	QrkbqbwinrlSGqjnch58ZqccO1JTIc7niFWEzWv5VO0xTPeADC7NJcx/WNR5i9Vn66DP0HyShMT
	RzkCtg/qpsg7Ucsakx8QKH8bonQKdJHNSdoqCc6OJ+txM9pKbqsRWYmczoIiCraI9mwyp6UI5o9
	rQfqlW9NY2rqdzVFaCjQO07+TSjZSJPcPsr8DX/JfT/zMxprgXAknJhaGeDq9BPVU+X9F1YRejc
	QHm+NrS+D8xo2NDWxd3gB0nIi5sai+L1YcUBOqEahJF0ajpNPJuvznejvf27lX0TrJlnLKbgMb2
	KCxtpOe06MS3ThsDwWPDGE5QuGyR4YecsYho4fOH9LkxrEa6fyX9F8g0hdg746IeVfK9ZWLsZmB
	yKkeFny1/p
X-Received: by 2002:a17:90b:3c4f:b0:34a:a16d:77c3 with SMTP id 98e67ed59e1d1-353ffa2e81bmr2244550a91.2.1769544859290;
        Tue, 27 Jan 2026 12:14:19 -0800 (PST)
Received: from localhost ([71.212.200.220])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-353f61e0007sm3373581a91.12.2026.01.27.12.14.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 12:14:18 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: Kendall Willis <k-willis@ti.com>, Nishanth Menon <nm@ti.com>, Vignesh
 Raghavendra <vigneshr@ti.com>, Tero
 Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 d-gole@ti.com, msp@baylibre.com
Cc: vishalm@ti.com, sebin.francis@ti.com, a-kaur@ti.com,
 s-kochidanadu@ti.com, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Kendall Willis
 <k-willis@ti.com>
Subject: Re: [PATCH v4 0/4] arm64: dts: ti: k3-am62: Support Main UART wakeup
In-Reply-To: <20260122-b4-uart-daisy-chain-dts-v4-0-cfdabdf5e6c1@ti.com>
References: <20260122-b4-uart-daisy-chain-dts-v4-0-cfdabdf5e6c1@ti.com>
Date: Tue, 27 Jan 2026 12:14:18 -0800
Message-ID: <7hbjie6cf9.fsf@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260113-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[baylibre.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[khilman@baylibre.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 169799A46F
X-Rspamd-Action: no action

Kendall Willis <k-willis@ti.com> writes:

> This series adds wakeup support for the Main UART in the device tree of
> the TI AM62 family of devices. It defines the specific pins and pinctrl
> states needed to wakeup the system from the Main UART via I/O
> daisy-chaining. The wakeup-source property is configured to describe the
> low power modes the system can wakeup from using the Main UART.
>
> Dependency
> ----------
> This series depends on the "serial: 8250: omap: set out-of-band wakeup if
> wakeup pinctrl exists" [1] patch. This series should NOT be merged until
> "serial: 8250: omap: set out-of-band wakeup if wakeup pinctrl exists"
> is merged.
>
> Testing
> -------
> Tested on a AM62P SK EVM board and a AM62L EVM board with all the above
> mentioned series implemented. Suspend/resume verified with the Main UART
> wakeup source by entering a keypress on the console.
>
> This github branch has all the necessary patches to test the series
> using v6.19-rc1:
> https://github.com/kwillis01/linux/tree/v6.19/uart-daisy-chain/all
>
> [1] https://lore.kernel.org/all/20260116-uart-wakeup-v2-1-0078ae9996e4@ti.com/

Reviewed-by: Kevin Hilman <khilman@baylibre.com>

