Return-Path: <devicetree+bounces-138735-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F47AA11F0E
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 11:16:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C1AD6164E94
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 10:16:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99A861FECC8;
	Wed, 15 Jan 2025 10:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=collabora.com header.i=louisalexis.eyraud@collabora.com header.b="j77Z1Cx1"
X-Original-To: devicetree@vger.kernel.org
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com [136.143.188.112])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6E5E1E7C13;
	Wed, 15 Jan 2025 10:16:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.112
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736936183; cv=pass; b=FRjqW1nDld9Sx2gWECPMyN4sk1Px5EK03mfLNV4Ml/9zfwjGnuloZIHzbTDPwnNzCxBrfHUb0mmCwL/lwIyZM5CbRfyoRci8ThXeOpnrwobZ0xErZzEqNhKLjN5o6rS+YrTN6dPMLSbr0ZJeQ+eWCvLoz3/gY0EcCJvna+d28t8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736936183; c=relaxed/simple;
	bh=2M6YxEYhfG6MzVmfguEy1yvuCugLXk8SLVtWmEEpzBk=;
	h=Date:From:To:Cc:Message-ID:In-Reply-To:References:Subject:
	 MIME-Version:Content-Type; b=AvuXLxH48xE8IaY3uDYXPlCt+2eowawPoS6uYY/3tkT3v+yFJ04MX+3VdkNClsfajaAZdBHZqIOwPwAXxVC6rg1d6Z2bQX6LuNyfVOGeqSsz3JlDlCtAXpZHu5tuPiwPOkLIeNlTLDZaTbfDpF2G8CDuJbLpxS84Alha4anb/zA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (1024-bit key) header.d=collabora.com header.i=louisalexis.eyraud@collabora.com header.b=j77Z1Cx1; arc=pass smtp.client-ip=136.143.188.112
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
ARC-Seal: i=1; a=rsa-sha256; t=1736936162; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=Ovbxj/xtTqCAuQp6DlxbglYNJvjMOhuJlYs2xLyXLHK2uiTzqH1gRYvHUTH20eBLdEa6UvXHhOraJZcBstvdKLBtvf0Rh0Up5Ex94wqE+8bGAujtRjVRkHiC1T3w7paQKpbXc8KulYsueqB8HVTPdkSmIPQZ5w3kizRKR4oBjdg=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1736936162; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=f5nuVE6fLIWMYI473a652vd0ocNHHQJa6QX2DBAbAaA=; 
	b=A2Q8Mx/VyydC2Fr2bzXZLwZJhMYn6QOVBsDmX1Xse4ngMtYtTdCHefqTjebbp9OexcmOJez39uJJ9bMS2yqPJOBwcEyNCag6LdtP9RAdDKZSzVpMhYTYonhWU/BMOqJGUIZSwC9OiOCPegnthdgRpLmBcFnjD2UOq5SA8R7+Peo=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=louisalexis.eyraud@collabora.com;
	dmarc=pass header.from=<louisalexis.eyraud@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1736936162;
	s=zohomail; d=collabora.com; i=louisalexis.eyraud@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Message-ID:In-Reply-To:References:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=f5nuVE6fLIWMYI473a652vd0ocNHHQJa6QX2DBAbAaA=;
	b=j77Z1Cx1mJMylymbPu0FmD1L9Kn4Xrs/fdD00BMDd6rVX3GX17h/3gA+qOFlvvB0
	TN35FMK8+bSL58fzxCUbgDfRr8+1SlaCg5ua1So1tkE9rLfmqpOFz8x/mtAZVLTtT9A
	fLjmzSR/7fxSlVvpZPpa+GShdAaZ77+xQFPaiR6E=
Received: from mail.zoho.com by mx.zohomail.com
	with SMTP id 173693616069360.269632216771925; Wed, 15 Jan 2025 02:16:00 -0800 (PST)
Date: Wed, 15 Jan 2025 11:16:00 +0100
From: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
To: "Conor Dooley" <conor@kernel.org>
Cc: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>,
	"Rob Herring" <robh@kernel.org>,
	"Krzysztof Kozlowski" <krzk+dt@kernel.org>,
	"Conor Dooley" <conor+dt@kernel.org>,
	"Matthias Brugger" <matthias.bgg@gmail.com>,
	"Sean Wang" <sean.wang@mediatek.com>,
	"devicetree" <devicetree@vger.kernel.org>,
	"linux-kernel" <linux-kernel@vger.kernel.org>,
	"linux-arm-kernel" <linux-arm-kernel@lists.infradead.org>,
	"linux-mediatek" <linux-mediatek@lists.infradead.org>,
	"kernel" <kernel@collabora.com>
Message-ID: <19469767d9c.d70b2edd1099115.3136795565203045474@collabora.com>
In-Reply-To: <20250114-lily-defensive-3383449a7945@spud>
References: <20250114-dts_mt8370-genio-510-v1-0-8517ee0fdbe8@collabora.com>
 <20250114-dts_mt8370-genio-510-v1-1-8517ee0fdbe8@collabora.com>
 <ef8bbe7a-64fa-4e51-86f3-4f7fc0bb3760@collabora.com> <20250114-lily-defensive-3383449a7945@spud>
Subject: Re: [PATCH 1/3] dt-bindings: arm: mediatek: add mt8370-evk board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
Importance: Medium
User-Agent: Zoho Mail
X-Mailer: Zoho Mail

 ---- On Tue, 14 Jan 2025 18:54:54 +0100  Conor Dooley  wrote --- 
 > On Tue, Jan 14, 2025 at 11:32:47AM +0100, AngeloGioacchino Del Regno wrote:
 > > Il 14/01/25 08:38, Louis-Alexis Eyraud ha scritto:
 > > > Add bindings for the MediaTek mt8370-evk board, also known
 > > > as the "Genio 510-EVK".
 > > > 
 > > > Signed-off-by: Louis-Alexis Eyraud louisalexis.eyraud@collabora.com>
 > > 
 > > Reviewed-by: AngeloGioacchino Del Regno angelogioacchino.delregno@collabora.com>
 > 
 > Can either of you explain why there's a fallback here to the mt8188?
 > 

The mt8370 SoC belongs to the same family as the mt8188 and mt8390.

It is a less powerful variant of mt8390, with less A55 and Mali G57 cores as main differences, and like the mt8390, its hardware register maps are identical to mt8188.
That is why I added a fallback on mt8188.

I'll reword the commit message in v2 series to add these details (they were only present in the mt8370.dtsi patch).

Regards,
Louis-Alexis Eyraud

