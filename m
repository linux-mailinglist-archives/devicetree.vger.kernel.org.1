Return-Path: <devicetree+bounces-132267-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BAF809F650A
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 12:38:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9513A1891E03
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 11:38:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58A8719F419;
	Wed, 18 Dec 2024 11:38:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q1Y03UVe"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3072E19CC2E;
	Wed, 18 Dec 2024 11:38:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734521883; cv=none; b=dalSx9oX3/SW5OXZj8EgYSpt1yz1CVZCnL/NNIgfTrApMOtq83k6nNN4wg6sa3GwblbMQ0GDA+Qp8f6z+m7Um0QVXAjgLHk+eukQ/SdA5t/S4X8l5jV5Y+0WdhJbCZ2+O00ebMxLwRXRMK2Hy9P9uk/2VZYX5zb6bt0rTd09I80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734521883; c=relaxed/simple;
	bh=XQjXoklGZLGKHVmh53VQtpS6HSx53WNxCAeG99b3Pz8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QbRoOLUIG7npqtjlblhA2lk1HM027kUVcZZSCXtF0uWxsLAIN1pmC8TxK2fLWWZdFfqdWkH8VcVDO0eLOXKI773RHVjX3A7zw65Yw0HELX7tKsPXhO/HkFcaQdsTQWGXvFQgMm8pG7u1tfsKO/4/mAmmdwYkDkfhkSc2eHM/wSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q1Y03UVe; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4680AC4CECE;
	Wed, 18 Dec 2024 11:38:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734521882;
	bh=XQjXoklGZLGKHVmh53VQtpS6HSx53WNxCAeG99b3Pz8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Q1Y03UVe5NAFohukaodG2wZKOo5F+/HiMdfV7n6d2uLUH2hjHUCDOhWGlW9hzPLkx
	 EXZJebSep5DCQdI8ecnw97/FRiQbgAVUslZdRWGs+wJNzsnb2S2SA22gK05wf7sya3
	 7fAEKLC2q9bHMKriScKcNC2X1fk0Gzt0lxrTNaOiYiMgt0xCsxjXTHTGRnBzAi/tTk
	 fQkUUjq6UCzaOtT/xalfUGxctr0BFUPabZBzycn0Eyp4M2vpONGuVqa4rK3v7J4zBm
	 lZENAXrSqQZkXsPH+E+pOK2Cz2nHsoSdPEc6+NJ4laSh0NAQyfhWKHVcznugme4/C0
	 lCO/k1H0lAS6w==
Date: Wed, 18 Dec 2024 12:37:59 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Florian Fainelli <florian.fainelli@broadcom.com>
Cc: linux-arm-kernel@lists.infradead.org, Rob Herring <robh@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
	"open list:MEMORY CONTROLLER DRIVERS" <linux-kernel@vger.kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: memory-controller: Document rev c.1.5
 compatible
Message-ID: <2e33t7ft5ermsfr7c4ympxrn6l5sqdef3wml4hlbnhdupoouwj@gfjpbmowjadi>
References: <20241217194439.929040-1-florian.fainelli@broadcom.com>
 <20241217194439.929040-2-florian.fainelli@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20241217194439.929040-2-florian.fainelli@broadcom.com>

On Tue, Dec 17, 2024 at 11:44:38AM -0800, Florian Fainelli wrote:
> Document the revision c.1.5 compatible string that is present on newer
> Broadcom STB memory controllers (74165 and onwards).
> 
> Signed-off-by: Florian Fainelli <florian.fainelli@broadcom.com>
> ---
>  .../bindings/memory-controllers/brcm,brcmstb-memc-ddr.yaml       | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/memory-controllers/brcm,brcmstb-memc-ddr.yaml b/Documentation/devicetree/bindings/memory-controllers/brcm,brcmstb-memc-ddr.yaml
> index 4b072c879b02..99d79ccd1036 100644
> --- a/Documentation/devicetree/bindings/memory-controllers/brcm,brcmstb-memc-ddr.yaml
> +++ b/Documentation/devicetree/bindings/memory-controllers/brcm,brcmstb-memc-ddr.yaml
> @@ -29,6 +29,7 @@ properties:
>            - brcm,brcmstb-memc-ddr-rev-c.1.2
>            - brcm,brcmstb-memc-ddr-rev-c.1.3
>            - brcm,brcmstb-memc-ddr-rev-c.1.4
> +          - brcm,brcmstb-memc-ddr-rev-c.1.5

You should use v2.1 fallback and drop driver patch. Or explain in
commit briefly why different approach is suitable.

Best regards,
Krzysztof


