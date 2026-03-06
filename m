Return-Path: <devicetree+bounces-271871-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2LdVCxyLqml0TQEAu9opvQ
	(envelope-from <devicetree+bounces-271871-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 09:06:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 95DCF21CD60
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 09:06:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DE5C930D2D7D
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 08:01:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C74813793A9;
	Fri,  6 Mar 2026 08:01:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YqReoOJE"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4F373783D1;
	Fri,  6 Mar 2026 08:01:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772784079; cv=none; b=mp7MD5AwQxrtt7aGXXZqe9JlZASjtvYAhyD+oJ+ayOwezEuZ7Msl4D0XlFY0Zr6OVV6rdPoXkYmvUfEv9vfD7V4jOHClqUXmqswFS4S2SoSD5goF5uoBNrgn1/OQH6MPQkHGjxD3KzRxznN9KHL7ErVv2pVMLkYAJJC1PSy2ZrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772784079; c=relaxed/simple;
	bh=z7GuIddY8w4eOeyIOVuf/F2Vpmv/31m+Oo3tvI0XjDg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tuor/fhwQDXaQ+XF4MESLRTk2dgeXPgzf/qkudPEMIBIBoKzJqT/vKTprpka3im8KijLMiJu6KYveM/f1v6Yr6VECi8FTmrIU6Twexj2vFmPgIM/pMy4xTWUklm/CMF3nQEpSwrlEzixtW/LKG03STPCRF151TOqzkeJoBfA7DI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YqReoOJE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B70F1C19425;
	Fri,  6 Mar 2026 08:01:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772784079;
	bh=z7GuIddY8w4eOeyIOVuf/F2Vpmv/31m+Oo3tvI0XjDg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YqReoOJE4FOn31hWw+3JjLNnI20RUEQjLX4i7kquWAVrTFAMsjtpX7gV/k1wA4pGp
	 NwCepZwtgadzvHJlYgeXwVBHhH4MK20usRyAu733RpUjVHDtryMbRwq/guJFDhjNZM
	 UUodwo9alMJcCwFbIR+UUgnlXShPUpcKXCRxw2vXPQphSRbYogS8jqZoUiEgVsHG+v
	 vSZT/ZmBE8mKx8UBjG/idblEV3LL4fIc4CqLiuR38p6ndMxKuDfi9rWdT5px01GBYb
	 q/CvfdhLs2AGqGKXCDCNTLOoRS/AmCiXGScCz8DmKpvnW7K0X2WaD0u8woOtmRpc7F
	 /eRQutuA0LfMA==
Date: Fri, 6 Mar 2026 09:01:16 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Akari Tsuyukusa <akkun11.open@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	matthias.bgg@gmail.com, angelogioacchino.delregno@collabora.com, sean.wang@mediatek.com, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: mediatek: Add Lenovo YOGA
 Tablet 10 (Wi-Fi)
Message-ID: <20260306-frisky-colorful-weasel-1af3ea@quoll>
References: <20260305185116.781184-1-akkun11.open@gmail.com>
 <20260305185116.781184-2-akkun11.open@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260305185116.781184-2-akkun11.open@gmail.com>
X-Rspamd-Queue-Id: 95DCF21CD60
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-271871-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,collabora.com,mediatek.com,vger.kernel.org,lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:email]
X-Rspamd-Action: no action

On Fri, Mar 06, 2026 at 03:51:15AM +0900, Akari Tsuyukusa wrote:
> Add an entry for Lenovo YOGA Tablet 10 (Wi-Fi) tablet board,
> named b8000-f.
> 
> It belongs to Lenovo's "blade" product family, a codename found in the
> stock Android "ro.product.board" property (e.g., "blade10_row_wifi" for
> B8000-F and "blade8_row_3gdata" for B6000-H).
> 
> The "blade" family includes several variants with different screen sizes
> and connectivity:
> 
> YOGA Tablet 8 (8-inch display)
> B6000-F  : Wi-Fi
> B6000-H  : Wi-Fi + 3G (Data only)
> B6000-HV : Wi-Fi + 3G (Voice)
> 
> YOGA Tablet 10 (10-inch display)
> B8000-F  : Wi-Fi
> B8000-H  : Wi-Fi + 3G (Data only)
> 
> These devices feature 1GB of RAM and powered by MediaTek MT8125 or MT8389
> SoC. Since these SoCs are tablet-oriented variants of MT6589,
> they are grouped under the "mediatek,mt6589" compatible string.
> 
> Signed-off-by: Akari Tsuyukusa <akkun11.open@gmail.com>

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


