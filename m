Return-Path: <devicetree+bounces-260797-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uO/ALXMqe2kyCAIAu9opvQ
	(envelope-from <devicetree+bounces-260797-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 10:37:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F149AE321
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 10:37:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0DE9F30166E6
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 09:37:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E9E237FF5A;
	Thu, 29 Jan 2026 09:37:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IupRH+bC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD419374192
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 09:37:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.215.169
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769679469; cv=pass; b=mTgO3dDttaGvatnxCrEEhRSJ5VEm8Nfmij5ylJeWWvw+iS7SeEI13ut1yi4CgDeADRMO65oTBMBXvMbtBWicZVjoWt1lgRA7HRT7F3s/vXgDF1/qI+WTNQCSBhGureZ/A2k1zuAh7xvADowzxW5tTliEluWxku1HpIV6InZH788=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769679469; c=relaxed/simple;
	bh=zcM05kpdQ+n6MUDgSMAvFhhgb3WvkgEVy1gJ+6lV2Lk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kBwPbDq+gybrtpxRRq0QIt/319HSLmmjbnWM5mkYnKiubz4tbewKpMCjV63JGafH8eIARf9u8WAim1Z7aEi+QKM1AS/3KHbXMDh0KGroUPSWnnFijysBL8R4kVRfX9bT22a4oQQI+a0w7RqWho8rlph0kjmjjHCTsTvemh66t3Q=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IupRH+bC; arc=pass smtp.client-ip=209.85.215.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f169.google.com with SMTP id 41be03b00d2f7-b6ce6d1d3dcso297759a12.3
        for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 01:37:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769679467; cv=none;
        d=google.com; s=arc-20240605;
        b=Fx8jMLxjmabMiBiChfkwbaaaNhknIgal8oUweCdOyKYd9cQSz5D4w2zlmv5EuNCZuV
         Yq0oan+glweeQ9tj4SV3afnOeBXMbM5Kb7bSyAKqGeSpbRnd2gEf0NtZfRpaZGH7i33p
         VDS7n+vj9Zg27u560n/xJcd15XqJnRSPLMZZPfs0KG1LRwveAGKIY++yoHqCq+bIYx0a
         w59ofAknzcs0nI2PclrsnuOaV3Qt7sMRZljNYEr6BlILo053zQ+mOICxHhFlbCclDicp
         OEx865csGoBciJQLCLUeBn53vUYywuw29APEyzPf1U/wvgZUvzE+w6xXMSX9vXp+0CYI
         /p/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=4lU8GWlv78rS676V94HHH4zs90Fwj2GtCQjzXirgDFE=;
        fh=79MITJ1+9BENUwz/ugqln2i7oTuPx2B3B30PKNWJZQY=;
        b=RqfhoBZor/QhqO6cIelkUInRfK0A4KE/LL0bGTcIRtO+t8BP16OZr/IrX5CwoZtWA6
         1g3YPLC05YB/2XJ598jZ1DlT98aft0GU6DiKTfTVmH++Z4RMDJhV3gFXYKXtFDwlApOb
         QAvLcKPK/6kTPAMf4eYNONrqUqOR3Ct1M2qiFbPw4fZH3wyF78BSDkbkVyJMgVQh2hx9
         Avjgsb43zkKIDUUCRTVQHcfC3kKTI5qK9kmvjGh5lRp/CEu5MTQQ50VjB+OmuxU+epdh
         1Qpunw6/JtrVOrz2Bi8tA3EtcAWAlFS50Uj/n9UKRDniKhFrBOcQHvEAGg1ZKy42C1NK
         3wKg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769679467; x=1770284267; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4lU8GWlv78rS676V94HHH4zs90Fwj2GtCQjzXirgDFE=;
        b=IupRH+bC7ADXceaiuWcRMEqTYyuuwhAxQTdXZfoClNcyIngWwnlSGH2eW9R3dJQMLt
         uQODnWTkt70DBRonwuIBb/MFzzyvD1uB16tc3+Nx62ewnMX0WJrQ2rFDHQKrwaOhp4EU
         BeJ64piEsAKb3icYfW0n4PT89JJKN5cf4RCqyk1tN2V7GnetIXofufD1U+D4EHDLJ70C
         xKz6qeWdVTxARg2uFUWVh/lVzMUZK5oSSOKvjCoufsEagm30kjvQK7GAp9gR+a+qbeud
         WnAE8y1uZbKzMOFTvFwQiw/cMds4vpozYFE4TkkF9SkA2aV8kB7wnSFMY3HIYOVbBGyo
         w39g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769679467; x=1770284267;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=4lU8GWlv78rS676V94HHH4zs90Fwj2GtCQjzXirgDFE=;
        b=ktCrUrIu01r92GO0ay22NgBljIQiuM0GjeyoYI4y0EMU7BO44QCpO877+djCNG05C1
         mzegugZNQ6G8iR4EmS1EaIpu71C6em6yU5B4yLypejXAG8fSx94gHi1c6rJID6BO1InR
         VHKgezh3YBReznhdh7UObk0IeYxmqxCH53+yRI9h0rdntUv22hEHRr7uFSOwKvqHpi9j
         8mTC5+3P0RxxxaasUuoxkVd+z+ekRpjCK6sUvzXPadiXEgudGiSNlUefLDxmF3rqQ0xG
         3UepQmVP1ZSJHo3gC/ZfiHKaEzqfcDSE8OIy+sx+sWUeNn9IAOMXx46RIp+daZYMZsfD
         y17Q==
X-Forwarded-Encrypted: i=1; AJvYcCVEcTLsyb14WrjW9ncneG5fvE+/D/AQetYKM22nFEvZLY1Md6BqBGABuIlvCt3Rjp4Ozqc5xcp0SmOj@vger.kernel.org
X-Gm-Message-State: AOJu0Yx19+NmSqa5svwqJ6r6NBaC7IMgymJpXjYmSuXcJcbx9uOevQAj
	/BLgLvU48+u2IcY/uXBN0yGfIaBzQPTimOYoqT5a5tPwFKRrdgEgd+JfWhDgnepDWfnpQ39mHI0
	Adny8W/ifrBFkpjLic3ebpzKS9p6IpZ8=
X-Gm-Gg: AZuq6aJmyL11Ydh1fZnJGmKq14YZH++vB8L+4NZbxmts9y8JmSaSwcDAhfIOlQSte/T
	vaI12SuyVbp5g6GZixNPAIvRj4API7AapsIGXaQkEkDPOGLkCI0VkqvOYKF1mPX8Q2oBFGPIo3/
	2WRLFLeH65YEIt3Z/sVro4ggnfM9AunLAZtoRPGKOcUlPtJp+cBC8I8pYNjLEOh4ak3OrDueTP8
	5tgbu8PnB07SLUtRaMDDv6Wmz5KgeK+wvWZtd6qXghdqjbxExW+z6zVft7YhjakPYWqKgE=
X-Received: by 2002:a17:90b:1f8b:b0:352:c9c9:75b8 with SMTP id
 98e67ed59e1d1-353feda27ddmr6746159a91.36.1769679466914; Thu, 29 Jan 2026
 01:37:46 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260128071853.2602784-1-shengjiu.wang@nxp.com>
 <20260128071853.2602784-4-shengjiu.wang@nxp.com> <7e34b098-bdab-448e-a34a-02bdc643f700@oss.nxp.com>
In-Reply-To: <7e34b098-bdab-448e-a34a-02bdc643f700@oss.nxp.com>
From: Shengjiu Wang <shengjiu.wang@gmail.com>
Date: Thu, 29 Jan 2026 17:37:35 +0800
X-Gm-Features: AZwV_QjhsaT3WGqHFWhY63rZWE_xfRO_5posf7-8hnrbY9543Mu3MY60Z30GXKk
Message-ID: <CAA+D8APbzGCSHOwGyBZjf1TYqo2K0s0dvoLjHS+FsT_RLGrb2w@mail.gmail.com>
Subject: Re: [PATCH 3/3] ASoC: fsl_asrc_dma: allocate memory from dma device
To: Daniel Baluta <daniel.baluta@oss.nxp.com>
Cc: Shengjiu Wang <shengjiu.wang@nxp.com>, lgirdwood@gmail.com, broonie@kernel.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, shawnguo@kernel.org, 
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com, 
	linux-sound@vger.kernel.org, devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Xiubo.Lee@gmail.com, nicoleotsuka@gmail.com, perex@perex.cz, tiwai@suse.com, 
	linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260797-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[21];
	FREEMAIL_CC(0.00)[nxp.com,gmail.com,kernel.org,pengutronix.de,vger.kernel.org,lists.linux.dev,lists.infradead.org,perex.cz,suse.com,lists.ozlabs.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shengjiuwang@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,nxp.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 2F149AE321
X-Rspamd-Action: no action

On Thu, Jan 29, 2026 at 5:22=E2=80=AFPM Daniel Baluta <daniel.baluta@oss.nx=
p.com> wrote:
>
> On 1/28/26 09:18, Shengjiu Wang wrote:
> > As the dma device may support dma-coherent property on the i.MX952,
> > allocate memory from dma device to make asrc driver to be compatible wi=
th
> > such a case.
>
>
> This commit message refers to imx952 but the change in the code apply to =
all supported platforms
>
> So in not really clear what is the intention of it.

The dma-coherent property is used to indicate a device is capable of
coherent DMA operations.
Which is applied to the EDMA device on i.MX952,  in order to support
such EDMA device,
the memory is need to allocated from DMA device,

The code change is compatible for non dma-coherent and dma-coherent dma dev=
ices.

>
> Also, it is not clear why do you allocate a pair only to free it at the e=
nd of the function.

As the comment in the code says,  it is to get the dma device handler
for memory allocation
. After that, it is freed.

best regards
Shengjiu wang
>
>

