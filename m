Return-Path: <devicetree+bounces-319104-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +enRBAEYRmrOJgsAu9opvQ
	(envelope-from <devicetree+bounces-319104-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 09:49:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id ACB7A6F45F0
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 09:49:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=cwjz88pd;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319104-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-319104-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 926263020E1A
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 07:46:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6B713A2544;
	Thu,  2 Jul 2026 07:46:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0888D3A9D84
	for <devicetree@vger.kernel.org>; Thu,  2 Jul 2026 07:46:03 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782978365; cv=pass; b=SUuWqTGpRo+4Q10yLl2C/mv1ynS7xECpwsGEuv27hpxo4WqcxfPdW9osN5H2049hTa1pKDi+/iCWvrKRkHOsUyc3hG+Nuc5oLmjr+eyRXHsUoXs1ODor77z0mWWqU2UY1R4HXlTP2n0vHy8AuwXeoYOos1lUSq4lL7/PhLVRR6o=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782978365; c=relaxed/simple;
	bh=WA/QTtHldG6wj8ZWzUjJhPHU56GUOZu7i3gAkeYtcFI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Mpc58QmZBT+Gu7CkEvDMr4yaKatexu2xvMtJFic8yDGM67M1iKrOCQxsb8ElSlujbfmc6s8mGxQ+VA/UH+5aDflk+E3zIgfWI+7B1RIwolXEmitwtY3G0t0ZamA3ut5EsFArll7F6y5ZePCe/xGCVAV+f6HbF5Ja25nWF5hGCm4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cwjz88pd; arc=pass smtp.client-ip=209.85.218.42
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-c125c082ee2so165861966b.0
        for <devicetree@vger.kernel.org>; Thu, 02 Jul 2026 00:46:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1782978362; cv=none;
        d=google.com; s=arc-20260327;
        b=IVeu/FTH2mwNna7RzV5PBbLspZu+ZJrOtPgb1MbcVYbguGF5z+VpNxTNJAjU0qI/dU
         8pkBOUVvDdDXTHUohTixtxJEnFxuj8XRkGpp0NQ6z1ez9wS3yl020mWxfHYe/nEEXVKT
         8ZuCkLl3bou0c06drLqrNvD9G+dVCOYGxx2zDohaIrnK/GCCtUmjYruZ+oPpmtkhj9Qh
         AGuEl3iZlfQDMat/Ji7fpKk5c1V6NMnq5vFHyqg6WXFZhnTPt+miPcPZz+rjNwFPwXT3
         PdCEeFT8QbeOTcDBNoUOJjIXKbBZDTR7H23aAUmP8dvCXcT9CJixzX0jkv0oZmOeEwbO
         JcIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=WA/QTtHldG6wj8ZWzUjJhPHU56GUOZu7i3gAkeYtcFI=;
        fh=+xNCFHPmHO7n+VXOcHcBVpGkJrqGXPqNStQrbyfedL8=;
        b=bMBNsBx9rGH7+DhPUhD8nWvmntStVC6nNp0d2BJPO5YY/RszhyHySVpvPhXZrs36aj
         2SnD06GNdqSSKWnbzSFlKGGuc39sydojmBsO/XvYhtC1ho6uTo9ust+iFwSgj5tyvx47
         SBhar9hwpP5VoqyIZ6DdIv7fGHgd/LZXabKmtIK/ItfhwyID9nfrUXUR2E+EVbeKuBoT
         HmsofiRYd8uqkewAmM+tGoOMwS3TBx7AXMXJq1d5NcsSXjoI46TVrnMY4FHyRkeFvU6A
         zcQErwKsT0ZgvURMGXKfUgQGc6eUtzd+9g/otIIHE7y6v+M6l3p8co3bAPykQB3kihTP
         8Y4w==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782978362; x=1783583162; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=WA/QTtHldG6wj8ZWzUjJhPHU56GUOZu7i3gAkeYtcFI=;
        b=cwjz88pdWIVMCjBO8rpxoDnZLqXzYoO7sd24/1oxtUDkvBQdoSPrViGuq/tUImaEOB
         i9PpR3pEgX/Idj3zEB/1aUxO7al20vdxOt9oLCtG/PtylGqbKszWj+pbow6BfQ3VXLc6
         Fs9dnUoDijH7LESf61rsP03IOtwfJV3xp1Jy5mJ+VTH+2AvJvBnYo2CNyCGH4Aw2q/hL
         XUMonMgAOXSBmnSIapKXnauionGRTu8A1iXhzXm6omIpr2FDMrjfbMzTwo0GJv4uzOFP
         E9rST9Uz98PlIBajZAG575AnOXCxLlFdkkkCCuiTOI/cm/LaMEzGAElLP7AZilkfOXdW
         UyOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782978362; x=1783583162;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WA/QTtHldG6wj8ZWzUjJhPHU56GUOZu7i3gAkeYtcFI=;
        b=d+/St9PvoyUaXVQRDz/Psh2Te7qkmzbF9Kpumv6YiyevApRT8I/TCoVSOpfh+TYJQa
         ifKRStjATxTve89+ITSqJVTo1/h4fsdzxv/56hmRTPGSI5lk0ANQzMoHvqkUOSJugeRa
         zcQPFPVJjG1cBtluh0AR6J0p7tT1NE3BEry8stuaOnvs6HgdopCHLupZXPZeIgnIjC4q
         VS50f8RLM14iJNSwfaSaXIHfyl0J5vesioGwNlR6xguCDVFieNnbbZxaQGnfXzF6hQbH
         p4QKCQAQjnmrqregY/8sueyZdJ8i34WWukr4ZSyJFLLzvwOanEv5banvay2HkSFJXHuq
         KZTQ==
X-Forwarded-Encrypted: i=1; AHgh+RoNW+ah+j4STL5NIKPAeZ5C5t1UY15cASB5BDsWVs6TjjKQJEcGBs3RvEtdNnJengbcZBSWpyBWaIGn@vger.kernel.org
X-Gm-Message-State: AOJu0YzvQjD6MrbYClQQb+5DaHSXjq721neBYWCBOWys7QCJr/GPdmDv
	s0C35bYN+5vU9jWe8VbjxsOfwHAkXjs8rK4kr+kPN45pymiUqIRYu0RpnJLZZwgA1nhadI/uIOo
	UQTnCm+VEbE0ZUcrrz2xeFuDH002EZIA=
X-Gm-Gg: AfdE7ckXhrGvwUVJGSeXRSoAG8CLJZT805EUwfNMEw4/HFpbsGUy+kVswqCuYAKaMQB
	1IkdVZJ/BKQo+5gdQ86ZZfPVoo4n/k3tk1eDLO/3QZrQOwLuCtFhiYa0KNaPxi+V2RtSxkE6oDA
	n74CBDjLD7VJhr+YIiABYAKIW1hnDVpj0yxMeSNQSp94XqNGq6QN4dfD9nbHs4asK/7ko+88kWb
	FsgSsol6hJprB5V4zYfhP8rgEEkW1YHiVuQHT7p3MZazZ750MX+i5SWTCEtKk04JGltEFK4iykb
	mR2AC5OF1INa9sEgs+q8W2hu4e2IGORUuHZt5jmbpgs+1zckFWiWKpfMrakFGqBOYJFE5zZCSQ=
	=
X-Received: by 2002:a17:906:2c58:b0:c12:8ade:dce1 with SMTP id
 a640c23a62f3a-c12aa195546mr174594066b.48.1782978362078; Thu, 02 Jul 2026
 00:46:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260702-hm1092-driver-v2-0-4f9f369d6a48@gmail.com>
 <20260702-hm1092-driver-v2-1-4f9f369d6a48@gmail.com> <20260702-generous-beaver-of-perception-f2a9bd@quoll>
 <CAJTcUFR08TXjOeQSxdBhoqHe94+7G_HLSrCN00BB8cHmBgTpZg@mail.gmail.com> <a599eafd-dc72-48d4-80fa-1d24529ce2a7@kernel.org>
In-Reply-To: <a599eafd-dc72-48d4-80fa-1d24529ce2a7@kernel.org>
From: Ramshouriesh R <rshouriesh@gmail.com>
Date: Thu, 2 Jul 2026 13:15:50 +0530
X-Gm-Features: AVVi8CcJrihge9Vtg-yG5wKIfjbofuNQF6xrktFDGlhntbksLe1RJmHnqJjcInY
Message-ID: <CAJTcUFSZC0S06kcJ+=R6vUsPN5jCO7ZmX7ibqM-TYY52XGE5oQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] media: dt-bindings: Add Himax HM1092 NIR sensor
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Sakari Ailus <sakari.ailus@linux.intel.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Hans Verkuil <hverkuil+cisco@kernel.org>, "Bryan O'Donoghue" <bod@kernel.org>, 
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, linux-media@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:krzk@kernel.org,m:mchehab@kernel.org,m:sakari.ailus@linux.intel.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:hverkuil+cisco@kernel.org,m:bod@kernel.org,m:vladimir.zapolskiy@linaro.org,m:linux-media@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:conor@kernel.org,m:hverkuil@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-319104-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[rshouriesh@gmail.com,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rshouriesh@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt,cisco];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: ACB7A6F45F0

I sincerely apologise for my ignorance.
This will not happen again

Best Regards,
Ramshouriesh

