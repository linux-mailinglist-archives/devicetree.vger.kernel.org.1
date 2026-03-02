Return-Path: <devicetree+bounces-270222-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cKZmLXMFpmmzIwAAu9opvQ
	(envelope-from <devicetree+bounces-270222-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 22:47:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 334D81E4027
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 22:47:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 63586333FA57
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 21:29:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51F25386544;
	Mon,  2 Mar 2026 20:49:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b="k7PO/phr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A5C386421
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 20:49:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.215.174
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772484560; cv=pass; b=ukIjCgfCoavac1yHuCpGH3t3LjkHsNYL364vAXSjywzt2jQeSQL2iyQZHvG6vkaOxCoaHXcb4vK0J23Jj+so+M3MjqXMQMOCDDL0hPDLGFUHUD76XNzSsClSa6np4cis9NllUGsEV9IujK4/oOHy8F8vrmEXUSZJosfWOofgP6c=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772484560; c=relaxed/simple;
	bh=cyH4XlAxExvFjyU90KL9v8Os8YItCUBGdVDa5Zw1Ozg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tt8gT/NWoXyRwA/l5qv1eRP1SI4cZBsFCy3VZaQQ14B/hP6f1YHPpu+QvEPkm3i7AY53GS/Ygg7pKeDokf2ghps4W1y8GftmHtH+B5XqPLHjbwdIcErojBXHYqGQbw6fjjsBIIgbbbgkv5I+35NfK8jhqCbuFN38EBbYO36skrA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com; spf=pass smtp.mailfrom=googlemail.com; dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b=k7PO/phr; arc=pass smtp.client-ip=209.85.215.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=googlemail.com
Received: by mail-pg1-f174.google.com with SMTP id 41be03b00d2f7-c70ea5e9e9dso1798732a12.1
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 12:49:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772484558; cv=none;
        d=google.com; s=arc-20240605;
        b=hhPU4yU10EUsiZmWnLvVf667ARmGLfbRAfBzzJkiuYDLmgwE22CRoEB7WKyy2QNGfk
         5IZV8t7dTpSc6m5acnFwZxe9mGGQiAkviFQ9D7d+AYbzz8G/Kx/rzp7loS3zeHR0FJ8n
         jSKsUh4J9VsKa5BTMkguAfvtFKmbQmiIW4DM8E3oBRWyxfm7a/Gr3i716LxLLYUhgD+Z
         I7o6leUQMNtjCRKqewjoiHEIz5zp1aqpN3CJnlw/2qK2lX/iDwCKmeoTa3uVfHTpgBZK
         KdxvspVbAJfl5uw239AxUCnEQgZITxKdYkckz3cx38E2gTJ/iQiwSd1UV1dkuY1jeLmQ
         OLQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=cyH4XlAxExvFjyU90KL9v8Os8YItCUBGdVDa5Zw1Ozg=;
        fh=GU7HxK8zH7WJeh5wVonmNCj32oyVjvRtFdIK0Rp2SQo=;
        b=AWLayoZYKkGl+PD25ih1rrhHR7VnZs1LW+YR5C3Ac+YDqyVE8l8SRe0mK79M6ZDUgI
         S6THsAy9FE8FOPV+hV7VqH1feEnTQDuIksq0nC0v0KpoJmSsjsWw30k4XCU9krhVSfKW
         WsakMB7OFxAS6OODX7AV+JczgST/o8ckGCiKUxX8buOvzFUTkk79GlN3T64ZDBozcUCT
         pJg4gZyoKXqhWb0/5/5PP2aFiMUYnBiz6h+s8f3MKPwClr1qSRiJFMX29b/xh7YD2fwB
         BpyVetEZzQMsiU9oIPW6J+qQhFKIz3UtgtCDQiZXx1sq6Vw6+sGDfRgYfckii/jxwn2g
         83hw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1772484558; x=1773089358; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cyH4XlAxExvFjyU90KL9v8Os8YItCUBGdVDa5Zw1Ozg=;
        b=k7PO/phr20zejQujWa2NpQHSiDGnGT2OwaVIWw/jv8lg5Z62QNmLEv9vBfO/Vw9MTh
         v+iGyBiJqW1ykVYyspRQ1xWfH/LK/7+VF/MGLv9GmsplJksAf8JLzXZSWeXrDCc1vqEy
         l5JxLB54D4xZLwAHHps/muGITl3wX2Hmlwom/oieRBUjXOENT+O8kMwdlNM4ZjXaaAXa
         bYRSBSQjGasUMre3FygBSFthr6p3eNZ9qUGXckjZ8aN+DUTtTk/4+Eq76DkzW6G/tMbX
         NsFuojI/YQ6sxz4nQw/abKyAhV5DO/fszGIJDQEbNQXgXnfV4oq/fl5bAKvin/GiHnE1
         xESg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772484558; x=1773089358;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=cyH4XlAxExvFjyU90KL9v8Os8YItCUBGdVDa5Zw1Ozg=;
        b=bGhINI+4nbE+OwEhOPSepMGSYuJ3j7Z9n3k1BsMNgMsUSuSQp0tNmve6HUWFmXy+xf
         Bk4LW7YkgtqSxmnbhZcxq5AwpHzhjgxXmPbzc3Fg0YiAUfbhmkXYmiSReagrUgTi0DA1
         5UDTp0GB/6F38z4qTk5FsDQaZpIGEbpj7r6rJ2qobE6IfzQ2Dsmq7Lk9EeM18JMXwfhJ
         b8otBT3Bo7Ad9PRIMM1qniINg7ukbM1g62Ul3Oi17MX2jn8CQH7rnFCJ7EiOahe8qwdk
         L8isfoJmnSXRf9G47m+iUJ4lqgvvtVHUC0CDN3/RdnQFLP+hnyNvPoenLsGaBR4azEx3
         W4/w==
X-Forwarded-Encrypted: i=1; AJvYcCXaDsyrNiaibrzR91msluA0cdfmR2+EaVzeCoXxd1QRuvlkdVxi3FZUPAKHc2BSZQ1y52Hxo5FjdsWa@vger.kernel.org
X-Gm-Message-State: AOJu0YxcqWApvcLgVjo+dBDNLrR/nCLTq2zZE9XvTIodww1RKeQ/8byg
	zasV3Fql+ArBdhVxo7eoFBH/3yk08Cqk8WdweT5n3ehlNiNOMLFUjOMsqAfZilAQUheyjO9G5Md
	++hgFl4yk8PEa/xjOH0ao+Umyp/qjJ4g=
X-Gm-Gg: ATEYQzyl5WEaASMdpOo3SR/GCKy1C0CE9b8EgXjzx8S795HXCRgSd8CeIUtqjEZ+cGv
	vXh+hfwqL5xP/O7BjmUq9Miu2XRuRojTpIaPkNxW8pF6Ubtv1nx10D9FIT6gjOvEvp7ydG+YHmu
	a0/FO9t9Detc1KY2kD9rTT8Dwa5pcWYmqPjOkYDobY9BQySuy/AqKMn0eyLbBg4iDjLKXO5NQit
	SZBs6kFgfO8lWTr492YgVNY81Gm/vVpTnMpc/7kDmvclnWdMnXZvcIlXqdNV0x5yY11B/aSb8Gh
	UpvRwpVGBVAreKXbjdgVCBGRCjBzFnpe+525vppvWjI+zH/GFmM=
X-Received: by 2002:a17:902:d58b:b0:2ae:5655:b16 with SMTP id
 d9443c01a7336-2ae56551006mr30904985ad.21.1772484558371; Mon, 02 Mar 2026
 12:49:18 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260228-a9-baisc-dts-v2-0-47489d5cc1a8@amlogic.com> <20260228-a9-baisc-dts-v2-3-47489d5cc1a8@amlogic.com>
In-Reply-To: <20260228-a9-baisc-dts-v2-3-47489d5cc1a8@amlogic.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 2 Mar 2026 21:49:07 +0100
X-Gm-Features: AaiRm52vtoxByONz8aPJPqxZwiZKHaI1xY4O5j-m2jy43emEUvOKpokAtRMTsc0
Message-ID: <CAFBinCBo1-at-TqZC5Gbunos4k_KTikPS_yAW5z0NLcnzpuSBA@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: add support for A9 based Amlogic BY401
To: xianwei.zhao@amlogic.com
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Jerome Brunet <jbrunet@baylibre.com>, Kevin Hilman <khilman@baylibre.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby <jirislaby@kernel.org>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-serial@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 334D81E4027
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.06 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	R_DKIM_ALLOW(-0.20)[googlemail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-270222-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[googlemail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[martinblumenstingl@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[googlemail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,mail.gmail.com:mid,googlemail.com:dkim]
X-Rspamd-Action: no action

On Sat, Feb 28, 2026 at 8:56=E2=80=AFAM Xianwei Zhao via B4 Relay
<devnull+xianwei.zhao.amlogic.com@kernel.org> wrote:
>
> From: Xianwei Zhao <xianwei.zhao@amlogic.com>
>
> Add basic support for the A9 based Amlogic BY401 board, which describes
> the following components: CPU, GIC, IRQ, Timer and UART.
> These are capable of booting up into the serial console.
>
> Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

