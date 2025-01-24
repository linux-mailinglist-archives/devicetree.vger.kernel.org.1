Return-Path: <devicetree+bounces-140718-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 711EEA1B194
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 09:23:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 224593AAB3E
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 08:22:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 260BA218AD6;
	Fri, 24 Jan 2025 08:22:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BE1F218AC0;
	Fri, 24 Jan 2025 08:22:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737706978; cv=none; b=jxZLvyhBNX+c6gcj9OBniUIjrCo4Q+8y83a3j0vJPdVXpyyEI6BffIUN8bKypQFcuxXW8h7xmUUaOPwHbV6XEgbUwrdHDsWQQME2EWgr+btGK3aFL8IYAsUmjp4/rHJDYSjdIKqSYEpfro2hiucb6bJQIMtJU2IpzugYM5iefOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737706978; c=relaxed/simple;
	bh=Q1IpJfooWgV1G+ljvU7vx8poMzlFNzXjzXciEhEOxoU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EzL6l2SOps+WB86RkcTCj/UYkemF4uVta5mGWLYeG6utyK2NGMNgmIX1TkSXVe8Yw11Roi/GQ0NKYYyurhH/xJX3ZsbB2GpzF4MKXKowMyaSw4WuVOAu/N4oIlHpUEcbgvf51DfaloF2YqaQb+VWIEDRW2Ri7GeYi3Lrt1wS478=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 853C2C4CEDD;
	Fri, 24 Jan 2025 08:22:56 +0000 (UTC)
Date: Fri, 24 Jan 2025 09:22:54 +0100
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Markus Schneider-Pargmann <msp@baylibre.com>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Siddharth Vadapalli <s-vadapalli@ti.com>, Nishanth Menon <nm@ti.com>, 
	Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 2/5] dt-bindings: mfd: syscon: Add ti,am62-ddr-pmctrl
Message-ID: <20250124-able-beagle-of-prowess-f5eb7a@krzk-bin>
References: <20250122-topic-am62-dt-syscon-v6-13-v1-0-515d56edc35e@baylibre.com>
 <20250122-topic-am62-dt-syscon-v6-13-v1-2-515d56edc35e@baylibre.com>
 <20250124-heavy-jaybird-of-vitality-4cbe24@krzk-bin>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250124-heavy-jaybird-of-vitality-4cbe24@krzk-bin>

On Fri, Jan 24, 2025 at 09:19:49AM +0100, Krzysztof Kozlowski wrote:
> On Wed, Jan 22, 2025 at 11:24:33AM +0100, Markus Schneider-Pargmann wrote:
> > Add compatible for ti,am62-ddr-pmctrl to the list. There is a DDR pmctrl
> > register in the wkup-conf register space of am62a and am62p. This
> > register controls DDR power management.
> > 
> > Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
> > ---
> >  Documentation/devicetree/bindings/mfd/syscon.yaml | 2 ++
> >  1 file changed, 2 insertions(+)
> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Un-acked, I missed the point that you really speak in commit msg about
register and you really treat one register is a device. I assumed you
only need that register from this device, but no. That obviously is not
what this device is. Device is not a single register among 10000 others.
IOW, You do not have 10000 devices there.

So:

NAK

Best regards,
Krzysztof


