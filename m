Return-Path: <devicetree+bounces-311413-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id EXoSN58rLmo7qQQAu9opvQ
	(envelope-from <devicetree+bounces-311413-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 14 Jun 2026 06:18:39 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 43A36680586
	for <lists+devicetree@lfdr.de>; Sun, 14 Jun 2026 06:18:39 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=Lqssxb8S;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311413-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-311413-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 62A673018771
	for <lists+devicetree@lfdr.de>; Sun, 14 Jun 2026 04:18:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDE762264C7;
	Sun, 14 Jun 2026 04:18:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 741AC256C6C
	for <devicetree@vger.kernel.org>; Sun, 14 Jun 2026 04:18:34 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781410715; cv=none; b=KHGPG/TCX5acqtQ+ZjlUxls/GeBxvJkcXwicVmXQLAq2DA1XRuSnf9Rvn6gmJv5e9XUZU1ne7yOM/h8iG+AFhaKAR+GqGtgQcaz6p9KVRWDhhq9QmkwPXzB5h4CXN5Lcu30eGBjUyxql0M8jC5mQiNFHuDhw7FAwvvLp84XyuHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781410715; c=relaxed/simple;
	bh=ge2Wly4lQzx+cVn0t29ATnqCbhqW6JZ4+KUkawXqZ/4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mfKaoyQk9/CxPF+mfGGr0Dv9Jvq/l0SQ2zmZJESTQCLcboSS9N28gvLYCqMIwS6tGWE1lznxHuFblGZ03QizQvs1U0uOXuyTefghkspTsIWlPqbHCwrbxi5He++PK2QkkkZxuokvLSqZaEQBNHdtWJwLsijrdAcXutpr8e47Z8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Lqssxb8S; arc=none smtp.client-ip=209.85.214.175
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-2c0c3543590so15301145ad.2
        for <devicetree@vger.kernel.org>; Sat, 13 Jun 2026 21:18:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781410714; x=1782015514; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=10pdjtqw1/JtUy9GKEnuwFPnC7XgoLYsseAIedRShWU=;
        b=Lqssxb8SVYxUI0DuiKDuPCEwu9EXY6WaUUQ0GgWMAJiqwmto8Xr/29ZrBbmpxMkql8
         ztYgUQTAPqwo5lieyBl+6kU70cVHX6n16hVXk+sTrfTog9EUOMSqRhR7YD1ghVVAp0eC
         fykwRFGkRSf552pmiQzf+LUByG23bSVva7KO6lNodt3/nFBq5GupDYTr767083gIajeT
         2xSglSpydOymyj3tzeb7D3PLgPR63wX5BhepNvLZF1q03QdYcVTbehA0Af0PXfpwzp9+
         VvOcFT+NNK2df4PRRd/XlJnUwpkzhTHo/xLiG8kuDgjAakGvoWslktKEN93GTWueS/GI
         xTlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781410714; x=1782015514;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=10pdjtqw1/JtUy9GKEnuwFPnC7XgoLYsseAIedRShWU=;
        b=eMNm1GIvQ+HmWuITjyBYrfzVWj89EOD6+FOhtew/OXzlby756uAApZmhkVxURXteMK
         HwDMXGBfMVHq2FUk/Ydj+QWCdq6XvC9lyDRgqSbMD2SNrtcCtv0YZhWqBBGRubqoSdp4
         Wq+TcmfU5txyxouc72JHd+8VdHkVNVwmOZy/tcjiitZmLy44Ntuwr7UWpvfcJwaduuAf
         kZpWkyQbhw+YMUxhg+CsasOstm5Ubn0otgIYCeNeWvpFkVpMukfBMd+7hakJ0KVNrzWa
         Rej+En2kwHp7uTvYUpPqJngrAf5ouLyzze0Gko/bgYAKDvTEDBGf9ArN1bkAhaUT7grl
         oCBA==
X-Forwarded-Encrypted: i=1; AFNElJ+5HWci8nWOnGLL1qYhreNlNIknOwRGWxwwtF/VrsLSsysxPMBMlg8DJqzFS8RxrOU+c9fon7Evde/D@vger.kernel.org
X-Gm-Message-State: AOJu0YwoBy+szb4OLeR3LCZheRtAbGFSz/2asGQZ8gAee6W3pi+/FHDv
	HfQkICyVq2XVX91vitL4sGOlf8uN+RSnVtArRcBHDj5XGhXt215BKxco
X-Gm-Gg: Acq92OHYrKTn8zBQ9gvZ+6ZeIfEstguZYP1hhm+3lBL3iatS0xkv3evyvn2WvT9a/vv
	1Zl/VQ5NbyFAkcvd1rIJkxkxPL43E7yxIuO/Awy7mhrcaZJBdvK2F33Ejm1SAH0MJeQM/TzJuDS
	Fiuwl25megda6MFFR71IxFifMDtK7k0vDiMpwawVG+mM8ge+pU2hlOyhwgkPauOy6cFaQ8CUaSW
	u2Mq7fU35Xz3IL5tKudhJW6U9hKJITGEiDm4dCqbCP8s+AO/frPY7YZF8/DOIYrp+mD+s4PJak7
	126c1+mip+0TuT5C41QHdpi3BMHoT1qByvkc4nLJouKl+3x4gsMDA0aHrd9PI8LDyz68b1XbfLZ
	FtTdd3r8TDI9BRuljbloHcK+DKMJ4WKUGEpQIunBHpEFvT96VMVAWNX/OjRZXPIlQIHs0ZvZOvb
	MbDo/wPOGFLrCqYh2Mh/DeLeMn43L/B/pH0nKVBfE=
X-Received: by 2002:a17:903:1b47:b0:2c0:3400:5c34 with SMTP id d9443c01a7336-2c4111b5cbemr97182875ad.3.1781410713730;
        Sat, 13 Jun 2026 21:18:33 -0700 (PDT)
Received: from [192.168.89.2] ([115.4.79.42])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c4327ac79fsm57407845ad.45.2026.06.13.21.18.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 13 Jun 2026 21:18:33 -0700 (PDT)
Message-ID: <f34dfb84-3aaf-4094-ada7-b19e3449cdda@gmail.com>
Date: Sun, 14 Jun 2026 13:18:29 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH net-next 0/7] net: airoha: add EN7581 SOE ESP packet
 offload
To: netdev@vger.kernel.org, Lorenzo Bianconi <lorenzo@kernel.org>
Cc: "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Simon Horman <horms@kernel.org>, Herbert Xu <herbert@gondor.apana.org.au>,
 Steffen Klassert <steffen.klassert@secunet.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 Christian Marangi <ansuelsmth@gmail.com>, Felix Fietkau <nbd@nbd.name>,
 linux-kernel@vger.kernel.org
References: <20260614040032.1567994-1-hurryman2212@gmail.com>
Content-Language: en-US
From: Jihong Min <hurryman2212@gmail.com>
In-Reply-To: <20260614040032.1567994-1-hurryman2212@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-311413-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:lorenzo@kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:herbert@gondor.apana.org.au,m:steffen.klassert@secunet.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:linux-arm-kernel@lists.infradead.org,m:linux-mediatek@lists.infradead.org,m:ansuelsmth@gmail.com,m:nbd@nbd.name,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[hurryman2212@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[davemloft.net,google.com,kernel.org,redhat.com,lunn.ch,gondor.apana.org.au,secunet.com,vger.kernel.org,gmail.com,collabora.com,lists.infradead.org,nbd.name];
	RCPT_COUNT_TWELVE(0.00)[21];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hurryman2212@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,netdev,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 43A36680586



On 6/14/26 13:00, Jihong Min wrote:
> Add Secure Offload Engine (SOE) support for the Airoha EN7581 Ethernet
> driver. SOE provides inline ESP packet offload for native ESP and NAT-T
> traffic, with the Ethernet/QDMA path used to submit packets to the SOE
> block and the PPE path used to bind eligible ESP flows. NETIF_F_GSO_ESP
> and NETIF_F_HW_ESP_TX_CSUM are intentionally left out for now and will be
> revisited separately for feasibility.
> 
> This is posted as RFC because the code was originally developed and tested
> against an OpenWrt 6.18 Airoha tree, not against the current upstream
> net-next driver. The original OpenWrt commit used as the source for this
> RFC is available at:
> https://github.com/hurryman2212/OpenW1700k-test/commit/7c1b5e662f7790b3d23ed143beadc1dcbf6d15f7
> 
> The SOE part is intentionally linked into the airoha Ethernet module
> instead of being exposed as an independent crypto or platform driver. The
> user-visible ESP offload control is a netdev capability: xfrmdev_ops and
> NETIF_F_HW_ESP live on the target netdev, and the feature can be controlled
> through the usual netdev feature path. SOE also shares the FE/QDMA/PPE
> datapath, private queues, DSA conduit handling and netdev lifetime owned by
> airoha_eth.
> 
> Patch 1 adds xdo_dev_packet_xmit() because the existing XFRM packet
> offload transmit path does not provide a hook for hardware whose ESP engine
> is reached through device-specific packet forwarding. SOE needs to consume
> the skb, add a hardware hop descriptor, steer it to a private QDMA path and
> return the final transmit status. Drivers that do not implement the
> optional callback keep the existing XFRM output behavior.
> 
> Jihong Min (7):
>   xfrm: allow packet offload drivers to own transmit
>   dt-bindings: net: airoha: add EN7581 SOE
>   arm64: dts: airoha: add EN7581 SOE node
>   net: airoha: add SOE registers and driver state
>   net: airoha: add QDMA support for SOE packets
>   net: airoha: add PPE support for SOE flows
>   net: airoha: add SOE XFRM packet offload support
> 
>  .../bindings/net/airoha,en7581-soe.yaml       |   48 +
>  MAINTAINERS                                   |    1 +
>  arch/arm64/boot/dts/airoha/en7581.dtsi        |    6 +
>  drivers/net/ethernet/airoha/Kconfig           |   13 +
>  drivers/net/ethernet/airoha/Makefile          |    1 +
>  drivers/net/ethernet/airoha/airoha_eth.c      |  668 +++++-
>  drivers/net/ethernet/airoha/airoha_eth.h      |   40 +
>  drivers/net/ethernet/airoha/airoha_ppe.c      |  606 +++++-
>  drivers/net/ethernet/airoha/airoha_regs.h     |   16 +
>  drivers/net/ethernet/airoha/airoha_soe.c      | 1896 +++++++++++++++++
>  drivers/net/ethernet/airoha/airoha_soe.h      |  126 ++
>  include/linux/netdevice.h                     |    8 +
>  include/linux/soc/airoha/airoha_offload.h     |    5 +
>  net/xfrm/xfrm_output.c                        |   11 +
>  14 files changed, 3342 insertions(+), 103 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/net/airoha,en7581-soe.yaml
>  create mode 100644 drivers/net/ethernet/airoha/airoha_soe.c
>  create mode 100644 drivers/net/ethernet/airoha/airoha_soe.h
> 

I noticed, after posting this RFC, that I forgot to include the
following trailer while preparing the latest patch series:

Assisted-by: Codex:gpt-5.5

These patches were written and tested with AI assistance, although I've
reviewed the resulting code and test results. I'll include the trailer
properly in future revisions or submissions. Sorry.


Sincerely,
Jihong Min

