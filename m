Return-Path: <devicetree+bounces-318306-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id FkZMIBPkRGqt2goAu9opvQ
	(envelope-from <devicetree+bounces-318306-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 11:55:31 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 060FD6EBC58
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 11:55:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ovsz+Yel;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318306-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-318306-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2254330DB78D
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 09:50:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F0973F8EDE;
	Wed,  1 Jul 2026 09:50:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B10983F44DC
	for <devicetree@vger.kernel.org>; Wed,  1 Jul 2026 09:50:43 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782899445; cv=none; b=qoDPSEdiiw5PYiUJYyyrpxqaKTHO/m/WT6QjrHI/HNZhb2onFmHsfLuV1LJoGpDYm2R/ipLxGKQVjt6FAbogJ9F/0c9Kj0YDjWRsegEiJPdxR5OEMSThCwzt/ej7TotQrju4bhPIUtcREfZhwi+SFXWmiDVWJw4JK3i9he9EP8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782899445; c=relaxed/simple;
	bh=dYYh9cE3305jsTNSwHjTFgDi5DODHJI+GKtgWf9EeY0=;
	h=From:In-Reply-To:MIME-Version:References:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Wd1dQrsp+N/fVrDbMmtWweGYN+az7U9J0gvEldmGXN25W2vEdp5vBodsXduztPEDG4nVHrAklSbT2Mot0x5xzSuB3lcY04jQkUBxiwNA2LRp4j49dUGiBzAk57OYjj6Oo5Rr++PlMjvMl+Zz+wWk6uFFQe/JYOhxVFJm+MXKTVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ovsz+Yel; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 631951F00ACA
	for <devicetree@vger.kernel.org>; Wed,  1 Jul 2026 09:50:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782899443;
	bh=CYGZFzyPZ+A2YYB3ropIX8iebOcV3V3VZwIWp6S8JQM=;
	h=From:In-Reply-To:References:Date:Subject:To:Cc;
	b=ovsz+YelOrq+1skD75xSG5EORRjD0cTTOcWfjmNL1AE9OSsCsfZjJp8XxxnkiUAcg
	 P+abid/4QGDt7gX6rEmPOu/VcNzmUDeaCsph0bEI5G2ZBM756c+SPKBHfxhAfNqZVw
	 mElrkhKwEzEm8A6sScqGt9rfi2+uIc2CPoQ5vo4bi69uMhjvNM7S+laUTGgzHzhx+h
	 R38HmKICmEJs1YdCuGnRmbrznzgZczz/T7WE4l0mpNrxhJred0aed7bjS24lYbyHiI
	 1PmPdRZXOUVe38kyHbGRHLtz9q+GicbDgaldjuYPzchLjKtzQM/Em7bqSFFTRjfkQW
	 5xc/tFJrhG/sg==
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-39af64026dcso3784421fa.1
        for <devicetree@vger.kernel.org>; Wed, 01 Jul 2026 02:50:43 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+RohgMPK7rFKJ3ceVf5b5ZykVwXop5ky2LRhAFlt1Ta+Wc258oewdG3mE5V2yvQU6vHSPtTYQNb+PKZg@vger.kernel.org
X-Gm-Message-State: AOJu0YySo09LjbLl5eHKR3uu3FVA93FsUo2WePzRzm/9zdm1mRNJgBG4
	NlIAWO0l7Dsk0k72qu621EPEwu93oft+f8N+ONDxTQKMNIGRtqp7/197hnL0Hv0IymF2CiYEXJr
	ZpAlqDyhSm6z2bRNlZXg7wRLX+oWV8CWPxdzQaKrpuw==
X-Received: by 2002:a2e:9a0e:0:b0:396:9966:50e4 with SMTP id
 38308e7fff4ca-39b33fcfac5mr2066541fa.14.1782899442056; Wed, 01 Jul 2026
 02:50:42 -0700 (PDT)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 1 Jul 2026 04:50:40 -0500
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 1 Jul 2026 04:50:40 -0500
From: Bartosz Golaszewski <brgl@kernel.org>
In-Reply-To: <20260701-shikra-upstream-v1-1-e1a721eb8943@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260701-shikra-upstream-v1-0-e1a721eb8943@oss.qualcomm.com> <20260701-shikra-upstream-v1-1-e1a721eb8943@oss.qualcomm.com>
Date: Wed, 1 Jul 2026 04:50:40 -0500
X-Gmail-Original-Message-ID: <CAMRc=Mey1em0BBUUuyLTpVfq8u4Xn8jZMhE4g+HpdrojZ8MXEQ@mail.gmail.com>
X-Gm-Features: AVVi8CflDzWyc0cIuHDaH0TTpmlFBQDWQvxDBA8MQsFXpL6lUrYdBoN6qFDa_4c
Message-ID: <CAMRc=Mey1em0BBUUuyLTpVfq8u4Xn8jZMhE4g+HpdrojZ8MXEQ@mail.gmail.com>
Subject: Re: [PATCH 1/9] dt-bindings: phy: sc8280xp-qmp-pcie: Document Shikra
 PCIe phy
To: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>, Bartosz Golaszewski <brgl@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>
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
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-318306-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_SENDER(0.00)[brgl@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:sushrut.trivedi@oss.qualcomm.com,m:linux-arm-msm@vger.kernel.org,m:linux-phy@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-pci@vger.kernel.org,m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:bhelgaas@google.com,m:lpieralisi@kernel.org,m:kwilczynski@kernel.org,m:mani@kernel.org,m:andersson@kernel.org,m:krishna.chundru@oss.qualcomm.com,m:brgl@kernel.org,m:konradybcio@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:email,mail.gmail.com:mid];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[brgl@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 060FD6EBC58

On Tue, 30 Jun 2026 21:02:43 +0200, Sushrut Shree Trivedi
<sushrut.trivedi@oss.qualcomm.com> said:
> Document the compatible of the Shikra PCIe phy which supports
> Gen2x1.
>
> Signed-off-by: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> index 108cf9dc86ea..b9b0fa26347b 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> @@ -34,6 +34,7 @@ properties:
>        - qcom,sdm845-qmp-pcie-phy
>        - qcom,sdx55-qmp-pcie-phy
>        - qcom,sdx65-qmp-gen4x2-pcie-phy
> +      - qcom,shikra-qmp-gen2x1-pcie-phy
>        - qcom,sm8150-qmp-gen3x1-pcie-phy
>        - qcom,sm8150-qmp-gen3x2-pcie-phy
>        - qcom,sm8250-qmp-gen3x1-pcie-phy
> @@ -166,6 +167,7 @@ allOf:
>                - qcom,sdm845-qhp-pcie-phy
>                - qcom,sdm845-qmp-pcie-phy
>                - qcom,sdx55-qmp-pcie-phy
> +              - qcom,shikra-qmp-gen2x1-pcie-phy
>                - qcom,sm8150-qmp-gen3x1-pcie-phy
>                - qcom,sm8150-qmp-gen3x2-pcie-phy
>                - qcom,sm8250-qmp-gen3x1-pcie-phy
>
> --
> 2.43.0
>
>

Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

