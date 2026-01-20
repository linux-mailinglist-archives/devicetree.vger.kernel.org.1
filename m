Return-Path: <devicetree+bounces-257373-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yHu/LtRgcGkVXwAAu9opvQ
	(envelope-from <devicetree+bounces-257373-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 06:15:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 48BD55166D
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 06:15:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 26C0B848A4A
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 12:18:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07603426EA8;
	Tue, 20 Jan 2026 12:16:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fTJ59fvI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75166362127
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 12:16:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768911391; cv=none; b=kBbnqEu3asjWzGlTq2yK6IKsj4DihdgD9f313gfDNo/Djh+UrL5qqTtBcs+RIgcxm78AwuphlNRGzMbzk8Otg4Ot/R13VtVuflSVoTGwC5Y/NPDqYJAT5TbbaJW6S1Pm+HKLbgDcDKYIKFqS5zM5iwe6fSNrrOA/44AmxOEW1Mk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768911391; c=relaxed/simple;
	bh=9vuH11vqZu29gsum/hoeAJ7Zy2fpKXOeqC/I7bxBlA8=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=YzVf5+RB7BJOYRj8OWL+SYnlIpAeWEErZBuzw7pCyTGtKleaJsStU29iX2hEo+7R4iHqLBaAFEZBSjawFLQbcHKvdmqt6MHnLHq4MFSfYXLPfx37MRac6WHbmuTXm6IMJKn1lySqNzX9ypMSDSi8328tWA/6Pg0U9zJI4TvyrbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fTJ59fvI; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-81dab89f286so2537360b3a.2
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 04:16:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768911390; x=1769516190; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=9vuH11vqZu29gsum/hoeAJ7Zy2fpKXOeqC/I7bxBlA8=;
        b=fTJ59fvI+29697Q7JKksBkmBnL6vcEIJhQkhOxh3sCKGnxFknP7k03dUf6LEd0f6tN
         SVYteULHF4zNEplJarwkzdtOhzkthlQv4aVgg2M/KywS7G1ERppCC1M/P4n8x+UmqGvU
         IzeRfC7o5oZXsjn1fPRCrEHO1cFYDvvKxGwhcsdrTViaMe73ajyaaxij1N5AxZg/VYco
         FIvWeVeUXLkKvZre0h8sTrmCXNzU7a5iHN+/LhgFn3XIosFR3Tykq5dbEuoH1HU5ol/B
         Rq8OyGO5IWmesTA+yZueUl0NpoQw4ZigQVpFmeMpjNT6DkdUnGOQOE7/rypOFa+khZ6+
         VagA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768911390; x=1769516190;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9vuH11vqZu29gsum/hoeAJ7Zy2fpKXOeqC/I7bxBlA8=;
        b=SjyOdmAgG/AiUyfieVJ5gEn9ToVNGLh8i/pDTWvycuFb1I+xl2OHsJrgNddNE4/Hca
         NZW9GhAiCUk6c2y6l0PCJYnE+B/GZps/b0SW+wgsND392LcV3RDxbcjnm9f+knC/iUlb
         HJo9XPhDLtW1lTv2wjM/sPiLDwuZXs7vAv4ZwpaNxcHnNW5ert8Bqx2RGKasbdtAfsTf
         vJQjSukApfTUfk/DXV6+PECtGKztS6UleAFYMN6h6//DmA6DzphH/ctkAY/p7CJ+k7WI
         MdeVRW1HCkSkufeNUlpxIxpBQOe82hWwrNON/1c96X+JMa3UyjbS7JeGAYQuM3CcivAa
         wCRg==
X-Forwarded-Encrypted: i=1; AJvYcCVPxgQPx5uoJcMeKGOiHyeOKRgjyPcTin0sWD5Lb6rsKOwhjhN5QShrud/IaurtPMpqnnw2XTYMJKia@vger.kernel.org
X-Gm-Message-State: AOJu0Yw79DFL4xHHNNWliY7oh1zynF5ofYXRNcseLZXso+VEJM1Biw+Y
	8PE09QUHmg9OZA1o+cXLcBeoozlo8NCf4c6fzCDfkHf+DER3ceshBWl5Xr4l5vmteD8=
X-Gm-Gg: AY/fxX7g3EzJkhBrFTzV5ghYpRtVkaxSwjdWulFHwdKbDTiTIgq16/sqY0oT06EAJcR
	XIQE4uo5AcNGfHkDxeVGyV8UneH6jUXEOD9Vmc2Zav3/wm5UECihulxqosPSfMCNuyxnu1NO7mY
	y7JyVNjpeuJsTyqKRgn90k+IBHwbaMou5bTRJuWE3XniczqgZYckQcuwk3VHxA6/Oqo0rJaax7y
	nTeLQ30mv9Alg5c1SgE01gH97unrCsCgrMIUKUSRcp/QRBEUwTPKIiP0d7XatJDRiUj4ZbTLlId
	gdo0j9OgnXNZVFQkSTfzyALs8j7Qj54tEW2PKHQpszky5kew8bKdpd/ceV6/F6Hdvcj2o+WMNGn
	cWfpSLuEDWIW1dFdcSTCak4Abd0Ame/Y6PzMgsNqMtU92O4BZQgzBiv0HuXLoYAEDQegJu55+oe
	nMIOtS5G4AQ5MDpmJB
X-Received: by 2002:a05:6a21:6f07:b0:33f:4e3d:afff with SMTP id adf61e73a8af0-38e45d0eb85mr1912793637.14.1768911389547;
        Tue, 20 Jan 2026 04:16:29 -0800 (PST)
Received: from draszik.lan ([212.129.80.47])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-352da1eb6a5sm897758a91.0.2026.01.20.04.16.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 04:16:29 -0800 (PST)
Message-ID: <17cb0fffa7531e75b8cbe11252deaca1bf377a39.camel@linaro.org>
Subject: Re: [PATCH v6 00/20] Samsung S2MPG10 regulator and S2MPG11 PMIC
 drivers
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Lee Jones <lee@kernel.org>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>,
  Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>,  Bartosz Golaszewski	 <brgl@bgdev.pl>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Linus Walleij	
 <linusw@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>, Peter Griffin	
 <peter.griffin@linaro.org>, Will McVicker <willmcvicker@google.com>, Juan
 Yescas <jyescas@google.com>, kernel-team@android.com,
 linux-kernel@vger.kernel.org, 	linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, 	linux-gpio@vger.kernel.org, Bartosz
 Golaszewski	 <bartosz.golaszewski@oss.qualcomm.com>, Mark Brown
 <broonie@kernel.org>
Date: Tue, 20 Jan 2026 12:16:22 +0000
In-Reply-To: <b9df01e9-c4ba-4e2c-b458-bc93663ab78e@sirena.org.uk>
References: <20260105-s2mpg1x-regulators-v6-0-80f4b6d1bf9d@linaro.org>
	 <20260113112244.GE1902656@google.com>
	 <6ace23c4-d858-4bdf-9987-104e706190cd@sirena.org.uk>
	 <20260114155011.GC2842980@google.com>
	 <b9df01e9-c4ba-4e2c-b458-bc93663ab78e@sirena.org.uk>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2+build3 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	FREEMAIL_CC(0.00)[linaro.org,kernel.org,gmail.com,bgdev.pl,google.com,android.com,vger.kernel.org,oss.qualcomm.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-257373-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[linaro.org,none];
	DKIM_TRACE(0.00)[linaro.org:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: 48BD55166D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Lee,

On Wed, 2026-01-14 at 16:02 +0000, Mark Brown wrote:
> On Wed, Jan 14, 2026 at 03:50:11PM +0000, Lee Jones wrote:
> > On Tue, 13 Jan 2026, Mark Brown wrote:
>=20
> > > Given that the bulk of the series is regulator changes I'd been
> > > expecting to take it?
>=20
> > I have no issues with that, providing you offer a succinct immutable
> > branch containing just this set for me to pull from.
>=20
> > Failing that, I have the machinery in place to offer you the same.
>=20
> Yeah, given what Andr=C3=A9 said about dependencies if you could apply th=
e
> MFD commits and send a PR that'd be great.

Friendly ping. Is there anything else required to get this going please?


Thanks,
Andre'

