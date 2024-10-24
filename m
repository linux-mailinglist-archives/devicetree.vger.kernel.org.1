Return-Path: <devicetree+bounces-115273-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 150919AEB97
	for <lists+devicetree@lfdr.de>; Thu, 24 Oct 2024 18:15:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AA5551F239EA
	for <lists+devicetree@lfdr.de>; Thu, 24 Oct 2024 16:15:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C1A01B0F16;
	Thu, 24 Oct 2024 16:15:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vIvBfst6"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DB241547D2;
	Thu, 24 Oct 2024 16:15:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729786513; cv=none; b=gqGzrW9peZJUyhZcvhcCUynHN094KGP/JitGNA/1+9hFbBZtaV2CQP536TEcp75CCIySZAnvaaEyreEsdlIjXF+mYNiBTaI1afKUbjp6IljW93Qvfmlv37SCso39ARV94UFfAxUJ0zQOgdfiG0PYlqaXd1ifnxl3vLTy+w+pNCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729786513; c=relaxed/simple;
	bh=a8XUIXmSwn3FMAXyuMm+VKbLCqiY3txch6Yo+wm1HOc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SZLQl0Gy3bgwqbWIk5Q1sXIWIcAcpZwZFIH2UBwBSYAaO7fP3auCJdwRjIoxBX40e8qDDHefRMWdUKLt1epcRWLIKP81EasFX5097p8r/wQbXB4gHB2HHhTGogQB34U8tIQGncMP4xxd+IsLGKekXRqXsuWNfALYBX0hNomKHro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vIvBfst6; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EBEE7C4CEE3;
	Thu, 24 Oct 2024 16:15:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729786513;
	bh=a8XUIXmSwn3FMAXyuMm+VKbLCqiY3txch6Yo+wm1HOc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vIvBfst6qB5Fr6s64C+mGYI76ibwQTq7TWHH5PWMHOvQrsZ7YXBIpXr63fOzX2wUV
	 /b89nrXqbkV0CxduNhrbfhy1MhR5A2aLSANu++VHG7IDm3TmNKxoK3XNEhoHVUgCXm
	 Mfcb0pMbFRkgTA4qOkJzeEmSj+1cp69VSxM8No+wEBzSlHZz1wnn0yyXU8EOdKptgW
	 1NbINZt+lR341aKHajDrfSk2Xfw+4F58OcWqreAqj6lR2rcRfCip4foVksAO3b0T5V
	 HNdn0hMMq+AApsFLXPWwxZu919e1Oj/z0F5Ss/TVGh6pd9oxj6gh4E9NUpc+/4yorC
	 3N0cFNtD8W5bg==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1t40Ui-000000002M9-0Egw;
	Thu, 24 Oct 2024 18:15:28 +0200
Date: Thu, 24 Oct 2024 18:15:28 +0200
From: Johan Hovold <johan@kernel.org>
To: Marc Zyngier <maz@kernel.org>
Cc: Sibi Sankar <quic_sibis@quicinc.com>, andersson@kernel.org,
	konradybcio@kernel.org, krzk+dt@kernel.org, robh+dt@kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, conor+dt@kernel.org,
	abel.vesa@linaro.org, srinivas.kandagatla@linaro.org
Subject: Re: [PATCH 0/2] X1E001DE Snapdragon Devkit for Windows
Message-ID: <ZxpyoFjA0jR_sxbg@hovoldconsulting.com>
References: <20240911073337.90577-1-quic_sibis@quicinc.com>
 <f67d0fcd-4940-a57a-0e11-b98ed29cd09d@quicinc.com>
 <86r08532wa.wl-maz@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <86r08532wa.wl-maz@kernel.org>

On Thu, Oct 24, 2024 at 05:02:29PM +0100, Marc Zyngier wrote:

> The only change I made was to enable the ITS for pcie5, which was
> routed via the PCIe MSI widget instead. But that's a SoC dtsi issue
> for which I'll post a patch separately.

That's done on purpose since the boot firmware is not setting things up
so that we can use the ITS with PCIe5 (or PCIe3) when running in EL1
currently.

Johan

