Return-Path: <devicetree+bounces-325096-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XAhuILS5U2oxeQMAu9opvQ
	(envelope-from <devicetree+bounces-325096-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 17:58:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CD6E274547B
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 17:58:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=googlemail.com header.s=20251104 header.b=Ju1t7vrI;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=gmail.com (policy=none);
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325096-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-325096-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5CFBE300B628
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 15:58:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D62C8340D90;
	Sun, 12 Jul 2026 15:58:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00EE425B083
	for <devicetree@vger.kernel.org>; Sun, 12 Jul 2026 15:58:34 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783871916; cv=pass; b=sx4KnoPwIRpcb99bVuCNnBROUfKYEZmwjX+mw3WWUIDaIERrmIVZoWBWdwoki5Oo9m+fIdDd3gsL/dIfP/UNr2fuysmhYtwO9JpVDxrWG3oN79WDtNxoIUPHw2KASplnbFylE7QOLLLTx7106fPbXZCUZkFeNcpp6gyO3kRC7pg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783871916; c=relaxed/simple;
	bh=aLc7jMiBw2UsKh+S7fgeou6nf+sFln8YPlPnnwBN7hA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QWkduNKAPpdMnvao3oTeG9SmOrWaib/pB/nXQBcaSukqnpimE8WDvW9xVzsVs5JseFhxhsX9s0XYU6rzujKc5spfa53OK9hFopzVnUtwJjnUwTL7hnfFgaAykxiJIYxTgWclaoyLAQkLwB1M9wkC1jh6ToAcjBzo0M20HMChE68=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com; spf=pass smtp.mailfrom=googlemail.com; dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b=Ju1t7vrI; arc=pass smtp.client-ip=209.85.214.174
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-2cace91f112so19248975ad.0
        for <devicetree@vger.kernel.org>; Sun, 12 Jul 2026 08:58:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1783871914; cv=none;
        d=google.com; s=arc-20260327;
        b=i/Plg6dnV4dQlz730rcz94VfFKA0jUxanVqaYkgt0nc4N6fPIo1Q1UuQh8KtPYnJWo
         lVE+TElcUbRFSajEh3C8Hpk0KSWovrwHB+VHRZ59tHkWVFmskbjLOzUcpN1KSP+gtTtg
         283kx767rjJ9otsP1/prxUYwz2WGqcGqf2zXb4TpgtgLMXSvWb3+0om86MqskWh1dRpL
         rOteO0VU28FEPjDuwnD+zJncrxScDxr9xCXZn+mBypWJCizSAujATFc/0jl5hex2slL0
         9+y9HUn8LY1EaJjpe3RpxSh0LtbxwYHc5puRSJWBt+WPnrtFDCHAjuN7x/Dz3VL1D9a4
         27Kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=2qoHPnf7RHTkFcOSnpyDI8RpBT/XeamlmMbf/yeH5Pg=;
        fh=x5k/Xoajcso2gJWEE/fkJVw8Jbgr7zex005NNHeIGU4=;
        b=KlvhejfyY+KLX8FroVA8u0d0x0eNr+KD9G9wL5NiFUJbk2WorOdophnSScOVlpac8m
         e7g1e+PstJ0ZmH4fCYJAjLCs4Cnc1sF47ACIcGeOIdyysVeAid852efIENGwnSzKKXdp
         duP0Tc/sX5gxbRI8eSabKYj0jZfl32WiKXgkN6YBvCyVmMYK1CVW5IVyMCFBAQ+8ei14
         KunD+N8HoG5jtYMFmBCkSr0SniWl6o8OjWpuHug7TD/8Hvvzox7fKtWs7bmqSc7uAqIH
         GMM/jhq541AQex7HCpyVhCIBOpbJgMMZdDTQTW9IfREDmFhJBAyPOjBpaEEXTSEQyVIp
         KJXA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20251104; t=1783871914; x=1784476714; darn=vger.kernel.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=2qoHPnf7RHTkFcOSnpyDI8RpBT/XeamlmMbf/yeH5Pg=;
        b=Ju1t7vrIVmE884JuROWVsZak9whuWmhZmFheJV1q6mjwo7A4Fe3gUxha4Oi0gjU32m
         hIgHbZF4ooovl2SesTiaohisKzCGzvJyMnlhph6XjHO75qleQKDO9FuQVIgBQ1BRhMSQ
         8Mfr8gkdiwsiDEh34YMO3FybJOEN8Rx6lPiRg/YWjnBn4uHf5YMx+BL2nN3DnwkAI3+O
         OvdMEQTLNG7MUTrlTMimkZdI+r2K2PklP8Vv/dUDMIFO+PP0W0+3pB34TsvrKHB+5yO/
         OVpVs4PCntzY3UZ9MApeueXoGH9pE3+zdyqF0zNZsd3k6IZ6dk7b6+pjsPOTknIsDxOZ
         lmfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783871914; x=1784476714;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=2qoHPnf7RHTkFcOSnpyDI8RpBT/XeamlmMbf/yeH5Pg=;
        b=dd+plKylElX5WOyOn03Lz/ZYXd90iVIFC5xc+PyJaALTEU3QJ+5rfrqHgEsqVGuKOX
         uUEXLayVS8B+zo9+PdLPGPQkmyLOjAD+iVEY4UwZQIwlrCfmtgTGSWFW5Es902lgIem+
         KIbFUtSHJqBYQ5eFR01cB8kzrJwfvXba6THPJWOBsjR8TFf///2B1JK1OiK1vqqWNpOw
         N163aWftsVSmChFjEdpKhpnbGKBh71tYJTXm8/UGM0izUewbPmc08mhHlMsYgTB7EotX
         MLo3HvEz3ZmwEO9+uThsGqJcNDQAk9/6EaUQcvDtywATLa54uq+GEvkabABkjTtgUWj5
         z3Mg==
X-Forwarded-Encrypted: i=1; AHgh+Rq/k5RkadmH67jTwW1mpwpI42/+/sZkzOL4k5Mt3RPmYWTz0VCv5kcPG3OfJAELv2GgZSOy0cwy7iZ+@vger.kernel.org
X-Gm-Message-State: AOJu0YyUDpEOEnGDKNALJtop8b5qCxOq2hXKfYV13MhvIVCSf8f4nhJg
	DJYLApoUoTSkjwqDR6LE7stkBPDsRA0Qb/YX1FPX4XOwxLrqGwcuTTKOE6HiV0MJ6M+Dl4MLzZ8
	LDjWGnbFRhDwVd4bSfK11vsEBOxRTpXI=
X-Gm-Gg: AfdE7ckYrgEe/Vv1FX09O7gbGlW4hNoR15sDLltY2/yBbocWcPsLA5lIsHq3J9DmnFZ
	WWxi23kx8k10NJkk2wjElUjOSK1ENonORFkLp+ffLEjY1vbjuyJb4x1dshlwwmIoizD+/JoK/B2
	GP6nMCrUFeaSjckDshgohNFqhb0JxNjfKmBrh/I06OL+TSY1xET79rfk9881mPTbf+ArgziYdCf
	t88GqYC0vfKO/uTuUfmMwYdZmZQzyTUnPkq3TOwXVDT5YmUveQ7OFEc6UyikqTFC35w0eTxS1/X
	UvBX/Ai69hmDzG57HsI8mlUy2kXCTw==
X-Received: by 2002:a17:902:d987:b0:2cc:ae2b:b6d2 with SMTP id
 d9443c01a7336-2ce9eac1d98mr62500805ad.15.1783871914381; Sun, 12 Jul 2026
 08:58:34 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260712145718.126492-2-krzysztof.kozlowski@oss.qualcomm.com>
In-Reply-To: <20260712145718.126492-2-krzysztof.kozlowski@oss.qualcomm.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sun, 12 Jul 2026 17:58:23 +0200
X-Gm-Features: AUfX_mxcpSIQ4DLxW6ZIvnxFvpspk6KaYmziRMf8gxBgAEDT5L34RLygHbWHhs8
Message-ID: <CAFBinCDvwvc+qO-_-XUUf9orypOL1XJo+nukC4ZXnB7UtKMj4A@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: remoteproc: Drop redundant $ref of
 firmware-name property
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Mathieu Poirier <mathieu.poirier@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Kevin Hilman <khilman@baylibre.com>, 
	Jerome Brunet <jbrunet@baylibre.com>, Suman Anna <s-anna@ti.com>, linux-remoteproc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.94 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	SUBJECT_HAS_CURRENCY(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[googlemail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:krzysztof.kozlowski@oss.qualcomm.com,m:andersson@kernel.org,m:mathieu.poirier@linaro.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:neil.armstrong@linaro.org,m:khilman@baylibre.com,m:jbrunet@baylibre.com,m:s-anna@ti.com,m:linux-remoteproc@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-amlogic@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[martinblumenstingl@gmail.com,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_FROM(0.00)[googlemail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-325096-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[martinblumenstingl@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[googlemail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,googlemail.com:dkim,qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CD6E274547B

On Sun, Jul 12, 2026 at 4:57=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@oss.qualcomm.com> wrote:
>
> The DT schema core defines the type ($ref) of 'firmware-name' property
> as string-array, so individual schemas do not need to.  They also should
> not redefine it to a single string, but instead just set number of
> expected firmware names.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

