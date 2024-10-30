Return-Path: <devicetree+bounces-117435-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 571F59B6307
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 13:25:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 017911F21B93
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 12:25:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28A581E8846;
	Wed, 30 Oct 2024 12:25:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vVO/w2uR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C07721E7C3B
	for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 12:25:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730291131; cv=none; b=mSstvIWwZuoAKAupE8la1y/IBxuUaO9iCNDhrPkG2+X2RQvvB9LfD8uqCJr8yQq2d3YGaA/1brV4ZGtLK+y/z+/YqSRNY5MCrj/dpS0yKfg7XIKEgBWGcDBfNV7R+YQqFK8EmUXI2DLn3bLnWmtjeOhu2Q7H/V8oA+2ioie+xx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730291131; c=relaxed/simple;
	bh=npPpKCfr8a/nX6dSWj7YKXfzbNKDFxy1Zti2s+52ors=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lgyw8lnS4iMJSqHa6h7fo5xXX4KlfgYFDGaM77InykQtDdGit9PcIPtsbxaz+R8duqy1r4LKbwUGTmXREDvmGdK6QghMFnnqVbptKAOApCBpsxLOtNGMuJNT33ZfJCNUopNnukJq5wg6arIOlMwlYjXpObgI+hr7QGaLnqP94R0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vVO/w2uR; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4316f3d3c21so60894245e9.3
        for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 05:25:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730291127; x=1730895927; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SzgcGS1Hf9hdPADay9tMP9fc5ub7cUqD288aa3YpE9s=;
        b=vVO/w2uRVW8ebWK9xhcPJodZ34mYkotL7O9mM5egXirCYNThka4mVjC3eSNIphSAzr
         RNNmAU+xx0XHP3JuTCcru0E5B4dg6oUF5eeGvB+qJvRc7LeqpfAuLGI6yEgpTWWU5PTm
         JxQXv81QbKhH8h2EKvx6LJgSBTHT/vwN2+7w015cFSrW2p1NbjVHYK+eWCG4CXmj0UL2
         3ATAfnVl/gtzstbJ+SSzqv8iXSTJVbPhy7Hm2MmJ6+1b6Gf/7BS4ZC/6IrwwAwmw1L55
         3N9o5KG/FRdvGSTbPkYyN3hCabjn/B3hbytrPdDqBZdtHpeefGK4ugIK5tDRVvoe08Rm
         3M/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730291127; x=1730895927;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SzgcGS1Hf9hdPADay9tMP9fc5ub7cUqD288aa3YpE9s=;
        b=Fy210UM9QDDz6QbmLtvFB8nH3Z/OomieWg2aWq27Hy/z8y5x7jSOSncPCsra3Ca4Q1
         50sHsYYyO4/LfoxRIRS2ET8ssZAx9tkHIMfu/DFBMSrvClbYL1TlX7Z3xjsi/xm0EyVX
         ueFqb3nrgzFzUBlu6YCLSljMBXfhh6z3ItWqjSLfLChAW5dkEZ1OHHOu4iyeQhBO9jHb
         hx0WKRYkQmQd3IejIfPsMzzCXMCswyya9ZExs9pTnoKDOdCaeIfhi3bgRZYmlUzkcMlM
         KoyDwNSGNS/5X8Ot+3JoZ0BcPLW79QauTw6jYRR024hoWbcwnxge2t9KvliSLkySTHgY
         mgNw==
X-Forwarded-Encrypted: i=1; AJvYcCXXTY/6bH16/7JTyV0hLF0aDGNt6aWqWZ8RA5Fi48VhQ9j2/tWbbYvloSp4qCIoGZtfU2hO8QfSxDJT@vger.kernel.org
X-Gm-Message-State: AOJu0YyZ7bkyuQaxkeyMr7TMrmajLBrgkwZYD2gsfq2IScGtiyawTG3r
	si5Eq+nJEr4hpMmcoKQCKRxPRzplnWQSOst75tcYf6NJGBVhM8KyxZJD6u3Ryfo=
X-Google-Smtp-Source: AGHT+IHoX4497mSUz/yxsu5fS7Yi5t7HC7XwVTZtKpVH7CT0vNJsNQn5cDMNxHVUOof05fQedX8kMw==
X-Received: by 2002:a05:600c:4753:b0:431:5632:4497 with SMTP id 5b1f17b1804b1-431bb9d1122mr31382025e9.26.1730291127043;
        Wed, 30 Oct 2024 05:25:27 -0700 (PDT)
Received: from [192.168.0.157] ([79.115.63.43])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-431bd918333sm20337295e9.10.2024.10.30.05.25.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Oct 2024 05:25:26 -0700 (PDT)
Message-ID: <6d3beeab-c26d-4240-b968-cb13d06d7eae@linaro.org>
Date: Wed, 30 Oct 2024 12:25:24 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 11/11] scsi: ufs: exynos: gs101: enable clock gating
 with hibern8
To: Peter Griffin <peter.griffin@linaro.org>, alim.akhtar@samsung.com,
 James.Bottomley@HansenPartnership.com, martin.petersen@oracle.com,
 avri.altman@wdc.com, bvanassche@acm.org, krzk@kernel.org
Cc: andre.draszik@linaro.org, kernel-team@android.com,
 willmcvicker@google.com, linux-scsi@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 ebiggers@kernel.org
References: <20241025131442.112862-1-peter.griffin@linaro.org>
 <20241025131442.112862-12-peter.griffin@linaro.org>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <20241025131442.112862-12-peter.griffin@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 10/25/24 2:14 PM, Peter Griffin wrote:
> Enable clock gating and hibern8 capabilities for gs101. This
> leads to a significantly cooler phone when running the upstream
> kernel.
> 
> The exynos_ufs_post_hibern8() hook is also updated to remove the
> UIC_CMD_DME_HIBER_EXIT code path as this causes a hang on gs101.
> 
> The code path is removed rather than re-factored as no other SoC
> in ufs-exynos driver sets UFSHCD_CAP_HIBERN8_WITH_CLK_GATING
> capability. Additionally until the previous commit the hibern8
> callbacks were broken anyway as they expected a bool.

I think too it's fine to remove uneeded code as it was broken anyway.

> 
> Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> ---
>  drivers/ufs/host/ufs-exynos.c | 24 ++++--------------------
>  1 file changed, 4 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/ufs/host/ufs-exynos.c b/drivers/ufs/host/ufs-exynos.c
> index 3bbb71f7bae7..7c8195f27bb6 100644
> --- a/drivers/ufs/host/ufs-exynos.c
> +++ b/drivers/ufs/host/ufs-exynos.c
cut

> @@ -1566,26 +1569,7 @@ static void exynos_ufs_post_hibern8(struct ufs_hba *hba, enum uic_cmd_dme cmd)
>  {

cut

> +	if (cmd == UIC_CMD_DME_HIBER_ENTER) {

I verified that the order of operations at hibern8_enter/exit() is sane:
Reviewed-by: Tudor Ambarus <tudor.ambarus@linaro.org>

---
hibern8_notify() gets called in ufshcd_uic_hibern8_enter/exit()

exynos_ufs_post_hibern8 disables the clocks for:
  ufshcd_vops_hibern8_notify(hba, UIC_CMD_DME_HIBER_ENTER, POST_CHANGE)

exynos_ufs_pre_hibern8() enables the clocks for:
  ufshcd_vops_hibern8_notify(hba, UIC_CMD_DME_HIBER_EXIT, PRE_CHANGE);

