Return-Path: <devicetree+bounces-275751-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uBjnKdO8tWlD4QAAu9opvQ
	(envelope-from <devicetree+bounces-275751-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 20:53:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 483AA28EAF4
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 20:53:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id AAB953012D0D
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 19:53:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6473037F8C9;
	Sat, 14 Mar 2026 19:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="phCg3G4U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f49.google.com (mail-oa1-f49.google.com [209.85.160.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1547C1A2545
	for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 19:53:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773518033; cv=none; b=FJsIjUPVWd1l3pItnTLffpAC1jykGrRzg0AC+s8ITLNqIQB6MqrFcn0tps+XJHqzLQgFwMxcbTWLDSZfFzu/QF5fIuyB/0bLVjIFHkNMJiu6mAsZY4rlCy5F2PhHGspedghsy2qDDPbt8ikk27QeQWjCp4Q2nKKxL/qyuUl28Yo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773518033; c=relaxed/simple;
	bh=WoYBcfnqdXjGLK8p2ATCDv5Clwk3rCl9OK1fQPfrqbk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EyB8e6LpeYmf7Y76iLtW39ASnNqGqdScwnTT6/yOzDfaTt8AAg0AF6dDgFR0SnHcajpY/cyQJd/NAaaDh4iqx01B6nNCBTkQDINC6eaxgKhPy8D2j3ZPOxPuOnuBOYisKEP8Yzms0M3dzJjyYlY2/VZTm2fFtPxhpdQikrrIDaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=phCg3G4U; arc=none smtp.client-ip=209.85.160.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f49.google.com with SMTP id 586e51a60fabf-40ea611d1a4so1310931fac.2
        for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 12:53:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1773518031; x=1774122831; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jAUWUxgIJbO5o3ZCocsIhLG9qA3mcb6cANaDC/wIQ9Q=;
        b=phCg3G4UpLjTDCiRn9Kfgzoxih14sZ5+A46wkuduGbAUTVGGLJioPsmvFndMoCGiMC
         5F72fHgNzPfMvaOYwbWPQF8Cb1hItKBp8s5bRB9tc4xzsRHP71pt1kUW7QxtT22UwJZL
         KzpaqbLAuNPt9lsQ9JjpzsabOqz3Tf7ZHF10Bvx6ayJdVxSCCiLwMGu6pCpLgQP8fdGR
         cQOkocPaO5DOzZ5eDlzz/jPXcKPFU8wL8fT4uVNcazviiCTFF0wMK0NwIacOHa+W1W4m
         w1KjV0cWB59E2z6g6Cy17EOGkCEVcp94RRmC0IfU2i+Hx+NOYu9fIv2tVe+RTNtekcd1
         r04Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773518031; x=1774122831;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jAUWUxgIJbO5o3ZCocsIhLG9qA3mcb6cANaDC/wIQ9Q=;
        b=tHFiYBFO6HwwUgJmOUa1vMxPhizxAJH+YwtODuM2CI69nvjxT1yBg0xL/l88m1PeE/
         raGgJQHlimrMUx2ptcjampzyLw22GjB/fozC5d2nTXP14V4/5dn9IeU3LuJNPyNuKCBj
         0HvWNWNGwZ+W0Q3Ow1HgfZhrJay0KcLGtxUiHJLIN+YudseI3ubcNsQ8+2Sm5Am3r2QK
         I6s6jwJl1fRIXIMFLd6E3bUgkcLjO7/o5ZPl77CmDHuL7EKDqbcAYWyxQtBwsfFPyUsG
         rT3+RdgpflsGUfHfYkXJ15NDLeeRP0WAp7KZRMChA4fB482Nc72hrl/wL11qGVE7EfTx
         aROQ==
X-Forwarded-Encrypted: i=1; AJvYcCUgbuaf5TfQ0SuWOBN7rbvbjsJFuWRYfONf4BeZvJhu1u/fEOBjaD1kXROGfZQH0NpGROY0m3QIqaAn@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5ckvI6TLVhuLZxUMe6Z685uUWMnRQl0y2Mwm0RtnEflBt2m5Y
	oolNOutb6a++NBl8PO0RzhbV4Zz0V+ZwhDD8rwGJ6njmSYrwUURWgLClkOJvRqXIn4Q=
X-Gm-Gg: ATEYQzybKxo9Q4kwPFmlXgUijz16KbX7M5AVFemcjaATVvTDyjRVXdGsEe1YayPuT86
	ifeIjhu9Q8uiYwASCW+FXGD9F7Jn4/yDTwLn+5SdZ4TVmchMX6z0G4PaP+GH1trOTe0K+q3GGXX
	UnU3zIw1A7pdnyI/e7e+SzKq/0cMiWgRhaAq92QP4B4nNAkLZqJQNSUuOEr3uWDyaUPOr+cVKvw
	XY/oj08UAO/5FgA+rVVZ1XT4xYualC9rCBQHgD51YZPsienU85utvFpi0Wms3xUdY7uJzbNcPB+
	hrZXYxCRwEFDnZUcxPIvxKOdBLOvb8jaaSPztMnZRiDC540MbVRrHVSG912okAefT2PYq7qSuiZ
	Uq1UGUQuR7AIc3yKK17O9xr5UkrNMD4fESsd+gbq6XEJGU0GANzQgVLQN6i5cvGDoQrzaTMoc83
	uEqz2CCB388R11Kd5yMVmsrPfj8T9U+1sCssplWCg/XzF8ZFZ6M/Dv+gvDD2Re/Tj1quUEcJl2o
	HRBzv1N9+L/
X-Received: by 2002:a05:6870:d8c:b0:404:33e1:3cc2 with SMTP id 586e51a60fabf-417b91b2c8fmr4441451fac.13.1773518030913;
        Sat, 14 Mar 2026 12:53:50 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:500:14a9:db6c:e65a:4287? ([2600:8803:e7e4:500:14a9:db6c:e65a:4287])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4177e64a931sm12099255fac.14.2026.03.14.12.53.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Mar 2026 12:53:49 -0700 (PDT)
Message-ID: <cb92bb47-9078-475d-b242-71e3f9181a72@baylibre.com>
Date: Sat, 14 Mar 2026 14:53:47 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/6] iio: light: vcnl4000: add regulator support
To: Erikas Bitovtas <xerikasxx@gmail.com>, Jonathan Cameron
 <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Peter Meerwald <pmeerw@pmeerw.net>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org, Raymond Hackley <raymondhackley@protonmail.com>
References: <20260314-vcnl4000-regulators-v3-0-3c4a48d30676@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20260314-vcnl4000-regulators-v3-0-3c4a48d30676@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275751-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,analog.com,pmeerw.net];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.sr.ht,protonmail.com];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,baylibre.com:email,baylibre.com:mid,baylibre-com.20230601.gappssmtp.com:dkim]
X-Rspamd-Queue-Id: 483AA28EAF4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/14/26 11:06 AM, Erikas Bitovtas wrote:
> This patch series introduces support for voltage supply, I2C and cathode
> regulators. This fixes an issue where if a regulator is shared between
> the proximity sensor and some other device, and the other device is
> powered off, the proximity sensor would be powered off as well.
> 
> One of the commits includes a Reported-by: tag without a Closes: tag -
> the report was done outside of LKML.

If it is on the public web, we can still add a link. You can just reply
to that patch with the tag (if there is one) and it will get picked up.

> 
> Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
> ---

Reviewed-by: David Lechner <dlechner@baylibre.com>


