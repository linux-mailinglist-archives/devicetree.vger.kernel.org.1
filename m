Return-Path: <devicetree+bounces-264588-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QJTRDnX5i2njeAAAu9opvQ
	(envelope-from <devicetree+bounces-264588-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 04:37:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B771B12101C
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 04:37:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 070093086387
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 03:34:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F27F534DB4C;
	Wed, 11 Feb 2026 03:32:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="g58/gBEE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C43111DD877
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 03:32:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770780768; cv=none; b=Vzr+KLr9IEFWtU8tu7Mfb87KvjARJtD/21qOJa4DXa0IbhGWxLKvrvzo2t2KRik5J/vFp0SOccXPsOJib/kTuzv5MvLXo0oaRtCJ/pIsnnz6ndZV/c0e0tnQ7WExcg9umDDsoQ7M+elRRrcZmv7O/xaomkfKk/RhfY/yNS0R1Oc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770780768; c=relaxed/simple;
	bh=Vwf6MwPNxwf5qH9YPjWuQA3HO9ZAlpcmhn5ASXwPvWk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=htMU5zruJnblxPQir5RKxrC+Grsmb+VAnU7Xu+Khi7tlF3VtCl2bREAAQCTCyAfgdT+mx/t4O1I8vtlJrDMXtnVqGLZt5xPqE+1p7T541hcXZkMwOyj3lovRz2BO56c2LP5ANiAu0nMcA5dKUy8o4GXfAGJLtMeFAmyNU5PfUhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=g58/gBEE; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-2a7a9b8ed69so11457375ad.2
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 19:32:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770780767; x=1771385567; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=6LkflCyXtk3W49ffamwBiKJAxUhYydXMVu3kci/fYZA=;
        b=g58/gBEEaTTarA7nuvYXlNsAU+RcF3FyiSU4zGyc99mZUSK7DbiMepW1EAgO7+gW2K
         mNMJYF0hRo/seiwardhOIxFgbxfzuxEf2jl2S1n0RgWH7qhHxtg0seGM/r83NRq7oKbo
         xzWv4Gi4FoZ6awzPgjEX5Gr7Dg9t6mI1WkGwXca4GjxwRPsB1dz03gIdU84CcAt9WS8T
         hU+iKefE3h7Lsqw0UZ5e3if+HeNlUR5KdAl5DobYgGGgfGHbia2Bo0rfPt/aWllXEH4J
         EB0xY2XMNQ4rQd8isg66UNNERaDtNYjouhtzQhrUE2HHAeQf/vX1wrPRgjpyUVuJhR4+
         AleQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770780767; x=1771385567;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6LkflCyXtk3W49ffamwBiKJAxUhYydXMVu3kci/fYZA=;
        b=aFHYoIpiKRdKSlI6Wan1440K6n3M3fe5u8m/n9LG1jX9X7hhPVwz/LKjNnufVlpDtu
         9FCZAc4exYH6pN84M+GCtP15YC4MITstDLUcbyt3mPYHs0D2e6TLFhZ/01CqQUn8yrvm
         UNkvRAQ9Q6/0GZVRsFDQpiWEgqkyzz5XjlL6M0HGQg+ELwteWCTlHjiN40FMXffDwI/3
         GLR4ryqNvqfaCaotW2T9U7zbdGKVMrEn4FXF2oF0G+cEMEuH0h6KjVbrpq9rZ08ylmTm
         eDidkbiX8GNwtdoBXuxSVqsvZU+yyTHFMQmeYeKuxEji7/djG9uR+XOA+QFseBhzfXJ+
         3esA==
X-Forwarded-Encrypted: i=1; AJvYcCW4dnl32NpL1Xd2idh0JX+UJ33+C7csMAK2TVMfTa9J5n/bXKeJv8fChr/sGLBDspGGrhu4x95UQ+Jf@vger.kernel.org
X-Gm-Message-State: AOJu0YyFkdEUuhB69a5PyoSIS1ctej8JcWJ9P4l405ecPWC8cB+jqzch
	CjD5a5Miyoyik37TmhkRIQq+7ARS8h8F3thWPnYGc8BIMFoStxqSJ91JJxBnoA==
X-Gm-Gg: AZuq6aIIIQEe7si7vSFmEs2RThrqN6yMOpTlMx37PXl0Clsj9+3MnvmHTYdFVauxvgs
	jge+WqVNAOy50ssrxM9pJ0lC7iDm9Q+WeUuenYPP5gL9HOorFzCkj2BLo8k6o3isVzrJQhbl2We
	ub2lYlTOPuQcElZRHDWx+bgE2XfLOF59vwMXLVKR0knI7P5xy0jTtwMxb+638jyHJ+fttpRMGcY
	spD6bokavTRsLoOjzwb7JUZ0C/XemYs33hCpqM51Lu3W1qthk4CyXg+h6r8L/UWBNXJkNig1D11
	8Vyc35PS9EFmU1pZje5qVU7EGzh5J269AZ0263cbg/RU58IyV3ppCqA3daqs5bS6CX2ebSWySVY
	3nXDQXg14PeY3qIEWAeHAU8ULYc5OlMBYbIFd0zNTnx/cZQEw4XhdlKpYBy6KY9cCM9Orw2Jbng
	nWMyXeZE21U13aGNXCjNulndqBfCRfHMlUKwZybjg9+pq/7YjQ1A1mbxfYJIMWGoBsMtBm04W5G
	x48vY7QiZPiOVo=
X-Received: by 2002:a05:620a:28d6:b0:8c6:ca30:fbe9 with SMTP id af79cd13be357-8caeeb510dcmr2216238785a.15.1770775325833;
        Tue, 10 Feb 2026 18:02:05 -0800 (PST)
Received: from localhost (bras-base-toroon21-grc-75-184-144-58-243.dsl.bell.ca. [184.144.58.243])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8cb2b0bc2d5sm11981085a.10.2026.02.10.18.02.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 18:02:05 -0800 (PST)
Date: Tue, 10 Feb 2026 21:02:42 -0500
From: Richard Acayan <mailingradian@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: pinctrl: qcom: Add SDM670 LPI pinctrl
Message-ID: <aYvjQjnBk9B5usOk@rdacayan>
References: <20260210021109.11906-1-mailingradian@gmail.com>
 <20260210021109.11906-2-mailingradian@gmail.com>
 <4f89cc2a-6e30-4ee3-bb95-f2df25b5b88f@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4f89cc2a-6e30-4ee3-bb95-f2df25b5b88f@kernel.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264588-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: B771B12101C
X-Rspamd-Action: no action

On Tue, Feb 10, 2026 at 08:41:32AM +0100, Krzysztof Kozlowski wrote:
> On 10/02/2026 03:11, Richard Acayan wrote:
> > Add the pin controller for the audio Low-Power Island (LPI) on SDM670.
> 
> Subject: Missing "LPASS" before LPI. I really thought you just add TLMM...

Added, but does this extend to the other patches as well?

> > 
> > Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> > ---
> >  .../qcom,sdm670-lpass-lpi-pinctrl.yaml        | 81 +++++++++++++++++++
> >  1 file changed, 81 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/pinctrl/qcom,sdm670-lpass-lpi-pinctrl.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,sdm670-lpass-lpi-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,sdm670-lpass-lpi-pinctrl.yaml
> > new file mode 100644
> > index 000000000000..125f365d11fa
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/pinctrl/qcom,sdm670-lpass-lpi-pinctrl.yaml
> > @@ -0,0 +1,81 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/pinctrl/qcom,sdm670-lpass-lpi-pinctrl.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Qualcomm SDM670 SoC LPASS LPI TLMM
> > +
> > +maintainers:
> > +  - Richard Acayan <mailingradian@gmail.com>
> > +
> > +description:
> > +  Top Level Mode Multiplexer pin controller in the Low Power Audio SubSystem
> > +  (LPASS) Low Power Island (LPI) of Qualcomm SDM670 SoC.
> > +
> > +properties:
> > +  compatible:
> > +    const: qcom,sdm670-lpass-lpi-pinctrl
> > +
> > +  reg:
> > +    items:
> > +      - description: LPASS LPI TLMM Control and Status registers
> > +
> 
> Hm, no clocks? In most designs there has to be HW macro or HW codec
> vote. I see SDM660 does not have it either, but I think this might be
> exactly the same mistake.

No clocks for the pin controller, unless the ADSP enables them on its own.

I see other clocks required for full sound support (including some
board-specific codecs), which are unrelated:
- INT_MCLK_0
- PRI_TDM_IBIT
- SEC_TDM_IBIT
- INT0_MI2S_IBIT
- INT3_MI2S_IBIT

