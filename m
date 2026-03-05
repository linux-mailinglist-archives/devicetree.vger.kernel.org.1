Return-Path: <devicetree+bounces-271477-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KAhIFKpSqWkj4wAAu9opvQ
	(envelope-from <devicetree+bounces-271477-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 10:53:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C1F4720F0BF
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 10:53:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BDB7B30CA3CB
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 09:49:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D46FB375F62;
	Thu,  5 Mar 2026 09:49:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="OeGWRPU1"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79A70288D2;
	Thu,  5 Mar 2026 09:49:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772704171; cv=none; b=C3Z9e+W/SoAf21kQRRNA1GfcJXGzBeZEagTt2k2DFvmsDT5YDz/o0ayBX08aur84ycHC93KBwNrZpJQM1ReQ3UjyTgtIgafvUCvu3tkXX98F7dPgbXgiDXavW+rN94287QDzPGtpTA/LngXAJSuwK/WFYe4Nys5rPQnr4+CSqa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772704171; c=relaxed/simple;
	bh=5Xcl9IFRzjP/3Rjz3AW1FJUewvUqAGHuI2zzD0ux2VI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dNdjUX26mtS9TTB1dIPbE/Dbh2tZTA5aQ5O94vrwoHl5iogln1SAwRnh39yBpMvC+ONzqPqtIvPqHiRK5dqT4MAeaT6BM7zIrYaaLKRpbOcVzBvUzeF7DaC36eGu0YVYBpQ8n0Di9EnWvSkpGK1WTS2oNpYnoHpAMQuKCMLKSj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=OeGWRPU1; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1772704168;
	bh=5Xcl9IFRzjP/3Rjz3AW1FJUewvUqAGHuI2zzD0ux2VI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=OeGWRPU10+rZvx1DblhD0hp2BmLkizHoDFXqZEh4qkVv8pXhocm27N8qRE5iOzXSm
	 XKwdlsNi8O0OBdJ/2MpGrMrZuek+w7Jc2CNih/4EZMQIsf0yd2hlOgUyRX7WtMoO6x
	 riOPG1Nj4Uk9m8Gno2fOIg8IUCriIfcdWz7XWGZ8UWOPultZsLQY3cv2EG72Uun7PM
	 ddpg4i4/jGrRM4Gk/R1Ugj9C5NV+IKSb8Ez73zmgFXYCvGdRe2ne34pFB+NiwKkBY0
	 K0wbt45oVrEJyUAWi9i5rrHeaiHDfa492RiAs4FjSqmlHkNUNMhRpBCh0CpTXfaDb4
	 4PF+HK3XWUs5w==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 6034617E0454;
	Thu,  5 Mar 2026 10:49:28 +0100 (CET)
Message-ID: <e8c587e8-61af-4ef7-b7dd-7d8da7b9aeff@collabora.com>
Date: Thu, 5 Mar 2026 10:49:28 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: arm: mediatek: Add Lenovo YOGA Tablet
 8/10
To: Akari Tsuyukusa <akkun11.open@gmail.com>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, matthias.bgg@gmail.com,
 sean.wang@mediatek.com
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
References: <20260304192417.818211-1-akkun11.open@gmail.com>
 <20260304192417.818211-2-akkun11.open@gmail.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20260304192417.818211-2-akkun11.open@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: C1F4720F0BF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271477-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,mediatek.com];
	DKIM_TRACE(0.00)[collabora.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,collabora.com:dkim,collabora.com:mid]
X-Rspamd-Action: no action

Il 04/03/26 20:24, Akari Tsuyukusa ha scritto:
> Add the "lenovo,blade" compatible string for the Lenovo YOGA Tablet 8/10
> family and add compatible strings for each board
> (B6000-F, B6000-H, B8000-F, B8000-H).

You're adding support (a devicetree) only for the B8000-F though...

> 
> These tablets are based on the "blade" platform, featuring 1GB of RAM
> and powered by MediaTek MT8125 or MT8389 SoCs. Since these SoCs are
> tablet-oriented variants of the MT6589, they are grouped under the
> "mediatek,mt6589" compatible string.
> 
> Signed-off-by: Akari Tsuyukusa <akkun11.open@gmail.com>
> ---
>   Documentation/devicetree/bindings/arm/mediatek.yaml | 5 +++++
>   1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
> index 382d0eb4d0af..69dbe389515c 100644
> --- a/Documentation/devicetree/bindings/arm/mediatek.yaml
> +++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
> @@ -44,6 +44,11 @@ properties:
>         - items:
>             - enum:
>                 - fairphone,fp1
> +              - lenovo,b6000-f
> +              - lenovo,b6000-h
> +              - lenovo,b8000-f
> +              - lenovo,b8000-h
> +              - lenovo,blade
>                 - mundoreader,bq-aquaris5
>             - const: mediatek,mt6589
>         - items:

Did you really test this with dtbs_check?

...also, is the "lenovo,blade" really used for anything (bootloader)?

You can either fix that or just remove the lenovo,blade compatible... but please,
test with `make dtbs_check` before sending a v2 :-)

Cheers,
Angelo


