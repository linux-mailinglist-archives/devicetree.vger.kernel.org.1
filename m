Return-Path: <devicetree+bounces-61428-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 32D0B8ACA6F
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 12:20:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E43642821E7
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 10:19:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61DF313E888;
	Mon, 22 Apr 2024 10:19:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="l080TWho"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEFED13D50F;
	Mon, 22 Apr 2024 10:19:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713781191; cv=none; b=PaRlDYZTWJJBi3PZZku6EiStuAa3K/brAmAjkkT7LlL1awRJrEnKWotpmqpq4oRdUXRfkqHfHGmEGf/2SYIXrmqAU5HcuQAsEmZJzKZ42FYYhkSWlBc2L1MzTRJoxH1/8FCutnwtksJWbrt1bbb2yddZeqUVK3gl/L5mXZPPuTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713781191; c=relaxed/simple;
	bh=2be7ddOYKWR8xs1YeIaNBfdWx9fkiLTHGB9jAzYsguI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TAsgL1vfZHW/9kldZTTCLmUqmaauLZ1ErOXkpS4mETNi5H/wwXKLYkHhPzrinQiiVVwOWakb280tLm/c5QF7dC/klMEoqg4sW2bez0O45ug4O6WdFPGcsCUshVRc4oQEJIF2jdHKY7gY45uQ2RLNe8dLUpu2WB3JTHNKIiyyT4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=l080TWho; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1713781188;
	bh=2be7ddOYKWR8xs1YeIaNBfdWx9fkiLTHGB9jAzYsguI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=l080TWholm7yTskdm3VWkAyGpbCvf7YGE7bGhaBp67wb/pbbscfjI5rh4Gb2AQRUC
	 8w+NZw2z0tYaqcVQR9lagyKs5NBvPcuclB8BNnOQLg6oqC1xfLbyUaRM+k2aiZ55YU
	 lyX+OKww2htQc+R7n8uJUBELtKO6/KnOnpx4Jad0Or3HJ9fGXSuVv7skeg+p+Xu+gf
	 l3EJ3x6S6AImrIqviDN2fGAC3BbfAgVvqfYBgmZy5cFZ0DSZlkfz6yi8V9ApCNlKIK
	 IucEK5Xi5g5Y1M6ieVfTGrnYLjvdDL2pnp2uLwHl5aZhPeln8gu3qjLYyVMgEDE7qL
	 5tNETJd6PGWIQ==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 27EA63780C22;
	Mon, 22 Apr 2024 10:19:47 +0000 (UTC)
Message-ID: <8de67c04-6f5c-4c0c-9162-e5c4dfdc7374@collabora.com>
Date: Mon, 22 Apr 2024 12:19:38 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: remoteproc: mediatek: Support MT8188
 dual-core SCP
To: Olivia Wen <olivia.wen@mediatek.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>, Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Tinghan Shen <tinghan.shen@mediatek.com>,
 linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org,
 Project_Global_Chrome_Upstream_Group@mediatek.com,
 jason-ch.chen@mediatek.com, yaya.chang@mediatek.com, teddy.chen@mediatek.com
References: <20240419084211.31901-1-olivia.wen@mediatek.com>
 <20240419084211.31901-2-olivia.wen@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
X-Mozilla-Draft-Info: internal/draft; vcard=0; receipt=0; DSN=0; uuencode=0;
 attachmentreminder=0; deliveryformat=0
X-Identity-Key: id4
Fcc: imap://kholk11@mail.collabora.com/Sent
In-Reply-To: <20240419084211.31901-2-olivia.wen@mediatek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 19/04/24 10:42, Olivia Wen ha scritto:
> From: "olivia.wen" <olivia.wen@mediatek.com>
> 
> Under different applications, the MT8188 SCP can be used as single-core
> or dual-core.
> 
> Signed-off-by: olivia.wen <olivia.wen@mediatek.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



