Return-Path: <devicetree+bounces-262074-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kPCjHLiYgWl/HAMAu9opvQ
	(envelope-from <devicetree+bounces-262074-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 07:42:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C9A86D5677
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 07:41:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BB56A307EEE7
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 06:41:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00C3C37F749;
	Tue,  3 Feb 2026 06:41:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kOHm9TqQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAA2137F106
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 06:41:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770100876; cv=none; b=LDXk6Eb7EUS10yNv02xTXLDBVuBH+gi6KTgCa0sdivRXZ1daibnhChDMPhv9fPfgYjBin4ez8moaUBspc0W7nkLj4a2alf7PY5L/t83702xUZBq/IJaueu49l7bNGSe4ODPZ2RcG93jzOW4H7mTqa1lqfhSXdt7vJTifOR2VYhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770100876; c=relaxed/simple;
	bh=oUP4qXDiIOWsqn/Wh2InSd/J5eOo2q9gQZJPEHI06xs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=W16i7nBp97/KeWvGra1Nq6+tYibrxH7dUHhwYmGFBIO4udhSJd5QdunYVtTqdY4ICjKOdXze3hSBoylorJDtULh9yeKLnFWSMuRE7eyfH1hiNYyM4gNJj1nIFUR37Ru1eGFWhB5lFFJV+Emq3gGzHYYeJKz9oDIZYafptNAn5Gc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kOHm9TqQ; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-59dd4bec4ecso5955443e87.0
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 22:41:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770100873; x=1770705673; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EgJ2Ll3/CgFXhoIE6ohHknq/XdBboRec408Sf48XFuQ=;
        b=kOHm9TqQ7nxUNqyCVYfMSfIiolWJoy7yo+kK1bZUlV68J1DEtIhtkTFwAj3+sCnFlg
         1OSZu9b9ZvnMr5jNnYbc7RZc+I/7QM8HpuKqJnZ4VJd4owzHp+PbuokHzEZF9pqbHc9M
         1wLrdS3v4UDUGe5n0ag5AyfCJRXii6QYH3aDHk6OigqNUUeEavIqh9l4ekxx2QoyfGK8
         jJb7EoKKSpQqIjr1GGOdGKcN/PqJLMPcxP2RJi0kavkVbGzOHafE0lXumi2R9a9Z/Blk
         7iPZ7F5EBmdZVTFN/mdnEnvJ4Qq90Q9eqx8f9yWDsg5KpAL4Knt+pxhF7PN3j6TsorZU
         x+ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770100873; x=1770705673;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EgJ2Ll3/CgFXhoIE6ohHknq/XdBboRec408Sf48XFuQ=;
        b=TbpW9GZswh9886DSfJ1wHLLbmhUSUYEl68sK5UcW1FGQz2TC/rFeVjtbWIJTXAfSWW
         ShAKf3xELcsSdG3ODNXYfqIsXT4YqoT0AIXL7rcoRgdt54aE+lfKPkxDf6j4wUs8Q4gE
         2huFh6pfhybrc68qWgyML1b5NgSSnVWcKAS74jHRZR7u2MvNw8pfjgbol4w7U29isx03
         Ppvix936F90/iiHECZ6EJwwNm/tXa9L4xv0GBpLz/lMgh16vVceTRQ9UKPkSbBbZQVzo
         NbcJHn4XCe84F/KvHHUPZhHEAuAKH2NKPha4fyKTeo4uew3h2lacX4KDpurhb+9xqi/n
         u9Cw==
X-Forwarded-Encrypted: i=1; AJvYcCX9wobHmIcB9dXoAcC/qetsIAcADEXpoBNS8KuKIsubHiz6ONmOIWDrHdeaci9RuTSYFb2To9JvyRq9@vger.kernel.org
X-Gm-Message-State: AOJu0YxmUNMcl/G8mCe6mN+TIVY8XKU/1qziDYBjK/lbpwQwRvSziGQF
	8O3MQW2vQ445R7nXyZhSs5xZdFKPnxG2xF9gXQe10N8B9HXckWFVZELf
X-Gm-Gg: AZuq6aJVh4degjEizsSril1WHvaaZgjQyZGcYJsEBhVi6ImBWIBEmqUPwKXfmyhBh95
	aEsPL2uN7LRuM+qM7ZXF6CT+eX72ISBAM45b2cd+YO8tlcOvVpmqlG4imb4SAg22d0BWvmOOtWZ
	R5RMy+jFze/3n1BMISasiPrhXS9mtqyQGNzdPEIofL5c6ojjZxz7niYBfyUpZ14LsiSNYIGtHAd
	EY4n+SjULOZwolAPVeuS/tml5bv+NRmQUmb1Ru+jTr2G2ziUQ7xzQoMAdWyy1tcC4OHqE93EA8H
	Y2MzRNILClw7HJgfSlYjQKdjkQv6p6Ol2gZzUEqLWUzXBoANWLymm44CHgKuz6OgPdP4u6/7WSR
	EBtBOmGq/Ko6CggdYmR/bLs00fY8/nRKEnbaHU3lqgt+f3qUX7SE5mH1VwcsZk5h9uqmQmMs1nA
	lcZv2nsh4bGToqP/mlRpdCXMMSXDeGnZ53D3FHQZAj2I1x81pUaCbLkY+lO2c=
X-Received: by 2002:a05:6512:159c:b0:598:853e:4866 with SMTP id 2adb3069b0e04-59e164314f1mr5253830e87.51.1770100872754;
        Mon, 02 Feb 2026 22:41:12 -0800 (PST)
Received: from [10.0.0.100] (host-185-69-74-59.kaisa-laajakaista.fi. [185.69.74.59])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e07481b72sm4048059e87.11.2026.02.02.22.41.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Feb 2026 22:41:12 -0800 (PST)
Message-ID: <030ae04b-68b4-4570-90b3-1dfc6f31b4e5@gmail.com>
Date: Tue, 3 Feb 2026 08:42:24 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 00/19] dmaengine: ti: Add support for BCDMA v2 and
 PKTDMA v2
To: Sai Sree Kartheek Adivi <s-adivi@ti.com>, vkoul@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, nm@ti.com,
 ssantosh@kernel.org, dmaengine@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 vigneshr@ti.com
Cc: r-sharma3@ti.com, gehariprasath@ti.com
References: <20260130110159.359501-1-s-adivi@ti.com>
From: =?UTF-8?Q?P=C3=A9ter_Ujfalusi?= <peter.ujfalusi@gmail.com>
Content-Language: en-US
In-Reply-To: <20260130110159.359501-1-s-adivi@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262074-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[peterujfalusi@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C9A86D5677
X-Rspamd-Action: no action

Hi

On 30/01/2026 13:01, Sai Sree Kartheek Adivi wrote:
> This series adds support for the BCDMA_V2 and PKTDMA_V2 which is
> introduced in AM62L.
> 
> The key differences between the existing DMA and DMA V2 are:
> - Absence of TISCI: Instead of configuring via TISCI calls, direct
>   register writes are required.
> - Autopair: There is no longer a need for PSIL pair and instead AUTOPAIR
>   bit needs to set in the RT_CTL register.
> - Static channel mapping: Each channel is mapped to a single peripheral.
> - Direct IRQs: There is no INT-A and interrupt lines from DMA are
>   directly connected to GIC.
> - Remote side configuration handled by DMA. So no need to write to PEER
>   registers to START / STOP / PAUSE / TEARDOWN.

I think this looks really good overall, I have few nitpicks around
variable declaration order and one bigger ask for the possibility of
introducing version member to struct udma_match_data to cut down on
changes and have more targeted handling of the differences between the
two variants.

> 
> Changes from v3 to v4:
> - Rename the dt-binding files to add "ti," prefix.
> - Update cell description in dt-bindings and add client examples.
> - Update k3_ring_intr_regs reg names
> - Rename soc specific data to bcdma_v2_data and pktdma_v2_data to
>   bcdma_v2_am62l_data and pktdma_v2_am62l_data.
> - Add a new patch [18/19] to fix a null pointer dereference issue when
>   trying to reserve a channel id that is out of bounds in
>   udma_reserve_##res macro. Also fix logging issues in this macro.
> - Add a new patch [19/19] to switch to synchronous descriptor freeing to
>   avoid running out of memory during stress tests.
> - Fix checkpatch warnings.
> link to v3:
> https://lore.kernel.org/linux-arm-kernel/20250623053716.1493974-1-s-adivi@ti.com
> 
> Changes from v2 to v3:
> - Fix checkpatch errors & spellings.
> link to v2:
> https://lore.kernel.org/linux-arm-kernel/20250612071521.3116831-1-s-adivi@ti.com
> 
> Changes from v1 to v2:
> - Split refactoring of k3-udma driver into multiple commits
> - Fix bcdma v2 and pktdma v2 dt-binding examples
> - Fix compatibles in k3-udma-v2.c
> - move udma_is_desc_really_done to k3-udma-common.c as the difference
>   between k3-udma and k3-udma-v2 implementation is minor.
> - remove udma_ prefix to function pointers in udma_dev
> - reorder the commits to first refactor the existing code completely and
>   then introduce k3-udma-v2 related commits.
> - remove redundant includes in k3-udma-common.c
> - remove ti_sci_ dependency for k3_ringacc in Kconfig
> - refactor setup_resources functions to remove ti_sci_ code from common
>   logic.
> link to v1:
> https://lore.kernel.org/linux-arm-kernel/20250428072032.946008-1-s-adivi@ti.com
> 
> Sai Sree Kartheek Adivi (19):
>   dmaengine: ti: k3-udma: move macros to header file
>   dmaengine: ti: k3-udma: move structs and enums to header file
>   dmaengine: ti: k3-udma: move static inline helper functions to header
>     file
>   dmaengine: ti: k3-udma: move descriptor management to k3-udma-common.c
>   dmaengine: ti: k3-udma: move ring management functions to
>     k3-udma-common.c
>   dmaengine: ti: k3-udma: Add variant-specific function pointers to
>     udma_dev
>   dmaengine: ti: k3-udma: move udma utility functions to
>     k3-udma-common.c
>   dmaengine: ti: k3-udma: move resource management functions to
>     k3-udma-common.c
>   dmaengine: ti: k3-udma: refactor resource setup functions
>   dmaengine: ti: k3-udma: move inclusion of k3-udma-private.c to
>     k3-udma-common.c
>   drivers: soc: ti: k3-ringacc: handle absence of tisci
>   dt-bindings: dma: ti: Add K3 BCDMA V2
>   dt-bindings: dma: ti: Add K3 PKTDMA V2
>   dmaengine: ti: k3-psil-am62l: Add AM62Lx PSIL and PDMA data
>   dmaengine: ti: k3-udma-v2: New driver for K3 BCDMA_V2
>   dmaengine: ti: k3-udma-v2: Add support for PKTDMA V2
>   dmaengine: ti: k3-udma-v2: Update glue layer to support PKTDMA V2
>   dmaengine: ti: k3-udma: Validate resource ID and fix logging in
>     reservation
>   dmaengine: ti: k3-udma: switch to synchronous descriptor freeing
> 
>  .../bindings/dma/ti/ti,k3-bcdma-v2.yaml       |  116 +
>  .../bindings/dma/ti/ti,k3-pktdma-v2.yaml      |   90 +
>  drivers/dma/ti/Kconfig                        |   21 +-
>  drivers/dma/ti/Makefile                       |    5 +-
>  drivers/dma/ti/k3-psil-am62l.c                |  132 +
>  drivers/dma/ti/k3-psil-priv.h                 |    1 +
>  drivers/dma/ti/k3-psil.c                      |    1 +
>  drivers/dma/ti/k3-udma-common.c               | 2577 ++++++++++++++
>  drivers/dma/ti/k3-udma-glue.c                 |   91 +-
>  drivers/dma/ti/k3-udma-private.c              |   48 +-
>  drivers/dma/ti/k3-udma-v2.c                   | 1472 ++++++++
>  drivers/dma/ti/k3-udma.c                      | 3095 +----------------
>  drivers/dma/ti/k3-udma.h                      |  583 ++++
>  drivers/soc/ti/Kconfig                        |    1 -
>  drivers/soc/ti/k3-ringacc.c                   |  188 +-
>  include/linux/soc/ti/k3-ringacc.h             |   20 +
>  16 files changed, 5402 insertions(+), 3039 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/dma/ti/ti,k3-bcdma-v2.yaml
>  create mode 100644 Documentation/devicetree/bindings/dma/ti/ti,k3-pktdma-v2.yaml
>  create mode 100644 drivers/dma/ti/k3-psil-am62l.c
>  create mode 100644 drivers/dma/ti/k3-udma-common.c
>  create mode 100644 drivers/dma/ti/k3-udma-v2.c
> 

-- 
Péter


