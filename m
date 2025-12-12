Return-Path: <devicetree+bounces-246088-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 90D61CB87A6
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 10:33:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 81FB93007191
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 09:33:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8904A313279;
	Fri, 12 Dec 2025 09:33:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from Atcsqr.andestech.com (60-248-80-70.hinet-ip.hinet.net [60.248.80.70])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7E55279DCC
	for <devicetree@vger.kernel.org>; Fri, 12 Dec 2025 09:33:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=60.248.80.70
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765532031; cv=none; b=QhoGIkjTnj9rnLRpKBL0Mwb617FJy5hqCQE2t5/moIOhJjjrQUQWKuZb7Y+7mX6cMWgZnI9cyZqwTv3+r2yVfs85FY+BhHQiSz1oKepHyo+ygm/rEoCMWz3GrnFIiJIi0ORLrR/O5hgwoWXR3jDNKgaNCFSNJAZpAIq2ptjE6Zw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765532031; c=relaxed/simple;
	bh=9p5HbVjJ2BDhCNOgU/kZjkiQCm3ufno6fH+QQNURK5g=;
	h=Date:From:To:CC:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tjMmgLsenZsRkMLB7Wi0lCGb58p46ltyJB8Gw3tfQPYMAY2e49XNlkhXidimu21CqGjyjRFBPU98WJuWNzh6RAkgXFFvlb7d9liEfTd9uKxUQF0X2UH1WSwdLr2y4Gh1hMjI+ySgM6bN1CDUCCctzHWGHOqBWnuCnc88Cseg/P8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=permerror header.from=andestech.com; spf=pass smtp.mailfrom=andestech.com; arc=none smtp.client-ip=60.248.80.70
Authentication-Results: smtp.subspace.kernel.org; dmarc=permerror header.from=andestech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=andestech.com
Received: from mail.andestech.com (ATCPCS34.andestech.com [10.0.1.134])
	by Atcsqr.andestech.com with ESMTPS id 5BC9XYND085708
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=OK);
	Fri, 12 Dec 2025 17:33:34 +0800 (+08)
	(envelope-from cl634@andestech.com)
Received: from swlinux02 (10.0.15.183) by ATCPCS34.andestech.com (10.0.1.134)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.39; Fri, 12 Dec
 2025 17:33:33 +0800
Date: Fri, 12 Dec 2025 17:33:33 +0800
From: CL Wang <cl634@andestech.com>
To: Conor Dooley <conor@kernel.org>
CC: <broonie@kernel.org>, <linux-spi@vger.kernel.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <tim609@andestech.com>
Subject: Re: [PATCH V2 1/3] dt-bindings: spi: Add support for ATCSPI200 SPI
 controller
Message-ID: <aTvhbe3oyxRRMZTx@swlinux02>
References: <20251210090430.3602380-1-cl634@andestech.com>
 <20251210090430.3602380-2-cl634@andestech.com>
 <20251210-repeated-perjurer-99219893524a@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20251210-repeated-perjurer-99219893524a@spud>
User-Agent: Mutt/2.2.12 (2023-09-09)
X-ClientProxiedBy: ATCPCS33.andestech.com (10.0.1.100) To
 ATCPCS34.andestech.com (10.0.1.134)
X-DKIM-Results: atcpcs34.andestech.com; dkim=none;
X-DNSRBL: 
X-SPAM-SOURCE-CHECK: pass
X-MAIL:Atcsqr.andestech.com 5BC9XYND085708

Hi Conor,

Thanks for the review.

Understood regarding the requirement for a proper fallback compatible.
For v3, I will:

Use "andestech,qilai-spi" as the primary compatible.
Add "andestech,ae350-spi" as the fallback compatible.

Rename the binding file accordingly.
I'll send out v3 soon.

Thanks again for your feedback.

Best regards,
CL


