Return-Path: <devicetree+bounces-271255-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wDVCBPyQqGkLvwAAu9opvQ
	(envelope-from <devicetree+bounces-271255-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 21:07:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 88C542076A8
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 21:07:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 182EC30B3D40
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 20:06:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA097382375;
	Wed,  4 Mar 2026 20:06:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="key not found in DNS" (0-bit key) header.d=pta2002.com header.i=pta2002@pta2002.com header.b="hJiO9lCj"
X-Original-To: devicetree@vger.kernel.org
Received: from sender4-of-o56.zoho.com (sender4-of-o56.zoho.com [136.143.188.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC1EE37E31F
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 20:06:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.56
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772654772; cv=pass; b=m2eSLHdOOHZK7P1RsjFyJLNGQUlVxklAnHGfpj9JBsqZgbXMxSisp6C8K0I9ZJBl8jSPEXvNY8i6kPfCJy+l9S0YH6SlM/ww76sqGzxYLeCpzPmYvv+1WLAzR8xnP0CZWDtfjm60vpnvJQXIvxaBuceUH2wdufTmdJlfzy07CeM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772654772; c=relaxed/simple;
	bh=KxxzOa2h0b95iP3Xk5WWWLQcyEoyNoD/1Y6h01FV4K8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=aCyWkdGqLrntJsWsQFE2eqgysX77zrMFsNcuG3m5LQIfsbZfPAdUNEayfO8Fx2F7W7alyGe2KyRwx+7kgDLYiW+0f+ATatFRGdcXkZMG0nuXZ1QPmrK0Ze53msqmwAMkRwpDlNbZPvN29Xv5sHjn9V1yZvKP6NPUh7Df7hSAJ8o=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=pta2002.com; spf=fail smtp.mailfrom=pta2002.com; dkim=fail (0-bit key) header.d=pta2002.com header.i=pta2002@pta2002.com header.b=hJiO9lCj reason="key not found in DNS"; arc=pass smtp.client-ip=136.143.188.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=pta2002.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=pta2002.com
ARC-Seal: i=1; a=rsa-sha256; t=1772654767; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=c5K66uliHzk7CGpi8n5aExhKsMDeoU90n2QaTiYviOAKp4G9lCEFcHztxFKdds/mn0OY1JeyKQKTHmqwSAdctXkE+KFHGEdc6GP7p+PZ40VmvnPGzIvCy4X99n2fAc/bm8AhPV0/+QhnVDIShfb5y/mVb74ORV4ywWaW6qBkUPA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1772654767; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=KxxzOa2h0b95iP3Xk5WWWLQcyEoyNoD/1Y6h01FV4K8=; 
	b=Sb1adAzpwBtNOrEhOmIiofyghlc+EJJ2BbRyQaVGzpOW62S0zu6X0Gyz0Thv9xTW3xowOnY2gxE6w5zkbM3YgMzWo9/qVw+Aj59cbhXU/J4NTcdbX5C8FJTv9gaNlB6AmTEwa63eZTIGf8IMyYM1SBl5hI+b2QH5YHvyI+KYyuQ=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=pta2002.com;
	spf=pass  smtp.mailfrom=pta2002@pta2002.com;
	dmarc=pass header.from=<pta2002@pta2002.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1772654767;
	s=zoho; d=pta2002.com; i=pta2002@pta2002.com;
	h=MIME-Version:References:In-Reply-To:From:From:Date:Date:Message-ID:Subject:Subject:To:To:Cc:Cc:Content-Type:Message-Id:Reply-To;
	bh=KxxzOa2h0b95iP3Xk5WWWLQcyEoyNoD/1Y6h01FV4K8=;
	b=hJiO9lCjT0uMu80sgo23W5lxl3egQAhfpU+tgR0JuDv0VKylV2IRFmxOfXflverg
	3jQFxAv+sc49cEKruWwcWFZSqyLgtizPyaS0R/pocYMVsge7+ShdtTyunW2IvlbWEC1
	Uym91j1sicQ/9kX8MNwUW/QNQlgRCA87Zq78qmtc=
Received: by mx.zohomail.com with SMTPS id 1772654765041935.8700978070677;
	Wed, 4 Mar 2026 12:06:05 -0800 (PST)
Received: by mail-qv1-f45.google.com with SMTP id 6a1803df08f44-899ed41208fso78918066d6.1
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 12:06:04 -0800 (PST)
X-Gm-Message-State: AOJu0YytTbTBLkPeDUBHpkNg2nnn/Lbpd0Mjjy4MX+M1CxeXnYnOadL9
	XGJMoEpBdKhJUniVFKB8t/AWY6ixdqDRefXTpxJ82kuY4vm4ups6Ye5TWaZes1Fdt4sAtg8WiQr
	IN6PrqvIeYzaqsgK/suImpeqWGEqHhG8=
X-Received: by 2002:a05:6214:da6:b0:899:fecd:30d6 with SMTP id
 6a1803df08f44-89a19af7521mr44089846d6.30.1772654763973; Wed, 04 Mar 2026
 12:06:03 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260304-radxa-r5-itx-hdmirx-v1-1-f77bf1f7ce03@pta2002.com> <DGU7SPZQMZR5.1506XM8RO4EHE@cknow-tech.com>
In-Reply-To: <DGU7SPZQMZR5.1506XM8RO4EHE@cknow-tech.com>
From: Pedro Alves <pta2002@pta2002.com>
Date: Wed, 4 Mar 2026 20:05:52 +0000
X-Gmail-Original-Message-ID: <CAAEXfUVBVMmT3i+10F3uvmGOtMMLoQK4WXM7_0G88aL5DntOuw@mail.gmail.com>
X-Gm-Features: AaiRm522NeKVPT_NuMI8MroNRdXzBN2oEYdWCpnVvfjbm98xzQHscRW9QI3Jbck
Message-ID: <CAAEXfUVBVMmT3i+10F3uvmGOtMMLoQK4WXM7_0G88aL5DntOuw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: configure hdmirx in Rock 5 ITX
To: Diederik de Haas <diederik@cknow-tech.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-ZohoMailClient: External
X-Rspamd-Queue-Id: 88C542076A8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.14 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[pta2002.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271255-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	R_DKIM_PERMFAIL(0.00)[pta2002.com:s=zoho];
	DKIM_TRACE(0.00)[pta2002.com:~];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pta2002@pta2002.com,devicetree@vger.kernel.org];
	NEURAL_SPAM(0.00)[0.986];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

On 04/03/2026 18:38, Diederik de Haas wrote:
> I have a strong suspicion that it was named 'hdmirx_det' because in the
> schema its label is 'HDMIIRX_DET_L' where the extra 'I' was probably
> dropped as that seems to be a spelling issue and the '_L' suffix is
> quite often dropped.
>
> FWIW: The label in the schematic for Rock 5B, Rock 5B+, Rock 5T and Rock
> 5 ITX+ are all 'HDMIIRX_DET_L', yet none of them follow the convention
> to use the label from the schematics.

That's a good point, and the other boards all have the hdmirx_det
naming in the downstream kernel, so I guess that would be the most
"correct" name to use.

> So now the 'problem' is indeed: make it consistent with the other boards
> or keep the one where the convention was followed.

Also a third option of changing the other boards to all match. Either
way, I can do those changes, just let me know what would be desirable.

Best regards,
Pedro Alves

