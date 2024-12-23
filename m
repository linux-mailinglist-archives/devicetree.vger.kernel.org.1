Return-Path: <devicetree+bounces-133523-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D9F39FAD8D
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 12:13:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6F4731885389
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 11:13:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 613A31990DB;
	Mon, 23 Dec 2024 11:12:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="qveWbVF2"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80E4D1990D9;
	Mon, 23 Dec 2024 11:12:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734952376; cv=none; b=Ixdd0cLOBT5le90GEs+ki3sBJ7nhuHjtLT/y074EluFptlPmVP4kpOXeE2rvrWloKs0J/rskgrwFt2MSL/MwN4r9uxIPDWVIo4CWWKKzV2KTarsdugohUdOWcpA/9tDHB6WhHHvgqy05OOSrUoJeuwwXTOebhgUJJzcQVnIgg9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734952376; c=relaxed/simple;
	bh=8EB61xX3VXXIycCwZZXBxODcQBwh+DUhjBmAxfgL0QQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=b0gTpH6mFZxNWvljU4rKvljCbW483Nez+MdZrLb/PeIo6NxRA0Cfd3IdoITqadRzZWKuMSYVZ0AdLZ3MQ8xT3U2v/2Wkq9yDqpZ4eNfeIj/sgy1DHuDsry3szjnPuujYpDfHcgfZk3mfDTjYU099bqMoV/JXqoCv1yXvgYYYi2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=qveWbVF2; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1734952372;
	bh=8EB61xX3VXXIycCwZZXBxODcQBwh+DUhjBmAxfgL0QQ=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=qveWbVF2Jry1KkIWDjlhbJuQujpT0V6Vu2tkALDg6azdphIcp3yXMJdZ0N4LTFAAQ
	 LpJ8+u0sDXR90+H43upRLvcUbE2KE7g5HnjN/idfiHf0IkF93fRwFoGoYtgOI6mCzT
	 5NNEQbkDjH9aTJX0D9GhyoQuasfGmgdHQwenTwu9w3Kd8adhvjjMUsudStkkc8qH8c
	 py1DXGhgA64d2hEhGB8NBDe72Eptq2ym5k3zZOH9IQLiqgYK95uHA6rQEgBGm3afi6
	 zxQiWPssSxtCj0RBO9EUL0uuDt/hUkTogXtFZNreK0rCm13JM8/Sb5k29lDsXTY1z2
	 b61/X+StNP5oA==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id D393817E362F;
	Mon, 23 Dec 2024 12:12:51 +0100 (CET)
Message-ID: <6cbe2f57-a63e-4993-938c-7696a869dc2f@collabora.com>
Date: Mon, 23 Dec 2024 12:12:51 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/4] dt-bindings: display: mediatek: ovl: Add
 compatible strings for MT8188 MDP3
To: "Jason-JH.Lin" <jason-jh.lin@mediatek.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Matthias Brugger <matthias.bgg@gmail.com>,
 Singo Chang <singo.chang@mediatek.com>, Nancy Lin <nancy.lin@mediatek.com>,
 Shawn Sung <shawn.sung@mediatek.com>, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Project_Global_Chrome_Upstream_Group@mediatek.com,
 Fei Shao <fshao@chromium.org>, Pin-yen Lin <treapking@chromium.org>
References: <20241219181531.4282-1-jason-jh.lin@mediatek.com>
 <20241219181531.4282-2-jason-jh.lin@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20241219181531.4282-2-jason-jh.lin@mediatek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 19/12/24 19:15, Jason-JH.Lin ha scritto:
> Add compatible strings for the MDP3 OVL hardware components in
> MediaTek's MT8188 SoC and it is compatible with the existing
> MT8195 MDP OVL components.
> 
> Signed-off-by: Jason-JH.Lin <jason-jh.lin@mediatek.com>
> Suggested-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Waiting for an ack to take everything through the mediatek tree :-)

Cheers,
Angelo


