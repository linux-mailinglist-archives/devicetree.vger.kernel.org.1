Return-Path: <devicetree+bounces-272385-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2JhcIyrYq2kUhQEAu9opvQ
	(envelope-from <devicetree+bounces-272385-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 08:47:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 11AFB22AA3D
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 08:47:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 13F663033F83
	for <lists+devicetree@lfdr.de>; Sat,  7 Mar 2026 07:46:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84C852F9998;
	Sat,  7 Mar 2026 07:46:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Fe3lequ6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54DD7377ED6
	for <devicetree@vger.kernel.org>; Sat,  7 Mar 2026 07:46:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772869614; cv=none; b=hwI9gj/d/TwTBhnSRuUmPV7dabAK45zPqI3PimVrO9KWGx5PmX/+5g1rQ4d+F9eLGXHDtOdNRGHBbep78XRw9z3V1Aqwodd+tLHnfGNnbBDrDBBSO8U7GxRiHws3WRVlqWNid5WErc6I0qkU4E4YagaNAG0ZFwtDMaLkUCOTXwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772869614; c=relaxed/simple;
	bh=2oTgVph5w+Ah3wlW7kSH6XV3kIdw0AkZH+4Q/GQuaEM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kPQSdeLlWPafdqlSF/sGAW2v1TznlX3mbumX7Wposwo756+2gVtliCF2L/rPKC4cRNgTpGCpy7ZaAbzMD1nLwi9r849mfiW1Fp3cEhY7m3EsaubL1kEGZHS4IwWuJMZlvO5XylOqzKYJiT4LgFJ5ElZ0DfnzmaRGsBGkT0AI6cw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Fe3lequ6; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-2ae3a2f6007so53231705ad.2
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 23:46:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772869613; x=1773474413; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uO/7x1mKXgItzdyCiS372PCikfzpIVhgGhN++3lTYuc=;
        b=Fe3lequ6H2o+7ZzzMOcBOxIPPqAfPyaP6RCfayFEJrFMMizP78tyy59ChZA2WbEtsn
         lm+DqkuDKUi9FTDvvZVrskGBCSItXr0IQ1TbNbQWm6Qdqxm62m0HddyjPB1p3TeqjFLL
         BwXLRjeXL4qyVvnXmZ5DpBqMJKS5QH/aAXxpfcgva0Y/KYAEFEM2MkCQPZSoyjq5czNo
         M8+QWuwixbe/lQLXDbc6+QaufihGYWG7+HTZqR3F8y9xY6dfAN5Wp9DWV3d4KUFi3Pt6
         YFTM2EopEToM4iTulfLN/lRRCUO044XwXWGhbcy53Vez6z658owNJmr1dNnMHtCR+qQE
         jxpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772869613; x=1773474413;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uO/7x1mKXgItzdyCiS372PCikfzpIVhgGhN++3lTYuc=;
        b=VtvdnW3mOzmsuaO3Np7qFD09NAlEZI9tZ8dXtkpN4kxJvHcll97pJpSqPp2pRuovX8
         3r9eXR72rHmfATLS5rZXTlI1Xnr5GsxvG22W8aNnCXI4awgME1HtnRPnE2M7Xu/lsxJu
         /E1hGDU3nuHVnt63zQ8P2DDJ7Q8pzTOYZW8Et9AEEpHBu0EVgCNT89AEG4P1MLTT/Znd
         uz8kC5e1g1fY5QGX8ejoDW7ptmLH/uwb4LjbCblQxdd9ZUVTy4CQkBEQMdbXRJT2pEHx
         HyZ4ECsmzyQntBmTsE3fsE28Sm3OcznXJG0QMgO8lME3VRNQ7lncRfrLVQoGnIMPI4TW
         8kUQ==
X-Forwarded-Encrypted: i=1; AJvYcCXhreYyAc+sgA8NuNES/iE2268IAScLsE0LFnpnvfqzKs3UCjUp0mmxk8nyQGPsGrbeB36IYCP4pi6y@vger.kernel.org
X-Gm-Message-State: AOJu0YzCaQQI32W5N/3YisJgyuBZIkWjubIYbWK+301SDVE8K9JFh4Fw
	psbfstwVX6Rylnn/vuwYV7em3caSW7O6hj6THwrB0xdD+YTd4Ygr3T5K
X-Gm-Gg: ATEYQzwUES4VpNONwdN4JLQPEEwUo1UGLv8sEXJcpyNTiEpZzGtY4jXc81ho4ao1EAM
	AuOCw/JKcviNEik3MIbuY1XBq3AJiu+H+EoCn1S9HJYchD1hfIjNEon3YXRs2KBzdPu/B3Jdt1J
	Bbf2g323Zsux+h18TlRYS4aZn4a6fMJ92eEB7T0b2TSbtVnM2pWWXun+LpZiU1NFhLBwoUecnzb
	qKzOidz8EZAtQc+sHl4MySCRmyCjwmssmm02R9ucLnlmMgLc+lQKbUaRDGdloNt5CN7AnMtXzvm
	3C3T4HeenRTAYNBu6+8TvwyabUxiI8hbR4kpurd2pn2lmjdzMTduaryOgRKhp563fGNiQ6QPffH
	4zKSU3xMft855J+EfWOgyAXPOA+fmcNDDZcieI5SSaeVn/pBVtjjA8waAA38//644oj1ocLJDfP
	XE8orZ1//xPMOwF2sHa0ql2ru+IFirVR9aasgkrz+kjpK/
X-Received: by 2002:a17:903:244f:b0:2a7:6aa5:68f3 with SMTP id d9443c01a7336-2ae824eb3d1mr48380995ad.34.1772869612670;
        Fri, 06 Mar 2026 23:46:52 -0800 (PST)
Received: from [192.168.1.5] ([27.7.215.222])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae83f9d4d3sm41634435ad.69.2026.03.06.23.46.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Mar 2026 23:46:52 -0800 (PST)
Message-ID: <924b7631-0b75-4ecc-bae2-162abb4bdc31@gmail.com>
Date: Sat, 7 Mar 2026 13:16:46 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/4] dt-bindings: usb: atmel,at91sam9rl-udc: convert to
 DT schema
To: Rob Herring <robh@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Claudiu Beznea <claudiu.beznea@tuxon.dev>,
 Herve Codina <herve.codina@bootlin.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260224-atmel-usb-v2-0-6d6a615c9c47@gmail.com>
 <20260224-atmel-usb-v2-4-6d6a615c9c47@gmail.com>
 <20260306004931.GA875708-robh@kernel.org>
Content-Language: en-US
From: Charan Pedumuru <charan.pedumuru@gmail.com>
In-Reply-To: <20260306004931.GA875708-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 11AFB22AA3D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272385-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[charanpedumuru@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.942];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action



On 06-03-2026 06:19, Rob Herring wrote:
> On Tue, Feb 24, 2026 at 01:13:01PM +0000, Charan Pedumuru wrote:
>> Convert Atmel High-Speed USB Device Controller (USBA) binding to DT schema.
>> Changes during conversion:
>> - Include "#address-cells" and "#size-cells" in the properties since they
>>   are required by existing in-tree DTS definitions.
> 
> The DTS files are wrong unless there are child nodes and there aren't.

Yes, there is no child node but these properties are defined in sam9x60.dtsi for the compatible "microchip,sam9x60-udc" and the yaml fails dtbs_check if I remove them, can I send an another patch for removing these properties from sam9x60.dtsi?

> Drop those.

-- 
Best Regards,
Charan.


