Return-Path: <devicetree+bounces-248101-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BBFA0CCEE17
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 09:07:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C2F9E301006E
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 08:06:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E7BB2C08D4;
	Fri, 19 Dec 2025 08:06:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vO58ZjCN"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1BB62652AF;
	Fri, 19 Dec 2025 08:06:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766131611; cv=none; b=b1bkWe+ItW8LxgwjRxT55TFImMCNHPTyMy0JqW+OiedlmhWNSxecMkMexeM4eQZ2okzgcoO4N3CXKO5qWPULuek0E0V7Jkgh/s9pmunRit/uquuP5fyH4IacWvyLk9IUMF6In71CyLZ6o4QaqesGKYaiilYX5IME7qke90uPWGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766131611; c=relaxed/simple;
	bh=6wCyEn0zK8C4XAbIScYX2qsUWSagoyGEFQBluCSB5PM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dU5EcNnKDrO354kpK3HpL7lfxgvGhIrTFPGaI5FOcC8y2rtpUgRwMWrlF2vjEEi+bgfxpGG9GjMKC/lrnf+27v7ybRVXLpL4UeHhqsPwxGrB0oJXByC0H9+haCwx27G/z9DKXYkCx4taSaxYuyQvJVMH082jkas8RqPd9tJgBnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vO58ZjCN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B4E8BC4CEF1;
	Fri, 19 Dec 2025 08:06:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766131610;
	bh=6wCyEn0zK8C4XAbIScYX2qsUWSagoyGEFQBluCSB5PM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vO58ZjCNdxzXozw/+5Mr/i7hwPDtWNwg+GASMBNTYE0gvY8nJLNyX6Qi+banYiLa0
	 3NlqZaKz8vnGrZhnnuPc/ZKJTZWQMaI34Gf0VXumLLpjyaI+psSKDGglQYPUZxwlYn
	 3FRJEV5uwW1Y7lovF0fJz3d2VN2zDZhoPJsIhOzMjEFl6NC50B8MoIe1GwrM+Up7O6
	 OKeDoX/Obp2+YSgWlL+YKPnZ3nu2whGsRDHM6bMUo/JmkHkCAJPjWnukx46k7pkGOQ
	 wTmymHz6m8slhOtkkjzU215ba8qkWjn4nRffp/VJi3pHmEklQfoRGmUxnVX3xQfwRT
	 PQhE+t9ZgazBg==
Date: Fri, 19 Dec 2025 09:06:46 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Xiaoshun Xu <xiaoshun.xu@mediatek.corp-partner.google.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Xiaoshun Xu <xiaoshun.xu@mediatek.com>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	Sirius Wang <sirius.wang@mediatek.com>, Vince-wl Liu <vince-wl.liu@mediatek.com>, 
	Project_Global_Chrome_Upstream_Group@mediatek.com
Subject: Re: [PATCH v2 1/4] dt-bindings: soc: mediatek: devapc: Add bindings
 for MT8189
Message-ID: <20251219-eccentric-mouse-of-drizzle-0c667a@quoll>
References: <20251217063429.1157084-1-xiaoshun.xu@mediatek.corp-partner.google.com>
 <20251217063429.1157084-2-xiaoshun.xu@mediatek.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20251217063429.1157084-2-xiaoshun.xu@mediatek.corp-partner.google.com>

On Wed, Dec 17, 2025 at 02:34:10PM +0800, Xiaoshun Xu wrote:
> 
> External email : Please do not click links or open attachments until you have verified the sender or the content.

This is not a proper email. You already received such comment before.
Why did you ignore it?

NAK

Best regards,
Krzysztof


