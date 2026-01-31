Return-Path: <devicetree+bounces-261440-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YHaWBnUjfmn6VwIAu9opvQ
	(envelope-from <devicetree+bounces-261440-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 16:44:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 75009C2BC5
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 16:44:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A1FF7300CC24
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 15:44:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9BC4330B22;
	Sat, 31 Jan 2026 15:44:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="nhexhr5g"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51AA83195E0
	for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 15:44:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769874283; cv=none; b=MGzdoANWDGfZbsmUaytq3veJFctRQ9e8juXsTYfZJ+shjui9uv/xOmyx0wHuxFudtlyosM6v7X5n9d9hQryShkV5CsVGwZjFrdgOqa+qdzz56QKhXe+eyxQcfk2ZiALzrzTRrrw5sntEzSYAdXxAQA7xfDP0UEp0VsqWDRBXL5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769874283; c=relaxed/simple;
	bh=nBY0khg7eDIIEFuS851zCdi1pnGyvEFTJ2BB69fUoXY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NCICRT+LWiZmcAAJZ5VU/40jrXdzG/bvtgYtWMSRZs48XpL++4p67KF6WIAOWNJzX5za4Gf2TT7jcKt0xowSe4MernEMcCoElSzdYmN9Zcjf5G7xjUtw7cC3YpVFTkGlTthc20rojkXXbyKzlxPmH8nZvZkrx6Gyaap1zgN91sM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=nhexhr5g; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-42fb4eeb482so2176490f8f.0
        for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 07:44:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1769874281; x=1770479081; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+pcVTF1IQloSPNuQJZHZDQB+v1xgBL61dkGZAU2ZjyA=;
        b=nhexhr5gwc3d9OqMZL7f4SE2MOMNCBG8opuSR6O0K1W11qj0LOBrgOlD9UikJooSPC
         JlgHO3j1Vnxr1DXFuxqEyleEJuBNdbSY03Wx4Foc85wLTLObiK6ybgRCP5hdaq90ddLs
         dDnakupzqjANiTymTuE+cOT9WWIQRC6ElrugoNwawy7nX/tN2gIVjUm5vNqlf27M3hF7
         tCE/bM2/9ny7W6RJEtv545dV+voIWSp1AXebzi75SHsfTmjXURH5hCoTLgYv7whM0oBp
         no0twN7H98EpksfLjvA+JfoEeRFTsl/243Za2XMX9db0wgheyRAwXtfrciCQmDhpnCvO
         YJ/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769874281; x=1770479081;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+pcVTF1IQloSPNuQJZHZDQB+v1xgBL61dkGZAU2ZjyA=;
        b=BZc5+YtRG4Z6pgaqzrJn9DhH8AwyIEOx2bbdwiU+TtS7jUDB4+QcFlbqYdmg/VM9qD
         ky8CPUHQ01JTIO6fetR7xnTvyLHt6j/0dj5OtRS+DIRWz05EdjbOZZL8CovU+nPlTK1N
         vhCP81IkpE79JjAY48LFuOX3Pi5uTqomzTfq1l9alovhf8Ds3GilqiSGs2SADIr02cEc
         KXEudXQ+Jd0ynGspevlPGKJdqcNSXeoZW2ayalYhDT1lBexUDymSQwXLY/GWMv7kou8y
         r1vvab4RAZw4wjdGhKMDH80LYFw0MiwXipSYOUfDrDOPUrOGOB4uyxUW7AWrZ0NJZ/YT
         IA4w==
X-Forwarded-Encrypted: i=1; AJvYcCWSByI5hD7qYsG6ODHunTFPdqiRG+2DxB9C2rtQg2Ldpj6vjKm90j7cNhYuXKfS+Xj93+mhlPWmoWUw@vger.kernel.org
X-Gm-Message-State: AOJu0YwBMmx7/MV3k/yres2f9VSbm7pBarpJcoLwLL2FLneWbaVH6uKb
	X71T3oRsIUGIcJis9dnxf2De0uQdEwfz1IvrDuGw4Vgdm6yix5s67UchQbSgwIj+gFw=
X-Gm-Gg: AZuq6aKj6iX3FPKYPGCdYihPtb5NkrvIUwsLXlucpHX2VfBbJC1wuOppAqBXyH4RrjE
	KqpKIdxp+SD1V/ap70W1MA7ZkFkosLeV2y80TUCzkfX6/1Hi42NtblFwdtdlKqmy2ZSYDsomW2g
	gTjTwwqnZBrIMr2pAg5n14rtDA2Z1gFO3fkrzx9Wv47/DgOR+dmwV24F5+tCyIypWYmpl1Og0aW
	elXWwo37g5CJXvQx7FqKWrwGCE9EAkQqcCNR0DPhovZXrU244gwTwPYxa0TEEmLER5oTf8Ay/VS
	id0oFlJS9igJKERXAzd+TAfK3124WDM2WEgl7rcS6GLi7rY9RDYXXIbJ7c2MaYSDB6lFTpKui59
	EmLJeiyQgEH0AhUs5nffBCBMp5GQitj00nbq5zJbZOhNMmBgYYAaFhnKEd9+CH1pSr7tci2MtwF
	r5CFHRDBWMZjCSJFzIZU6gb75HNuIq
X-Received: by 2002:a05:6000:184b:b0:435:8d02:b9d2 with SMTP id ffacd0b85a97d-435f3ad1f8cmr8775581f8f.60.1769874280664;
        Sat, 31 Jan 2026 07:44:40 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.31])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e10edfe7sm30019606f8f.14.2026.01.31.07.44.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 Jan 2026 07:44:40 -0800 (PST)
Message-ID: <1665d5bb-e978-4a46-a9e8-8522d54a2a03@tuxon.dev>
Date: Sat, 31 Jan 2026 17:44:38 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 04/19] clk: at91: Use new PMC bindings
To: Alexander Dahl <ada@thorsis.com>
Cc: Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ryan Wanner <ryan.wanner@microchip.com>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Cristian Birsan <cristian.birsan@microchip.com>,
 Varshini Rajendran <varshini.rajendran@microchip.com>,
 Balamanikandan Gunasundar <balamanikandan.gunasundar@microchip.com>
References: <20260120143759.904013-1-ada@thorsis.com>
 <20260120143759.904013-5-ada@thorsis.com>
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20260120143759.904013-5-ada@thorsis.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[tuxon.dev:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-261440-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[tuxon.dev];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[tuxon.dev:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[claudiu.beznea@tuxon.dev,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,tuxon.dev:mid,tuxon.dev:dkim,thorsis.com:email]
X-Rspamd-Queue-Id: 75009C2BC5
X-Rspamd-Action: no action



On 1/20/26 16:37, Alexander Dahl wrote:
> The bindings were split up per SoC before adding new array members for
> missing clocks.

Please adjust the patch description to follow the submitting patches document: 
https://www.kernel.org/doc/html/v6.13/process/submitting-patches.html#describe-your-changes

> 
> Signed-off-by: Alexander Dahl <ada@thorsis.com>

The rest LGTM.

