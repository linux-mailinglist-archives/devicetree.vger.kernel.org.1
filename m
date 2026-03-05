Return-Path: <devicetree+bounces-271722-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SBy3EV7kqWl1HAEAu9opvQ
	(envelope-from <devicetree+bounces-271722-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 21:15:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F37C21810D
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 21:15:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 169F4301F330
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 20:15:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CCBB1C84DE;
	Thu,  5 Mar 2026 20:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="Lpr5chmd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f97.google.com (mail-pj1-f97.google.com [209.85.216.97])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 585A8145B27
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 20:15:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.216.97
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772741723; cv=pass; b=VmgSkryInlwnPyRbCK3Fd6Kb4UB6iRmAyGMX5vyOvVhJztfsNDQoLfFrhQTwH6qWIRAMQ5Hd9A4xnOjTkz0JfAC0/sBLzD2Wsp4pdgPP3PUYg/senf6xJ8dC4CXs5marUGHhMtn2qJX8iFTs16ekF8rC+G862XGtgrzsh2wepjo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772741723; c=relaxed/simple;
	bh=hinGoXRif/dUxE3kWjVMOOwu6/FAIPwRIAilPH4I+xE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hqkH6qtotuC2PniBTKN6B8F/lkqzTg+VTMiDxGTLmari7vwt9dgJIR9I8VlmNxrokeYJYIkqki5gGAnkoUWPje+YuTHG9nt5yNl50C6vw0SjvhywBQH2MPIysNgx9ACQNwTCh/vIBMnLDdem+7LYx0TJCVQn6N+i5dr1DB0kos8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=Lpr5chmd; arc=pass smtp.client-ip=209.85.216.97
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pj1-f97.google.com with SMTP id 98e67ed59e1d1-3598c008455so2932964a91.3
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 12:15:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772741722; x=1773346522;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZLU4UxDKcX215fpR8IZeKxynEktLg1leAT0Qfka3iPM=;
        b=S7F8tezgJ4L/rouhDnEHfmcn90PIBzsgiOXf4evF5X8NJNVu1Tqx9+5WT6XuvZ/neX
         TvHOF5V5g1P/jpj2r9oYa/2dZe5l0PPOI+fzbjnnQNkjDod1EvA50wWrZXKnGy5r4lcD
         rMsSHie9Gq0uf6vnhQ3VZKywt09kigNVf2UlOdLTi769tGPq3HyQazsxqF/LaMemttwo
         qjds4IScMjZo021GJWgsJGE0I3eAZeV577AN9dugKcEaaN0W5Yikcg+vGO/M1FdVZBtb
         oU3AuOinLTTagY/IqDBNW50S+Jy9/A3xhbH4hWxmgO0ptiBo05sKFdAgCYDoCzdu/m7o
         9zwQ==
X-Forwarded-Encrypted: i=2; AJvYcCW2ubLVVeIALLA7/4203gLm+rI3NWEMREja3lI/sHhjwdZZDL13YFxu01Q7I1Njoh7gOc9dMv8GgbD0@vger.kernel.org
X-Gm-Message-State: AOJu0YxB974zSE5oGSZgPYVjXv+FgbYtOxI+rRZ+VWfSKOPHJFi2zv7+
	bOSpQfc+DrpwOBVZjBVRBvThpoxawpAPI2qSuesBVhPuJGxVtnnp4Pi0CRcnYA8Iz+pafgkKw1h
	KQzeG+hUbZof72OrgvboCCqLC1hp73ZMRquP2PQOFgBq4hF/Lz9+uFNy4ZY3nfn+nJjiUK4QafH
	uhyvNrAr9VY1OX+LQAeNZ1wEEWfzPHBdfFlmuSbRk28h2K3ISmuRoqcbC1/5ANvhhHCTmXnMe1u
	G1C+nGET04pog==
X-Gm-Gg: ATEYQzwgCSFrFnT/Fpj/j4W7whmI357V1WRel3gRQxP9+wS0VrevcG2y4+AoM5xEHnj
	14hyJkvzhnty7jkcyWopEGpWHf4Evu10KX6q743VHzxiw+dCbwNbDWoOwJtav6vBxszWNt5Pf2v
	n5ArAEf1OXByor2ZyHGteC0fJqasxWykOywZWqTz4zaofGZ53pe6KIypxZdkzUV+GN6S59/oPPi
	lzfUSvjtwqmW3iiOvczkh4xKMJnN8NGUgidI6iOnyToV3/qXlNDe7iy+sSRAmylEC8gHn103AOx
	v0Ud1DkgQE8xLUDMy6gRkQFioXPRQ3Mmjo8ngWSVP3IfFaLGSubrXmgUJc2/W3XDjnkNvrHdqgW
	/D6b74rAYJzbDt4H5vHhNlJPy9+OjoIdKGhQZh8s7koHhD/BDhAt5pbJEACwIiHa4JOcE13NHGh
	2/yKleJl9CU0yBR0+VuzcPsypO0bYWdjbcfBIdp0ibxZGa1Fzbq64XEg==
X-Received: by 2002:a17:90b:3f0b:b0:354:a662:47ff with SMTP id 98e67ed59e1d1-359bb492e00mr579283a91.35.1772741721399;
        Thu, 05 Mar 2026 12:15:21 -0800 (PST)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-19.dlp.protect.broadcom.com. [144.49.247.19])
        by smtp-relay.gmail.com with ESMTPS id 98e67ed59e1d1-359b2db0a64sm338755a91.3.2026.03.05.12.15.21
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Mar 2026 12:15:21 -0800 (PST)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-82983c9d78aso3005019b3a.2
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 12:15:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772741719; cv=none;
        d=google.com; s=arc-20240605;
        b=ABQSWCDKtCjWZ8VaWtDTIN/LbRfvfjXnMvN7wyM+97tKsz+a2vSoZtJlwM4zoMmZyS
         //c7HpUix1aGF3Y6P4PXP4eIIpJdMmgWy5W2cd+hsHW4iUYl21+Fvz/R/rf4Tej0UbYk
         rlcMPoyQSsXi/IP0bqv/nUPBkGgQxHpyUVbkc42+Qo0S7RIerKLLdHahe72FzmLRYoU/
         BUu6nSbmtCU0a2hUMr1Xa04/aROoFlc4gjHU1w1bHF9bOMPUBICTsAqHxsX1kEn0r+jB
         ECD9vglOmuOcxGPNzmD4dino9lHjjRr5RpryXfiE3R5N+bMn7M7rKMn+oNF2EwVR/j4z
         6f1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ZLU4UxDKcX215fpR8IZeKxynEktLg1leAT0Qfka3iPM=;
        fh=Q+7f3B8I890xHciTx59tpOf47UWJ5qwhVks4GqbLvx4=;
        b=F18gXkT6BPC4g3BKcsURUV3w8plGqswbCGNDaQgP9eJNjw9U53eGBRcyAqtqvvk4oh
         HxREBMrPQG7rKs/hy1+Hd9msYFnszoqvMOEwEDxse1cOVQDs7wxYfjETK7nqMVgQZpIA
         rlkYcQDO2JraijTlQkpO6vMun0MldIyz7uc9mv8fR1x1nSCgkNX7AFi4o1myPuDEEuXi
         9KczQ9ysU75ktxvj4USzEvZdeQp00rtK0oUM+QH+uzwRy/14SU9NxHfxmwpjkRJVJtPv
         5Tz7kfxqafQp7Hfqoq+YHLgP6g+oyAO8WthtVYjc282I2145FgEsDfwbTJFLuKs+Dh4N
         8iPw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1772741719; x=1773346519; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ZLU4UxDKcX215fpR8IZeKxynEktLg1leAT0Qfka3iPM=;
        b=Lpr5chmdzA+UCpnLAN6brMF8LchRMYcK7x+KDIoWlQWqZdrYdvAnrGPBxS3Dc4pzH7
         z+93BfurcY+oRZy9VtKj3PTKjzjhmdf16nZzblHFQFgfdN2Rf2lb+zJdbNUcbIA4LYwU
         RUAJxFUo+x/7BEXwJ6K5X+W7CWWokELzYypaI=
X-Forwarded-Encrypted: i=1; AJvYcCWP/kouvWkXHhSgc1ZNAHDB8F27cXa9yctTHg8P8CvrFXcvrQmkbJXhZFupxh4uNtZqxhPIWWbebaq2@vger.kernel.org
X-Received: by 2002:a05:7022:b8c:b0:11b:88a7:e1ac with SMTP id a92af1059eb24-128c10c9716mr546672c88.19.1772741337904;
        Thu, 05 Mar 2026 12:08:57 -0800 (PST)
X-Received: by 2002:a05:7022:b8c:b0:11b:88a7:e1ac with SMTP id
 a92af1059eb24-128c10c9716mr546651c88.19.1772741337353; Thu, 05 Mar 2026
 12:08:57 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260224220407.2351692-1-kamal.dasu@broadcom.com>
 <CAKekbevZQBdvH5CCGyCDhs7ND6y65C=S3k1Aop8eh4CV5r_4aQ@mail.gmail.com> <38c0a23e-88cc-4f26-9648-fdeb9e99160f@kernel.org>
In-Reply-To: <38c0a23e-88cc-4f26-9648-fdeb9e99160f@kernel.org>
From: Kamal Dasu <kamal.dasu@broadcom.com>
Date: Thu, 5 Mar 2026 15:08:20 -0500
X-Gm-Features: AaiRm53XZhNPPi96Ac0somFmO4m3j6WMSccVLybwlqQcDsC_RIXA2i9TzPTQmH4
Message-ID: <CAKekbesOEL5kTYEq=ibsiuDoY2MGxJ6oxAkGrR6v3yQLUsLcUA@mail.gmail.com>
Subject: Re: [PATCH v6 0/3] Adding brcmstb-hwspinlock support
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: andersson@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, baolin.wang@linux.alibaba.com, 
	florian.fainelli@broadcom.com, bcm-kernel-feedback-list@broadcom.com, 
	linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="0000000000007da882064c4c98cb"
X-Rspamd-Queue-Id: 9F37C21810D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.76 / 15.00];
	SIGNED_SMIME(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[broadcom.com,reject];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[broadcom.com:s=google];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271722-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_ATTACHMENT(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kamal.dasu@broadcom.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[broadcom.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,broadcom.com:dkim,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

--0000000000007da882064c4c98cb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 5, 2026 at 2:59=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.org=
> wrote:
>
> On 05/03/2026 20:17, Kamal Dasu wrote:
> >>
> >>  .../brcm,bcm7038-sun-top-ctrl-semaphore.yaml  | 45 +++++++++
> >>  MAINTAINERS                                   |  8 ++
> >>  drivers/hwspinlock/Kconfig                    | 11 ++-
> >>  drivers/hwspinlock/Makefile                   |  1 +
> >>  drivers/hwspinlock/brcmstb_hwspinlock.c       | 96 ++++++++++++++++++=
+
> >>  5 files changed, 160 insertions(+), 1 deletion(-)
> >>  create mode 100644 Documentation/devicetree/bindings/hwlock/brcm,bcm7=
038-sun-top-ctrl-semaphore.yaml
> >>  create mode 100644 drivers/hwspinlock/brcmstb_hwspinlock.c
> >>
> >> --
> >> 2.34.1
> >>
> >
> > Hi Baolin, Rob,
> >
> > Gentle ping on this series. Patch 1/3 (dt-bindings) has been reviewed
> > by Krzysztof and all previous review comments have been addressed.
>
> Why pinging Rob? You got DT review. Or one review is not enough and you
> need multiple maintainers engaged?
>

I am good with the DT review. Rob commented on previous patches so I
added him. I just need the hwspinlock maintainer to review the other
two patches.

> Best regards,
> Krzysztof

Thanks,
Kamal

--0000000000007da882064c4c98cb
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

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
H0K0rs+X8O45xZIUJlxzf5UZex3BLi1f/H+08rSQULWEtO/ECwkFod2DIzSX7fZdz5RQ1PpziEOp
goo/JZPYIeCmgt3rIyvMuupj8Ymb0J/velhpXfQuYUM52viw2nmqVcxCwBqyM3Iq7eI4xtEOFRmR
wxSizd3MSQMf6GCHA4/B/6ttnxhGAr3utaOU+x/RnzG0gPLTW1XRAQ0+GVc/tGFdI864OG1cyrRl
GvBnHJQSAFOIKwYrUk2oFpgMbafQ6osCAwEAAaOCAdswggHXMA4GA1UdDwEB/wQEAwIFoDAMBgNV
HRMBAf8EAjAAMIGTBggrBgEFBQcBAQSBhjCBgzBGBggrBgEFBQcwAoY6aHR0cDovL3NlY3VyZS5n
bG9iYWxzaWduLmNvbS9jYWNlcnQvZ3NnY2NyNnNtaW1lY2EyMDIzLmNydDA5BggrBgEFBQcwAYYt
aHR0cDovL29jc3AuZ2xvYmFsc2lnbi5jb20vZ3NnY2NyNnNtaW1lY2EyMDIzMGUGA1UdIAReMFww
CQYHZ4EMAQUDAzALBgkrBgEEAaAyASgwQgYKKwYBBAGgMgoDAjA0MDIGCCsGAQUFBwIBFiZodHRw
czovL3d3dy5nbG9iYWxzaWduLmNvbS9yZXBvc2l0b3J5LzBBBgNVHR8EOjA4MDagNKAyhjBodHRw
Oi8vY3JsLmdsb2JhbHNpZ24uY29tL2dzZ2NjcjZzbWltZWNhMjAyMy5jcmwwIgYDVR0RBBswGYEX
a2FtYWwuZGFzdUBicm9hZGNvbS5jb20wEwYDVR0lBAwwCgYIKwYBBQUHAwQwHwYDVR0jBBgwFoAU
ACk2nlx6ug+vLVAt26AjhRiwoJIwHQYDVR0OBBYEFOV9h+N/T9ZsJ40qRxh7NYYD+N6MMA0GCSqG
SIb3DQEBCwUAA4ICAQAKtKh30wv1/30230mCimgUjMWQE/LImRmyfDgrp2IhBVS6mDun+wH8thEB
WhBHQMz3gsGixU4ZBJG72eWi39IzQ7CGnisJwA0+hsGaGg03AVtFtqo1rXYRZ81MEDOb6BPYLigJ
RsHbNmrUGR+LsGeUwOWUeRXqBrYaYFrkgHKvVK1NEewv+vUY08n4tsezO3jq0HKhVDY46bMbf8vL
oQqqhtcQvu2+5FK2jpUayeubpzPwobjEG61RIhBvM0KivY4CB2s9A7qgjL1XBycAybIvG03BbFoT
t282FqXwk9JU6YihLlt+hpzO9UF7E8GZYlQlVIZOLOvytqilhua+2h77Yy8Jz/FJyIXKuaLPtvb2
SC2shL7jF28kQbP3QUKwAig+cxwbpngnUkd9D9cXSHVq9PPwYm0A4eAO0YQ/80Uq20+gXF++g0sy
NKrrV3i0T1dbCd86miGDKvarGzjh7pdsdwNY15liGP6Orib1tnWkJcbtP1rJty4r/mbbxcK8ILO4
IvTGFG6BfjJ+La0aRt69i1fQmjUWHLwzkLNpw9cJH8/MONZcEJeDkq9WELSyy29bagStk5KHu7NO
TH65sZg+i/4qmj3DEeEGTr/Shzp4YWSNn4W7NEelr0VgDlwa7xqlwZjXxG4MIJqy0SsQlAwEXtqd
nH2FpJfzgAetkuyU6DGCAlcwggJTAgEBMGIwUjELMAkGA1UEBhMCQkUxGTAXBgNVBAoTEEdsb2Jh
bFNpZ24gbnYtc2ExKDAmBgNVBAMTH0dsb2JhbFNpZ24gR0NDIFI2IFNNSU1FIENBIDIwMjMCDEca
ZUGCu6d0oT1M+zANBglghkgBZQMEAgEFAKCBxzAvBgkqhkiG9w0BCQQxIgQgLSmWdQjIvYNUlNCQ
ggtvQWGDlj6QlPv+Nz0l57iApFcwGAYJKoZIhvcNAQkDMQsGCSqGSIb3DQEHATAcBgkqhkiG9w0B
CQUxDxcNMjYwMzA1MjAxNTE5WjBcBgkqhkiG9w0BCQ8xTzBNMAsGCWCGSAFlAwQBKjALBglghkgB
ZQMEARYwCwYJYIZIAWUDBAECMAoGCCqGSIb3DQMHMAsGCSqGSIb3DQEBBzALBglghkgBZQMEAgEw
DQYJKoZIhvcNAQEBBQAEggEAg4Zz84G6XWTuZdK0HToYA91pUK1E8UEKQS+RsL1N2vF/HlxGvyQf
08KMzLMjtRATv6kNyRtvxTVdXuPhXkXdMuTY9Pv2xk6ZpvPwVaoC5GkAyxr7oPU+ZPp0T5YvWwZM
M42ue3LjWdipE8VHoiOwDyF5630OpAUBbZqW3XUx1thw0xKyluGI2vq/RlZc8b5gzPKWxUmzrd8d
IUObsa4GKppuaOS3p8LKbQSZF0kDS0hKiaa4VMpHLid71KrJ0wm/6j6/ZGY6IeoiERtW+V9+dgja
G8cBhYz4y8Pg0/BPJ5ClZDfsmtPK58Hp7F22ds8ALEi3uMNl/ykDeFX+r3Rn2Q==
--0000000000007da882064c4c98cb--

