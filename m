Return-Path: <devicetree+bounces-131480-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DA3159F362F
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 17:36:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D2826188210C
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 16:33:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D43B720627E;
	Mon, 16 Dec 2024 16:31:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HrF+QbPy"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFBC9193430
	for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 16:31:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734366681; cv=none; b=sNUzT7luDIY0HPU6nEN/rmVR69ZDbYDfsMBkfHvTdk7Xee7rkkC/U/6HCk2k90vGZApptJKFRHuHGEh2yVcIzoI36d4MMvGgTmSohZvc6tkaJVJ4/g2PGiNhjeNh47rkdgUSYNMuQxftYByLYZg5o5BmJqI1ZjPNDKFbRSVytR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734366681; c=relaxed/simple;
	bh=XNJCjXv1TVDA4kT/hsYK3Sls7xWWCeKlDzSzV4FSBNQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=slb7syzrmj1ychya9IeNePO5RNIRRnCFgIQ4fJRlN/bVtuT793BquLfPXDCMJNIlhrKTNA4hgITl3sLxwa6fQ5SLoavUuuYkjaq+D854i9YtVo1wyGUQWBvTfaEf9NVFi0oxHh6HKPAXp7V/SiF5I7ahWk4RpwY3FN6rixzvVDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HrF+QbPy; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 00913C4CED4;
	Mon, 16 Dec 2024 16:31:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734366681;
	bh=XNJCjXv1TVDA4kT/hsYK3Sls7xWWCeKlDzSzV4FSBNQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HrF+QbPyo61zH2Mj2oUy7+0IvqLa3BFSOnqTkjsvgzsgvZfmQNA4xz2YUOnacbtYk
	 7/GcYrpUlZcd/CUXPFh5fOi2T5Hnil3FPABjyjgkUNCew4A0dwLEoLD0u6Lo72GX7f
	 UJALuNX607i3WEssVmD2TxwX6WF4Pc0mjX2rW99eS6O8jL7ggwcNKjSJZfYnyMyPMU
	 3kCYjw/wBLSak1pTiNNCXdlAfc7Zb/vXLoEQNzfA3sJCXHA/rrqk4jbn1mRFOBIepd
	 nSMW2pw5qe3bGRgNV42ZQ935tSHLFfrtNAvbVo6O/yZSAn9ucVxqy8ScTXL6VFuIOS
	 SKEi6rulnNTiQ==
Date: Mon, 16 Dec 2024 10:31:09 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	Fabio Estevam <festevam@denx.de>, conor+dt@kernel.org,
	tglx@linutronix.de, linux-arm-kernel@lists.infradead.org,
	Conor Dooley <conor.dooley@microchip.com>,
	devicetree@vger.kernel.org, daniel.lezcano@linaro.org,
	krzk+dt@kernel.org
Subject: Re: [PATCH RESEND 2/2] dt-bindings: timer: fsl,imxgpt: Document
 fsl,imx35-gpt
Message-ID: <173436664990.274185.16737357220255320262.robh@kernel.org>
References: <20241202132147.587799-1-festevam@gmail.com>
 <20241202132147.587799-2-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241202132147.587799-2-festevam@gmail.com>


On Mon, 02 Dec 2024 10:21:47 -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> The i.MX35 General Purpose Timer is compatible with i.MX31.
> 
> Document the fsl,imx35-gpt compatible.
> 
> This fixes the following dt-schema warning:
> 
> timer@53f90000: compatible: 'oneOf' conditional failed, one must be fixed:
> 	['fsl,imx35-gpt', 'fsl,imx31-gpt'] is too long
> 	'fsl,imx1-gpt' was expected
> 	'fsl,imx21-gpt' was expected
> 	'fsl,imx27-gpt' was expected
> 	'fsl,imx31-gpt' was expected
> 	'fsl,imx35-gpt' is not one of ['fsl,imx25-gpt', 'fsl,imx50-gpt', 'fsl,imx51-gpt', 'fsl,imx53-gpt', 'fsl,imx6q-gpt']
> 	'fsl,imx6dl-gpt' was expected
> 	'fsl,imx35-gpt' is not one of ['fsl,imx6sl-gpt', 'fsl,imx6sx-gpt', 'fsl,imx8mp-gpt', 'fsl,imxrt1050-gpt', 'fsl,imxrt1170-gpt']
> 	'fsl,imx35-gpt' is not one of ['fsl,imx6ul-gpt', 'fsl,imx7d-gpt']
> 	'fsl,imx6sx-gpt' was expected
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> Reviewed-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>  Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Applied, thanks!


