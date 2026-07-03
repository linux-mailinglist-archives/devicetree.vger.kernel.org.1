Return-Path: <devicetree+bounces-319902-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id DNMHLlp1R2oiYgAAu9opvQ
	(envelope-from <devicetree+bounces-319902-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 10:39:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B4917002D8
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 10:39:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=nUfoYskr;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319902-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-319902-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B93B931372B1
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 08:23:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F3B0346FB3;
	Fri,  3 Jul 2026 08:23:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD4DD34388A
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 08:23:14 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783066997; cv=none; b=nY7sPOaqIDw4PY4pD00oU81hvN1dUrHyuavi5xqYyBKIAtNq4HZU2hJmkYGCbab+JzORhYuMdJDXCrEwlG5LYGXRDRgBVWlpvOeSvEdK5lTaiYPbYAn0syGD8HjnKZqhMpNRx4RClH3oOOu/bKBJJrShArPFZrSljtioRM+GBgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783066997; c=relaxed/simple;
	bh=dpLZWrqIrTtgmUu6AZ/eaVvNYP+es/ibZq3L+MK+Pis=;
	h=From:In-Reply-To:MIME-Version:References:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dAEZolcNGTkqW1ZlaXZhn62HmPRrduYhMj+wEWUpcVewbU7NpjPaLeP6ADYlRuHP5D2g5CtRrceFrImrm4CLDQYm4icEw2KHhcJhbKYjetjGjhShp+pKRLPDPaPzOYoUQn+RxL1TR4vd/i45nP5bxVmBgvtHp2vpoCc2c1PGq2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nUfoYskr; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6B09B1F00AC4
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 08:23:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783066994;
	bh=sk/1UlzFWrCnzpIJcdD6UDb2RzZXkwSbPTb878tf5xI=;
	h=From:In-Reply-To:References:Date:Subject:To:Cc;
	b=nUfoYskrboE5aNOH76O1+qfMzDW5cD6LuxtIqmF8OGFOlFpfGrP53/gFFOlleBOBt
	 NWkG5Xi7nZdSQlmIrCfjH1URPH1MpXbNklcwYp2zBlt+Zv4hSaXweicSPk3Txx0dqQ
	 tdclrn/LjJdT1bCpBcEBr1/ds4EGABEf21hUH6BModEUKNJb9pjO7v+F4KG6H/jBfJ
	 3glBsTLfMgB04wS8Nq1XMumHZWUOBvub0uCMSqr7rMwSGuvVWaYMQ9uYDOg7Cspvhx
	 NYG4Kk2TBRAjqTey5yVFqJvpDC39vjVMviREWAcGgf263I6kGE+nJLBJvb7tAMCEn8
	 xb0jpAJiTtF6A==
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-5aeb18fe7ceso180416e87.0
        for <devicetree@vger.kernel.org>; Fri, 03 Jul 2026 01:23:14 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+Rr2WMckLKZdeNvho+93avqM6jYHLMsmy55bO923j8+qOR7R7EnQNo+rI5Ch890I6iZiYKiKO4vBEgzu@vger.kernel.org
X-Gm-Message-State: AOJu0YyWGdnoisYsaSNI1peHYjdzHWL+OLsj4KexAnlBdnvYCran6Gqi
	SszK+2ayYMUhl21BFMpRD34hF4RZ5Tdtmjqu9JlLgpPoFyGaSRCiX/RQibh34z3IjkJxxM6L929
	KvVLbCOalW3CfvDqBEiNO/WuYNIjQN7FoKRMPob62Lg==
X-Received: by 2002:a05:6512:6304:b0:5ae:c210:1a19 with SMTP id
 2adb3069b0e04-5aec67978bfmr2167934e87.12.1783066993200; Fri, 03 Jul 2026
 01:23:13 -0700 (PDT)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 3 Jul 2026 03:23:11 -0500
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 3 Jul 2026 03:23:11 -0500
From: Bartosz Golaszewski <brgl@kernel.org>
In-Reply-To: <20260703-sm7125-samsung-v1-1-3e5f752048c1@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260703-sm7125-samsung-v1-0-3e5f752048c1@gmail.com> <20260703-sm7125-samsung-v1-1-3e5f752048c1@gmail.com>
Date: Fri, 3 Jul 2026 03:23:11 -0500
X-Gmail-Original-Message-ID: <CAMRc=McZwqbmW80+3MzOyNpPoOtVHZs4NXo1K6jftgpTr-dcgg@mail.gmail.com>
X-Gm-Features: AVVi8CdqossYlhJsGyQqyiZfB45JB-hXKE0Ikmy7typJ9NInRf0EIlTHHvfC-II
Message-ID: <CAMRc=McZwqbmW80+3MzOyNpPoOtVHZs4NXo1K6jftgpTr-dcgg@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: arm: qcom: Document Samsung Galaxy A52/A72
To: Erikas Bitovtas <xerikasxx@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Stefan Hansson <newbyte@postmarketos.org>, 
	~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bartosz Golaszewski <brgl@kernel.org>, Kees Cook <kees@kernel.org>, Tony Luck <tony.luck@intel.com>, 
	"Guilherme G. Piccoli" <gpiccoli@igalia.com>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-319902-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_RECIPIENTS(0.00)[m:xerikasxx@gmail.com,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:newbyte@postmarketos.org,m:~postmarketos/upstreaming@lists.sr.ht,m:phone-devel@vger.kernel.org,m:andersson@kernel.org,m:konradybcio@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:brgl@kernel.org,m:kees@kernel.org,m:tony.luck@intel.com,m:gpiccoli@igalia.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[brgl@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[brgl@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0B4917002D8

On Fri, 3 Jul 2026 09:59:38 +0200, Erikas Bitovtas <xerikasxx@gmail.com> said:
> Add compatibles for Samsung Galaxy A52 and A72.
>
> Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/qcom.yaml | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
> index 667607ae2c32..ec3d9be06dd9 100644
> --- a/Documentation/devicetree/bindings/arm/qcom.yaml
> +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
> @@ -1036,6 +1036,8 @@ properties:
>
>        - items:
>            - enum:
> +              - samsung,a52q
> +              - samsung,a72q
>                - xiaomi,curtana
>                - xiaomi,joyeuse
>            - const: qcom,sm7125
>
> --
> 2.55.0
>
>

Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

