Return-Path: <devicetree+bounces-135070-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A79F39FF9F6
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 14:53:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DA87318839F3
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 13:53:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E49CE19D898;
	Thu,  2 Jan 2025 13:53:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="uHTYlj/S"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DCF51EB2F;
	Thu,  2 Jan 2025 13:53:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.23.249
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735826002; cv=none; b=G5Fl6ORILSS8rX8H+4MNlCCsjmfnnJVprc47cqvbG04QIGt2bCvcdllJ+LtP42dDEJCKIQgg7+tRjmdKOFW/1iw6/VzjSfMg2kOl484cBWWSpM78rEzawz1h/4MVuFI6xHa3TW22DefMApUAitbPdqlY1g6+nzMLwdwX8/ByuFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735826002; c=relaxed/simple;
	bh=W7p1kEiPOy9w+YUeYqpocxR17JMMLtlvJYFMkDEjRH0=;
	h=Date:From:To:CC:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CSQZMXyW6n9mkneCTz8ZcaljAfAb49sPPFblVdCcS/CZ8JrqjtuueWg4ad2jTmWw3fj3BGE7XLsGh9j20LMG4nrhbEm4avLP+166W2ZXPkWAFcxz2Zx+X5EVhV/jJOjT9aUjoilnpV8tLsX0fmgTdGveYxNOnKg94OGsmEkN49o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=uHTYlj/S; arc=none smtp.client-ip=198.47.23.249
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 502DrCpC063687;
	Thu, 2 Jan 2025 07:53:12 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1735825992;
	bh=NNwzpL+BPINQJWoCjLecjK+jDtGkY87rOoq7mOpqYBM=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=uHTYlj/SkhF1u7t2MlRcZqC2Ai9ewWMC2xSvuBFLltQb8rTA/kXExsYaINMFXJgcF
	 tkgPHyN8bWx+3+T2qJvdLV5jkyF5+qwXDA5puPu1CPawQtaMb+qjapUJ0J47kY+2SY
	 fQzgl74t/KPd+4+PxxhP0o1HyR/P7KjicMSTSE4k=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTP id 502DrCHL121728;
	Thu, 2 Jan 2025 07:53:12 -0600
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 2
 Jan 2025 07:53:12 -0600
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 2 Jan 2025 07:53:12 -0600
Received: from localhost (uda0492258.dhcp.ti.com [10.24.72.104])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 502DrB4c005294;
	Thu, 2 Jan 2025 07:53:12 -0600
Date: Thu, 2 Jan 2025 19:23:10 +0530
From: Siddharth Vadapalli <s-vadapalli@ti.com>
To: Enric Balletbo i Serra <eballetb@redhat.com>
CC: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
        "Tero
 Kristo" <kristo@kernel.org>, Rob Herring <robh@kernel.org>,
        "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, Dasnavis Sabiya <sabiya.d@ti.com>,
        <s-vadapalli@ti.com>
Subject: Re: [PATCH v2] arm64: dts: ti: k3-am69-sk: Add USB SuperSpeed support
Message-ID: <c73edt6zrcg2qx6jxvlpszjlpb62pgq6ypytsur27ep4biq6tn@olk7mtnqk4s4>
References: <20241204-am69sk-dt-usb-v2-1-d59b2ac45c6e@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241204-am69sk-dt-usb-v2-1-d59b2ac45c6e@redhat.com>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

On Wed, Dec 04, 2024 at 12:05:26PM +0100, Enric Balletbo i Serra wrote:
> From: Dasnavis Sabiya <sabiya.d@ti.com>
> 
> AM69 SK board has two stacked USB3 connectors:
>    1. USB3 (Stacked TypeA + TypeC)
>    2. USB3 TypeA Hub interfaced through TUSB8041.
> 
> The board uses SERDES0 Lane 3 for USB3 IP. So update the
> SerDes lane info for PCIe and USB. Add the pin mux data

nitpick: s/SerDes/SERDES to keep it consistent with the convention
followed at all other places.

> and enable USB 3.0 support with its respective SERDES settings.
> 
> Signed-off-by: Dasnavis Sabiya <sabiya.d@ti.com>
> Signed-off-by: Enric Balletbo i Serra <eballetb@redhat.com>

Reviewed-by: Siddharth Vadapalli <s-vadapalli@ti.com>

Regards,
Siddharth.

