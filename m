Return-Path: <devicetree+bounces-294729-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SBfMH/Bp/mmIqQAAu9opvQ
	(envelope-from <devicetree+bounces-294729-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 09 May 2026 00:55:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 2344B4FC875
	for <lists+devicetree@lfdr.de>; Sat, 09 May 2026 00:55:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 19773300381A
	for <lists+devicetree@lfdr.de>; Fri,  8 May 2026 22:55:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BEB73A7F7A;
	Fri,  8 May 2026 22:55:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uE9jddXv"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2D363A4538
	for <devicetree@vger.kernel.org>; Fri,  8 May 2026 22:55:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778280941; cv=none; b=ZmaeIJ0kvXu4mF5o8PGMT2Gy00VmS0BtcrfQdDSCdGuVrNeVZeqe3g94GPfW/GRYcwSCzvdsRjjxHsy056bfLNqjc+uDYYB9RasC8j7ecU+v0NkO26iege/RLm7xjIATZh5R3APWHd/EEMIsspHNGGYNzFT4pJxySLP0ZSgKC+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778280941; c=relaxed/simple;
	bh=9qLVzyRAhrZFZRi8bBrYUSp2+nB6ued4yWJPbj4nmt0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=G4FYKJov5v6mz42RgYlg0Wbq5gwx8JzeVx9Pgis7qdPMsT3q/4mdFaATft1cZUjqZkMNYQgb9O3NsRka/wLULtXupYg6OWJiY/T/UmOcqEGZoY3S3ZtrwKciNybxwxzUEvJItFZDte0q9UWpp4MuzYtyFuVqeyb4J5nVIdX4PRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uE9jddXv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 243CEC2BCB0;
	Fri,  8 May 2026 22:55:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778280940;
	bh=9qLVzyRAhrZFZRi8bBrYUSp2+nB6ued4yWJPbj4nmt0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=uE9jddXv2eNhU32rcwpiOlIqx22VaX0Ww+3xLwBxpxpcvpBwkOkcM/YLBz9TAKS3b
	 KdzJcmD69wcSbUDYwYDMwagUFcQhtVeyDDeeF0OSroUFMF7ZIDzQWiYs+tjxnhSMsu
	 u2xH3IF4ZV0v8YlI2YMQyT6C8I8LTKwZTpmKk94epy7CzMvar2P3dkrPV09qeAR/iZ
	 6fJkRr56vscsjSgAAPgi9+xsWm863+Xg4nMKETs5NS+CoD1sYa58eUHgr0mQt/SH/o
	 DlGPFTLITlGbOBK2yr4v8KvdbaxOXGGn1TF5kuhQMXmskh//kS3R5Y9BrL3TEcIs0L
	 Laxkr4B44cTNA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] dt-bindings: iio: adc: add AD7816/AD7817/AD7818 binding
Reply-To: sashiko@lists.linux.dev
To: "Hungyu Lin" <dennylin0707@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260508202005.76278-1-dennylin0707@gmail.com>
References: <20260508202005.76278-1-dennylin0707@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 08 May 2026 22:55:39 +0000
Message-Id: <20260508225540.243CEC2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 2344B4FC875
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-294729-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,sashiko.dev:url,lists.linux.dev:replyto];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] GPIO properties described as optional are enforced as strictly r=
equired in the schema.
--

commit 5e87ac2e842cf4989944934ecd916083ea3da1f7
Author: Hungyu Lin <dennylin0707@gmail.com>

dt-bindings: iio: adc: add AD7816/AD7817/AD7818 binding

Add Device Tree binding documentation for the Analog Devices
AD7816, AD7817 and AD7818 SPI ADC devices.

> diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7816.yaml b/=
Documentation/devicetree/bindings/iio/adc/adi,ad7816.yaml
> new file mode 100644
> index 0000000000000..490e5338d7b2e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7816.yaml

[ ... ]

> +required:
> +  - compatible
> +  - reg
> +  - rdwr-gpios
> +  - convert-gpios

The commit message states that the devices "may use control GPIOs for RD/WR
and CONVST", which implies they are optional.=20

Are rdwr-gpios and convert-gpios strictly required for operation? If they c=
an
be left unconnected or hardwired depending on the board's hardware design,
enforcing them in the global required block will cause valid device trees to
fail validation.

> +
> +allOf:
> +  - $ref: /schemas/spi/spi-peripheral-props.yaml#
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - adi,ad7816
> +              - adi,ad7817
> +    then:
> +      required:
> +        - busy-gpios

Does the same apply to busy-gpios? The commit message mentions BUSY is
optional depending on the device variant, but this block enforces it as
mandatory for the AD7816 and AD7817 variants.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260508202005.7627=
8-1-dennylin0707@gmail.com?part=3D1

