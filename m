Return-Path: <devicetree+bounces-274417-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CPHcC+hCsmlFKgAAu9opvQ
	(envelope-from <devicetree+bounces-274417-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 05:36:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id BFACC26D24A
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 05:36:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 748A13037C22
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 04:36:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE018396598;
	Thu, 12 Mar 2026 04:36:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FMjyh3dt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99721397682
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 04:36:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.219.45
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773290208; cv=pass; b=r/tsvlDDgULvc+1ErtcEfz70xD7wHzJtvbGsTjFZjLeVTD8Ka9WnNAZ9XfsrZ39DpLI/SDjjPcSIRwf+Xxkl2u7/W9k8bvruD8ZQBzTVjumj3p/Amem1I2GYRiOfngplSv07asow7YqwMlRV28IyeXkJkI4QYI1BydhNzzGrVi0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773290208; c=relaxed/simple;
	bh=cr6QRlE97B26XWoApElcaPZVstrR5FuQHwzvCKtLY3s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tHadG1o435qutFGQitXEpLKp9bUNwRuXg82uBvaQKWqZuoQ5FRiefCcbBYuz6o5TB0+LDf9Py1pFkHvTllXmtDwYgpj02YS/ecnZTcNQY5ApSMMptDcRJisx7sdMf66h446hPsCvuY76HKW0EJ7yPnNvZhZWXRAc6ECXcbMuM9E=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FMjyh3dt; arc=pass smtp.client-ip=209.85.219.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f45.google.com with SMTP id 6a1803df08f44-89a0ece9f14so7246026d6.3
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 21:36:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773290206; cv=none;
        d=google.com; s=arc-20240605;
        b=J4UXo9f4qf1PFfTkO5j8Poeck/PXeyNcpo+/N+hwlqsbIa3oe2Y9iqVB1QTLwCAoME
         awpO4UClR3RkXYq/5mt4rE9YjvYyA5qNo0qkLPEs89Gx0BafgM4mFvha1K7SjmziBv5c
         bXRNtCOpVVieCwp8K5w18mzi2giIMp0bptZr4GluFV4BbGPjVeoOoJ4cvUCCNrA7m4vz
         Fp5WcI1TuAOLjb7xPlnHR+7818fduT+EdwTftDs4eBRHtDI/A8DWxV7Pu2HsMCbBTHRK
         PEzSGNBtcsB4m06ZL5tUN7URd9lC/C4mtJTyS3jMr3MVCJ4HYbGDcR4uJKbFc0+wAFG3
         mu5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=cr6QRlE97B26XWoApElcaPZVstrR5FuQHwzvCKtLY3s=;
        fh=2n319zc/IKjnt2nByAXSZPryITzJmFJz3hYqsvCEIGI=;
        b=I6LfcnF2Tzo5V6EGhzfvwiCSisKl56k6DrOoC0LrtO4N4NdqnoPLkz1Hx/W2oc01NR
         X8AGC1i6jN2EipPXNd1orT4wjr12pnYQUBlbtfmpdv6QyK9A7ZHCzZi8PZqgraKLSFX9
         bjjVYUos9PMatusMZBxFIQNqh6CABaW4odBbCVT7N4ptWheJtqJvdwtEUWghSg4GYI8G
         hKlW08IxQFt4uGb7VbpPjzyHzT601HbSOX+t7zSCXZ86LhdymWby0jSB0Sc8RiJh1u7F
         AnY6hHWK3BAJque/ZIzBXb4wmIBBhpePhtFhchJWl0VtmUc7JVVDKgugr61S1HJ14Esg
         iFzw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773290206; x=1773895006; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cr6QRlE97B26XWoApElcaPZVstrR5FuQHwzvCKtLY3s=;
        b=FMjyh3dtN2oHj3I54Kqz02eZJ6i0M6hL5EOEoYhXDU8JpNxQ1J+qFlpWaKwkTl7vtT
         Yb+R/ycqDtA1Xy4h74UGCZ9pjOXIookwQSpsQ07REkWnK6EqOj6BvoL467537iMvR+af
         pbNOQ2JQ87o/VX0HBiM4BRO9tnIDeFmo4dHp79RIftZEkNYqZmyZ9LLpdzLyTjwpLZAx
         BMjudBbjG8qbIQCWrtsLNo480tH3XZwwCsbe2b+jfHm6UZweq/wf6LBOOOyYiQbQVOV1
         ilIajVyEOz2HpgB0yUTbbfRgTn+SDtY3KXqcvOLZPzJWyPhnNGCHMM0W0CTtOY8dgeUs
         a8YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773290206; x=1773895006;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=cr6QRlE97B26XWoApElcaPZVstrR5FuQHwzvCKtLY3s=;
        b=OYgcEeGyVi7K5IVTqfe/QuD95fTjGdF3+X1y71BtGUg7uMxGjxjnLwx5OQxQjaYdLX
         U/Rh60b0pIKbuqkcGRJmt68enQgwc3OAADW4+SjIAa+7Kv2YMktYu2ZwYr5RkcXNuoMI
         EDu8gXWPivZ+/Nq4CVEU8ZNK65bzN7uSB5H6wkPoxIVzUg/j3gDS9JwNghP568B/TtLg
         N4Wu+NomSDsXqXje/wrKHLsQ3wsat/1uy8P6xTWK5me9AA0nSh/XYFBnzdns4yI0rgXG
         d3UoCwvVlW9UCtAq2PkVlSwAV4FixgG5Px/aE5XU9l/PCLDePEvQ7QXecPCMqF1rdPIA
         7T6A==
X-Forwarded-Encrypted: i=1; AJvYcCXkJoyx1XfkEDHVSZw+Wdg2+F4in7XnpVYQdY9tL+25NgQIvLSWnAk5ECLHWlK4W2pz8OMEyVmGTlFG@vger.kernel.org
X-Gm-Message-State: AOJu0YwJKud+xWBpRPCk6o/LZ7XU0h5j7oc5pxe03hSnVkKo4gKEedzc
	k7xtSeznTjMZp39LXzH8Vhv2PC0Q6lHW5N79MrplddTRhXlRbxsMWODXrCGqGl2ySi7M+42E2yk
	4Le7E7esfyMN8YgC/gCNYmHdiYb0CZXc=
X-Gm-Gg: ATEYQzzRJI/oOmyk2CJCPu9WsbPU1Ew8opZPJr3sUn43WCqWFWzMw5KeViOhdkTL1OC
	OIx0o3WOn8YOd/GPbsD4nEC3dbz6lOvyZB4tY49E3/3iR16fK3CVs1Q9we5iBcNqDo9q6viRwYw
	LZi4sc0dTPdEp5ZjNN45xBMZevtM3Bw52eZIPWuBb7qIXWGd4pDlr4sTA+K31SPDhDJzwFm4nQy
	oWyYeMBJCflsDQBvrxAuEix3K6NuVvpKhS4IJ3WGKBaRNSHt93RL526EP++m++mApqedOq8nFUJ
	C8B0TYgKl6l982OPwP2AqoUXpQ==
X-Received: by 2002:a05:622a:1921:b0:509:17e4:ceff with SMTP id
 d75a77b69052e-5093a0c6df7mr62767181cf.31.1773290206588; Wed, 11 Mar 2026
 21:36:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260304192417.818211-1-akkun11.open@gmail.com>
 <20260304192417.818211-3-akkun11.open@gmail.com> <94465ca7-b3dc-4736-9d58-4024f2494e54@collabora.com>
 <CAKr_iV5cmE-GBp679Q-=bZi+186BvMvD41ctxnxNC3mTKEzuRw@mail.gmail.com> <0994fef0-88f2-4277-aa46-0b6a33c53bfa@collabora.com>
In-Reply-To: <0994fef0-88f2-4277-aa46-0b6a33c53bfa@collabora.com>
From: Akari Tsuyukusa <akkun11.open@gmail.com>
Date: Thu, 12 Mar 2026 13:36:36 +0900
X-Gm-Features: AaiRm52b3iO4YllKLxTy076zO5CoI8gqzYjvZNNALgsMyNPOjlsY9BPqBID541M
Message-ID: <CAKr_iV6tVkT1be8EjXoNjMerTek0s79W2-n2shzt-wrmB1bYgA@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm: dts: mediatek: mt6589: add basic support for
 Lenovo B8000-F
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	matthias.bgg@gmail.com, sean.wang@mediatek.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274417-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,mediatek.com,vger.kernel.org,lists.infradead.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akkun11open@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	FREEMAIL_FROM(0.00)[gmail.com];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: BFACC26D24A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 6, 2026 at 11:06=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
> Ouch. Well, it's mostly done then, hopefully sooner than later :-)

Thank you for your consideration.

> > - PWRAP and MT6320 PMIC RTC
> Start upstreaming the RTC (and MFD parts) right now maybe?
> That all depends on the actual state of things, of course.
>
> Remember that you can upstream whatever is clean and works fine, that doe=
sn't
> have hard dependencies on other components.

mediatek,mt6397.yaml says that "regulators are needed",
so I have to complete the regulator driver.
It will be completed soon.

> > - Power Domains (scpsys)
>
> The power domains should be handled by mtk-pm-domains.c - not sure what y=
ou wrote
> but if you did it on mtk-scpsys.c that's wrong.

Ohno! I wrote in mtk-scpsys.c, thank you for telling me about this.

> > - eMMC/SD (MSDC)
> I can confirm that the MSDC controller in MT6589 will work with mtk-sd, t=
here may
> be some very small modifications to be done.... if any.
> The mtk-sd driver does support "very old" SoCs already :-)

I forgot to add "CONFIG_REGULATOR_FIXED_VOLTAGE=3Dy".
SD is working and can boot from it.
However, increasing the frequency causes errors,
so adjustments are necessary.

> Keep up the good work!

I will continue to do my best!
Further news will be sent via patch.

Best regards,
Akari

