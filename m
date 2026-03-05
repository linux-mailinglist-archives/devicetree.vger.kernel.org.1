Return-Path: <devicetree+bounces-271700-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oMxkM4DXqWl5GAEAu9opvQ
	(envelope-from <devicetree+bounces-271700-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 20:20:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3934C21760B
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 20:20:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4BC4E3095275
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 19:18:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F78E303C87;
	Thu,  5 Mar 2026 19:18:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="gXyyQSYe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f225.google.com (mail-yw1-f225.google.com [209.85.128.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A161F7916
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 19:18:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.225
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772738294; cv=pass; b=Nzt6sGaOphrBnR+9yvvG/eFBITrRllN30FIMJmWK3cSxbuZr9T5WJkB+8Krc9hVClk8i2Jn1HNPH4RXGYZrQZvpnfZQtLQiIIIhIScgJdNj47scAURS3LQTQ38sZU+o4CEyh4+cdDfIbluzvb4sAh9VlgeXuXhyqinABbXXWFNc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772738294; c=relaxed/simple;
	bh=/dRI4cTdO+o7k/z6imFWruA9p4HJA0Thu7p8I+4Fwjk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=coAvdDIA89ZNG//nRiKwr11hypmG4Cw5idpb+yEdMfNKrS60IaRAFcmY85n7COZ7iVhl5yBsZ0acQfG14hE3uRr0oV8YZ9Mj+ppQajieAxUQgsZ9i4ZoJ8icF/ZlIe4FF+932WpBKlLpfXMEmPDiGEpAE7+lxutGJ438SGVEi5w=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=gXyyQSYe; arc=pass smtp.client-ip=209.85.128.225
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-yw1-f225.google.com with SMTP id 00721157ae682-7985d11da10so85702877b3.3
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 11:18:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772738292; x=1773343092;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BjsVhYNpCaL4+SEPYts+4bHdaKMFbpSviicFhjEl6eA=;
        b=WSGpepEFYYGBJBrlW5Lu7uaVaEko3voZaYsxX2fW/qS47ZIuwjuE/tE9RHXr1eOuJC
         a1E28zB5ji2PF9/0x7RwWeJ0n545AAJJo9kWV6QkhgsSbgsQbFFCNvezcJwDBodDjJkC
         A3Nw76xYr+jZPA2EnkQ+H+bDkwjLpWu/NmWso4ugKOB1P40NYIFryUSuM4T81N1NxiOS
         npGSJ62B/bQy+UJZByFcAGlRgQQR+akLx/erCgPlGv/WHIw5bPWfeql6Alrbcy6Ohz5s
         NXlI6oyPRG7uwXn6Wb/XbKYr+pgh45ErArNZxVeuuXcU5WHqekAwC1nqxt/tFNpcnyXo
         +xxA==
X-Forwarded-Encrypted: i=2; AJvYcCXCerbDKO436LclHvjem/p3cbc5iu2UUGdYnzYNjuQpPbquGk5N3pNHORBg0+Yjx3DL808omvF1O0Fh@vger.kernel.org
X-Gm-Message-State: AOJu0YyMxBiXE/R1GuhgSJG9TbV8SUjnK7oAJsnEwcbWjV8zxpJuD1re
	Am0rDwLP5szsezu8sqTjdA3/yb38Py4hi6wi6pyi4q4hSJ6nVnwhYTyQRw8i2DS+9mraazzANfx
	3WXTZKd8ReJWZXuYrYA5RfKjkyX+MY7mR8CUV5NeiCelUhR22A9DE5FQaHv2i2OwmKoWxa2j2pN
	RlIhgT996F6EAOukhIsRwhYx9lGgt/rLxFzIstdnCS2AUs3H8nviU5AVILuAZdrnbINasAm1QEY
	BlVBrLSDo3B0w==
X-Gm-Gg: ATEYQzyxbkLr90qgl0rEqBqoonvzcus4f/BwQAG7P7COASWJ5N/weINX4K8b7ZIlAiH
	sxxBO8nYL06hC2qplFIYI9rlv5ycmeIRgWvEiR+w27zxuEl+wCvOY64mnX89s0D6DsFqTAbNgzf
	pIKAtY0WG48IkyEPuhOhZeXn8L4kKsjdINAAqnhPYfcJI7gOmluC5Njn4E1N351Yl3+2bxCVMl3
	TKAFq+3p4+FZrzkemNTV2NYXRl2jSygwpeIdjPDWmWm1yuP52SETeYcR//OYkYB/vvyApIeAXrW
	+vwcq3wOi2bwZgYO8e0EyF8aKpl4Zqb8f01UxvOQ/sZTkqFXbg6miPLuCQOZyRAnh+SzVUoy9hS
	5CeEFPCEnQrtH03xxQjXvr68W1+xIfsTivqIRYZooq8b3PYQvne1IBBCPtB8vheJ/2UJYE8FP3/
	LHQ0wrnKuLiUBxSvC5fuo4YunK+h0sfZdA9HyrT5pMMSJcrbttIJgUxA4+
X-Received: by 2002:a05:690c:2010:b0:793:db81:f1dd with SMTP id 00721157ae682-798da403788mr8591927b3.4.1772738292016;
        Thu, 05 Mar 2026 11:18:12 -0800 (PST)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-102.dlp.protect.broadcom.com. [144.49.247.102])
        by smtp-relay.gmail.com with ESMTPS id 00721157ae682-79876ae5564sm30629767b3.9.2026.03.05.11.18.11
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Mar 2026 11:18:12 -0800 (PST)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-dl1-f69.google.com with SMTP id a92af1059eb24-126e8ee6227so14119020c88.0
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 11:18:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772738291; cv=none;
        d=google.com; s=arc-20240605;
        b=WIqPVncu7tg3aqiPdIWUDy8/l09B/WJYb2X+bdK9s8iMpCI2rdY2sTzD03d+IniRLS
         9JSBJ5Ic+PbFc/F4BS9jya12SdS2L7pOgldVYceQGukS4+s1HHXtztI5iJIUuuMRI86f
         G5dOpTaHzj3oxQp06E/okUC5jvZ9QF5Q/Up83G4YQrLyoU33QX4RAYZvdhaJ9+amEVKB
         fiov2KsWoWDc318+wg7l8jNi+/cJq6uMr8fSJr6TKhAZbl/vQ6c1I1uCmzsrl+yLaLqE
         D48wvm3FBRFTRQ+mLJX96QcOUEqqPV7SfMeEm4mW7fQYlT1u0PWXUxfrrOqbz0hSVsXP
         B68A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=BjsVhYNpCaL4+SEPYts+4bHdaKMFbpSviicFhjEl6eA=;
        fh=X7L7hAwSSySotoDN5A5Mj+jpTvATPO1kCOAQ4HFhkNI=;
        b=aziJO3J5oADgGOONZlww1sEqldtqs8mh3dxGw11UfIA+5tKoM2jVKPXhZVoTXyliE7
         kxb8lZm7/oDVY3FlRHYvm/1KDMSMWPCPIFtvkmZryPDviBXrcYTe+B1TSwdSmc+aw4KE
         XB0aALLqfOq/4GYxww1rHv6eeLc/E4Q4I92cPzLguJKG51prxl4V5p/bN4n6ST5Sim3N
         WijxrpBYGBqFvGhErIJj5I7OQtvM8N89IFaHAE9tSsk0/l2s/DNzVgUA8vUKiZ8LcIa1
         2IgmhgmOuRrMJ/XW0hTR9ydLK350MyvLgEnWPYVdKmiU/+fWfN4iYHDpDhlljyq2+zSW
         YPtQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1772738291; x=1773343091; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=BjsVhYNpCaL4+SEPYts+4bHdaKMFbpSviicFhjEl6eA=;
        b=gXyyQSYecloFP6AA5kSfp9qE88Dc4xur/DcoH/4pOv8Ae5BbCz3T/MhrrNljqt20KD
         VVD1f77PzJV4XAQwYYUFnyBeJRFM+ypzb10lQW28fM4VdBlU6Uh25I5B7K7s24rTxTah
         Q+AlJ36rvzwt5pF3E7dDjbLCCzfqbyWPE7Dt0=
X-Forwarded-Encrypted: i=1; AJvYcCV/vlSERe5Ax2PI4zmGR0RzvyU6/lDdH1F08uHhn6Qq7VLTKc8HdCnj7kCJeDwbmJBIOqs/X8fYwySj@vger.kernel.org
X-Received: by 2002:a05:7022:eacd:b0:119:e55a:9c04 with SMTP id a92af1059eb24-128c112d499mr451544c88.32.1772738290631;
        Thu, 05 Mar 2026 11:18:10 -0800 (PST)
X-Received: by 2002:a05:7022:eacd:b0:119:e55a:9c04 with SMTP id
 a92af1059eb24-128c112d499mr451521c88.32.1772738289981; Thu, 05 Mar 2026
 11:18:09 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260224220407.2351692-1-kamal.dasu@broadcom.com>
In-Reply-To: <20260224220407.2351692-1-kamal.dasu@broadcom.com>
From: Kamal Dasu <kamal.dasu@broadcom.com>
Date: Thu, 5 Mar 2026 14:17:32 -0500
X-Gm-Features: AaiRm536QDB2rICv_Un4lGUCb33AgOKdF-jto1AIVIu78d96cSbF2iwIKJyPXZU
Message-ID: <CAKekbevZQBdvH5CCGyCDhs7ND6y65C=S3k1Aop8eh4CV5r_4aQ@mail.gmail.com>
Subject: Re: [PATCH v6 0/3] Adding brcmstb-hwspinlock support
To: andersson@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org
Cc: baolin.wang@linux.alibaba.com, florian.fainelli@broadcom.com, 
	bcm-kernel-feedback-list@broadcom.com, linux-remoteproc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="0000000000001eb7aa064c4bcc67"
X-Rspamd-Queue-Id: 3934C21760B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.76 / 15.00];
	SIGNED_SMIME(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[broadcom.com,reject];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[broadcom.com:s=google];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	HAS_ATTACHMENT(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TAGGED_FROM(0.00)[bounces-271700-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[broadcom.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kamal.dasu@broadcom.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,mail.gmail.com:mid,broadcom.com:dkim,broadcom.com:email]
X-Rspamd-Action: no action

--0000000000001eb7aa064c4bcc67
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 24, 2026 at 5:04=E2=80=AFPM Kamal Dasu <kamal.dasu@broadcom.com=
> wrote:
>
> This is a standalone patch for the hardware semaphore feature for
> all brcmstb SoCs that have the same hardware semaphore registers.
>
> The semaphore registers belong to the sundry hardware block. The
> node describes only the semaphore register range carved out of the
> larger sundry block address space.
>
> The compatible string uses "brcm,bcm7038-sun-top-ctrl-semaphore"
> based on the BCM7038 SoC where the semaphore registers were first
> introduced in settop chips.
>
> The patch has been tested to work as builtin as well as a module.
>
> v6 changes:
> Addressed review comments from Krzysztof Kozlowski:
>  - Renamed DT binding YAML file from "brcm,brcmstb-hwspinlock.yaml"
>    to "brcm,bcm7038-sun-top-ctrl-semaphore.yaml" to match the
>    compatible string
>  - Updated $id in the YAML to match the new filename
>  - Updated MAINTAINERS F: entry to match the new filename
>
> v5 changes:
> Addressed review comments from Krzysztof Kozlowski:
>  - Changed compatible to "brcm,bcm7038-sun-top-ctrl-semaphore"
>    using the SoC where the semaphore hardware was first introduced,
>    following the brcm,bcm7038-l1-intc convention
>
> v4 changes:
> Addressed review comments from Krzysztof Kozlowski and Rob Herring:
>  - Renamed compatible from "brcm,brcmstb-hwspinlock" to
>    "brcm,brcmstb-sun-top-ctrl-semaphore" to use the hardware name
>  - Added description block to the DT binding YAML explaining what
>    the semaphore registers are and their relationship to the sundry
>    block
>  - Fixed typo in Kconfig "Setttop" -> "Settop"
>  - Fixed email typo in MODULE_AUTHOR
>
> v3 changes:
> Added detailed explanation in the all commit messages as per review
> comments
>  - Added description of 'sundry' ip block that the hardware semaphore
>    belongs to
>  - Added reasoning for using common compatible string
>
> v2 changes:
> Addressed following review comments:
>  - fixed ordering of obj brcmstb_hwspinlock.o in Makefile
>  - fixed ordering of 'config HWSPINLOCK_BRCMSTB' block in Kconfig
>  - Renamed BRCMSTB_MAX_SEMAPHORES to BRCMSTB_NUM_SEMAPHORES
>  - Removed unnecessary platform_set_drvdata(pdev, bank);
>
> Also addressing duplicate PATCH 1/3 sent in error as part of v1 change.
>
> v1 changes:
> based on fixes made to Initial patch:
> Link: https://github.com/intel-lab-lkp/linux/commits/
>   Kamal-Dasu/dt-bindings-brcmstb-hwspinlock-support-
>   for-hwspinlock/20250712-034624
> Link: https://lore.kernel.org/r/20250711154221.928164-
>   4-kamal.dasu%40broadcom.com
>   [PATCH 2/4] hwspinlock: brcmstb hardware semaphore support
>
> All the review comments and build warning have been fixed.
>
> Kamal Dasu (3):
>   dt-bindings: hwlock: Adding brcmstb-hwspinlock support
>   hwspinlock: brcmstb hardware semaphore support
>   MAINTAINERS: adding entry for BRCMSTB HWSPINLOCK driver
>
>  .../brcm,bcm7038-sun-top-ctrl-semaphore.yaml  | 45 +++++++++
>  MAINTAINERS                                   |  8 ++
>  drivers/hwspinlock/Kconfig                    | 11 ++-
>  drivers/hwspinlock/Makefile                   |  1 +
>  drivers/hwspinlock/brcmstb_hwspinlock.c       | 96 +++++++++++++++++++
>  5 files changed, 160 insertions(+), 1 deletion(-)
>  create mode 100644 Documentation/devicetree/bindings/hwlock/brcm,bcm7038=
-sun-top-ctrl-semaphore.yaml
>  create mode 100644 drivers/hwspinlock/brcmstb_hwspinlock.c
>
> --
> 2.34.1
>

Hi Baolin, Rob,

Gentle ping on this series. Patch 1/3 (dt-bindings) has been reviewed
by Krzysztof and all previous review comments have been addressed.

[PATCH v6 2/3]  hwspinlock: brcmstb hardware semaphore support
[PATCH v6 3/3] MAINTAINERS: adding entry for BRCMSTB HWSPINLOCK driver

Haven't received any feedback yet. Could you please take a look when
you get a chance?

Link: https://lore.kernel.org/linux-remoteproc/20260224220407.2351692-1-kam=
al.dasu@broadcom.com/


Thanks,
Kamal

--0000000000001eb7aa064c4bcc67
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

MIIVUQYJKoZIhvcNAQcCoIIVQjCCFT4CAQExDzANBglghkgBZQMEAgEFADALBgkqhkiG9w0BBwGg
ghK+MIIGqDCCBJCgAwIBAgIQfofDCS7XZu8vIeKo0KeY9DANBgkqhkiG9w0BAQwFADBMMSAwHgYD
VQQLExdHbG9iYWxTaWduIFJvb3QgQ0EgLSBSNjETMBEGA1UEChMKR2xvYmFsU2lnbjETMBEGA1UE
AxMKR2xvYmFsU2lnbjAeFw0yMzA0MTkwMzUzNTNaFw0yOTA0MTkwMDAwMDBaMFIxCzAJBgNVBAYT
AkJFMRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNhMSgwJgYDVQQDEx9HbG9iYWxTaWduIEdDQyBS
NiBTTUlNRSBDQSAyMDIzMIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAwjAEbSkPcSyn
26Zn9VtoE/xBvzYmNW29bW1pJZ7jrzKwPJm/GakCvy0IIgObMsx9bpFaq30X1kEJZnLUzuE1/hlc
hatYqyORVBeHlv5V0QRSXY4faR0dCkIhXhoGknZ2O0bUJithcN1IsEADNizZ1AJIaWsWbQ4tYEYj
ytEdvfkxz1WtX3SjtecZR+9wLJLt6HNa4sC//QKdjyfr/NhDCzYrdIzAssoXFnp4t+HcMyQTrj0r
pD8KkPj96sy9axzegLbzte7wgTHbWBeJGp0sKg7BAu+G0Rk6teO1yPd75arbCvfY/NaRRQHk6tmG
71gpLdB1ZhP9IcNYyeTKXIgfMh2tVK9DnXGaksYCyi6WisJa1Oa+poUroX2ESXO6o03lVxiA1xyf
G8lUzpUNZonGVrUjhG5+MdY16/6b0uKejZCLbgu6HLPvIyqdTb9XqF4XWWKu+OMDs/rWyQ64v3mv
Sa0te5Q5tchm4m9K0Pe9LlIKBk/gsgfaOHJDp4hYx4wocDr8DeCZe5d5wCFkxoGc1ckM8ZoMgpUc
4pgkQE5ShxYMmKbPvNRPa5YFzbFtcFn5RMr1Mju8gt8J0c+dxYco2hi7dEW391KKxGhv7MJBcc+0
x3FFTnmhU+5t6+CnkKMlrmzyaoeVryRTvOiH4FnTNHtVKUYDsCM0CLDdMNgoxgkCAwEAAaOCAX4w
ggF6MA4GA1UdDwEB/wQEAwIBhjBMBgNVHSUERTBDBggrBgEFBQcDAgYIKwYBBQUHAwQGCisGAQQB
gjcUAgIGCisGAQQBgjcKAwwGCisGAQQBgjcKAwQGCSsGAQQBgjcVBjASBgNVHRMBAf8ECDAGAQH/
AgEAMB0GA1UdDgQWBBQAKTaeXHq6D68tUC3boCOFGLCgkjAfBgNVHSMEGDAWgBSubAWjkxPioufi
1xzWx/B/yGdToDB7BggrBgEFBQcBAQRvMG0wLgYIKwYBBQUHMAGGImh0dHA6Ly9vY3NwMi5nbG9i
YWxzaWduLmNvbS9yb290cjYwOwYIKwYBBQUHMAKGL2h0dHA6Ly9zZWN1cmUuZ2xvYmFsc2lnbi5j
b20vY2FjZXJ0L3Jvb3QtcjYuY3J0MDYGA1UdHwQvMC0wK6ApoCeGJWh0dHA6Ly9jcmwuZ2xvYmFs
c2lnbi5jb20vcm9vdC1yNi5jcmwwEQYDVR0gBAowCDAGBgRVHSAAMA0GCSqGSIb3DQEBDAUAA4IC
AQCRkUdr1aIDRmkNI5jx5ggapGUThq0KcM2dzpMu314mJne8yKVXwzfKBtqbBjbUNMODnBkhvZcn
bHUStur2/nt1tP3ee8KyNhYxzv4DkI0NbV93JChXipfsan7YjdfEk5vI2Fq+wpbGALyyWBgfy79Y
IgbYWATB158tvEh5UO8kpGpjY95xv+070X3FYuGyeZyIvao26mN872FuxRxYhNLwGHIy38N9ASa1
Q3BTNKSrHrZngadofHglG5W3TMFR11JOEOAUHhUgpbVVvgCYgGA6dSX0y5z7k3rXVyjFOs7KBSXr
dJPKadpl4vqYphH7+P40nzBRcxJHrv5FeXlTrb+drjyXNjZSCmzfkOuCqPspBuJ7vab0/9oeNERg
nz6SLCjLKcDXbMbKcRXgNhFBlzN4OUBqieSBXk80w2Nzx12KvNj758WavxOsXIbX0Zxwo1h3uw75
AI2v8qwFWXNclO8qW2VXoq6kihWpeiuvDmFfSAwRLxwwIjgUuzG9SaQ+pOomuaC7QTKWMI0hL0b4
mEPq9GsPPQq1UmwkcYFJ/Z4I93DZuKcXmKMmuANTS6wxwIEw8Q5MQ6y9fbJxGEOgOgYL4QIqNULb
5CYPnt2LeiIiEnh8Uuh8tawqSjnR0h7Bv5q4mgo3L1Z9QQuexUntWD96t4o0q1jXWLyrpgP7Zcnu
CzCCBYMwggNroAMCAQICDkXmuwODM8OFZUjm/0VRMA0GCSqGSIb3DQEBDAUAMEwxIDAeBgNVBAsT
F0dsb2JhbFNpZ24gUm9vdCBDQSAtIFI2MRMwEQYDVQQKEwpHbG9iYWxTaWduMRMwEQYDVQQDEwpH
bG9iYWxTaWduMB4XDTE0MTIxMDAwMDAwMFoXDTM0MTIxMDAwMDAwMFowTDEgMB4GA1UECxMXR2xv
YmFsU2lnbiBSb290IENBIC0gUjYxEzARBgNVBAoTCkdsb2JhbFNpZ24xEzARBgNVBAMTCkdsb2Jh
bFNpZ24wggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQCVB+hzymb57BTKezz3DQjxtEUL
LIK0SMbrWzyug7hBkjMUpG9/6SrMxrCIa8W2idHGsv8UzlEUIexK3RtaxtaH7k06FQbtZGYLkoDK
RN5zlE7zp4l/T3hjCMgSUG1CZi9NuXkoTVIaihqAtxmBDn7EirxkTCEcQ2jXPTyKxbJm1ZCatzEG
xb7ibTIGph75ueuqo7i/voJjUNDwGInf5A959eqiHyrScC5757yTu21T4kh8jBAHOP9msndhfuDq
jDyqtKT285VKEgdt/Yyyic/QoGF3yFh0sNQjOvddOsqi250J3l1ELZDxgc1Xkvp+vFAEYzTfa5MY
vms2sjnkrCQ2t/DvthwTV5O23rL44oW3c6K4NapF8uCdNqFvVIrxclZuLojFUUJEFZTuo8U4lptO
TloLR/MGNkl3MLxxN+Wm7CEIdfzmYRY/d9XZkZeECmzUAk10wBTt/Tn7g/JeFKEEsAvp/u6P4W4L
sgizYWYJarEGOmWWWcDwNf3J2iiNGhGHcIEKqJp1HZ46hgUAntuA1iX53AWeJ1lMdjlb6vmlodiD
D9H/3zAR+YXPM0j1ym1kFCx6WE/TSwhJxZVkGmMOeT31s4zKWK2cQkV5bg6HGVxUsWW2v4yb3BPp
DW+4LtxnbsmLEbWEFIoAGXCDeZGXkdQaJ783HjIH2BRjPChMrwIDAQABo2MwYTAOBgNVHQ8BAf8E
BAMCAQYwDwYDVR0TAQH/BAUwAwEB/zAdBgNVHQ4EFgQUrmwFo5MT4qLn4tcc1sfwf8hnU6AwHwYD
VR0jBBgwFoAUrmwFo5MT4qLn4tcc1sfwf8hnU6AwDQYJKoZIhvcNAQEMBQADggIBAIMl7ejR/ZVS
zZ7ABKCRaeZc0ITe3K2iT+hHeNZlmKlbqDyHfAKK0W63FnPmX8BUmNV0vsHN4hGRrSMYPd3hckSW
tJVewHuOmXgWQxNWV7Oiszu1d9xAcqyj65s1PrEIIaHnxEM3eTK+teecLEy8QymZjjDTrCHg4x36
2AczdlQAIiq5TSAucGja5VP8g1zTnfL/RAxEZvLS471GABptArolXY2hMVHdVEYcTduZlu8aHARc
phXveOB5/l3bPqpMVf2aFalv4ab733Aw6cPuQkbtwpMFifp9Y3s/0HGBfADomK4OeDTDJfuvCp8g
a907E48SjOJBGkh6c6B3ace2XH+CyB7+WBsoK6hsrV5twAXSe7frgP4lN/4Cm2isQl3D7vXM3PBQ
ddI2aZzmewTfbgZptt4KCUhZh+t7FGB6ZKppQ++Rx0zsGN1s71MtjJnhXvJyPs9UyL1n7KQPTEX/
07kwIwdMjxC/hpbZmVq0mVccpMy7FYlTuiwFD+TEnhmxGDTVTJ267fcfrySVBHioA7vugeXaX3yL
SqGQdCWnsz5LyCxWvcfI7zjiXJLwefechLp0LWEBIH5+0fJPB1lfiy1DUutGDJTh9WZHeXfVVFsf
rSQ3y0VaTqBESMjYsJnFFYQJ9tZJScBluOYacW6gqPGC6EU+bNYC1wpngwVayaQQMIIGhzCCBG+g
AwIBAgIMRxplQYK7p3ShPUz7MA0GCSqGSIb3DQEBCwUAMFIxCzAJBgNVBAYTAkJFMRkwFwYDVQQK
ExBHbG9iYWxTaWduIG52LXNhMSgwJgYDVQQDEx9HbG9iYWxTaWduIEdDQyBSNiBTTUlNRSBDQSAy
MDIzMB4XDTI1MDYxOTA4NDAzN1oXDTI3MDYyMDA4NDAzN1owgdExCzAJBgNVBAYTAlVTMRMwEQYD
VQQIEwpDYWxpZm9ybmlhMREwDwYDVQQHEwhTYW4gSm9zZTEZMBcGA1UEYRMQTlRSVVMrREUtNjYx
MDExNzENMAsGA1UEBBMERGFzdTEOMAwGA1UEKhMFS2FtYWwxFjAUBgNVBAoTDUJST0FEQ09NIElO
Qy4xIDAeBgNVBAMMF2thbWFsLmRhc3VAYnJvYWRjb20uY29tMSYwJAYJKoZIhvcNAQkBFhdrYW1h
bC5kYXN1QGJyb2FkY29tLmNvbTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBANYnWmzR
GGguz2PH40SpHaw/tESF4nlf3YYuxXpp0U9KEiIPEDcrxS6lcojBW16h3RppkY+lAbs0mzfPKysT
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
ZUGCu6d0oT1M+zANBglghkgBZQMEAgEFAKCBxzAvBgkqhkiG9w0BCQQxIgQg0jF7kkCJeO6HCfzy
seYILafFajwCB9QmfD3bu/6RT/EwGAYJKoZIhvcNAQkDMQsGCSqGSIb3DQEHATAcBgkqhkiG9w0B
CQUxDxcNMjYwMzA1MTkxODExWjBcBgkqhkiG9w0BCQ8xTzBNMAsGCWCGSAFlAwQBKjALBglghkgB
ZQMEARYwCwYJYIZIAWUDBAECMAoGCCqGSIb3DQMHMAsGCSqGSIb3DQEBBzALBglghkgBZQMEAgEw
DQYJKoZIhvcNAQEBBQAEggEAGZ6aQqg88rKpQ7A2LYdXh7Y8pKStwHjAOgnWooyaQ9g76HSV85hA
WNuW8S2901BS64g9fV4/TFbglMn6z0vhqD8aI9chyEWoydbR4B9alM9CMJ/T/ND3iuNy2C3Tlt0Y
qHu+Oby1i1T2qMQoxK9Woz6yLBdJ7sKwbgyZZcppNymEr9j1NWw1uGpZ+fhYSsmRPxBww2dZ7+UJ
+Kwz8608fC6t6oL/jMLwVielEOOq66g27zgJkomG64rMb9eZ6VTbG8ZBjhgyjWZI74i+zMn0Ws+b
RardHeqKKoUA/p5xva8roqvN7tG7nwUuSnTjAnG2mbjOqMbn9hP1CQni8oB2RA==
--0000000000001eb7aa064c4bcc67--

