Return-Path: <devicetree+bounces-207115-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id CD3B6B2E8B9
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 01:35:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1D4ED7AFCF3
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 23:34:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 287F82D9780;
	Wed, 20 Aug 2025 23:35:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sKcM1ibb"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 041831D86DC
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 23:35:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755732949; cv=none; b=uFaaltcaBB0eqtTlA3uHeo7OeUMcRAfm2Y2xL7NcQrXKuDJkFQMQEK4dbFioIsk4GDa+jzRO6JdqJYBeK38ofL/Ck5pe5rPehDuuuqxjRgtRsiMiTfickcxq1gyHvVbgpwMcUMsZAHaegupKmXIR0VBcDJ1whiv9XGVO8GWVOyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755732949; c=relaxed/simple;
	bh=y57OXA2qf0ImBgIAMIygDKuxGU0lido+XJCFV2fG2rs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=t6da+MV9vaWKHoVa0CEXGYK84ZG4U6N33vLhDYd/l4TLQ3V3+WlSJqtJo/P4hGljZOmOUVkY1Xf88DH0oq7OzP3NFwdXjXoMGR6L3tthWb/Hqfdg21CPuzhIJr2VP1VwDENg0QyImBhUxpWEcAtqgH/kf7DAOtSv/wqMDRVGQ/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sKcM1ibb; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 36F06C4CEE7;
	Wed, 20 Aug 2025 23:35:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755732948;
	bh=y57OXA2qf0ImBgIAMIygDKuxGU0lido+XJCFV2fG2rs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sKcM1ibb8MR4oGQMr9Iti0vVq6ftAwMHTG7m7VQxgWzQIf+aJWsugCZci+v0gqIgN
	 NThenXhxpwjRr3sjjWbs9s5fi4o8Q3MVZ4PK2pGvjgnY3E9/rTXKyCjKue+TwQLwvY
	 4LcJbfkfPbafd/mauVtJXps5f89CcfL1RZ2UYpnQ8sW/ycGKfGSjZxyd87YYbnbV+U
	 or0dwV6f3xxcVdEoggkerG69Ijm3Ufr6Mx9dEelBFTWLOmYD874mkcUj+Y0KtYd16D
	 0p9e19/egc/sfba2OA9OFld/JbA+ZwCcAGFuEnaf5tWPZ1fGkAo2xIcyZDHLkdstfT
	 psocEQxyqFI/A==
Date: Wed, 20 Aug 2025 18:35:42 -0500
From: Rob Herring <robh@kernel.org>
To: "Kumar, Udit" <u-kumar1@ti.com>
Cc: "Raghavendra, Vignesh" <vigneshr@ti.com>,
	Harikrishna Shenoy <h-shenoy@ti.com>, neil.armstrong@linaro.org,
	jessica.zhang@oss.qualcomm.com, airlied@gmail.com, simona@ffwll.ch,
	maarten.lankhorst@linux.intel.com, mripard@kernel.org,
	tzimmermann@suse.de, krzk+dt@kernel.org, conor+dt@kernel.org,
	nm@ti.com, kristo@kernel.org, thierry.reding@gmail.com,
	sam@ravnborg.org, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	s-jain1@ti.com, devarsht@ti.com
Subject: Re: [RFC PATCH 1/3] devicetree: bindings: dsiplay: panel:
 panel-simple.yaml: Add Raspberry pi dsi panel compatible
Message-ID: <20250820233542.GA1691241-robh@kernel.org>
References: <20250818154746.1373656-1-h-shenoy@ti.com>
 <20250818154746.1373656-2-h-shenoy@ti.com>
 <06a9fa20-e45a-458c-971a-a6f0f1d08004@ti.com>
 <f2fff09a-376a-44b9-a421-13202b1079fb@ti.com>
 <0268561b-8a3b-4508-bd28-3b47f5a8b754@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <0268561b-8a3b-4508-bd28-3b47f5a8b754@ti.com>

On Tue, Aug 19, 2025 at 11:22:42AM +0530, Kumar, Udit wrote:
> 
> On 8/19/2025 10:46 AM, Raghavendra, Vignesh wrote:
> > 
> > On 8/19/2025 10:24 AM, Kumar, Udit wrote:
> > > On 8/18/2025 9:17 PM, Harikrishna Shenoy wrote:
> > > > Add RPi DSI panel[0] as a valid compatible for simple-panel.
> > > > 
> > > > [0]: https://www.raspberrypi.com/products/raspberry-pi-touch-display/
> > $subject has typo s/dsiplay/display and s/dsi/DSI
> > (use a spellcheck with your editor).
> > 
> > Also follow the existing prefix convention for the file (run
> > git log --oneline to figure out the right prefix)
> > 
> > > > Signed-off-by: Harikrishna Shenoy <h-shenoy@ti.com>
> > > > ---
> > > >    .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 ++
> > > >    1 file changed, 2 insertions(+)
> > > > 
> > > > diff --git a/Documentation/devicetree/bindings/display/panel/panel-
> > > > simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-
> > > > simple.yaml
> > > > index 1ac1f0219079..65f486f2bc9d 100644
> > > > --- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> > > > +++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> > > > @@ -268,6 +268,8 @@ properties:
> > > >          - rocktech,rk070er9427
> > > >            # Rocktech Display Ltd. RK043FN48H 4.3" 480x272 LCD-TFT panel
> > > >          - rocktech,rk043fn48h
> > > > +        # Raspberry, 7" dsi panel
> > > > +      - rpi,7inch-dsi
> > > Hello Hari,
> > > 
> > > Driver changes should come first to match new compatible before device
> > > tree changes.
> > No, there isnt a driver update that I can see in the current series. But
> 
> correct current series does not have driver changes.
> 
> I would expect driver changes as well, which should come before device tree.

If you rely on that, then you are likely breaking the ABI. Please don't 
submit any DT related patches until you understand that.

You must define the ABI first, then add users of that ABI. Users are 
both .dts files and drivers. It is that simple.

Rob

