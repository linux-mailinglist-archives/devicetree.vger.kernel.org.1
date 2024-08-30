Return-Path: <devicetree+bounces-98519-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 831B0966681
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 18:09:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B57E41C2172D
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 16:09:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E1D91B8EB0;
	Fri, 30 Aug 2024 16:09:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="B8Uv2ddP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D4761B86EA
	for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 16:08:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725034141; cv=none; b=k5v+ueZoLnxIf5UXnMKs6kSkgNqnuz2L8FHFuiDacDLJu/Gf8vLCmwM3JFmu8LKsZpj7zv4VH8BlR0BDc++GKc0ArQitA8Srh6u72Ozx1fKqyIAPCuo5prr1VbcVNq6bvwbSPLfKwxvMEG8ZHFTJYjrbTlRbabYQ3GUQOAGxEIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725034141; c=relaxed/simple;
	bh=L3G1Nh03iCO7XPdrJMCStZn8wSn6LH0tlCITcgXcfnQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fcR9pax3uQcISNIHtum3F5ZeBSsae808M6p3vjT97n3k7y1WxuWxifwQiqph1wBo285/xX4IqF+CuqegSpxvlmIt0XjzgruTSUW4KxGhYfyv4jFN0DT9tAnmsNQ1Ly4aJNR7w6SetyeatgKyUp2cyCadfMedSvRfNmkmrfl9MJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=B8Uv2ddP; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-20219a0fe4dso17912255ad.2
        for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 09:08:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725034139; x=1725638939; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=OqgedbIRVt4S8ZRSsokiU1zOwOOddKQzQ2oSgumJZFM=;
        b=B8Uv2ddPbfplvmBBhxsbMXYtOxyOAtHGNoD/pugThQG4FlvrocWAIYNbdR6NzL4Jri
         zKgT7QnsUehundZWtS67E0dWG6CWB9NYQBM2y/kYcGAYU7w2FSy0H1cvcn6fjSrYwPqn
         m1C1WOzatNnDKlggn71ui20WFBByxHpF/38tr5uztK3/H8H7+k4Rn41gWyCGdQiBp+Dx
         IeOah57CgKBqGITA3OOuubWJU7krgiTEs0k9ufWdSozP1MT8lH/jud8lF9VZe80k24/p
         BndjkzmWxLX7rTeV4e4PeggSDUN0++fxNkh3U+DcYJtjh3slEnD36GMVs7cTuDksZK5Q
         nSRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725034139; x=1725638939;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OqgedbIRVt4S8ZRSsokiU1zOwOOddKQzQ2oSgumJZFM=;
        b=hZTll8T5aLpUTJY3Z7CWdARm2mGSnDogJCiqZzBokd2zX19vz4N2uuh2bEnTtLfJCl
         VcVzjFUj2oWnjNCiRl4JlRxHXZByFatehNkr4iBDjFJpmys2W6JodTwao7VgyXo3ndBl
         m/4ZnPrHDfOVQdxRAgn29+snpcsctmRe7iFLhg/oLI/i7H8YFaX6J5Agg+x/WK9eadMv
         Sexgp1X8H3tyX7NYMsDWAoGp6qnx1/5ymU/YXQiD1xLyBBrl4Yiq98Er8rIRVtKCV5tR
         o01NIw0UuYQkh5Ho1jz0c9YNjfz8erjlduNhg4rz3PkxkDTp4funQNE9l9/cTAmaGUKd
         Ga2Q==
X-Forwarded-Encrypted: i=1; AJvYcCWHhV5MF3Hm6UjkWF3baoklHSos2kdQqjMqhST5MmKTEkW/msNnPtxY+5NoJYOM5qodF8ESaDNhpWqp@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6AoW9TrEYl467ugvLrXQUGBgwJSy/R1KJ0TNkPNwCEKCi4PwP
	HSXdAHl9yh+MZElHowaNSofMFemvS6uRZboG5IrvgKl/oiEnNvjzo+TthSdgDg==
X-Google-Smtp-Source: AGHT+IES4/7B4sqZGOGgix0e+QAdLuS5rttxBBJJaO5LiD6juStmaSYpJsaqj34wUd3zsmL/1KHt8Q==
X-Received: by 2002:a17:902:e74b:b0:201:f409:ce73 with SMTP id d9443c01a7336-2050c4cf204mr65623345ad.65.1725034138664;
        Fri, 30 Aug 2024 09:08:58 -0700 (PDT)
Received: from thinkpad ([117.193.213.95])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2051555155csm28445905ad.253.2024.08.30.09.08.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Aug 2024 09:08:58 -0700 (PDT)
Date: Fri, 30 Aug 2024 21:38:50 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Siddharth Vadapalli <s-vadapalli@ti.com>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kw@linux.com,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	vigneshr@ti.com, kishon@kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, srk@ti.com
Subject: Re: [PATCH v4 0/2] Add ACSPCIE refclk support on J784S4-EVM
Message-ID: <20240830160850.rkz3winxatwwo5cr@thinkpad>
References: <20240829105316.1483684-1-s-vadapalli@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240829105316.1483684-1-s-vadapalli@ti.com>

On Thu, Aug 29, 2024 at 04:23:14PM +0530, Siddharth Vadapalli wrote:
> Hello,
> 
> This series adds support to drive out the reference clock required by
> the PCIe Endpoint device using the ACSPCIE buffer. Series __doesn't__
> have any dependencies as the dependent patch:
> https://lore.kernel.org/r/20240729064012.1915674-1-s-vadapalli@ti.com/
> which was mentioned in the v2 series has been merged.
> 
> Series is based on linux-next tagged next-20240829.
> 

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> v3:
> https://lore.kernel.org/r/20240827055548.901285-1-s-vadapalli@ti.com/
> Changes since v3:
> - Rebased series on next-20240829.
> - Addressed Bjorn's feedback on the v3 patch 2/2 at:
>   https://lore.kernel.org/r/20240828211906.GA38267@bhelgaas/
> 
> v2:
> https://lore.kernel.org/r/20240729092855.1945700-1-s-vadapalli@ti.com/
> Changes since v2:
> - Rebased series on next-20240826.
> 
> v1:
> https://lore.kernel.org/r/20240715120936.1150314-1-s-vadapalli@ti.com/
> Changes since v1:
> - Patch 1/3 of the v1 series has been posted separately at:
>   https://lore.kernel.org/r/20240729064012.1915674-1-s-vadapalli@ti.com/
> - Collected Acked-by tag from:
>   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>   for Patch 2/3 of the v1 series which is patch 1/2 of this series:
>   https://lore.kernel.org/r/1caa0c9a-1de7-41db-be2b-557b49f4a248@kernel.org/
> - Addressed Bjorn's feedback on Patch 3/3 of v1 series at:
>   https://lore.kernel.org/r/20240725211841.GA859405@bhelgaas/
>   which is patch 2/2 of this series.
> 
> Regards,
> Siddharth.
> 
> Siddharth Vadapalli (2):
>   dt-bindings: PCI: ti,j721e-pci-host: Add ACSPCIE proxy control
>     property
>   PCI: j721e: Enable ACSPCIE Refclk if "ti,syscon-acspcie-proxy-ctrl"
>     exists
> 
>  .../bindings/pci/ti,j721e-pci-host.yaml       | 10 +++++
>  drivers/pci/controller/cadence/pci-j721e.c    | 39 ++++++++++++++++++-
>  2 files changed, 48 insertions(+), 1 deletion(-)
> 
> -- 
> 2.40.1
> 

-- 
மணிவண்ணன் சதாசிவம்

