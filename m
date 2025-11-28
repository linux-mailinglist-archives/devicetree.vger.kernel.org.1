Return-Path: <devicetree+bounces-242947-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 34C04C919E9
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 11:28:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 27969352749
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 10:27:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D62F630B538;
	Fri, 28 Nov 2025 10:27:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="J8Tel4Xr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D771030B525
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 10:27:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764325627; cv=none; b=OVZXhWnBNSlKE998ngu/BpV9iOghLWvz/FvRBz3unG4B0+1zZr7mgl8aqdaMir/31wAyhpaTGLzdkf5poXyTt838gEZZ/tSN0lAxeWfofLy3ltY8m+lJ6n43DcA29KI19VtBWyBHxKzbIYh5dR29YNVvAE3uTMiL09HB4+dD3Jg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764325627; c=relaxed/simple;
	bh=37phGjIVAssP5qEajtizGVtsPCnjB7wlJw1GmaPAjs8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=q+9OeS7ODUI0Co2yfzh9L9f/iYWQLT+YGqt59RRwMFeFd5bJ3+YXyzRvHQJoOxNCgyeuoS/vTYPrxtuiC4C21O1grhZ0f66jd7uOcKmOFTH6XtLZ9RTw9eLjSslN0RJSxST9LyyP/Bd4YL0hGGGQeZFkTKVfIrtwDm2Z6WJ81NA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=J8Tel4Xr; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4779adb38d3so11268535e9.2
        for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 02:27:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1764325624; x=1764930424; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=dbpi+XplKObBTQRgoiJ9xznPNTXhWsk7UT7K9zwL4SU=;
        b=J8Tel4XrgvnoBrOz9s5Ky3EHiLikaR3BmqJ+1OfT/Bfa7fCA6OHWqXdEOVE2m+0Gui
         nqdSDLzeJ7OE18xeZzZ+5ubzJT9QeEslfBTCd7iFFr9zhFIlCGbDx9f0MRp9Ja54WWoM
         iTc0oWVpyrnZDjxWRA9xhkSJytS4xdzFzL//wCe7+jojHnfxsf+fXicUw5blg2wSi9iH
         46HylSRHiFRGSru0hF3s9SdnAGl+x35571DlFmOLqfrq7HHXHY1wNPLZ07bDdSWzoSqr
         oTkwOx79MMupTNr6I03lKWgbptwyQtAvsgQ7/mSuifxP/HeeTfOrRmNcoN6UsfOAOfy+
         4v/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764325624; x=1764930424;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dbpi+XplKObBTQRgoiJ9xznPNTXhWsk7UT7K9zwL4SU=;
        b=VDsSEzjROp+APRPHPZudLEcpB/dlsZo1Hhpit4DhOXk1gqEAT5fLaP3L7VxRMAnKS/
         7RBO8Kr4AEZQ8djK6/Y9s7Def5m5QoPVF8B/FtdcVSt6J7DODO5gLIv2yrpBc/KPgusy
         jWeK96dVHxB9iMDQiMdq04dSm+EZl2zTukVW39a3BcekuRXLlxlsZMJQc/66Tz/5u3QY
         5BVKL4i5b1Q5SlO7cxqgS/kb2HPurYNdjYXrpa+ZJUxhzlBV5Av152gwmsEQebRFe/A7
         BqvfA/v4MTOl7L7B7IhT1sHACSTi+7vyAo2IFzFryrCqiUUH+2s/xmHwciFIcKFNCo88
         nU4A==
X-Forwarded-Encrypted: i=1; AJvYcCWFE6Pqw0FGKul3wHbthjNvwXbLrOQ/VDapJR7ZM9m2LG2cIVAZyZn0V0AjsPLnQ/lP0ZYc7aUgQoP5@vger.kernel.org
X-Gm-Message-State: AOJu0Yy81Qa/ntfIX9ZdZgRrMtWwhOzfUJGCO3BRUhphYRSBGUo+LVA/
	aeSPzJGBMjfiM984d+PaHmsRjyjWO6sklqZ6yxC1KxB3GwhOeIH2TgKKIJAdCIo6Ypk=
X-Gm-Gg: ASbGncvYENF1a/pElJJo8ZeNEfJnPKxK2HZVomptz/1IsEeH8PpKFYZquZl3ZKz6ldC
	FoXqhhJ0fuSHYUSAkri6nquPAptPlu5GUN6cWfsjSVWlX+wfJKoTa5RZKcqcJIszJFyyrLorn/p
	80J3JbdqazGW8V8xKIpKmiGLkc4mUNr5rdWZmz4Ft9e9xW250R5iRBlAxQ/zAnGOK+pCkljcg6C
	itgbdDg9tXSqkEFLNuck54FCk6l/N4Nr1hJbMoX5/JmZsHYNSwFfWR2hgPKBpIWhPaQJpVs8RhD
	t8/fa7cFHZN+Wxi/lBQGLbx3QKwf5Z6+CigeDYSiiUJczegQStU1JbRgh3TWnpmVVTfxb3Ix0GW
	N9+6Lb7PjRuCV9N/UfLHP8I+bDL92HTo5Xwt3J8tuQEATwcY00FWczh1xyMkeoszJ6AVxTeQq9G
	8+3glXOw++1sKWZANCqaWpwA==
X-Google-Smtp-Source: AGHT+IFMGYOm3SMfcVpu0IsfzHVtCsWKYIglxU9Q43LM68jB71pDIyavHuI0Cl7IwNyGL3XVJDmyYg==
X-Received: by 2002:a05:600c:6287:b0:477:7925:f7fb with SMTP id 5b1f17b1804b1-47904ad0724mr117659975e9.10.1764325624089;
        Fri, 28 Nov 2025 02:27:04 -0800 (PST)
Received: from linaro.org ([2a02:2454:ff23:4430:31d5:c51:afbd:e2c4])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4791116c0acsm79482385e9.7.2025.11.28.02.27.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Nov 2025 02:27:03 -0800 (PST)
Date: Fri, 28 Nov 2025 11:26:58 +0100
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: Jonathan Marek <jonathan@marek.ca>
Cc: linux-arm-msm@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
	Abel Vesa <abel.vesa@linaro.org>,
	Rajendra Nayak <quic_rjendra@quicinc.com>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: qcom: x1e: bus is 40-bits (fix 64GB models)
Message-ID: <aSl48gV9laFb-MR1@linaro.org>
References: <20251127212943.24480-1-jonathan@marek.ca>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251127212943.24480-1-jonathan@marek.ca>

On Thu, Nov 27, 2025 at 04:29:42PM -0500, Jonathan Marek wrote:
> Unlike the phone SoCs this was copied from, x1e has a 40-bit physical bus.
> The upper address space is used to support more than 32GB of memory.
> 
> This fixes issues when DMA buffers are allocated outside the 36-bit range.
> 
> Fixes: af16b00578a7 ("arm64: dts: qcom: Add base X1E80100 dtsi and the QCP dts")
> Signed-off-by: Jonathan Marek <jonathan@marek.ca>
> ---
>  arch/arm64/boot/dts/qcom/x1e80100.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> index cff34d1c74b60..cd34ce5dfd63a 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> @@ -792,8 +792,8 @@ soc: soc@0 {
>  
>  		#address-cells = <2>;
>  		#size-cells = <2>;
> -		dma-ranges = <0 0 0 0 0x10 0>;
> -		ranges = <0 0 0 0 0x10 0>;
> +		dma-ranges = <0 0 0 0 0x100 0>;
> +		ranges = <0 0 0 0 0x100 0>;
>  

Could you clarify which "issues" (crashes?) you are referring to?

We need to distinguish two distinct use cases here, which are both
(somewhat) supported upstream: Running in EL1 with the Gunyah hypervisor
with the regular DTB and in EL2 with the x1-el2.dtbo applied.

# EL2 with x1-el2.dtbo

For EL2, I think the 40-bit dma-ranges should indeed work correctly, so
we could add your proposed change inside x1-el2.dtso. I'm not sure which
issues we are fixing with that though (besides correctness of the
hardware description). In EL2, all DMA devices should be behind an
IOMMU. In this case, the dma-ranges limit the size of the I/O virtual
addresses (DMA addresses) that are given to the devices. The IOMMU maps
the DMA buffers to arbitrary physical memory addresses (including
outside of the 36-bit range, dma-ranges limits only the DMA address).

I would expect that applying your change effectively just enlarges the
I/O virtual address space, which will then be 40-bit instead of just
36-bit. For most devices, even 32-bit of virtual address space should be
enough. A larger address space will only be applied for drivers that
explicitly request a larger DMA mask (e.g. the nvme driver).

We can make this change for correctness, but given that it is only about
the IOVA space, there shouldn't be much functional difference.

# EL1 with Gunyah hypervisor

For EL1, the hypervisor firmware used on most retail laptops limits the
usable DMA memory in the SMMUs to the physical 36-bit range. You are
right that laptops with 64 GiB memory are essentially unusable in EL1
without disabling the physical memory outside the 36-bit range, but
applying this patch would make it even worse.

There are two separate cases:

 - For devices behind the SMMUv2, the situation should be the same as
   above. Increased IOVA space, but no effect on physical address range.
   This is what is currently causing crashes with 64 GiB RAM in EL1.

 - Devices behind the SMMUv3 (PCIe) do not have an IOMMU assigned when
   running in EL1. In this case, the 36-bit dma-ranges prevents PCIe
   devices from using memory outside the 36-bit range. They will fall
   back to bounce buffers in that case. Applying your patch will disable
   that, making it even more likely to crash than before.

Given that x1e80100.dtsi / hamoa.dtsi primarily models the EL1 setup
with Gunyah hypervisor, I don't think it makes sense to apply this patch
as-is. It will just make it even more likely to crash than before.
I suggest adding these overrides in x1-el2.dtso, with the expected
limited effect I described above.

Thanks,
Stephan

