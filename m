Return-Path: <devicetree+bounces-254052-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 731D8D1377E
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 16:07:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 14CA83081F9F
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 14:55:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 617E62DB7AE;
	Mon, 12 Jan 2026 14:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b="fQLVxZON"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2529E6F2F2
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 14:55:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768229721; cv=none; b=pjTeJpLhfgzrMwvfUqJWK8KaJU3N2xjiLp4l7M+f2KhlFad0K5/4BkJf5mVsy5jzYrYv9NO4FUiAQe/pdVncQK8SMfve7ulflTjhVjt1CsifdQUhfQl+RlGRDDlwsirm3eWMgYo756lFANDLHSL1fZfZil+rIZ0rIl6OW3PZU98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768229721; c=relaxed/simple;
	bh=udw57NFssotqrqEj8KCqBZXIM1DX+Oq6n2i7cO+vzXc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=c8EfE8d78LnRxutFNwEXavPctGzzIdXsIo1SysVEnjo0KQJlOWV/iW56RAJyGyV/0j2Av2ahrJWlWf/sMDgxlaWQ/TGVtLxGcMkwIT1wQ/rPBnu+XGYxSpm1Zmigd8NXaKoy2XABnajWNFhC+Gtww3vjmCUnpJy/9SESGwS0kmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org; spf=fail smtp.mailfrom=beagleboard.org; dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b=fQLVxZON; arc=none smtp.client-ip=209.85.215.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=beagleboard.org
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-bcfd82f55ebso2222402a12.1
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 06:55:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beagleboard-org.20230601.gappssmtp.com; s=20230601; t=1768229717; x=1768834517; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tCeoeD1NcujYFAQDlchiAtvGNFTdOsvTnQ6PwbSGdbo=;
        b=fQLVxZONYxMDVdpj/3G6ippit2tlMlUNxItSJKjLNhC2yp8EPMOFaTDuMQ7PvtQYR3
         r5iL0G0hErDPbnCi1MzZlz3uAtSoO1q0pmyFnQN8NyKCmxEb52kyDss+WkxFQnRHjuWa
         xhGR/Ik9bAPkNIvHFQR55exKY6om8qSpurcwfSgiJIT2BhQGzP2hSB6ndz0p6Y3+VGco
         XZSNvXTuHM7P8XSvdXkvtagh8HR/6By2lOygz2pPqanB3SKBDegJMoLLl1QlRBX1KDUO
         qlvT+14T5zbH/BaXg9/4xpjbmHreusFHhYm2YJ2bBSI8niyjLiYJr+0XeQwsWGJc28+u
         BZhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768229717; x=1768834517;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tCeoeD1NcujYFAQDlchiAtvGNFTdOsvTnQ6PwbSGdbo=;
        b=gjOnR9A7YetdAps1ZvXcs/+lChMfmuRKvFqDJLIkbzSB1qwYPre/kXGgikc+mbfTK2
         cK6o8H58MZ81HO7rb7q1L0Yf4YB0cQesUExaw2XTjAHuaaN4EYrKuKwv3QfaAhxA4Spq
         5Ppgtwzy2BwrnQFb8MGsiNIJ2luq8P7zilU4NVAsMg1fsV3VhKtl4tWBs52PRKKOjk8X
         t5SewUCYCHgygQiJkQTK9NmdT/qSZBBKctRE7W0tHNszoGJzsm924/3EThMzFPt5MBp7
         EAYRJg5mdZOVptN2xGlK6c9rYAowZFfp3bLu/uug8hWa7uPjEvUsUGoVNSJfAuTAZZsR
         tJRA==
X-Forwarded-Encrypted: i=1; AJvYcCXWZlDmxqmsVqlOhIt00zGIV1nL5/gG2BFavAurHrKjes08Ve2UUHIXc+tOtfwA5qsqCe+SXWi0hs05@vger.kernel.org
X-Gm-Message-State: AOJu0YxqFJ6M22+PnH779tsGhv0CA5yxSbBPKvexzM40ED0by1BSmaK8
	RgfUitJ1HMLmO0zMTOSq+t3Mf1FKMute2Yv9M6/WLHpXXeaoy98SfNq1+kYLNJk5ow==
X-Gm-Gg: AY/fxX5j3vC1A5w3WAEecfl5hcYbIsTL1yz9mCSEtb/HP6oKCJ5F8i3zknwSVjzX7ni
	RKdB5UfrlUVH4xELhVRFMD3nvKjfHcZFAFZjJZrg7ojEXicsSDGEFz9yW8SMX28pvRaZqhhnAu4
	X5C/QmGtQgFK28R2jp0KnrrAu2shvwvL04EDMMTEP8SrniL2nziNuFE5fNQsDtYESBhnl2+7aem
	/VVmtOP05ZwUFUWq/AC4UqiE9w631yK6M9NPiLn6KAAzkAn8h0hU3vT9c0JKtZGV5n28vvwD0WC
	F2ykJ8ZBwDPpu6bZboyhAoDhmETc4jOv53baoAYaL9TekGBTrMhcZKhAUjMPpVQRvGpOHKeOTiH
	qFGrzXiA1CmcdDap5Ld1V06hCFRu0HeF7bGDKchmEuvxi3+tkWsNB/3FdPgv7SvPVpVUN2TqZ58
	p2LGgJKGluMP3/TSj5NSPf7mrlYMnhy0p+C0ucHJ0kCyv2l8jEtxJRh1AMDtOETA==
X-Google-Smtp-Source: AGHT+IFtAul1lYvdpQwZc3IOUtzJ/XS1Y7WP0i8vum43wraXPGoTXB6Ts5DFcP4wiioQIdrskbtilw==
X-Received: by 2002:a17:902:da8f:b0:2a0:c92e:a378 with SMTP id d9443c01a7336-2a3edb24516mr170956045ad.7.1768229716815;
        Mon, 12 Jan 2026 06:55:16 -0800 (PST)
Received: from ?IPV6:2401:4900:1f3f:e311:7179:901d:930c:942? ([2401:4900:1f3f:e311:7179:901d:930c:942])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cc8d76sm177066875ad.84.2026.01.12.06.55.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jan 2026 06:55:16 -0800 (PST)
Message-ID: <c725c753-c3a1-461f-856f-7080eb8a97ba@beagleboard.org>
Date: Mon, 12 Jan 2026 20:25:10 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 01/77] checks: Use consistent type for strspn()
 returned value
To: Herve Codina <herve.codina@bootlin.com>,
 David Gibson <david@gibson.dropbear.id.au>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Geert Uytterhoeven <geert@linux-m68k.org>,
 devicetree-compiler@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree-spec@vger.kernel.org,
 Hui Pu <hui.pu@gehealthcare.com>, Ian Ray <ian.ray@gehealthcare.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
References: <20260112142009.1006236-1-herve.codina@bootlin.com>
 <20260112142009.1006236-2-herve.codina@bootlin.com>
Content-Language: en-US
From: Ayush Singh <ayush@beagleboard.org>
In-Reply-To: <20260112142009.1006236-2-herve.codina@bootlin.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 1/12/26 7:48 PM, Herve Codina wrote:

> strspn() returns a size_t value.
>
> The function is called in several places and in all places this value is
> stored in a size_t variable except in check_node_name_chars_strict().
>
> Fix the variable type used in check_node_name_chars_strict().
>
> Signed-off-by: Herve Codina <herve.codina@bootlin.com>
> ---
>   checks.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/checks.c b/checks.c
> index 5d09216..041e565 100644
> --- a/checks.c
> +++ b/checks.c
> @@ -324,7 +324,7 @@ ERROR(node_name_chars, check_node_name_chars, NODECHARS);
>   static void check_node_name_chars_strict(struct check *c, struct dt_info *dti,
>   					 struct node *node)
>   {
> -	int n = strspn(node->name, c->data);
> +	size_t n = strspn(node->name, c->data);
>   
>   	if (n < node->basenamelen)
>   		FAIL(c, dti, node, "Character '%c' not recommended in node name",


Reviewed-by: Ayush Singh <ayush@beagleboard.org>


