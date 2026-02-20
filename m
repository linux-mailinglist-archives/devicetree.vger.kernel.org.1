Return-Path: <devicetree+bounces-266775-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oFkXCEWml2l34QIAu9opvQ
	(envelope-from <devicetree+bounces-266775-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 01:09:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 736BF163CA6
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 01:09:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 92754302D52C
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 00:09:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 542AC2AD25;
	Fri, 20 Feb 2026 00:09:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="231dObeF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f45.google.com (mail-oa1-f45.google.com [209.85.160.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42B191A294
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 00:09:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771546160; cv=none; b=LRAj2cg5EcJk2IMlJppsy/8IqBeaw5fPa98qBeJcjEWK1tFnLPja+Wq8omjMKbbquCtThUzTT4zK4tQZR8SONJgM9tvY5O1QC5RzPmCvkvCh4Vdnelp7lA1eUXKpDyHZI3+Khe9+bY9PKHxrc/J4Mewd/iIUAHUQynM2bHFuN10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771546160; c=relaxed/simple;
	bh=muqBDDQTZm8WW7TEPJ3B4WrvP0tqyQqdJwOdcR66Lgw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kWKILfbVmI9UFfjarciwq8lEZu2stKznv7Bg9y5jAwuoFgdsyb6aVptRQoUkYjjXaizhjShBtRYtBL670lX4OF+a0WK0LRs0P3LS2EcMcKVseoY7iUpk/qN5qakxaxEYQnfWTullbmAFcnCDjfwySqFn6S9bA1bdmLlSwxTTrUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=231dObeF; arc=none smtp.client-ip=209.85.160.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f45.google.com with SMTP id 586e51a60fabf-40970f97638so980734fac.3
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 16:09:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1771546156; x=1772150956; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/4mPm+ZoP8DxO5yOKQMVe/JsfKSmfmW2/A8ErJD8Mio=;
        b=231dObeFA30pDlly4NfK8dSnOKkZbSHUzm5rLuhoSXuCK+Z/aataC7+lQC4AP1gEj7
         0rtRqzar5JYhCciPcb93QMJpCSZvyfSf9ecvVLu+9U+9iLHeFykB2IaPQ1q4jHERhuSP
         O5HXEPsKuq8gVr7txMJOMaKMJde9/6fhZV0cnAQ6LCleHzeiygNGzu3GEwzmngTnCaTv
         aOe6yjm3L3WXnUSOvXy5yyc3MfTRVhDcl2HnKk7mZryEZKRZVJFVOFoGrgpvuyzshNEd
         VJPo2dmKP+7nOIoL8EboeZWAG4TiloweDJL1wblQgySvhO0GjTrF/liXaMz68II2LgLi
         hPfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771546156; x=1772150956;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/4mPm+ZoP8DxO5yOKQMVe/JsfKSmfmW2/A8ErJD8Mio=;
        b=MFPQ32mRgutt0JEw7X/NJ5adfiB5lX2RV5fiZHpBoTxR6NzKgtJE4k2W1bFlOYWnGN
         vC3dVx4WzsLOWS3uC2A1iaWI9N669oW7hZUhAwYlJIXnMEBW5ro292LcY5116aGQgvL+
         E7sYxcR0GDsyNUEdw1dhKrwSdSrELIijh4ZhhmC+ja1B4vTxsEJBBFULAZEWBzL5Btk6
         2JtEyY40oBvAghx22Nj5xSghT+9hNBcoUvBlK82kaPZBt1De4kbZ0DZcyfae3Oa103CJ
         b1CDSYg2aDWz08iwYm5ged/hXgqIj32E0c5/zO/Uxq3FTsSOAgcjDkkAAbg4K7TqG2M2
         hmeA==
X-Forwarded-Encrypted: i=1; AJvYcCVjPirHlqDqtQubx2kJQ3NTPtt8HH9n/nIGRi7/4+z1yYg/M0ByDB7mcQAqJKa18oMsbq5CxIH5VIks@vger.kernel.org
X-Gm-Message-State: AOJu0YzeN9k+NWxAn77R6biHqt8BcjAwklbIY7tF4FIfs9oQsJ8eZAEr
	AUf3jM2waJ2z29tiAiZ3Wvvzicf6OMG48R+IO3/WEbQRhZSlVU6uL+JNOi+6BFGqzWY=
X-Gm-Gg: AZuq6aJGsJqHQF6s8URGY4wapCRiWEj8oylpM8Gzdr9f7Vpv4TwZ8G9D2HIcHJ2WNgR
	vQbGpxUCCvmlKJy562dU55v7Sqo+SKt3mB7u5bM/OzzqhCYktUU7o3TBDqi+4SYs4LT9VhI0nW7
	rJALbtt7+dPWnIyvJwm2b0BsVddhyUGpWo+ZxSHOSuW5SBFSaUbVhZe2EG5Iu+H+BDjbSy15hfA
	PiDAEzBWDasOHX0SXj5iZSCp0KM2T9KVf/CgDTXGj+2JaRR3kb1FwZ3zFprpvCIg6PXYl6dGW8C
	r4KdYpHb+noq8ljIbkegeLRi31yi5A1+tTD5Tr18i225SOBNFs7J0qH7KHJyhk+dHnrhH/861b2
	C2/+C9/gjE3DfzwbGbD3+6340RyvuouQ7RglwryZ4Al1+bIi8M+ZAeZSl3rMPmMh7cydgPL94kw
	7OusnYtC1ofzWs093epQbFhA+Eq0uRVG5DkYYX7wlUURxkSrVsRUxunhFNcoXlo7PtxNs/pgyrN
	cmHPC58
X-Received: by 2002:a05:6871:eb01:b0:409:7c0b:6aff with SMTP id 586e51a60fabf-4152917bfc6mr3628005fac.43.1771546156112;
        Thu, 19 Feb 2026 16:09:16 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:d4c1:bce:26a1:c903? ([2600:8803:e7e4:500:d4c1:bce:26a1:c903])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-40eaeeab492sm25902271fac.5.2026.02.19.16.09.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Feb 2026 16:09:15 -0800 (PST)
Message-ID: <23778b52-9aa2-49fc-946b-e858b99fc3c9@baylibre.com>
Date: Thu, 19 Feb 2026 18:09:14 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] arm64: dts: mediatek: add device-tree for Genio
 720-EVK board
To: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jirislaby@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Sean Wang <sean.wang@mediatek.com>
Cc: kernel@collabora.com, linux-kernel@vger.kernel.org,
 linux-serial@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
References: <20251203-add-mediatek-genio-520-720-evk-v1-0-df794b2a30ae@collabora.com>
 <20251203-add-mediatek-genio-520-720-evk-v1-3-df794b2a30ae@collabora.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20251203-add-mediatek-genio-520-720-evk-v1-3-df794b2a30ae@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266775-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[collabora.com,linuxfoundation.org,kernel.org,gmail.com,mediatek.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 736BF163CA6
X-Rspamd-Action: no action

On 12/3/25 7:59 AM, Louis-Alexis Eyraud wrote:
> Add support for MediaTek MT8189 SoC and its variants, and a device-tree
> for the basic hardware enablement of the Genio 720-EVK board, based on
> MT8391 SoC.
> 
> MT8391 SoC is a variant of MT8189 SoC with a difference for the Arm
> Cortex-A78 CPU core maximum frequency (2.6 Ghz for MT8391, 3 Ghz for
> MT8189). MT8391 hardware register maps are identical to MT8189.
> 
> The Genio 720-EVK board has following features:
>   - MT8391 SoC
>   - MT6365 PMIC

Is MT6365 PMIC ...

> diff --git a/arch/arm64/boot/dts/mediatek/mt8391-genio-common.dtsi b/arch/arm64/boot/dts/mediatek/mt8391-genio-common.dtsi
> new file mode 100644
> index 0000000000000000000000000000000000000000..744641916952111a4b389cf6adbd27c429b6eff2
> --- /dev/null
> +++ b/arch/arm64/boot/dts/mediatek/mt8391-genio-common.dtsi
> @@ -0,0 +1,555 @@
> +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> +/*
> + * Copyright (c) 2025 Collabora Ltd.
> + * Author: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
> + */
> +
> +#include "mt6359.dtsi"

... really 100% identical to MT6359 PMIC?

Asking because I'm working on this in U-Boot and would be helpful
to know that this is correct. Would probably be a good idea to mention
it in the commit message too to show this is intentional.


And I wonder if it would be a good idea to add a compatible with fallback
just to be sure.

&pmic {
	compatible = "mediatek,mt6365", "mediatek,mt6359";
};


