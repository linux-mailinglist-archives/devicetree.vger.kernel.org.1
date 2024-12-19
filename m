Return-Path: <devicetree+bounces-132575-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E3D1E9F77D9
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 09:59:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A5904188F849
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 08:59:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F15B222579;
	Thu, 19 Dec 2024 08:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gs3SLyTt"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254601FA174;
	Thu, 19 Dec 2024 08:58:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734598733; cv=none; b=nLX4+29TGGZwI9yS3YUxFafYscXn1bP/3FeXlYZMQelHOSyuecJkptnRpgNM94Wbkux1Nt7JOm7KnFehscRz5z4hjUdLWIV0MJrkqkPoekS3Xa4iQVirh9pFccrTNcqtxqGEY+hM1W4v01Kd6zzKtjRVyfJJ8xJ7ctFKxoH7rDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734598733; c=relaxed/simple;
	bh=LOK0TE+8vPsHm4UXCYz9e9AntHd5VpNaIBCeHki8HvI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Hq26wdR1CsPABPCGcZJ/N5Gz0SCq/WKa8n+joRd3aK9DCM9GCp0bVHeZpBTNH4E6XVO/0xhA8FokOsU59LHZ1eNgeO4lvYBHL16qr4A28zPPDV5nCl7PkmNkdlcqiDlfRDMlCAvlv5CZh2iPyFG06tZ23P8v4bNL5FwRebljhW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gs3SLyTt; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D23FDC4CED0;
	Thu, 19 Dec 2024 08:58:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734598732;
	bh=LOK0TE+8vPsHm4UXCYz9e9AntHd5VpNaIBCeHki8HvI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Gs3SLyTtWo1ibINtCMTRJmvV7+mNaOqJmqKpp7i8wXxNG13erchRiZ6gB+FoDx/q3
	 OSeXvRYOLVMA/GxOkorAQrwmwPyRaqlffBsmUP7b4jmVJGhrMsYtiuDPtskxYRrdV5
	 aAViHJog/9POQyOB3zAoKRuVGH5718x9ALkGgGVKmdsSHdZFWRGSBe3ySYh0ErAn3f
	 xF42AAWtMMn0PH2llw3tOrXiVh8GzwlLhOpXIhI2L+JID35GhXOPBSjYMYmBZxNyyv
	 TeIVXjFF3kOaWJDt68tvDAwdYD125jw7x6pWH3mDxGwuC28yKRjD4ezLR0NqrG63Tf
	 Kzs/HOzcDviBw==
Date: Thu, 19 Dec 2024 09:58:48 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Florian Fainelli <florian.fainelli@broadcom.com>
Cc: linux-arm-kernel@lists.infradead.org, Rob Herring <robh@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
	"open list:MEMORY CONTROLLER DRIVERS" <linux-kernel@vger.kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: memory-controller: Document rev c.1.5
 compatible
Message-ID: <wxq5zzfh5jesucbbste2j6x2jtj45wjfc5xzjkqbqqta7cprda@oaf5arr3z6pt>
References: <20241217194439.929040-1-florian.fainelli@broadcom.com>
 <20241217194439.929040-2-florian.fainelli@broadcom.com>
 <2e33t7ft5ermsfr7c4ympxrn6l5sqdef3wml4hlbnhdupoouwj@gfjpbmowjadi>
 <93a1333d-442f-4cec-b823-9b1a5ff6dc6b@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <93a1333d-442f-4cec-b823-9b1a5ff6dc6b@broadcom.com>

On Wed, Dec 18, 2024 at 09:15:08AM -0800, Florian Fainelli wrote:
> On 12/18/24 03:37, Krzysztof Kozlowski wrote:
> > On Tue, Dec 17, 2024 at 11:44:38AM -0800, Florian Fainelli wrote:
> > > Document the revision c.1.5 compatible string that is present on newer
> > > Broadcom STB memory controllers (74165 and onwards).
> > > 
> > > Signed-off-by: Florian Fainelli <florian.fainelli@broadcom.com>
> > > ---
> > >   .../bindings/memory-controllers/brcm,brcmstb-memc-ddr.yaml       | 1 +
> > >   1 file changed, 1 insertion(+)
> > > 
> > > diff --git a/Documentation/devicetree/bindings/memory-controllers/brcm,brcmstb-memc-ddr.yaml b/Documentation/devicetree/bindings/memory-controllers/brcm,brcmstb-memc-ddr.yaml
> > > index 4b072c879b02..99d79ccd1036 100644
> > > --- a/Documentation/devicetree/bindings/memory-controllers/brcm,brcmstb-memc-ddr.yaml
> > > +++ b/Documentation/devicetree/bindings/memory-controllers/brcm,brcmstb-memc-ddr.yaml
> > > @@ -29,6 +29,7 @@ properties:
> > >             - brcm,brcmstb-memc-ddr-rev-c.1.2
> > >             - brcm,brcmstb-memc-ddr-rev-c.1.3
> > >             - brcm,brcmstb-memc-ddr-rev-c.1.4
> > > +          - brcm,brcmstb-memc-ddr-rev-c.1.5
> > 
> > You should use v2.1 fallback and drop driver patch. Or explain in
> > commit briefly why different approach is suitable.
> 
> Are you suggesting that we should have fallback compatible strings, such
> that we have something like this:
> 
> compatible = "brcm,brcmstb-memc-ddr-rev-c.1.5",
> "brcm,brcmstb-memc-ddr-rev-c", "brcm,brcmstb-memc-ddr"
> 
> and the driver only needs to match on "brcm,brcmstb-memc-ddr-rev-c" and
> apply the adequate register offset table?

Almost, fallback should be brcm,brcmstb-memc-ddr-rev-b.2.1 or whatever
was in the driver first or whatever is the oldest known common
interface.

brcm,brcmstb-memc-ddr-rev-c is not a specific compatible.

> If so, that is not how the current binding, and therefore DTBs are being
> deployed, so that will introduce a breakage until we update all DTBs in the
> field...

No. First, I thought about new comaptible so the one you add here. No
breakage, it's new compatible. This saves you these pointless updates of
driver everytime you add new compatible.

Second, you can introduce fallbacks to older compatibles as well - there
will be no breakage, because you add one more compatible. The old
compatibles (covered by fallback) of course stays in the driver, so
there is no breakage at all. We did it multiple times for several
different bindings in Qualcomm. People were doing exactly the same:
adding compatible for new device to binding and driver, without
considering the compatibility at all.

Except being logically correct choice - using fallbacks - this really
has huge benefits when later upstreaming complete, big SoCs, like we do
for latest Qualcomm SoCs: several changes will be only bindings updates.

Best regards,
Krzysztof


