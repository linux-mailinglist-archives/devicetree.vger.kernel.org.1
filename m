Return-Path: <devicetree+bounces-278142-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iJXQNDgPvWkz6QIAu9opvQ
	(envelope-from <devicetree+bounces-278142-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 10:11:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 604A12D7CA1
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 10:11:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 58934300C808
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 09:11:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9D3128468E;
	Fri, 20 Mar 2026 09:11:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="E10iuiHj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 516B037E2E6
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 09:11:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773997877; cv=none; b=sFU+xQpUa6rKXVGeoMxhOHa/QOg3f3jowAhlQ03UgL5sfOOKI9vFhA94jt7Fcn8BU0WIv7DotbS4yXEHSGR7r8YpaUahP023SToF0cPF+OCOchO3MSgXijrgAjS8ZyKZo4DgJ8VWReeAMUkQ/uVd5C52+sXcuEBVp2BTI5myDYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773997877; c=relaxed/simple;
	bh=osPuVGUm/UzZnnch36LBSX5ZBydiJ3syEDW7/rP0ehg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=U2jJLqlx340teMNgkdYpK2lIPHEU/KLiQ4Bjlh3cq8SkzdaWc+5MhTC5Xdi+5OwvAAUUSTIRF9EL8TtVXHoTYu/ETEOOlCA9kCiPjZdzy6dOXuQb2u9KKhYozaj4cUPbE7/klXdxutxY3zT9wOgbRaeDSrUI61BMF+9stw6Ymz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=E10iuiHj; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-485410a0a8aso2854745e9.2
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 02:11:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1773997870; x=1774602670; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lnvpWrvuYkXuiKq1OQLuzrMxSlnrYn7ohrRGMt5HMQU=;
        b=E10iuiHjIszaS2WGaFn7yUugVwA2m8d+5Ic7sUjvPMClbXlGxOb5+03kYWeCY4DLIJ
         wAnQY/Di5k6ghnD9rzz3LNUz0L1CAgzzvi/T9XeIKvKabO5+jj/EFVcHM/43k4nsVHu8
         llxcjCC8K5XarROMaaT33EGRCRTmFvpGew95d971JOdI3aGGmrhG0zrMf/tzFTtvlRxR
         oeexdmTCS6W+PtY99Ab8i80vpd82rzJlHKZvAiJmsq82H05lnGSFSR0EA3rizJE9E+lv
         SKzmMLmY+v0cYR4aAfVd03IspAzfYyruSQe+lYjwYfwzSH/JHmFpA1JlO2BZkrplbuSB
         eZWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773997870; x=1774602670;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lnvpWrvuYkXuiKq1OQLuzrMxSlnrYn7ohrRGMt5HMQU=;
        b=jzhiIutlsPk49ic0q1m00l/xwVpnQuez6NIXtKnZis9nMwolqmIDbyViD6wRRtDLl/
         0LqkMcW+bbis48ZHxSjhzF84t3NueqK/lfdnwN0O7uum81y3FiYIVn43CFTcl8ew9NUs
         XK3efWer2cnLaBSzRjWTn+6CEqqUG64wYfutje8ISacguHTW/YDqfoAOcoPYl2MR4NzC
         Bgf1akMX/Sh2jAs0Ybeop+E8VX0q6coWpyWsb/JcHYtwLQg1zCwe+vkRlumQEB5XimOG
         g5BLpFAqUxKyodRT3TVkzwB8T88yu9zy0a4Hkc4iLfxlOv8vXH5rN9ty5j5aHDsQYggR
         YEBg==
X-Forwarded-Encrypted: i=1; AJvYcCVokHhwtn+aa8g8uHV7tjSZsjt4r4ijh41yw8hja5arxbTurJXtQ3V3T4GF9scUxmPo0XynGdj/0pqo@vger.kernel.org
X-Gm-Message-State: AOJu0YxDao8aXm0hEdFJYL47he/BVCYYZ2jCppP9iHR8tRWh5LI9Mafy
	qhsC8kIQC0vnX8i0MyPTyETdyQZ/QjSDNqWMoG5xM2pwuum+WI5FLcWLaV635zt0xuA=
X-Gm-Gg: ATEYQzwihpgBheypUh9ENr/Cg+9TY8E2t6SXr+ViZeF4P9fk5ZSAGjnW2wyB3ceqLju
	/M/k1Kv8S8Eu79Y7Qiv4djE0wT4aa/wFvCg9fWKRqobL+0RsoC+NKsqlU2GksXAY32FpiD+F6cV
	s+9a0O4nr6kv06jJ0ixTuX4bDAM4f+dkW2FJC2BRQE/TyAcqAlUfxjG18igqGoFF5nCYfA6gerf
	UV94E/Ty0rMc6iGRuxDV9hWNiU6MvH3s8KX4EaRMuQm2lwXAPU3hD/xwABSEVXW1Zql7wLoEGwA
	MPhpxoydiJl1I0uAg8iBGdICgNKU3votS79LQIae9IdqTwqR7t5i0mG07xW+i8wEEWdCzwDZt6z
	ifUSiPA69MjA4GVGtey6hLNKxzuCQxX4UsfijiVcur7KyW+TrjSfpTyyTbqL8PbHmkcNAGHxz97
	y/tn+lOclJWyNtNgrDMy11XkgpTUrVBAU=
X-Received: by 2002:a05:600c:1f86:b0:483:1403:c47f with SMTP id 5b1f17b1804b1-486febbc653mr33123025e9.6.1773997870011;
        Fri, 20 Mar 2026 02:11:10 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.216])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486ff118bb4sm18208155e9.2.2026.03.20.02.11.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Mar 2026 02:11:09 -0700 (PDT)
Message-ID: <1f684500-6c06-4abd-984a-4cf889acfcc2@tuxon.dev>
Date: Fri, 20 Mar 2026 11:11:07 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 0/6] Add support for Microchip LAN969x
To: Robert Marko <robert.marko@sartura.hr>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, olivia@selenic.com,
 herbert@gondor.apana.org.au, radu_nicolae.pirea@upb.ro,
 richard.genoud@bootlin.com, gregkh@linuxfoundation.org,
 jirislaby@kernel.org, horatiu.vultur@microchip.com,
 Ryan.Wanner@microchip.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-crypto@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-serial@vger.kernel.org, daniel.machon@microchip.com
Cc: luka.perkov@sartura.hr
References: <20260302112153.464422-1-robert.marko@sartura.hr>
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20260302112153.464422-1-robert.marko@sartura.hr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[tuxon.dev:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-278142-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[tuxon.dev];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[tuxon.dev:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[claudiu.beznea@tuxon.dev,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.996];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 604A12D7CA1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/2/26 13:20, Robert Marko wrote:
> Robert Marko (6):
>    arm64: dts: microchip: add LAN969x clock header file
>    arm64: dts: microchip: add LAN969x support
>    dt-bindings: arm: AT91: document EV23X71A board
>    arm64: dts: microchip: add EV23X71A board

Applied to microchip-dt64, thanks!

