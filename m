Return-Path: <devicetree+bounces-258604-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aDGMOU9ncmmrjwAAu9opvQ
	(envelope-from <devicetree+bounces-258604-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 19:07:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 828816BFA1
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 19:07:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 75F603029E4C
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 18:04:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B6BE322B61;
	Thu, 22 Jan 2026 18:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UcNfPHvw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EF72274FDB
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 18:04:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.41
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769105069; cv=pass; b=PZ2QTIflp75ClKItOZqBRXMbTK1K+0AXX4YILI9luTo97dbmYwSVgqoyaiZ471Ap8HUcTy6V004IOA2NifDgY4iqqS6SfdPh9XjXt8ezCsRundd9pB6ujH3dhTZ28N3SKdEeLrZKM24tr+aCxom6VOfvviWvAv8ViSoV81NdCnU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769105069; c=relaxed/simple;
	bh=JoJqK6ZMjXBJh/XZxPRXUeBhD4yr+ijhekfGT0tzlJk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mtSzYcyma3sEqRiVQYxJjgM+gr5U293sY/71ob+Auh01UWz/mmofker0JVJhfspl74JWO4vgXCtKx3z+8+93SWxXqftEXtLQVX2kCXtqeiO5EGrhiAyw7mXe7dnItQ+auRmGoatY6jxnSz62gG7NQqUJD645m10DWCWHDslSF7U=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UcNfPHvw; arc=pass smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-59b6d5bd575so1178719e87.1
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 10:04:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769105054; cv=none;
        d=google.com; s=arc-20240605;
        b=lukBZInbQWakXMGFpJoENVGBpOjeiieIhZj0CitMBH+savjPeN8ZEIctgHUKbWzMh1
         8g9LHdVkNodJpGe++fvDy3cUiHiBYi0ynN73pmlEN3iMXrbfo+QpEnITKojBSRzhs1kl
         0bIjagUmbxKUslEsbGokmGDuhDfo+TP3OxzoD8aOnxxYUkMYr4cpDHFiJtROuQoZWavK
         rs59X5+F1oA5Mlxp+zI4rJNiAVDznHIoOMqTqcY1PfvPVv9ziDdtP/ezaoNrwYbhqqyd
         YwN10u4osojQhQ3rr3xBLIaTjkQ/ntgNkPZQBU8FyODX0NX24v+QN/Q0jj2lOvrZkCil
         ZcZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=1dAdnI02pT5EuloFaObahJw7pcpTRooaOZFcQF4dsRc=;
        fh=dnQLiB9c9eSkTWr2oV3EBORh/NbbZudqe+zxv8kZBUY=;
        b=MEnE8jLNwnyasplD0sMHGgbyhVTpjUbpeC7POSfxnY4C6QfEDyqCEAh/J2i7ZTBB3N
         HRnO1KQtaXSBmXaeYJpxpB6FHiEUIpodcNc++kHA8+pHT2FojO0fAphy6RZe9Gxj8qp0
         ehkf88/n0aoBZBRYkVJtMASIls6pMk5LG8dayQPjCdOss5OzMT5sP8SboW7/APq8vzRs
         GCDgkWsmA41Z5gcNAyzZhw9GJ1ncuj3o4x0wwNgyDxQIw5AMw2/66sza5qqVg/KrZQPM
         OXyvShpCrlTHOzhXyDNO9fMXmODHORkJrmbD27g1RdCakBo3bmWTwIk860gBldb2w7uQ
         fPNg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769105054; x=1769709854; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=1dAdnI02pT5EuloFaObahJw7pcpTRooaOZFcQF4dsRc=;
        b=UcNfPHvwthfAkHTUj1Epxq0cIarHw3rNWTwVAe1VGU+BLEXOkkA+kjUlqRiPMDs13G
         r0pXd8j21YV7sZe07ICWpqsl/2sjkQl31CoEaI2ZLVH5+DW/ZpTFiXonSpqOjrwIqdjw
         jhj59cqA4DYhtIZsDELGC5eqQj3dwVKcplinjAhYxMDWNHVekUzTlh6Wemh/XJyf8A2A
         grF9EOtUZvNWfBtCpDhdZXsyijQTBmh0ARm8NNsZs17J6tgmDAqzKD7cA5hc9WK8svSe
         uBGHhLfZohoS71lR8iHlsujYo9FW5+MLEPv02fqjd2V0OxwXKmHWIQYLrxDjAUaNr4do
         lczw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769105054; x=1769709854;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1dAdnI02pT5EuloFaObahJw7pcpTRooaOZFcQF4dsRc=;
        b=ZiHZZZ6+k+euOvzngDq8px/cJqSqgxgiz0KcrLu45l1wluYhy0vNzcfbniJY+wH97L
         zZjFxfoI2qEXB1aEZspL3CaZzvYEbMv97avAvbNUi3lKc+IzdQI/cftpVc0OH8E3Qxdy
         cHhxHQCj4wluKQptEgbmmn9m9cRHHsKYcUQnF3uiEfnW6dwBwl2BkUm0hIjwpPkekW0P
         KalmjnHbGW48VmvWMX8ikXDB3Uu6jXxdlQaMyCJBzzT7g/+bx/4bjscadRCw6LBCSRxV
         JEfxDSQS76rLerAd8OjLbV0xNV3hx1Dz5ZSWxrWGnZY9Hw3fh1q7D8Mjo9ZcRx8/Yt2b
         lszA==
X-Forwarded-Encrypted: i=1; AJvYcCUrb+eBBTgRokupNpYKguaOLCA1HzNQ+TBcYBvtZmMk2Ps93q97iROZfwHJk4Gfbe6tmuhozm4cMoX+@vger.kernel.org
X-Gm-Message-State: AOJu0YxHOwjkA6OCD4vP7rmoyK18m2kHXRNUg/rSt+O6b6qtlEcJ2VUg
	5248AJxfRO3U8qDSgR+rT1/9TC0Kxo68/NOsthgIDcEJRtFibOv9XXguGgqWB7JZeD7gtmEUSaU
	lKvRm79gzlz2ng4jZv6GPpnW2Ct9UH5ZTC0JSujzaMg==
X-Gm-Gg: AZuq6aLkax3JhN48KWA8Gj90i9MDWs409sBvDhaQz/HU8luR/O3usCIgvnh+Y2tbjpf
	IDlwXUzci4mVPkAJhNwAbAmSYqVRn69JW76WpD9GwrosvY3ZsbXwUVmHTjEDOVGK9ei0MCWQ3cY
	e0/O0ZMxCxh4lArUWon48CZ9eLGuGSYtyRfjNlZqEml/MTmq2IvYn4HDTfZi9uqrFp97s7t3nDI
	g/c0absL8LUFCkwxAE+d+iqDHxLsP1olJZ0Y0eGAfRbZ4HEVrkO6LIxi7u55aIfRRfDRfy/CUwp
	+ELCBck=
X-Received: by 2002:a05:6512:2513:b0:59d:e07e:8f38 with SMTP id
 2adb3069b0e04-59de48f58f7mr64524e87.10.1769105053659; Thu, 22 Jan 2026
 10:04:13 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260122-07-k3-mmc-v2-0-3c3ffef25e94@kernel.org>
In-Reply-To: <20260122-07-k3-mmc-v2-0-3c3ffef25e94@kernel.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 22 Jan 2026 19:03:36 +0100
X-Gm-Features: AZwV_Qi_ZbdqQa48xiUnmVYX5skEPfI-gSYl1dRWblEnVxVJaaRBzgmXmm23av4
Message-ID: <CAPDyKFrXNj-FwGvCet6rw3NA8zshLAi02AGPeUQ8zLy6iQ3uiw@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] mmc: spacemit: Add support for K3 SoC
To: Yixun Lan <dlan@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Adrian Hunter <adrian.hunter@intel.com>, linux-mmc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
	spacemit@lists.linux.dev, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-258604-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ulf.hansson@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,linaro.org:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 828816BFA1
X-Rspamd-Action: no action

On Thu, 22 Jan 2026 at 10:38, Yixun Lan <dlan@kernel.org> wrote:
>
> Enable SDHCI controller support on new SpacemiT K3 SoC, while as before
> only the third controller and the eMMC device has been tested which using
> vendor K3 evb board. This board has not acquired support in mainline
> kernel, so I've omitted the DT part patches for now.
>
> The new SDHCI controller almost reuse the same IP as old K1 generation,
> while fixed the broken 64BIT DMA issue.
>
> Hi Ulf,
>  Any chance to queue this for v6.20? I know it's a little bit late,
> but the patch itself is quite simple and we've tested on evb board.
>
> Signed-off-by: Yixun Lan <dlan@kernel.org>
> ---
> Changes in v2:
> - collect Rob's Ack
> - drop uncessary blank line
> - drop return check from of_device_get_match_data
> - Link to v1: https://lore.kernel.org/r/20260121-07-k3-mmc-v1-0-ff77c07bfdf6@kernel.org
>
> ---
> Yixun Lan (2):
>       dt-bindings: mmc: spacemit,sdhci: add support for K3 SoC
>       mmc: sdhci-of-k1: spacemit: Add support for K3 SoC
>
>  .../devicetree/bindings/mmc/spacemit,sdhci.yaml       |  4 +++-
>  drivers/mmc/host/sdhci-of-k1.c                        | 19 +++++++++++++++++--
>  2 files changed, 20 insertions(+), 3 deletions(-)
> ---
> base-commit: 6cefff068d030786d63fa50970d6581c354630b2
> change-id: 20260112-07-k3-mmc-6ca01267e834
>
> Best regards,
> --
> Yixun Lan <dlan@kernel.org>
>

The series applied for next, thanks!

Kind regards
Uffe

