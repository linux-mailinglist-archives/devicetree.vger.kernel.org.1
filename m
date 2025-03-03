Return-Path: <devicetree+bounces-154087-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D5E2A4EBB6
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 19:32:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 66B82170B96
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 18:28:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64BF5207649;
	Tue,  4 Mar 2025 18:18:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g+v6SHHC"
X-Original-To: devicetree@vger.kernel.org
Received: from beeline1.cc.itu.edu.tr (beeline1.cc.itu.edu.tr [160.75.25.115])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C54542E3380
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 18:18:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=160.75.25.115
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741112338; cv=pass; b=Mx2mfq0H0PKFwFfxSkQMnVZqQQOsQW5+TLRA09vWOsOxEbUR5navj1H6kn1p7qPMDlxYW+OxW9aNZ4uno9RGwWy21UdBqeoNgXd5F1yocabBEAGajTlGyyWyRH0YxYnoDEvOI7qb+YEC5h1KlsCDupmvOdTQXA7SpdD1mGwE7NI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741112338; c=relaxed/simple;
	bh=o6KpAk/cHOkdyQxji4Md4vbG85WwT5ZCP2e8Bj9+SVc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WURVYqBjAc2Y+uqrvg/UjJT1/BUnLOxfXYva4j9BPneZedWIn0wJB6aqQWx2LdQS6GG4BvK42yU8g04vvSmzNwGUn62wiTa0suDTrZtdhdzOJDkHxcorpuXiYUUzZsGcdeRBohUAophsEVXjBozIxS6x7WmYtAUUN5LSCAfDLRE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=kernel.org; spf=none smtp.mailfrom=cc.itu.edu.tr; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g+v6SHHC; arc=none smtp.client-ip=10.30.226.201; arc=pass smtp.client-ip=160.75.25.115
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=kernel.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=cc.itu.edu.tr
Received: from lesvatest1.cc.itu.edu.tr (lesvatest1.cc.itu.edu.tr [10.146.128.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by beeline1.cc.itu.edu.tr (Postfix) with ESMTPS id 37EF040D050F
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 21:18:55 +0300 (+03)
X-Envelope-From: <root@cc.itu.edu.tr>
Authentication-Results: lesvatest1.cc.itu.edu.tr;
	dkim=pass (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=g+v6SHHC
Received: from lesva1.cc.itu.edu.tr (unknown [160.75.70.79])
	by lesvatest1.cc.itu.edu.tr (Postfix) with ESMTP id 4Z6dVT6GXrzFwvV
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 17:34:25 +0300 (+03)
Received: by le1 (Postfix, from userid 0)
	id 5891742721; Tue,  4 Mar 2025 17:34:19 +0300 (+03)
Authentication-Results: lesva1.cc.itu.edu.tr;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g+v6SHHC
X-Envelope-From: <linux-kernel+bounces-541173-bozkiru=itu.edu.tr@vger.kernel.org>
Authentication-Results: lesva2.cc.itu.edu.tr;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g+v6SHHC
Received: from fgw1.itu.edu.tr (fgw1.itu.edu.tr [160.75.25.103])
	by le2 (Postfix) with ESMTP id 1E7FC41CD9
	for <bozkiru@itu.edu.tr>; Mon,  3 Mar 2025 11:40:01 +0300 (+03)
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by fgw1.itu.edu.tr (Postfix) with SMTP id F20583064C0E
	for <bozkiru@itu.edu.tr>; Mon,  3 Mar 2025 11:40:00 +0300 (+03)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1901B188D510
	for <bozkiru@itu.edu.tr>; Mon,  3 Mar 2025 08:40:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 760BE1EFF89;
	Mon,  3 Mar 2025 08:39:46 +0000 (UTC)
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4E9618C937;
	Mon,  3 Mar 2025 08:39:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740991183; cv=none; b=Vnaj2r9zdWnN9ogZOsN/yz9SUDFJzwW0G9JCzZrdfSNCfjO/0zcVIGlHSh217elutni25OpYWTwdo/U5qf9P+M9B7AY6wb9t9IeHJPOE39JZ997SeCdru7Ks5lobp8y1VJlt2Xe1PeEde541MxUiCGeWhm2rRjfUJ5VSRlcTf5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740991183; c=relaxed/simple;
	bh=o6KpAk/cHOkdyQxji4Md4vbG85WwT5ZCP2e8Bj9+SVc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KXMeTF34OqW4IGjnEzNttg7OlagPrgdK/BfSZdsAFpMKB/9U16rZ4B7GgZRUu6zgvzwzdvwf4U72p4j8mPiFC+JYoFRNnwnr3yPfCoWdlpUyAC8Kh9Qc4x8h9ym1XXPkbQiPOiitZCRH34c/AAY4LqNZHh5rAOfkM6XJmm+ikOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g+v6SHHC; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7CE6EC4CED6;
	Mon,  3 Mar 2025 08:39:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740991183;
	bh=o6KpAk/cHOkdyQxji4Md4vbG85WwT5ZCP2e8Bj9+SVc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=g+v6SHHCaXHRdjo/E7YJDyoVkrEqLnqngo1VeXN4hajnEozZmp3jhvc/3ILIg6e9N
	 LjREPpKcLJhCngKxgngK/FoZAdS4IfccKj9T1tnmxqJ8RFMpHfFXfJzUPx41G3GQ7P
	 x2mWXKI1qscGRrdNnw3Ga1bTCGVMMveJ0gQNjmJv3pVjtELtUPDrGFDW4ep82XWVc+
	 AjEsTn43xy6OezZFxVeN/ckL/pYo3JhhtSEvHGpdi2C4q5yriGFFQwiq05iCeBckMJ
	 0sANJnSaPI+S5/vACvPfUm0XHkargVmmMTnqfghbPfZooappeAInUVoyJaN3IZDR1d
	 Y48ccPMMFfLxQ==
Date: Mon, 3 Mar 2025 09:39:39 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Alexander Sverdlin <alexander.sverdlin@gmail.com>
Cc: devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-rtc@vger.kernel.org, Jingbao Qiu <qiujingbao.dlmu@gmail.com>, 
	Inochi Amaoto <inochiama@gmail.com>, dlan@gentoo.org, linux-kernel@vger.kernel.org, 
	Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chen Wang <unicorn_wang@outlook.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>, sophgo@lists.linux.dev
Subject: Re: [PATCH v12 1/3] dt-bindings: mfd: sophgo: add RTC support for
 Sophgo CV1800 series SoC
Message-ID: <20250303-loud-mauve-coyote-1eefbb@krzk-bin>
References: <20250302195205.3183174-1-alexander.sverdlin@gmail.com>
 <20250302195205.3183174-2-alexander.sverdlin@gmail.com>
Precedence: bulk
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250302195205.3183174-2-alexander.sverdlin@gmail.com>
X-ITU-Libra-ESVA-Information: Please contact Istanbul Teknik Universitesi for more information
X-ITU-Libra-ESVA-ID: 4Z6dVT6GXrzFwvV
X-ITU-Libra-ESVA: No virus found
X-ITU-Libra-ESVA-From: root@cc.itu.edu.tr
X-ITU-Libra-ESVA-Watermark: 1741717005.09387@14nxzo+dOuJjgBiq9xvRGA
X-ITU-MailScanner-SpamCheck: not spam

On Sun, Mar 02, 2025 at 08:51:54PM +0100, Alexander Sverdlin wrote:
> From: Jingbao Qiu <qiujingbao.dlmu@gmail.com>
> 
> Add RTC devicetree binding for Sophgo CV1800 series SoC. The device is
> called RTC, but contains control registers of other HW blocks in its
> address space, most notably of Power-on-Reset (PoR) module, DW8051 IP
> (MCU core), accompanying SRAM, hence putting it in MFD subsystem.

Assuming this is integrated block in the CV1800 SoC, then this should go
to soc/ and probably called system controller or similarly.

How is it called in the datasheet?


> 
> Signed-off-by: Jingbao Qiu <qiujingbao.dlmu@gmail.com>
> Signed-off-by: Alexander Sverdlin <alexander.sverdlin@gmail.com>
> ---
> Changelog:
> v12:
> - maintainer Jingbao Qiu <qiujingbao.dlmu@gmail.com> -> sophgo@lists.linux.dev
> - dropped Reviewed-by: Krzysztof Kozlowski
> - link to TRM
> - mentioned 8051 core in the description
> - binding is now MFD, not RTC
> - added "syscon" compatible
> - added "interrupt-names", "clock-names" (because of added PM/remoteproc)
> - main compatible "sophgo,cv1800-rtc" -> "sophgo,cv1800b-rtc"
> 
>  .../bindings/mfd/sophgo,cv1800b-rtc.yaml      | 86 +++++++++++++++++++
>  1 file changed, 86 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mfd/sophgo,cv1800b-rtc.yaml
> 
> diff --git a/Documentation/devicetree/bindings/mfd/sophgo,cv1800b-rtc.yaml b/Documentation/devicetree/bindings/mfd/sophgo,cv1800b-rtc.yaml
> new file mode 100644
> index 000000000000..b80d68502c48
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mfd/sophgo,cv1800b-rtc.yaml
> @@ -0,0 +1,86 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mfd/sophgo,cv1800b-rtc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Real Time Clock of the Sophgo CV1800 SoC
> +
> +description:
> +  The RTC (Real Time Clock) is an independently powered module in the chip. It
> +  contains a 32KHz oscillator and a Power-On-Reset (POR) sub-module, which can
> +  be used for time display and scheduled alarm produce. In addition, the
> +  hardware state machine provides triggering and timing control for chip
> +  power-on, power-off and reset.
> +
> +  Furthermore, the 8051 subsystem is located within RTCSYS and is independently
> +  powered. System software can use the 8051 to manage wake conditions and wake
> +  the system while the system is asleep, and communicate with external devices
> +  through peripheral controllers.
> +
> +  Technical Reference Manual available at
> +    https://github.com/sophgo/sophgo-doc/tree/main/SG200X/TRM
> +
> +maintainers:
> +  - sophgo@lists.linux.dev
> +
> +allOf:
> +  - $ref: /schemas/rtc/rtc.yaml#
> +
> +properties:
> +  compatible:
> +    items:
> +      - const: sophgo,cv1800b-rtc
> +      - const: syscon

Binding is fine, but still open topics are: placement and compatible
name.

Best regards,
Krzysztof



