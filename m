Return-Path: <devicetree+bounces-272988-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8KZBJy7hrmmoJgIAu9opvQ
	(envelope-from <devicetree+bounces-272988-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 16:03:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EB13623B32E
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 16:03:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 33F51315806B
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 14:57:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 041C53D5258;
	Mon,  9 Mar 2026 14:57:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dllcMQcf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73F1F3D34A1
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 14:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.44
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773068255; cv=pass; b=GzD4pmbCActBRS3gPEmLYMjURo1M220Ze9EIyn14F2+9HtBql1jQssxbEbj4iL5pvt0fKB/vG7GoBm5poOgpU0V0jkFEu/md/hrtgb16xw4ajUI81BE7izeDJ21ngw8z45l42TMZKcU3DsSuj8u1l2+QcSq+xIUiK5tt+s592Fw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773068255; c=relaxed/simple;
	bh=203p8V8fa1O69uWIwahNnr1A5Lm4LwlXFs1SL4Pk5u8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PceoZDK+igH7QC7LXn09JP6/hicX+oLOFrnoFFSIf8EjEI08NIaddJsuHqG34DlpCcNhWXm3HAzz60rK8ozPKvgKXKy3UFlB8UY35ziCBMopsgBZjc+ds9rLDuSx069btpjmWQGTjpMJGx7FJM4A5Okb96B7LTfAsel1+zCJqmo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dllcMQcf; arc=pass smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-5a1330ac6c3so4546566e87.1
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 07:57:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773068248; cv=none;
        d=google.com; s=arc-20240605;
        b=SIqgwPD4SMuuQwXWUWi64DXqS1MGvhcxhoK/KbSY4GXWcNf4VyQS6VBgW1DTJDLbp1
         FQQ0hN6SQr+RnzMXBfMv73+HsSRNNGIx1dDpE6fO/BitOtzxF2R8ztSOpNL2F63xZb38
         4VXkBPIki6dgUF/H4cXCNAncTn9D8+yjKWwx+hX8iMhhvbhJuGKT4zdQFREiB/w5+Qqc
         9J8zqEtBhBJ72DC9UBvJGr3oSe69r/UuxO92phxx9N1TCwvvMs9KwTRFO+Kae9jp7ABi
         6Q+DJKnBsWcUfjFWDztWRckhpjN2mx3+Po6pLtDwvrjbJhOPVzNFM50k3G1Lh/8zPfXT
         H+1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=203p8V8fa1O69uWIwahNnr1A5Lm4LwlXFs1SL4Pk5u8=;
        fh=KMZlsAZsw9DoIJIe5wcM+p2AZYBeR0s7VfuyFN8MK7c=;
        b=coGG3c8FiRrEFLu8ILDgsdpBkG6gdzNzONaiu10ZrasbZa0Txujwd79BYWTiDAQXBY
         llQ/+bq4zDi3t+Ye/KyVGVAqHjKSjJZs/qTYk9aSXFRa7qatFZYxmMwJF44jN9X4LWhW
         h7Oi5k0w93FVFCTWgxrCPz0RtQLzV+5iQEtRhuos+YNIbTbPaJ/bi7O0GZ/1U9drU23X
         FKInIeULgWGHn+s/iKn3RtV/RgFxSN+8aRmT3im1WQkv9VkwB0JsdLUDjDe/DOBIs631
         W9DhSkokV42TdYvNL5xEB3I1ObGwTIVMS8bT0owUZbrEsWfF0u6K1dzA2/RTJoeGyCMX
         3JUw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773068248; x=1773673048; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=203p8V8fa1O69uWIwahNnr1A5Lm4LwlXFs1SL4Pk5u8=;
        b=dllcMQcf5QOxHlvrJYieHHyZcBKkqZv/BiuhkbqBjV4Wk1KV3V9kCpcUaLmxqARgaN
         3X1cgXuTR+sl548ove+qNlDHCN0jZFCUez2HySWZ0gPH7Rn4Db99R1BMGfOe5CHcEs4y
         lpHj6I9Dyq4IQ+97kzMy9CRI4hpFQQKU5oVVeZkoQoqAqzxhWBXAFYkoCp/57Wx+MJVR
         yiK2dSyt6w31jtGNUseuF3RcH1VzYOQt9k7PrF+msLKF66l7QGOMGcG5qw4G52XcoVpY
         Z8cRmlxRLFTZa29EwZGhxOEQEeIxOLmKBFV5WLfz9g+v0QvB9TIspkN4hnDWXnO8zM1H
         xFkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773068248; x=1773673048;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=203p8V8fa1O69uWIwahNnr1A5Lm4LwlXFs1SL4Pk5u8=;
        b=D07beFOsuzhrHhExzLfofVocDRsYLOLTyeMHO55/TRqZuyxwmYhv8wb2/BUAASdaBT
         UJ6DI9aNnBxoQeocWHV/H6LtlhelMyMdTpN0JnPwMEsK7hXXwOqTNOl1/P4Ufzg31U3U
         jhkx6XHWFHFOMDZkF/EuBN8uqM722urebWE75Oy0n5D4hQ0pIru1+gA6laqbYB73D194
         lZsoIMUMkpwx8dlAbLKOcUnkYGfiaT4olXS3a330KvX4pHLlrcMh16JDg3KW1pH45H/U
         9gjvhp84ha9A3PGSrvdEnDUVgBpU9IPL6a4u9lPDB1RP4w0bOeiok/+O1RS3fYUk/MF1
         tPiw==
X-Forwarded-Encrypted: i=1; AJvYcCU/YK9ULj7YCYKu7se/Py6JJbz289XStp4WxodWwSR6/HbkpRh0BpqLN8ChJ8X1NLbt3OwGbJYPfj4P@vger.kernel.org
X-Gm-Message-State: AOJu0YyEb9kP7qfWPP2pT4d1yEDXpS3uliET8TVGYmV17uZTakb2/y7Q
	IRdS4kUV1UER4hVIMxzD5qhkSUUPCkc0f0ztNi8U4VHRIM16652a3Va/TfpYbfrqJw6IMN8mZfw
	HUjdpP8F9FaY9/QjdMNL0RA8pRp2ul345/g==
X-Gm-Gg: ATEYQzwoezG0fMerc8r+ud2R4GoNBNdPu1rZaQBn6yT+PCAPn2k5sPKSwgS8jJprWHb
	+jASEMQoHgAXuzQVYmxLFQVNfEfzyei8ucCktSB7/HaRES6Ce3AJJ36ifgV3snK0ba0a4myu4iZ
	lf4fcHR6kJlo+oziB0YQcH8UXUEJyWa0BjPunKg2RFASRXGiUffJSD9OGL2FgyLDPl8FSwqpIL5
	sUFABWElakCZBeYqNq+HDcYHag3k8vp25lDbd0QVhJK4MX/O60qgZcij5nlTSn3EKHLKP3S1XvD
	3GFZIJrOzuDR8eRcLBPbf9F7CBoEjHFA8CjdwXdBuTdVASukzJYBG0Yk5+P1PQdlSTnZwDK3lS4
	hicFkhWQ=
X-Received: by 2002:a05:651c:2114:b0:38a:2e66:c9f8 with SMTP id
 38308e7fff4ca-38a40da3e0dmr40369381fa.32.1773068248273; Mon, 09 Mar 2026
 07:57:28 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260216010219.2131484-1-festevam@gmail.com>
In-Reply-To: <20260216010219.2131484-1-festevam@gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 9 Mar 2026 11:57:17 -0300
X-Gm-Features: AaiRm53IxFEt-LOkrgzXXjheCaCCVTZVH7guavkF2brnrHw-jNlZBEZtsHWY-9E
Message-ID: <CAOMZO5CNB25j=JoK6C7CGsXFq5Vg2j=nfrbaL163qjeWYa4J5g@mail.gmail.com>
Subject: Re: [PATCH v5 1/4] dt-bindings: soc: rockchip: grf: Add RV1103B compatibles
To: heiko@sntech.de
Cc: jonas@kwiboo.se, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Fabio Estevam <festevam@nabladev.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: EB13623B32E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272988-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-0.943];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,mail.gmail.com:mid,qualcomm.com:email,nabladev.com:email]
X-Rspamd-Action: no action

Hi Heiko,

On Sun, Feb 15, 2026 at 10:02=E2=80=AFPM Fabio Estevam <festevam@gmail.com>=
 wrote:
>
> From: Fabio Estevam <festevam@nabladev.com>
>
> Add the PMU GRF and IOC compatible strings for the RV1103B SoC.
>
> Signed-off-by: Fabio Estevam <festevam@nabladev.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

I'm sorry to bother you, but can you please let me know if you are
happy with this series?

Thanks

