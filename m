Return-Path: <devicetree+bounces-82303-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C2485923D10
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 14:01:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3460B1C22C61
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 12:01:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3968F15B10F;
	Tue,  2 Jul 2024 12:00:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="nvrhSo/Z"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0586156C6C
	for <devicetree@vger.kernel.org>; Tue,  2 Jul 2024 12:00:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719921651; cv=none; b=pdPYtKG2s8T+x+sJmYvla2iPz8+N8rwqWHamB1jhl2yK67oZqaYv3LY+Hbm/q9gYUZY6uODam+YZNJSP1UF0zz+1JgNlB1jC97oyx1gZo5Jk2froGP69ZZZ6E5gN5pUcN92qvvJL5R8dMcYnZ9Dtbr/ePDtqDxdn+exhPZ83dyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719921651; c=relaxed/simple;
	bh=XxV5q/gozfZ3zJl1h/ihUHSFXAefflIG0OpZQAgP17g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jxt8dLPcoArPoIgnH0ggHNcJX8dPbBUokJ+FrrQ2f3aSz67+UORwPjIxGPso3YWfb/zq7VPByWMZfykrPbpkKqJV0/+FUS0irPpH4AA0euT8G6vy9QrTZhI+adt8V1jhEsWYB85/KuyrShyfwtij9kyNICXhtylwTdc5D4YPwU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=nvrhSo/Z; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1719921645;
	bh=XxV5q/gozfZ3zJl1h/ihUHSFXAefflIG0OpZQAgP17g=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=nvrhSo/ZDAOKFh48ednJNnooC0cYtz19THNfTNWdD8WpVCOgphZN6nvlqmm4fbHel
	 O52gR+6iubSO/nrEX+fOsK1P87rDxJr1KWCy/k4ui8M6NGDd5VPzfVOQDdU0tE4hDB
	 MaMNII6AxqBuZIJqovIQT4NXe+2z94T4LAq6ryllEdp8atvtS224ERSd2ob16uKhH/
	 PfWI2nJlKKKdUyBOXCZqhwYClW9f5c2KKRsTXQwAbfbGiclhY4CnXHMgW4Py4sMNPD
	 xDgqbtr2n1lgJny5JGGEJRtZK8jUZVKMBfQG2yoPRpBKcWHH+2ULa8sXXdO5KRhuLp
	 qr/ZBIi1VyeMA==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id A5572378217E;
	Tue,  2 Jul 2024 12:00:44 +0000 (UTC)
Message-ID: <5bd4579f-56ec-471a-98f3-45224a94f8cd@collabora.com>
Date: Tue, 2 Jul 2024 14:00:44 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] phy: airoha: Add dtime and Rx AEQ IO registers
To: Lorenzo Bianconi <lorenzo@kernel.org>, linux-phy@lists.infradead.org
Cc: vkoul@kernel.org, kishon@kernel.org, lorenzo.bianconi83@gmail.com,
 conor@kernel.org, linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, nbd@nbd.name, john@phrozen.org, dd@embedd.com,
 catalin.marinas@arm.com, will@kernel.org, upstream@airoha.com
References: <cover.1719682943.git.lorenzo@kernel.org>
 <edf3b28926177166c65256604d69f2f576cb6fb3.1719682943.git.lorenzo@kernel.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <edf3b28926177166c65256604d69f2f576cb6fb3.1719682943.git.lorenzo@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 29/06/24 19:51, Lorenzo Bianconi ha scritto:
> Introduce Tx-Rx detection Time and Rx AEQ training mappings to
> phy-airoha-pcie driver. This is a preliminary patch to introduce PCIe
> support to En7581 SoC through the mediatek-gen3 PCIe driver.
> This change is not introducing any backward compatibility issue since
> the EN7581 dts is not upstream yet.
> 
> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>

Perfect.

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



