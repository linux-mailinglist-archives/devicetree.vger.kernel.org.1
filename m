Return-Path: <devicetree+bounces-247293-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D1746CC69B1
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 09:36:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DABC8304AC8F
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 08:31:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 312E025C80D;
	Wed, 17 Dec 2025 08:31:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="X2Kg35ig"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF4B12765D3;
	Wed, 17 Dec 2025 08:31:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765960286; cv=none; b=o/XXpBUACGZAwPVuje1l7/gazrpvxKaPwl9e2aFnCOUR+chBCA2S1ZAmyMVIrYbfmUMxFlLXCFq4GZ8osRFMymr7AEApSSkP0+h9IXmtFeMdhVFggTGiAkNmTmLJYn0bDhkyqd0J7d0xZM1oTtSzFOi5fyWEPg28w5b+VjhNK/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765960286; c=relaxed/simple;
	bh=bKrtFr1RQGqQzcKndzltvJM4/uk1G6pXlyCk922Cg2w=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=XY5oS2ZkETw4+jKKRJaxv1ORdRMprXPSQsyGRyC3dC2pKj4bC6LRQCQYT3ggVOD9aYfOaMyLX7d0dxKVK7C91t7NK1kOzcuRn+4Bl+whjKrsVrPGyXkH2yFPlS1AbjHVd5h7Ln0+uvH329EFU0G8C2ql73Sme9levsEujSJy1gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=X2Kg35ig; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1765960275;
	bh=1wYrbfZXZh7/scKLy3xbaCZxrm00VHqIIzOcEqNZUpE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=X2Kg35igSxKpsjL8aK8/Htu0f0qjfdhWw8i6M6+waNxAEC2djTGcmXwTZvwbPB72N
	 Tr9HGIuY9zdCTpouj4IMDAiYBToAFU6N48x9o77txNHsdsb7gtFUPOEglcL2FjLDDF
	 U4afLnP6sr1oNFg4g5Y+xqg7SnXNSpbOLcyd76DSSSZBIx2NQV5CebAH3rgg6tz0D4
	 93uuyUDsGowxvqPVaAveI5knAey1SaG/ni6LQa//yuhbn8aSqT0zoG/c+gm6Z9ekI7
	 4lVSgVtpLxHaBkDhyzPd3+6KwmhUZAg+JepV6tEFt1kduAaVIigUm6icz1w+sv/acz
	 ReR/yJ0lHlj/Q==
Received: from [127.0.1.1] (unknown [180.150.112.216])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 6C1337DEAD;
	Wed, 17 Dec 2025 16:31:15 +0800 (AWST)
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
 joel@jms.id.au, Cosmo Chou <chou.cosmo@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 cosmo.chou@quantatw.com
In-Reply-To: <20251217023938.445721-1-chou.cosmo@gmail.com>
References: <20251217023938.445721-1-chou.cosmo@gmail.com>
Subject: Re: [PATCH v2 0/5] ARM: dts: aspeed: bletchley: Fix dt-schema
 warnings
Message-Id: <176596027534.2875246.12913980516498879452.b4-ty@codeconstruct.com.au>
Date: Wed, 17 Dec 2025 19:01:15 +1030
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3

On Wed, 17 Dec 2025 10:39:33 +0800, Cosmo Chou wrote:
> This series fixes dt-schema validation warnings by using generic node
> names, correcting GPIO property suffixes, and removing unsupported
> properties. No functional changes.
> 
> Changes in v2:
> - Split single patch into 5 separate patches by change type
> 
> [...]

Thanks, I've applied this to the BMC tree.

-- 
Andrew Jeffery <andrew@codeconstruct.com.au>


