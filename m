Return-Path: <devicetree+bounces-295445-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2GROC4uqAWoMhwEAu9opvQ
	(envelope-from <devicetree+bounces-295445-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 12:08:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DE2C50B933
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 12:08:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A896D30646A6
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 10:05:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 339C13BED16;
	Mon, 11 May 2026 10:04:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="lfds2eRw"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C8153B19D2;
	Mon, 11 May 2026 10:04:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778493876; cv=none; b=A4RRibTcDLlfna8wrs3kp4MVaDt4v4wMRVeNs3WXDMWmE9LsDA5hllpbozqS9tH2rvXUwGWqTNxOSVAXj1aZS9lETI8LtjBVPkP3Hrr8u3RAnf3raanoTALVwXHQrjVe11Z0Nj6pB1mwuK481uYmqNwWaUBNpo4CxLkFJdGCpUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778493876; c=relaxed/simple;
	bh=FL9qLXCgkwmy9iRoqmb4/HL6EbPdhCQ2UUOwkSp4czM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bFDhXkw0vq0RKmsVsvDH+EylkC3zTNq6ScjiKXPkx6iP8c8qV+fHS5umJGBVYM796HMnlbgwMfELLOX+u7Yp4OKJFLQz1cgKtqtAt+qqs1teZXLe3Ljuue4KbW9HxFniuwQy72agZHcnEY4MApanDU0vsg669Uh6XcNa4j51w0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=lfds2eRw; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1778493870;
	bh=FL9qLXCgkwmy9iRoqmb4/HL6EbPdhCQ2UUOwkSp4czM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=lfds2eRwqrTynogzhQHap5dG0emINO2R8QbEXEMsfEJ7M0NbPF5E1bE/RqIbuCyOV
	 sBG2lY2jVyJGtrsitBBQm5V1cPA6vXfISXmoA1mSl1Yjz0THpkY11vjNEPpfIbgK4q
	 Cxxj4Oz1E96AysjqtxwvHtzePzM845ChDSiD0NFm7JqAqCh2g+FrYss7h2UhLT0Hj/
	 XmwHRFMJdDuJKc9A54la4Ld2Boj7riJGgm8+qhvgG/UtXbBzYTmbeADTDwVDH0S/5+
	 8Fgz6x8U6/A2V5n930WGxlI6RMc/3G3alUbgHl4traia3h+S0xMuIgk2jZDS8PG0TA
	 cDX4bTPwopefw==
Received: from [100.64.1.21] (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 23FDB17E0F7B;
	Mon, 11 May 2026 12:04:30 +0200 (CEST)
Message-ID: <ae9240ef-b5a7-4d6a-9021-e57cd9959214@collabora.com>
Date: Mon, 11 May 2026 12:04:29 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: PCI: mediatek-gen3: Allow memory-region for
 restricted DMA buffer
To: Chen-Yu Tsai <wenst@chromium.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Ryder Lee
 <ryder.lee@mediatek.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260508063633.3894348-1-wenst@chromium.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20260508063633.3894348-1-wenst@chromium.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 9DE2C50B933
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-295445-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[chromium.org,gmail.com,mediatek.com,kernel.org,google.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[collabora.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,collabora.com:mid,collabora.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,chromium.org:email]
X-Rspamd-Action: no action

On 5/8/26 08:36, Chen-Yu Tsai wrote:
> On some SoCs without an IOMMU behind the PCIe controller, the PCIe
> controller memory access could be limited to a small region by the
> firmware configuring a memory protection unit. This memory region
> must be assigned to the PCIe controller so that the OS knows to
> use that region. Otherwise PCIe devices would not work properly.
> 
> Allow the memory-region property with one item pointing to a
> restricted DMA buffer.
> 
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>

Makes a lot of sense, and actually makes us able to provide a correct hardware
description in the devicetrees.

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



