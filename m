Return-Path: <devicetree+bounces-29146-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 436E4821916
	for <lists+devicetree@lfdr.de>; Tue,  2 Jan 2024 10:49:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E5CC5282DA2
	for <lists+devicetree@lfdr.de>; Tue,  2 Jan 2024 09:49:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EB4BC8FD;
	Tue,  2 Jan 2024 09:49:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="T8YfcSbG"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A810CD534;
	Tue,  2 Jan 2024 09:49:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1704188943;
	bh=4rfbsWJGA+cIk/1N1fb6kSLynUYzumolMwwKnRzoCW8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=T8YfcSbGRxz6NbknwqNFJiAvy1AhOSQ52kztlGG3D7PACVUB8yfoCr4k3asXO4jyd
	 jviqkZt7+OvBDkhgyiWhauzmo/wYYOhiRoRHtkAxMbFv2DG51qw1qkWK+q/6vp8q4/
	 cwgjIFzZCxhtLWZoBUSRpvLULgUIZ7SRdB7IN284hRRgquRhZi6cfcvM7UzjOyFowd
	 Y3WsFcmeS8KqwZwbFh4uZ2hFiNS/icdN3CpOzi/mpZqBX+dM2gF4+uQFQ3cMoEpGbH
	 lTGuMqSDgBm4+u+cqlpCDLadvePTfCi1n4eTViXnhkVIzkS4GFIQRrV3jsEpz8TwJd
	 71XVn17HCcmdg==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 2506A37813DB;
	Tue,  2 Jan 2024 09:49:03 +0000 (UTC)
Message-ID: <14b1465e-678f-4809-9753-2e0bcb8c541f@collabora.com>
Date: Tue, 2 Jan 2024 10:49:03 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/3] arm64: dts: mediatek: Add socinfo efuses to
 MT8173/83/96/92/95 SoCs
Content-Language: en-US
To: William-tw Lin <william-tw.lin@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
References: <20231222080739.21706-1-william-tw.lin@mediatek.com>
 <20231222080739.21706-2-william-tw.lin@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20231222080739.21706-2-william-tw.lin@mediatek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 22/12/23 09:07, William-tw Lin ha scritto:
> Add efuse nodes for socinfo retrieval for MT8173, MT8183, MT8186,
> MT8192 and MT8195.
> 
> Signed-off-by: William-tw Lin <william-tw.lin@mediatek.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



