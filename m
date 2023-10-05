Return-Path: <devicetree+bounces-6150-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id ADCE37B9FBB
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 16:29:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 12AAEB20972
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 14:29:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DC9D28E3E;
	Thu,  5 Oct 2023 14:29:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (4096-bit key) header.d=alien8.de header.i=@alien8.de header.b="VYimnsxs"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72033286A6
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 14:29:31 +0000 (UTC)
Received: from mail.alien8.de (mail.alien8.de [65.109.113.108])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E5B8AD32;
	Thu,  5 Oct 2023 07:29:29 -0700 (PDT)
Received: from localhost (localhost.localdomain [127.0.0.1])
	by mail.alien8.de (SuperMail on ZX Spectrum 128k) with ESMTP id 7F51A40E019D;
	Thu,  5 Oct 2023 14:29:25 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at mail.alien8.de
Authentication-Results: mail.alien8.de (amavisd-new); dkim=pass (4096-bit key)
	header.d=alien8.de
Received: from mail.alien8.de ([127.0.0.1])
	by localhost (mail.alien8.de [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id 3hpk_c7NeXW6; Thu,  5 Oct 2023 14:29:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=alien8;
	t=1696516163; bh=zAyANRxj67OFEh93QLMZxElurDGrkCzymdZ38jjWMzk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VYimnsxskklMWn5TBvjnItTY0IiUQYYGxyLfuYpHyyZ63pDFG9RRj/1t3Gyys7jcw
	 fqB0ySXNIoSEPbTRHt84Nnb5C+6LaYYPbzTcwxXa5DQh0JEI7V9slQYwfVnFcVCpg5
	 yBTCHczX+sNjynF7R9FHgiMOolkxc8H+/rrSqwc0AxZ+nc3oeXXcXJRFwsH4LCBD1S
	 p7rbFK5f2z34u5rGijVFsAu2bq/7+rfHwL8wWZMmuRRHvmpfst2nB2YC4SSxpAAjLr
	 5oJIwMqfN+AmDMyLyxzoRg5phDJk69dNVwsZIRnheIsxDcNweAWeA9DpIin8Mh2aTZ
	 O1ym149q2B8hoyFKhZGQvfL17x1V39nnYMtXJTlk2Fr44DQsuWZx9NL3JHMWWJJgfc
	 t3O31lrzBo8DWfaPQo17OX+mFIQhj6ach2CXUKqpXwv3jCqjf54peP4KRXOjWwErxB
	 dDyFgmLQA7oQmYsyFHmityjxWdtU3z8LXnMusB2TBQxGU2TrRkckQyGyo85bL/adaG
	 AhWs/q4FsZMC1adj8SAJVaXHLnlg192x+kI26JiHtiLfgt1sjTt/zDV5TSAJtIAcmU
	 nmQ0kFIXox/pq22TnZE0qdypV3kO8MdW8gwZL5cDHIxLJkJAHIY4EMHLCr8M7nr0nc
	 lOOtbt/2LgfBIkbYEW9gfYbs=
Received: from zn.tnic (pd953036a.dip0.t-ipconnect.de [217.83.3.106])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature ECDSA (P-256) server-digest SHA256)
	(No client certificate requested)
	by mail.alien8.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 9D7DA40E019B;
	Thu,  5 Oct 2023 14:29:10 +0000 (UTC)
Date: Thu, 5 Oct 2023 16:29:05 +0200
From: Borislav Petkov <bp@alien8.de>
To: Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>
Cc: linux-edac@vger.kernel.org, git@amd.com, devicetree@vger.kernel.org,
	sai.krishna.potthuri@amd.com, krzysztof.kozlowski@linaro.org,
	robh+dt@kernel.org, conor+dt@kernel.org, tony.luck@intel.com,
	james.morse@arm.com, mchehab@kernel.org, rric@kernel.org,
	michal.simek@amd.com
Subject: Re: [PATCH v9 0/2] edac: xilinx: Added EDAC support for Xilinx DDR
 controller
Message-ID: <20231005142905.GCZR7IMSw4sySWZ7Ik@fat_crate.local>
References: <20231005101242.14621-1-shubhrajyoti.datta@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20231005101242.14621-1-shubhrajyoti.datta@amd.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Thu, Oct 05, 2023 at 03:42:40PM +0530, Shubhrajyoti Datta wrote:
> Shubhrajyoti Datta (2):
>   dt-bindings: memory-controllers: Add support for Xilinx Versal EDAC
>     for DDRMC
>   EDAC/versal: Add a Xilinx Versal memory controller driver
> 
>  .../xlnx,versal-ddrmc-edac.yaml               |   57 +
>  MAINTAINERS                                   |    7 +
>  drivers/edac/Kconfig                          |   12 +
>  drivers/edac/Makefile                         |    1 +
>  drivers/edac/versal_edac.c                    | 1065 +++++++++++++++++
>  include/linux/firmware/xlnx-zynqmp.h          |   12 +
>  6 files changed, 1154 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/memory-controllers/xlnx,versal-ddrmc-edac.yaml
>  create mode 100644 drivers/edac/versal_edac.c

Applied, thanks.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

