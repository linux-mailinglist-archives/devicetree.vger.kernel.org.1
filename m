Return-Path: <devicetree+bounces-317382-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wJ41OutFQ2psWQoAu9opvQ
	(envelope-from <devicetree+bounces-317382-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 06:28:27 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4393B6E044B
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 06:28:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b="r3HZ8/9m";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317382-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-317382-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F3BD63029AF4
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 04:28:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97A803DD854;
	Tue, 30 Jun 2026 04:28:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68A853B27D9
	for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 04:28:23 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782793704; cv=none; b=gd4WvJiGxdU7nvhRDEnkHC2JkwaEZZfsQupGdZRglAhvIFsZzJfHnCvLeNZ+kOwIcXf6h9+7uBgPB4alg/aUDJtTQ32/7IuMHuiIW5bYq1dNQUnFLnMvoLIZGQQbJEeXDk4yl948jyKmC4SIdSVRYgvO5/7qnqGUj3FI1bSFUVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782793704; c=relaxed/simple;
	bh=xJKT55bm34PbDyZKSs2QdqQluEMDHDryBLZVBk7djFA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CwCUlR/pewM2bS3p6fHWQhfMPlnwcgAanInURUEsyflWW2yDCSMOiw/1C+hyPvLq5HyHbDgzh2WIzY/0dwJnaaze24DCxpPcp0czvGzOAPTkGFSiOkV0jiAzbS7OGgo97JNDtO/IdrGAtbAyGyt4L23e10CcqOXqNTWyHcLkJkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=r3HZ8/9m; arc=none smtp.client-ip=209.85.214.176
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-2c95a0c0aa2so27793225ad.3
        for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 21:28:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782793703; x=1783398503; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xJKT55bm34PbDyZKSs2QdqQluEMDHDryBLZVBk7djFA=;
        b=r3HZ8/9msLIpgw+ISFgpy1eV2Gds6rEsI75BCnNwt5dkRCSQ5z/hfJFSc2GhrTmY5u
         dmX+uRoDYzh99D0wucNxazvWLjimWc20cVzSaYGXuyaKqd8nuwWxSQWwAgA3RZHElLMP
         SzqScWz2+QBEqVbskGY7qZuy0O6mFrExY4WqtkUtfix7DZpKRz3eK8J8zMTdFSYMb4qJ
         sW6I1byowW5bG8uIVP/gEtVEN7qegD8vkh1YjMbLCwkZoB97S98pS4f5eDvzozzco0qo
         8/3N76vgPF4+nFUqaffuNSGjxuhEOw62a9WSJCY49ZwfazXv2EadAq8QkIkoFTCGvWdf
         +/xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782793703; x=1783398503;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xJKT55bm34PbDyZKSs2QdqQluEMDHDryBLZVBk7djFA=;
        b=K0xLoHTHIWShKOj8vRnjcJTqyZTHW/GI1r4Tx1/P4xjap2VOBJjo2R09s9q1qtxJpM
         0VDK5stYcINtI7wT0fdcGD3YN1dGP1WAgfEqysh/1vpnI/5X0mVMnAzpjQNqe3ZcGZX2
         iLn+1XdpqDoAkmIMGgqcDgvntW/NrDpoHuuFhzbnnI1jc/ZLZiN/sPYIQOYfw2h13YdH
         2q1wZWjedCle9/4vrGYidw+d0yq0DNDgMSgDAvZLlm9YbCMFxlGQueD3Mnew69+LKdDU
         BXm/QM4L7Be++vQalBJ1I1x2TFeiYkymXjPIzYsQKOBF/7Tk+LBkPdgMHd74rKs5QT+1
         2bwg==
X-Forwarded-Encrypted: i=1; AHgh+RpinLLJ0T2PCiUhtSHy/Zw4PabmBrsojPOgSSpR2de0NsCERND20VzMLxOzfDmwjo66+VG9EoahBMB+@vger.kernel.org
X-Gm-Message-State: AOJu0YwTRQvxTycftlLRjFxAeS56suTGb9L6nO49BGpSR3WxzG/4VLmo
	qQn797jrdUrLgBgWSWzFCoUockA4qau6IiLWBzTmnm+uZf+YqZxE5Jwy
X-Gm-Gg: AfdE7cnzuwmpg94wtkK1TO6NaBTqCvvEyJiL0LujfPeYgAA9NzTaHicYkWES3zP3MqC
	KeKL627r+JkTAoiPOOKb5mS3or/tojEL9jD8eTUWy5fRK4P9/KjwkRcC6fTADBrOEuZtgvGJ9KS
	bWD2UEXHxY40iknW1c55mxm7BSJxSR/z3lMahOgmvr/gxJxqFIPUa+7YV6DZRbKDJzdhNS64rx1
	Dx8L3m0ikdmWkMf5JN2lf/sScL6ugBV2kHAJJLAWankIPrDkE4AgE61/gOKelahGuP7LGMKebUs
	q8pna+ewIRt1PorV+tkQ5/bzc772rZ5Yc5QZGp+qfVJUgGaVedjwRBhMQmw7E8yEz0v/8C7vrK/
	0TU8vut1y1//V5ofE0ojGlBrnZsDED6YC6LePh49F9pC0/SxDoi5/8MizGHkEkSh5N5saljrzhF
	AonZrcVC6fSV8000YxW3FJvEl9N9imHfaRAZQT42H8Keny8T9bqXnkNLqsAGl2OLAz
X-Received: by 2002:a17:903:291:b0:2c1:e426:70f4 with SMTP id d9443c01a7336-2ca2e71453bmr14983255ad.23.1782793702521;
        Mon, 29 Jun 2026 21:28:22 -0700 (PDT)
Received: from [172.19.1.42] (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ca37a70812sm5085795ad.16.2026.06.29.21.28.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2026 21:28:21 -0700 (PDT)
Message-ID: <7ab78656-3413-4230-8214-8cecaaf62735@gmail.com>
Date: Tue, 30 Jun 2026 12:28:19 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] iio: adc: Add Nuvoton MA35D1 EADC driver
To: David Lechner <dlechner@baylibre.com>, jic23@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org
Cc: nuno.sa@analog.com, andy@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, cwweng@nuvoton.com
References: <20260625110638.38438-1-cwweng.linux@gmail.com>
 <20260625110638.38438-3-cwweng.linux@gmail.com>
 <66ad5723-6589-473a-91da-b13e2ba90aeb@baylibre.com>
 <5e65eabd-699b-4587-bb38-d8ef5c6d2aaa@gmail.com>
 <f759ad9b-56ef-482a-9389-85ea1e3fd7d3@baylibre.com>
Content-Language: en-US
From: Chi-Wen Weng <cwweng.linux@gmail.com>
In-Reply-To: <f759ad9b-56ef-482a-9389-85ea1e3fd7d3@baylibre.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-317382-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[cwwenglinux@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:dlechner@baylibre.com,m:jic23@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:nuno.sa@analog.com,m:andy@kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:cwweng@nuvoton.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[cwwenglinux@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4393B6E044B

Hi David,

Thanks for the clarification, and sorry for top-posting. I will reply
inline and trim the irrelevant context next time.

 > This is a simple/small enough driver that it would be fine to still
 > keep all of those features in v2. It would still be fine to split
 > them into separate patches, but you could still send them all as
 > a single patch series.

Understood. I will keep the driver as a single driver patch in v2, but I
will keep the features in the patch and fix the issues raised during
review instead of dropping them only to reduce the initial scope.

For v2, I will keep direct reads, differential channels and triggered
buffer support in the driver patch. DMA support will still not be used by
the driver yet, although the binding will describe the optional DMA
property as discussed in the binding review.

I will address the driver comments in v2, including:
- use regmap for register access and update_bits,
- add optional vref-supply handling and avoid forcing the external
   reference path unconditionally,
- add IIO_CHAN_INFO_SCALE based on the selected reference source,
- handle differential channels with the proper hardware constraints and
   signed output handling,
- fix the buffered scan sequencing so samples are read only after the
   requested scan has completed,
- avoid an unpaced software re-triggering loop,
- use IIO_DECLARE_BUFFER_WITH_TS() for the scan buffer,
- use the new scan_type.format field,
- drop datasheet_name,
- use device_for_each_child_node_scoped(),
- use devm_mutex_init(),
- remove the unused struct device pointer and other cleanup items.

Thanks,
Chi-Wen


