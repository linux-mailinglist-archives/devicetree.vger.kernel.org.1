Return-Path: <devicetree+bounces-276157-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OC0TD5n5t2n1XgEAu9opvQ
	(envelope-from <devicetree+bounces-276157-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 13:37:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F00D299928
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 13:37:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BD691301A165
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 12:37:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7044396B67;
	Mon, 16 Mar 2026 12:37:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XgO9rC/l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A17B039659F
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 12:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773664644; cv=none; b=tlHN3rU8sfSGAgem08aj6Gb3F8cLmLwJ2fEgKpSjrOCXE3+OTBI0Wv2J8VWTNyQ5NuuUKGQOJ2Sq8vwDtV6HdfME1jNt2mheVEaFEFIBEiKM/cFII4YtYCtaUq4VJtqC0mxuBmXbvdZp1Dn3rPLsZrS78D562tDQwd9TdtsPj4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773664644; c=relaxed/simple;
	bh=ZgxUTmf9fVStVjRrnO2mMxCDQB5qTL/e7od6+V7IGEk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RxlMwlS1CGXqUfDl091qwZ9ioCq1Tm6ruCLEpTH4hoEmMN3vRAaE9hSyUhtGnImEhxA66Rl9mAl3ynyxAJItjPeDfm9JCLK0Pk0snSmTqgqDRjvQGDvpvEy5Gjh+AzhxK7k6STlpug9qTWW0tXt3/xv5wRiMIYBiYsgUWOet1dM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XgO9rC/l; arc=none smtp.client-ip=209.85.222.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f182.google.com with SMTP id af79cd13be357-8cd80bea5f3so280330485a.3
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 05:37:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773664642; x=1774269442; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/+43p1seL+R/O2hzNoObXrztoY0CvWOJdUHkcnpAiuU=;
        b=XgO9rC/lvsO5xJlT1/quw/he8kqnFBqgcj+ogRMfiXAtP9aSMUATF+HGxIIqv8VQ6+
         nPSYGIHIPKdwkr3ZUkYL1d2TIos032+PamSxMVTHbSqm1+qOYUX/CawGO7yR5f2WtIp+
         lkHG0sCbZ6KY8KEtrpKBKqItZNNTW8jXpa/so0T403AevSCWDNz3ya7I3ifN6UVBb3cC
         S9am5n9ibqd4nlZHukfN7nVpbvmkz+QoevAWaD084SlzI+4Frmx9iZuNJGV22d4AAsSL
         fW+K8uUS9ZzZ9vyroHD9eIJC+73ZZ+bXUleqe45kLc3KmcTAGSpOkC1V6Q9Wza5wVVMP
         6DcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773664642; x=1774269442;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/+43p1seL+R/O2hzNoObXrztoY0CvWOJdUHkcnpAiuU=;
        b=tMwVVOgaQI4RDsdej3FZJFyc287ks5G7Xnkk4nGoJoALWbataA9DC/kHwo1xzwp8iq
         i2u1zYdnp6oNWOK8KbIRldK83aIupwD2V/ljQLsp9qZYdJjiWB64zdqehmI5R90azmpL
         2YgWE4UjrxnfjtbueOpgQeBrqsmC9+QpD26O+EIRya1lLKFG7i5xXDXOpO9SMBXda252
         x4S/Y5GINs8IcVes7i9bOxNgYe0Feo1qVCOF3H97RwNP/h5X9i1JxJOC26eIOzvZYq8E
         oUpKWeJBwJcF6WbMpxdjtf2ITmZX1aTHZGW5dIQh1tBtiEmmLuHWVxGuv0HAlu9y8Gql
         6CMQ==
X-Forwarded-Encrypted: i=1; AJvYcCUfNtQmYfN43e2cv5/ikiOt33cZboABMTCiBCn1RBt8loroCeVsuV1mhKrxI32qWv+CYu9kaRRAlv6c@vger.kernel.org
X-Gm-Message-State: AOJu0YwO64+goLm5bcREJka9K1eNC7+dLjfFlj2u1RE4ltPp7BOgakxH
	0Ml4eTDD9BiXHcT6JQ8JoyK/yu8iLJIQK4ET6WhsKRuyHko/IQEuZkAR
X-Gm-Gg: ATEYQzxUOHbcg5/WE58pokFsdNFQerr2a4aR3qGFvDAy2zPtNnObIax5m+VF+GgIAaW
	IPjiZu53H9Ly0+AVx0JF8v2oH2OIK/XoAlA/KozO6Iwf0rawjxwA/jH5iNZjX0Y4/EjkMY4d6J9
	XW68wFB65E8Bly80S+jUaHSoAHBG2hF18c5u89nOm90sKTxUvqo+GQ2PXgbgfzFbn7XqNtJFLgV
	zFBWlhnIBhg+iSq8T0deylqoJYoUdom5SzAR6F4bL0kBbYN579fJsDwoloD8TTP80HEHQbx2oo2
	xM9PuI23ZzxJasocGsfKkDDbasrlE3VoVZ9CiC9kfrynF/LL3yxJaCspG1vZAKbvyL4wpXb7mZ7
	oydVTZFlLP9VMUSYlY1kSfHc0nzA60QhJjHBMziY/CiOjyODDlKz0WzSosCLd9VKKnSgqLzqodH
	FKEKEWUgwyNlq3Qki2F+tBcgWjZdseHafOLmL0UO5UnFv2Zq+X/J2vObpB
X-Received: by 2002:a05:620a:2912:b0:8c7:9e6:3a72 with SMTP id af79cd13be357-8cdb59eb46fmr1602679485a.6.1773664642445;
        Mon, 16 Mar 2026 05:37:22 -0700 (PDT)
Received: from sleek (d-23-244-200-70.nh.cpe.atlanticbb.net. [23.244.200.70])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8cda2148400sm1214055685a.39.2026.03.16.05.37.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2026 05:37:22 -0700 (PDT)
Date: Mon, 16 Mar 2026 08:37:19 -0400
From: Joshua Milas <josh.milas@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: tglx@linutronix.de, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, unicorn_wang@outlook.com, inochiama@gmail.com,
	paul.walmsley@sifive.com, samuel.holland@sifive.com,
	palmer@dabbelt.com, aou@eecs.berkeley.edu, alex@ghiti.fr,
	alexander.sverdlin@gmail.com, rabenda.cn@gmail.com,
	thomas.bonnefille@bootlin.com, chao.wei@sophgo.com,
	liujingqi@lanxincomputing.com, devicetree@vger.kernel.org,
	sophgo@lists.linux.dev, linux-riscv@lists.infradead.org
Subject: Re: [PATCH v3 1/5] dt-bindings: soc: sophgo: add Milk-V Duo S board
 compatibles
Message-ID: <abf5fw5wdsfdNV8G@sleek>
References: <20251029001052.36774-1-josh.milas@gmail.com>
 <20251029001052.36774-2-josh.milas@gmail.com>
 <20251029-nebulous-doberman-of-wholeness-0fd3a5@kuoka>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251029-nebulous-doberman-of-wholeness-0fd3a5@kuoka>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276157-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[linutronix.de,kernel.org,outlook.com,gmail.com,sifive.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,bootlin.com,sophgo.com,lanxincomputing.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[joshmilas@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 9F00D299928
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Krzysztof,

Apologies for missing the change, I got ahead of myself.
I updated my changelog for an upcoming v4 patch.

> How did you resolve previous comments on bindings? Nothing mentioned
> here.

Which issues specifically? i2c issues were resolved by updating the 
.config for drivers. I have yet to resolve the spi issues.

Have a good day,
- Joshua Milas

