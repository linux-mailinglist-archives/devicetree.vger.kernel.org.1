Return-Path: <devicetree+bounces-275270-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UBGZI84VtGlkgwAAu9opvQ
	(envelope-from <devicetree+bounces-275270-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 14:49:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id EF3F2284357
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 14:49:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 575B73118EBF
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:40:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 160003976AB;
	Fri, 13 Mar 2026 13:38:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Snd+7/Sj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 794A139A058
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 13:38:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773409119; cv=none; b=U+dAYOwUGFOR9RHG2KhprXW1Z0Ph9DPLI+LRg8b+tokYhpbGbA0a1BH0avN3LGLhtrOBqhrwl8xXQSYiopNEzDFvO/JcZy8USHeTrb69Yy/rM2Gsi/w9OR66mewre9OXnjCIRfTmL2X1CAUdAwSto3tluj5ZkqJ3ZitSWs2Jk2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773409119; c=relaxed/simple;
	bh=lALyNELP4GhcCwEMmdwHMxGdML3zxVTx/3bKq3MzITM=;
	h=Mime-Version:Content-Type:Date:Message-Id:From:To:Cc:Subject:
	 References:In-Reply-To; b=YBtHoaIyOdfKulZ62QOGraZjM8tbIPpYxSiNtd/mIzB3sB+7GTjZTL1upJsgGNwAFnaxYQhweYuE4LmOjcaEhigVHDQpRIs0tonfmkxvSBLP+ebyqnBRDVRkAFYyiUa32qwhXXrXw26Hz6ok4QUhWbCQnv+ZnTp6Qe+Byq+BYn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Snd+7/Sj; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-48538c5956bso21203055e9.0
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 06:38:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1773409116; x=1774013916; darn=vger.kernel.org;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=9IJm+mKNs0KTRazp7NbSh/Ls5bbV5YPO1smMsqzpWe4=;
        b=Snd+7/SjI6TLLMz6u2axFDofthrYFXqamUkrpflz27sK09Eo/H7mo+KXKIaEXdQv8k
         j6JbgJMVD51ZTqeCqFdyIqz2FjYdc82/D0DuizHfMrmZEQfHQ/g2LzFa116PRk/NzB4x
         nXRPAy5IalqDFK4Rnq9I4UsWLC9VU4fasCOqmOcDNPEtCsK3JW0w/Htx4im1v4SYtM/m
         EGZau3uLwL3D+iO+XIApzFfhW1pbnvIxT7BgJfxynYGZUu0lDuBYCdj7+4T+Lb+j3Cmm
         44cnwF0K2qktkeAIjutl2Y7a1//epgifB0N4d59Q3EGtQWRFv6qo0gIaf2+7UzaiYif3
         MrkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773409116; x=1774013916;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9IJm+mKNs0KTRazp7NbSh/Ls5bbV5YPO1smMsqzpWe4=;
        b=cHXRLtoUj5I6yFrE/J176YbjeWvKXzG1BMgmyedFO0TKXGpyCJjEzGVb+HDZNJikTr
         IaTpkU37poXaGzQWwsBgxi3+1UO58zJuKHGT8MUag0XEy8YOj9SW0DZseGUikf8BYUIA
         po+0DuZYCr5M/wCUzUGPtS3YvH4R/MtTIO0a2TzTdh6sXQwibw5bbdGWbaYKFwRjNfY6
         bCi3t4pbKeHvET94qe9vAYzjtYQOX8j9PVGkwEhwAqrz89+2YMJ5Ht0pGcj7FK7FnVZQ
         HvVnuZWg/ZVkd50KHQVWDZiuhCP01NQzH7SxOV0DeEyfDFnecAuocM6GVUwQErNCZPpW
         fP+Q==
X-Forwarded-Encrypted: i=1; AJvYcCXDrzVo3DojWzCYg8OWRj4kMYeJ4p6UL5Nj4wt5KX716lcnzR+EJM/3FsjTxJO0KKdB/vrUem1rIuAP@vger.kernel.org
X-Gm-Message-State: AOJu0YymhlCmk9VhJbArurDu4opkCnFSL9r2CJp6VmZ3lAloJTfNlFa/
	u50Z+loDiu8A2uOim/3awNzyxBrMrcbqrGl+QnnR8J6dbX1ZIRDrxLRuZtq1xvkzG5M=
X-Gm-Gg: ATEYQzwPG5d/eFf6s3bYvsEndS0i+Q42sLf+0DUbP7s0NIP4l/R0HqCidK4Ls6OVr7m
	vDweodMjAZlqthz86zHm3QKLkUv7DjqeHaMEgijrymoULU6eLOWLhNLsCiGRSRQUKCPXS3Yctm7
	aYN9Tc2EpWzg+t1kD1C4HpQje8BiOjB0o9391GwqOL4m7vlSBdF8RASrvml52jGP4Aj59K/SY6D
	IezhpyVlj0InCDhuu/v2eraTGV4OuK5iqGpOPYw1V70uBKLfniHsNhsiiyYjmD6tq6GprM9j15t
	4OdLBuA7hQKps3aA9HXnol4KEVGZFQDtVgXHMJCav6VcrzQqBHOLCDWMz7OJm+wfQfZwhzs6Pq0
	TCJn5cEyJlKNPOiK1lCgGUnD3xArOJIWXCIfuKV0e+r5DE4o6Ua7O1nsyo7PuPSMECYMt9aume/
	4EdToEo0YIL/C+kHc=
X-Received: by 2002:a05:600c:3112:b0:485:3cef:d6ea with SMTP id 5b1f17b1804b1-48555b4b092mr59466835e9.13.1773409115669;
        Fri, 13 Mar 2026 06:38:35 -0700 (PDT)
Received: from localhost ([195.52.25.213])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48541b7f3cdsm352579825e9.14.2026.03.13.06.38.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 06:38:34 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed;
 boundary=1fbf434754da647e830e0071687a82f06d0ee1b21e3a2620f738b3f267a9;
 micalg=pgp-sha512; protocol="application/pgp-signature"
Date: Fri, 13 Mar 2026 14:38:25 +0100
Message-Id: <DH1P27ZP9QYQ.2IP3X8G218GR8@baylibre.com>
From: "Markus Schneider-Pargmann" <msp@baylibre.com>
To: "Krzysztof Kozlowski" <krzk@kernel.org>, "Markus Schneider-Pargmann
 (TI)" <msp@baylibre.com>
Cc: "Bjorn Andersson" <andersson@kernel.org>, "Mathieu Poirier"
 <mathieu.poirier@linaro.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Suman Anna" <s-anna@ti.com>, "Nishanth Menon" <nm@ti.com>, "Vignesh
 Raghavendra" <vigneshr@ti.com>, "Tero Kristo" <kristo@kernel.org>, "Vishal
 Mahaveer" <vishalm@ti.com>, "Kevin Hilman" <khilman@baylibre.com>, "Dhruva
 Gole" <d-gole@ti.com>, "Sebin Francis" <sebin.francis@ti.com>, "Kendall
 Willis" <k-willis@ti.com>, "Akashdeep Kaur" <a-kaur@ti.com>,
 <linux-remoteproc@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v2 8/8] dt-bindings: remoteproc: k3-r5f: Require
 memory-region-names
X-Mailer: aerc 0.21.0
References: <20260312-topic-am62a-ioddr-dt-v6-19-v2-0-37cb7ceec658@baylibre.com> <20260312-topic-am62a-ioddr-dt-v6-19-v2-8-37cb7ceec658@baylibre.com> <20260313-quantum-modest-prawn-896bde@quoll>
In-Reply-To: <20260313-quantum-modest-prawn-896bde@quoll>
X-Spamd-Result: default: False [-1.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[baylibre.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275270-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[msp@baylibre.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,baylibre.com:mid,baylibre-com.20230601.gappssmtp.com:dkim]
X-Rspamd-Queue-Id: EF3F2284357
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--1fbf434754da647e830e0071687a82f06d0ee1b21e3a2620f738b3f267a9
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi Krzysztof,

On Fri Mar 13, 2026 at 2:13 PM CET, Krzysztof Kozlowski wrote:
> On Thu, Mar 12, 2026 at 04:49:02PM +0100, Markus Schneider-Pargmann (TI) =
wrote:
>> If memory-region is used, require memory-region-names.
>
> Why?

This was a suggestion/comment from Conor in the last version:

    Is this really optional? Shouldn't it be made mandatory so that it is
    easy to tell the difference between the two configurations?

https://lore.kernel.org/all/20260303-hesitate-preoccupy-5e311cbd3e58@spud/

>
> I don't understand also why this is a separate change, but maybe answer
> to "Why are you doing it" would cover it as well.

I made this a separate patch so the git tree never has any
binding/devicectree warnings for memory-region-names even in-between
patches. That's why I created these patches in this order:

1. Add the memory-region-names as an optional property.
2. Add memory-region-names to all users of memory-region.
3. Make the property required if memory-region exists.

Best
Markus

--1fbf434754da647e830e0071687a82f06d0ee1b21e3a2620f738b3f267a9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iKMEABYKAEsWIQSJYVVm/x+5xmOiprOFwVZpkBVKUwUCabQTUhsUgAAAAAAEAA5t
YW51MiwyLjUrMS4xMiwyLDIRHG1zcEBiYXlsaWJyZS5jb20ACgkQhcFWaZAVSlNY
PgD/dG12YM5FMmV5c9zq9GvJxbmUXk6S8TLCSlBHnaV51m0BAKJKmAgh9p0rHffR
2XYe9hOtFZ7Oqgui3rMKtB2Gqy4B
=uVCn
-----END PGP SIGNATURE-----

--1fbf434754da647e830e0071687a82f06d0ee1b21e3a2620f738b3f267a9--

