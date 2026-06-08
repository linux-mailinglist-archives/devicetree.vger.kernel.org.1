Return-Path: <devicetree+bounces-308028-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xLKoHHZkJmo5VwIAu9opvQ
	(envelope-from <devicetree+bounces-308028-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 08:43:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DCC5653357
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 08:43:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=pRC1Vvim;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308028-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-308028-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 912E23001F95
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 06:42:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89C5F377EC5;
	Mon,  8 Jun 2026 06:42:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C7F033F8B4
	for <devicetree@vger.kernel.org>; Mon,  8 Jun 2026 06:42:56 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780900977; cv=pass; b=U5iH5bWQSLphg8dUDUbDoHpQWnCaDSOlYrjA1tXJWmSHcBWvl17+rljsKpyP5CULI6GEtnI8k56kUN5J7mLpWgcGBWsBgTTb8ecJzHGMqwVn1rtQsj2hVqY3KjKmPDfzR1TokWKOy18Dv4K7kLsa+Qw2ev89iGQ0gzgejocACXU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780900977; c=relaxed/simple;
	bh=2m4FF1H3Fj16oI4omL3CoQRWVHLdp0v0t4i2u9x4Oos=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=iHgQHvRh3HdGfSmLtXz5qSJ9U4pEPdFRsJosRiEjHJdbnDXcrHfx6BsOZmWxAB/q2+5ptY1QLKBGz94VsmR+KZonz9Cc2RSGbIdsSt1lL0XTFT7hUvQ4b+h3AJSzcTO6M+d3sifNrJSRrlIyYuflA74BZ3U5VIiwMuJmPO/owCo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=pRC1Vvim; arc=pass smtp.client-ip=209.85.128.45
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-490c1915793so22594865e9.2
        for <devicetree@vger.kernel.org>; Sun, 07 Jun 2026 23:42:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1780900975; cv=none;
        d=google.com; s=arc-20240605;
        b=CDU2gxzyCWGTZ+7+eNVAmiN042ggNr1AX5wYhHSegzqxQDip4lu69yCDIMd/ADUWSf
         vWx4dAZBHNtInn4gs0wB+jf+uj8ep36fKQHWmmil9rBQUbVw0zzMEU22goOVKzQ6yXs5
         oPLldulNncm6yD2ZVxCybYTGWUcb42MbkrnYYUwmV74x/XGfCBUGOucETco2vfeMasYh
         0x96HlSE7W9GgARvNJ3xhnqgJ7e+FaSYtLKyeAFlgabJJmhTztwrt/FX551NbDanwLaO
         4jhjqSlE4Bx0Xl3YQ24Xn+sZ5Tl2Ppv3yZAzIC7tBliCwEkUbfa6phEm0NN067JC1PB9
         6Muw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Iz6UAdLVFbtkbuNnRB62bZTTKNu+1QqVdCcPw9zYptg=;
        fh=iR7aJRXdNWwc75KtpXAiCw+M46DArXjA0qfyUbkZCrE=;
        b=bedLWKKhUZzVhW+chmjfy1Rhe2G0FkDMXTbtwabyjVjj76lrFU05+GHlxUJoAR3rI5
         99Y/Dyx45GHbUw8As6M59/kpLMLN8YbzBOt7lNpz/91pbxFkaWLaD48saP/4Xl+SWgNa
         5eZ5puIbqISf97EowfD6QOgZ37Pw+qA0vhk1NU3XYnGzrAJLlfgaKz3U3OydHpNbKzWU
         W9YEToXMravqHs9j7Pq3mNFdLzaoLqd3d7uKxRaGsW/ReNX1l9vvyJGyOjFEYLd2KEVQ
         Wf3nSsYamUbEJ/JKg3GXPGOttOreHoWV3lcWro/E0+TDzCEbEi3+30lu4OM827loNYE6
         yfRQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780900975; x=1781505775; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Iz6UAdLVFbtkbuNnRB62bZTTKNu+1QqVdCcPw9zYptg=;
        b=pRC1Vvim1hjuy1HlLdpq2zcjW1jI+JCylFK3jsStxTZYyiwAkCkIwuCbcU1rrwXuqi
         afkzbA49mrQYcOCqDS+RTB2Jp+/dJS4B47KYDRHz/u6bNL7fMQTAr+6rk4U+wHYA0vXX
         bbNzRwiRUTRNqAmb6VLcduEXBXgxkl0bRyY/2cC6k3EVeT4IW5YrQFQnuZcs0NbLfJx5
         OY6QlKG+vTmYOAWPjhS6LLz3f4/HlKce4BfOzYVEA/2KVznJqlGf1L+Tb/dx+uX2Emu7
         Z/vqKxWwPANRHTyJWO/uhaCHO/hkgw9umcJz5ctPIxH9y03HyetbnfhpVe/+8sRtFj2l
         aakw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780900975; x=1781505775;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Iz6UAdLVFbtkbuNnRB62bZTTKNu+1QqVdCcPw9zYptg=;
        b=np5FwXnjlUEmthYg3toaOOoTNr5/+aBQp/hxir50lkojIh3hzxemcmsyKdMjHTKQQk
         1zQtwdWHt5dDkVg+29GglgbN70oSBQWDKc+NoMS4ts+QURwTR7nJ4uk7aGpVDzMuWgOF
         2+0eJIgHt7QjSLG39BRlQLRu7wYonq2J1YOQFcqoL5o0HYB8tm2ej8q2aKyN+U3XH5qR
         QWHo0ZGQq1UDJUQnc9GCIrjTD/UNIGbVX1UVSJzvhFWyMe0yydewVAjlgwUyQ7/6/w1E
         5P+t1x6MMeOYQpQzKCvepjEyfW5IdgCJ6JAjypmQiydGdbjgvLBc9evu1/Si92NieDZs
         O2OA==
X-Forwarded-Encrypted: i=1; AFNElJ9vtUAUW7RGs2vFCmv60a9c8piQSFFsuPp+ePzAct3wmX4Cs2UciasWDvjby9YIY0fhO9erd7NvM8BK@vger.kernel.org
X-Gm-Message-State: AOJu0YxbLrNoZawf2u46Bq57vDsBscHxhyADrTWc6rB4270BKcdqwnaC
	lmZCkPeTAGZ++75lEhIdUEfNUrM0aXZ7xz09+aZm27cW78sks2xAGinS6eLmNn6jRX9o5fK9Z4J
	7hPRMPoz/cPUEmEqkbCHv/DyO1XlCz58=
X-Gm-Gg: Acq92OGWpwIKxXRxlSEm4b/Bm/+DSqSkdhoJqQJTFBbfiU+44v4Grz3T+i6thggZE9w
	3ylm2yRi5vHR3YvegUJjFIEv9O6vj64Atv2e+GfqFMZjpBFtUM4YrpZdTB0aBzEHU0h3AKp2Jey
	4cwl9IjjMYNf9jd3qxg9RDZdETz7bNxsT//dM+1EHkGyDEbzf5bm91iVgpnBhrUuG92fo1D4HqI
	XQP+RQ8FFtBNcVJulHf0B/KUFRVJTnZ+Ib5QgCj/fHP9YdstqqUhFAZhIYWanTm0/EpeyhOvyYO
	MF0NbU/P5IOwLmMRhsTqN8Ppr6lA7cokN5EE+vLZzWXwjrsKb4GIEm+n2XwCzb02BAmE17XCa/a
	dvNVmx+xLMfhEgu9zbfgarmc5M0xU+rgknClXXJauH4sdSn+NPeblF2mIUi+Hqx51txX4ttz81E
	iDEJWgPKFXh1y5b3YB
X-Received: by 2002:a05:600c:c491:b0:490:bb44:3f8b with SMTP id
 5b1f17b1804b1-490c2605385mr236829205e9.17.1780900974731; Sun, 07 Jun 2026
 23:42:54 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260607183542.368184-1-jakubszczudlo40@gmail.com>
In-Reply-To: <20260607183542.368184-1-jakubszczudlo40@gmail.com>
From: Joshua Crofts <joshua.crofts1@gmail.com>
Date: Mon, 8 Jun 2026 08:42:45 +0200
X-Gm-Features: AVVi8CeYykthhWJnSbjswIUaHDB2IApMfmXrVRYFt8ROlX9fi5MSoWFc1nB4A7A
Message-ID: <CALoEA-zogsk8VwXhfZkAPhqJ-dojX=kDoMHRVndQDN26aibvnw@mail.gmail.com>
Subject: Re: [PATCH 0/3] iio: adc: Extend ti-ads1100 driver
To: Jakub Szczudlo <jakubszczudlo40@gmail.com>
Cc: linux-iio@vger.kernel.org, jic23@kernel.org, dlechner@baylibre.com, 
	nuno.sa@analog.com, andy@kernel.org, marcelo.schmitt@analog.com, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	mike.looijmans@topic.nl, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, jorge.marques@analog.com, 
	antoniu.miclaus@analog.com, mazziesaccount@gmail.com, 
	jishnu.prakash@oss.qualcomm.com, duje@dujemihanovic.xyz, wens@kernel.org, 
	sakari.ailus@linux.intel.com, linusw@kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:jakubszczudlo40@gmail.com,m:linux-iio@vger.kernel.org,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:marcelo.schmitt@analog.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:mike.looijmans@topic.nl,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:jorge.marques@analog.com,m:antoniu.miclaus@analog.com,m:mazziesaccount@gmail.com,m:jishnu.prakash@oss.qualcomm.com,m:duje@dujemihanovic.xyz,m:wens@kernel.org,m:sakari.ailus@linux.intel.com,m:linusw@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[joshuacrofts1@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-308028-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[21];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[joshuacrofts1@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,baylibre.com,analog.com,topic.nl,gmail.com,oss.qualcomm.com,dujemihanovic.xyz,linux.intel.com];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6DCC5653357

On Sun, 7 Jun 2026 at 20:38, Jakub Szczudlo <jakubszczudlo40@gmail.com> wrote:
>
> Extend ADS 1100 driver to support ADS1110, which is a pin-to-pin
> compatible device with higher resolution. This patch also updates the
> device tree bindings and Kconfig description to reflect the new
> supported device.
>
> Signed-off-by: jszczudlo <jakubszczudlo40@gmail.com>

Update your git config to have your full name, you can't have usernames
etc. in your Signed-off-by tag as seen on all patches in this series.

-- 
Kind regards

CJD

