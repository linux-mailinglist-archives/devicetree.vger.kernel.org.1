Return-Path: <devicetree+bounces-68359-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 591558CC0AC
	for <lists+devicetree@lfdr.de>; Wed, 22 May 2024 13:52:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 14C352836D7
	for <lists+devicetree@lfdr.de>; Wed, 22 May 2024 11:52:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8844713D526;
	Wed, 22 May 2024 11:52:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="SmY6yPwz"
X-Original-To: devicetree@vger.kernel.org
Received: from out-182.mta1.migadu.com (out-182.mta1.migadu.com [95.215.58.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BF6413D601
	for <devicetree@vger.kernel.org>; Wed, 22 May 2024 11:51:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716378721; cv=none; b=DkaUTgV/VLdkkPZ+mAxLWwcoiS7WtoqSd+oF4l8ud95htQKiJ0sh1eDZczOn7iiJSMyZzsvWagPobgxdn3XgpTbBtnnVgYMUHujgI+UODkDSLXTKCrjx40ohNAqJl0GJnCwsgSrY1g3Cl8nYtuSfe87nsM6js0lcKA85ekmw2Tw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716378721; c=relaxed/simple;
	bh=Xu2xbDFrIisqkiFW+9svNW96My0Yr4/xbGQerzlTu/U=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=fwJjSoTEvHByf+I7rrw1iR+GPYppJ5v0OkRB7vjtdKgOswu6zBKMKnCefpRk2g6GXdpqs247VzlFZTc/hGVPg+MeYMGjtswKtq3QVcVsfxZFP6z1C+nBrHjQDeu7uTRSJ3RHMHs+lIcOGPLfyqLO3yJEEqSJeZFMsTvxR39Xw80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=SmY6yPwz; arc=none smtp.client-ip=95.215.58.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
X-Envelope-To: angelogioacchino.delregno@collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1716378718;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Xu2xbDFrIisqkiFW+9svNW96My0Yr4/xbGQerzlTu/U=;
	b=SmY6yPwzE1VAz/Bf2rxlkNXmbYgzZCsOCxh1eF1Ici1b576SEdtnwRLopD6pHZR+8ZKUfC
	gIdfycBn+QmiBKg+WzeU1GmxKC84jgBZ4bq5xn65qhEUvcxynL6vWVlym9j9NHmjm8labV
	I35/hMSeG1Ia8SHP7HCJBq1Q98JYdEs=
X-Envelope-To: chunkuang.hu@kernel.org
X-Envelope-To: robh@kernel.org
X-Envelope-To: krzysztof.kozlowski+dt@linaro.org
X-Envelope-To: conor+dt@kernel.org
X-Envelope-To: p.zabel@pengutronix.de
X-Envelope-To: airlied@gmail.com
X-Envelope-To: daniel@ffwll.ch
X-Envelope-To: maarten.lankhorst@linux.intel.com
X-Envelope-To: mripard@kernel.org
X-Envelope-To: tzimmermann@suse.de
X-Envelope-To: matthias.bgg@gmail.com
X-Envelope-To: shawn.sung@mediatek.com
X-Envelope-To: yu-chang.lee@mediatek.com
X-Envelope-To: ck.hu@mediatek.com
X-Envelope-To: jitao.shi@mediatek.com
X-Envelope-To: devicetree@vger.kernel.org
X-Envelope-To: linux-kernel@vger.kernel.org
X-Envelope-To: dri-devel@lists.freedesktop.org
X-Envelope-To: linux-mediatek@lists.infradead.org
X-Envelope-To: linux-arm-kernel@lists.infradead.org
X-Envelope-To: wenst@chromium.org
X-Envelope-To: kernel@collabora.com
X-Envelope-To: amergnat@baylibre.com
Message-ID: <6026a614-adea-4a92-8732-07dadb93d530@linux.dev>
Date: Wed, 22 May 2024 19:51:49 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: [v5,3/3] drm/mediatek: Implement OF graphs support for display
 paths
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Sui Jingfeng <sui.jingfeng@linux.dev>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 chunkuang.hu@kernel.org
Cc: robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 p.zabel@pengutronix.de, airlied@gmail.com, daniel@ffwll.ch,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 matthias.bgg@gmail.com, shawn.sung@mediatek.com, yu-chang.lee@mediatek.com,
 ck.hu@mediatek.com, jitao.shi@mediatek.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 wenst@chromium.org, kernel@collabora.com,
 Alexandre Mergnat <amergnat@baylibre.com>
References: <20240521075717.50330-4-angelogioacchino.delregno@collabora.com>
 <d0c9a2e4-1d6c-49ca-9639-3037fde0869d@linux.dev>
Content-Language: en-US, en-AU
In-Reply-To: <d0c9a2e4-1d6c-49ca-9639-3037fde0869d@linux.dev>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT

Hi,


On 5/22/24 19:48, Sui Jingfeng wrote:
> if the not bridge is not ready


'not' -> 'next'

