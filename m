Return-Path: <devicetree+bounces-266719-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oO8hF1V3l2nVywIAu9opvQ
	(envelope-from <devicetree+bounces-266719-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 21:49:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B8F411626C8
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 21:49:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 94C4E30193BE
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 20:49:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55E713164D4;
	Thu, 19 Feb 2026 20:49:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="OnxGDHIE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com [209.85.167.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 668ED2FFF8E
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 20:49:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771534161; cv=none; b=QWWryWNrqccY5M4YigYdIp7NIZenFUXHsRxAPEzj9iyqLr+YWrfWJDLYVqIg/Tuj9A7vg+V4m2ClTr+hTUpk6B2jEF3QbIhsispRxLEsnH3/UWuT2ig4uhcd9AEykp+E+lG4EKDY36rWa6M8bucrw7ylIGkeUqCUA/6qGamreog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771534161; c=relaxed/simple;
	bh=w9oLg1R0wW4uMVOKbUTIgtKGy4OR4ye6n/7fMiajz5Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ALf8hvffCFBL6HkiZBnlRvugt7WpqjKl1ESG3MzHzgopVmclmd+ypHBmuKpKI7Q7QKhOKSZKXti/EBib1C1ADSALSjU0a+vSGwelr6wMpZwcNOmOryjveFTImEetjZYdd7lN1ck3iv1llAYVzTDdGxG/eW6YMZlTLZhYETJpEbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=OnxGDHIE; arc=none smtp.client-ip=209.85.167.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f169.google.com with SMTP id 5614622812f47-463a0e14b4cso521934b6e.1
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 12:49:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1771534158; x=1772138958; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UtgTLfGOcjGDe5PL0CHRRM4ZPGAPDgJhQWgABhxIwOI=;
        b=OnxGDHIEpSgwydxSo+Ox0VIZVoezIpwv0gPA9dVBHDoIXE+cFEhYjiudytjBVTJLi0
         haAJDy4WNEAh0KMiVylCLsKeVZGR/1j5Niy8TNxNd2jNxpWrCZbkSejWOQxzcE4epwua
         9NVQdpdK6BjwN5k9nO+opyGACXpSaK+GxRNKCh0okr6pTCLiWn1Zixw5HIe6WTQF9ABt
         aLdvpQjgYbeHSgSWCRIGsbNhXfj+ZoGdSP9PDQKFH5nGFpvOqAtCz08TpneJBdUPmqba
         FQodCMNIHSTG63bQkGY9N8/2WdA2ZhECvS9MABFC9RyqQddQ81zeKOKpsaKKWefmh3l+
         X1FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771534158; x=1772138958;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UtgTLfGOcjGDe5PL0CHRRM4ZPGAPDgJhQWgABhxIwOI=;
        b=pcOXoLitpyzk1QCYUo0VxxfxI2kH+p5vBzdVFoEY1W35u5NR1spFngSt31mnun4LnK
         mQnQEdvlx1DjXSJ5FWbuu/QfKq/9wG+5Dka/2F51kS3XO3f8Gg34ttK+cuT/b5v9IJYS
         Rj7r7xT+Kc+SaWNvog00w/j5eHtGTooMc/bSWlYEfLuPuuYRXyvIv6l6tCoqy49wNiO4
         g2q3TCEdFTn/iwnL3AKHB7FM+cMcM4FQmlM03lzYrtwtmBXcrxA7zuguZPS/dfT8o6YT
         QJm9aXtgt1F2gfqSFEUtZXy5/WzYnWfrsVBvvqkdXqQlvAtlJ62FcVNfor3dl8JlfDRu
         dFgw==
X-Forwarded-Encrypted: i=1; AJvYcCUbkC3jfrV+8fAsIzNqiU11PGCaf/aRAWUdyZIYOqrZq/MFz9dPpMqbz0YQbDLgB+R6XHU89i4NPvjj@vger.kernel.org
X-Gm-Message-State: AOJu0YwgneyMOuqA4AZN106sxkcAAm7fo2yCRJoknkwbAN2g4EAV6+1I
	kUk9wDf8aJVG/V4Yo4k6RzxdplWSBqeeEPUJkjehLjaBfTl5X4UPBMFLAnORRdf2D/g=
X-Gm-Gg: AZuq6aKJCSDToWdEpfFdAbnH9vWzNJZpFpHytFVBABhzMkECDLzPNS5G9EHppDgnGEv
	8VcQI/2/pMLo2dItaaeBuv/Hv6YRHRXyFNNoWM++POk46DZrJrkwJuw/non8WUmmlPnEmZVTxeV
	8uZgCYu+qX9niCimzTFVzBU/4VJHT6f3rNk9qBgZozKa1tFfIJrHQcQxEVeyE7Co7+uod8HI9CD
	railxfifzJ6+h3k8SXC1hP2uTUZHCMu5pp38tdPOSGexlU6c42ML0l3Hqwaw/VC28ODnEeNeXlq
	TOzglhbPpuFjq3oMfs1kZBGctvvAuTEVtLBNWaD1eZn1oiSoWS2i3cw7wWYCe2qGFh6AJQyJu7n
	32IxNTFHhrZRQrNGTPHDXLptoMNvgdsY/T5v/2DZA8PScSWQRSfwe/HgV3IpWGcV89VVmecjo0B
	LadhXMsaWmeFY4vKmuDZB1O4g+cLiL6eO8zt4JnU5pffDejl2K+oEIAFCf7odymCSgT1PO8Tg6l
	9My60LA
X-Received: by 2002:a05:6808:1448:b0:459:b569:702f with SMTP id 5614622812f47-46410b94689mr3904867b6e.15.1771534158258;
        Thu, 19 Feb 2026 12:49:18 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:d4c1:bce:26a1:c903? ([2600:8803:e7e4:500:d4c1:bce:26a1:c903])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-463a4ede045sm13618351b6e.9.2026.02.19.12.49.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Feb 2026 12:49:17 -0800 (PST)
Message-ID: <4b22e998-b38e-4452-82ce-1389d7086a04@baylibre.com>
Date: Thu, 19 Feb 2026 14:49:16 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 05/18] clk: mediatek: Add MT8189 vlpckgen clock support
To: "irving.ch.lin" <irving-ch.lin@mediatek.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Bartosz Golaszewski <brgl@kernel.org>, Chen-Yu Tsai <wenst@chromium.org>,
 Miles Chen <miles.chen@mediatek.com>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, netdev@vger.kernel.org,
 Project_Global_Chrome_Upstream_Group@mediatek.com,
 Qiqi Wang <qiqi.wang@mediatek.com>, sirius.wang@mediatek.com,
 vince-wl.liu@mediatek.com, jh.hsu@mediatek.com
References: <20260202062840.342707-1-irving-ch.lin@mediatek.com>
 <20260202062840.342707-6-irving-ch.lin@mediatek.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20260202062840.342707-6-irving-ch.lin@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266719-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[mediatek.com,baylibre.com,kernel.org,gmail.com,collabora.com,chromium.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mediatek.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,baylibre.com:mid]
X-Rspamd-Queue-Id: B8F411626C8
X-Rspamd-Action: no action

On 2/2/26 12:28 AM, irving.ch.lin wrote:
> From: Irving-CH Lin <irving-ch.lin@mediatek.com>
> 
> Add support for the MT8189 vlpckgen clock controller, which provides
> muxes and dividers for clock selection in vlp domain for other IP blocks.
> 
> Signed-off-by: Irving-CH Lin <irving-ch.lin@mediatek.com>
> ---

...

> +static const struct mtk_gate vlp_ck_clks[] = {
> +	GATE_VLP_CK(CLK_VLP_CK_VADSYS_VLP_26M_EN, "vlp_vadsys_vlp_26m", "clk26m", 1),
> +	GATE_VLP_CK_FLAGS(CLK_VLP_CK_FMIPI_CSI_UP26M_CK_EN, "VLP_fmipi_csi_up26m",

Should "VLP_fmipi_csi_up26m" be all lower-case to match the style of all of
the other clock names? i.e. "vlp_fmipi_csi_up26m"

> +			  "osc_d10", 11, CLK_IS_CRITICAL),
> +};
> +

