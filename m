Return-Path: <devicetree+bounces-70298-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BC5468D30F9
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 10:22:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ED11C1C23D72
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 08:22:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D69917333D;
	Wed, 29 May 2024 08:16:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="NJD2b14G"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA9D716191E;
	Wed, 29 May 2024 08:16:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716970584; cv=none; b=RRqOtL91pJ5W5Ibgna5cQMqmI95sjY9yQ2HPv3H9N261P6//SP4p6EqOZTiS9PMUhv8dhYp+t3xRp52ASNNoopcaPOGNdKssXiB7l+eNyyd375aD0ElvuTyk9v+0rMGmiO4PPocBcvLOMTXLmdExIjW7u3HHAeTJEibgwh1BuDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716970584; c=relaxed/simple;
	bh=dQs9CvDcxwN3nu6hdtQYpCf+pL2sZSGgtyaNvbPyX5w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dfxHyHqZJQnX2T/x+Yh3R8KW0IzanDHFCFyUk9vb8CbXuVRulpd0K1/lGGJybZG+kBWzQAk3ztYBNiYIKBYlGBOfcL8kMbCR8faYVeJLNQ7KNtievMHU/xd8NO9D2+zJ8wOVxsb6/VbXRFAfX7hBqFGqnTgboZsNh5HiyFxUzHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=NJD2b14G; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1716970581;
	bh=dQs9CvDcxwN3nu6hdtQYpCf+pL2sZSGgtyaNvbPyX5w=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=NJD2b14G5KIKlidMqa2NoHl9PdyVlAVG5FPEv7UkeDYQbNqpBVy3HVYgtnKq2uA1K
	 hQqyngYlMyjSmbMkIDysg0qsAthW5QtwkEhrEdaC9usxyAiATPsCeevUjqlL/AbBML
	 emhFUS5mJfZll2aa2l3M77BxWvrwBKR2ijCTBabCA9M/u3OliNo3y078geQ0EJS5aD
	 9NQ4FaTripuJ1G3Y3ofQ5WAmfQdtEHcKG3ExAjVuGFEyWtSwlDxuNVnuwTt5GFf+k1
	 S7PgcNdrv3rITY0HwzTYSf61ned96RXDLfEpYOZnDONvmQHynv6jnmmuQl3zxLGcXq
	 E+Jc3cnoh2www==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 3967A3780627;
	Wed, 29 May 2024 08:16:20 +0000 (UTC)
Message-ID: <f0abc8cb-2262-4d3f-ac76-c18924b9de5d@collabora.com>
Date: Wed, 29 May 2024 10:16:19 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/6] dt-bindings: thermal: mediatek: Fix thermal zone
 definitions for MT8188
To: Julien Panis <jpanis@baylibre.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Nicolas Pitre <npitre@baylibre.com>, "Rafael J. Wysocki"
 <rafael@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Lukasz Luba <lukasz.luba@arm.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-pm@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>
References: <20240529-mtk-thermal-mt818x-dtsi-v6-0-0c71478a9c37@baylibre.com>
 <20240529-mtk-thermal-mt818x-dtsi-v6-2-0c71478a9c37@baylibre.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20240529-mtk-thermal-mt818x-dtsi-v6-2-0c71478a9c37@baylibre.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 29/05/24 07:57, Julien Panis ha scritto:
> Fix thermal zone names for consistency with the other SoCs:
> - GPU0 must be used as the first GPU item.
> - SOCx deal with audio DSP, video, and infra subsystems.
> 
> The naming must be fixed "atomically" so compilation does not break.
> As a result, the change is made in the dt-bindings and in the LVTS
> driver within a single commit, despite the checkpatch warning.
> 
> The definitions can be modified safely here because they are used only
> in the LVTS driver, which is modified accordingly.
> 
> Fixes: 78c88534e5e1 ("dt-bindings: thermal: mediatek: Add LVTS thermal controller definition for MT8188")
> Signed-off-by: Julien Panis <jpanis@baylibre.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



