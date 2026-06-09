Return-Path: <devicetree+bounces-308831-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Ir9FBhzVJ2pT3AIAu9opvQ
	(envelope-from <devicetree+bounces-308831-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 10:55:56 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 662E165E027
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 10:55:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308831-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-308831-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9674530785E0
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 08:50:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0A773EFD31;
	Tue,  9 Jun 2026 08:50:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 793473E5A32
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 08:50:17 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780995018; cv=none; b=D/oQ4d9Jn6cpqxL9h1gPeiBRvnJe1zgNj3zoKFO1ROObaJTH1FPJXN8uzNWvPaRTN4Ud4SPTQGAMY3jLsA9ktObcaCeHuA6fSf03VX7CZtocVS+SBv0yOf8J/9Jvx4goBqW2v1JBtkJpOT54CfMlLId34hh3BPVTXT9Y3SXCL38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780995018; c=relaxed/simple;
	bh=qLFJdsZ/KRlc/HGYJzXoyW16kOjzeKL5gCHOv1Q/0kE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kEAK7v9zYlPCLd8ylt3zbOaXkTdFzxfJpDw1Sv9bdwyDgoNpd3ol5U+FpCpAszCqt/iCuf9d1aeLrPuVYYuYT1qXHStOwyTqz+xqtguRFAsRgMolwWJaIqxaq8yiyxfpEbIfQK6cG+i93DAiUCbpCW1HMaENnRJX797BBx4Zdgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=kzalloc.com; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.208.52
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-68b3a28da7eso878459a12.2
        for <devicetree@vger.kernel.org>; Tue, 09 Jun 2026 01:50:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780995016; x=1781599816;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/OesEzAfal6z36LgdXCq9SyfPK1un/F0y/2bpb/9BmA=;
        b=jpriJ9pl2xQ8P/nNC3c7Hcjjvanu35oYx1AwruXlQm1Dzj3Ijj5vVjaDzJtB908ERR
         B3FSZRXKIoVhLmbDv2ZYRZd3EotGIa44ZycvHckyc6ggL1Le40szpGwp88E6dY/suw9E
         5V564cxx+8s0uMOOrgoI7eT8N12b80qaCE/gQLKSW578Ue2zFaZwrt5mkeO21S3nFasU
         lFsGExdbv8AFBdXLN2pwTxgolzUioYHIt0iV+aNHQWmsYmUunOT1nmN/bGTrsVUPo1s/
         /F4Up0R0X3WS+MH8uM/S+7eYePtT662kzixrJstC5wPAUnHKdMFD40DdloyIagdUCg29
         sZCA==
X-Forwarded-Encrypted: i=1; AFNElJ/ErcWmETMbIoofNKX7hwr0rVhlHwakbuQumKQDkCN8I0fZ1gNSMY3aMW4uPwxTmcpbfh2uLApYYhgQ@vger.kernel.org
X-Gm-Message-State: AOJu0YxQ65Q36ACyRiK+6RLXPdnbTi32NIk4/qSMqQi6jFTla+yVfQJZ
	69vEWcRrmIvJHX/c+c/b4EE+0ZU0bSreUMuzVmt5cYg38iVy9P5VBHi6
X-Gm-Gg: Acq92OGowVvuspGZwcBoRFCS7UoLTX+2ohETmLtLpx7+SFrvw/I1agS5ZZnUV4rE5/I
	ya5mA/tsgsRVjZ0j8pQ/QU0VuHvFl3udBtxgZV7thfz1jmmdTp3pGWiqWfkcX8L33t4KQqKP34q
	6IsouKF6URF7aWBqbPRPis+jeWr9CiJg27nLbWFU650cNVkOY7owrLcbtM7b94Lw7hC7TaxHVJY
	zbKJVRfSxIBuVn5MtoNfFm86Icq2KDdaqmLkIUc/PbxDvc9YzWhZTbcI/ZLNoMPTUvW5AHefM06
	URF5LkSu+jWZgFwhn6BurlC9+regWGosxle2+PtZch9RJ1jvS2pH0BNdmZHGIwbX0d/0ILqy+jV
	TFd6J6ia+fopISzO9NgwRZoVwO5B7GosSLTVOcK8ObkiSWP9cv5oHJOnY2yVVA3FjMLTZZG/6Rd
	XP20o44N0a+s7WODtEdqDLEAsdUvJSXoYOVGYxeQK5DlNGwL++yOQk2PLAQrHF3Lvz7oLKG6oUm
	Of5Obu9zJELeoqotOZrhCTyfddRmITls8rgi7g7KBy+yrlkhAaEoXDjWH3G3KiD
X-Received: by 2002:a05:6402:3809:b0:68c:76fb:7e8f with SMTP id 4fb4d7f45d1cf-68fa46b5608mr3785815a12.0.1780995015438;
        Tue, 09 Jun 2026 01:50:15 -0700 (PDT)
Received: from [10.147.180.168] ([192.176.1.78])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-68e65851d7bsm8185098a12.14.2026.06.09.01.50.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Jun 2026 01:50:15 -0700 (PDT)
Message-ID: <b5eecbd3-40fa-4348-8ec6-9f960dd969b9@kzalloc.com>
Date: Tue, 9 Jun 2026 10:50:13 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [Question] Enabling CoreSight TRBE in firmware on CIX Orion O6
To: Yunseong Kim <yunseong.kim@est.tech>, Peter Chen
 <peter.chen@cixtech.com>, Fugang Duan <fugang.duan@cixtech.com>,
 Guomin Chen <Guomin.Chen@cixtech.com>, Hans Zhang <hans.zhang@cixtech.com>,
 Gary Yang <gary.yang@cixtech.com>, Joakim Zhang <joakim.zhang@cixtech.com>,
 Jerry Zhu <jerry.zhu@cixtech.com>
Cc: CIX Linux Kernel Upstream Group <cix-kernel-upstream@cixtech.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Yunseong Kim <yunseong.kim@ericsson.com>
References: <5d1bdf6d-ed77-4de9-b788-cf04a98d054d@est.tech>
From: Yunseong Kim <ysk@kzalloc.com>
Content-Language: en-US
In-Reply-To: <5d1bdf6d-ed77-4de9-b788-cf04a98d054d@est.tech>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-308831-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[kzalloc.com];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:yunseong.kim@est.tech,m:peter.chen@cixtech.com,m:fugang.duan@cixtech.com,m:Guomin.Chen@cixtech.com,m:hans.zhang@cixtech.com,m:gary.yang@cixtech.com,m:joakim.zhang@cixtech.com,m:jerry.zhu@cixtech.com,m:cix-kernel-upstream@cixtech.com,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:yunseong.kim@ericsson.com,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[ysk@kzalloc.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ysk@kzalloc.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 662E165E027

I wrote the wrong output:

>      $ perf record -e cs_etm// -- ls
>      intel_pt: aux mmap: Cannot allocate memory

Current output:

     $ perf record -e cs_etm// -- ls
     cs_etm: Not found on CPU 0. Check hardware and firmware support and that all Coresight drivers are loaded 


