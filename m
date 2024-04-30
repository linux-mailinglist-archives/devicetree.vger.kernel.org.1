Return-Path: <devicetree+bounces-64102-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E59A8B7D63
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2024 18:46:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BD90C284CC7
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2024 16:46:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 905E417B4FF;
	Tue, 30 Apr 2024 16:46:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="a8IZPujo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E6BD17B51C
	for <devicetree@vger.kernel.org>; Tue, 30 Apr 2024 16:46:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714495578; cv=none; b=b/I/yxF/ntwRvTogPgDsttgBL813cCITeytSlySUlSghBmYgsPRPwH0rQjGeBgogYjQ7orKAXPK9rWy1OAh4u1WF0NcHH0Wyz0FPSjIolKBd/hBgUzWjOuO3S8Ysw3SkBM/j+WblG8X80Cm6p96pXr1mvfS3BF3jqPZ8pEgLTUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714495578; c=relaxed/simple;
	bh=qzU4VbzUFeRv/W7BTSCws6gfXSQSS7oC0XCRshZUgAk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uOwxD0hOD1TCLfQtHh0cqncYuoPFD6ogZqR/X9SerXl1hT1fUrryotXZYdd6OgCDNteDO8BCjVXFuiHfkNyEwt5782/UypHBFxzH9RBG2gHkkdqvq/RQuRZTV/8Z1JqCTWwiUt5jFhJ34e0HqjIdFVT6AOVjJyok2/GA2np/AjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=a8IZPujo; arc=none smtp.client-ip=209.85.210.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ot1-f53.google.com with SMTP id 46e09a7af769-6ee3042cb98so1481630a34.0
        for <devicetree@vger.kernel.org>; Tue, 30 Apr 2024 09:46:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714495576; x=1715100376; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=zCeSwrp/mNlBdqA3TllWYVD3pWNYe1arwo8/uJ5j/aA=;
        b=a8IZPujoT8PWPVsnoC+6V8FQmnBjw2oP/JIabogN8yiTfvMDrTthxyIP8BbPet1tlK
         xmoBfKjs3vHFE7hwfgMu5BRZefSBf1hIQTpNZXB9k6wohCQAY6mCzi8UeEgciND8N1ls
         xCIQifgDDFf/CYpMGHhRRAauo65ZJfl3w8cHzaB9G1mI1zSJCuJr3IUs8YIce3dp/fRV
         vVfHpMKyfpoqCxBeMUeUSvxVu0l1ONM501E3W2AfgehzEqij27xvq86Uy9IMkFPOG9Pr
         kVmzPdihzyovvDB3QBxigHR4yonjgzo38lO3cxh/x3kJpwrJ7V4joQWq43ZlJVtsnF/C
         srpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714495576; x=1715100376;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zCeSwrp/mNlBdqA3TllWYVD3pWNYe1arwo8/uJ5j/aA=;
        b=lSz868iH4pavteibJjFycWw+Uy1Qyae2IntJ58gp5vBIvH144vka85HcKc+FTs57JJ
         EiwCXss91iJc9hTxt6i9y/ZYNgk1NUXgJMBSVRlQ0NzVpfog0hi1m5zmLdxEIhzP2pi+
         cwjl8HaE6dqOBVseue0S3RBECBGuijPy6da43LUZYkz2EZqOCQmonICoKt54Hqw7JO6l
         CkArXrdOjgH0t4hL8kLNFrQAGbJmHoy9eVmKS9InU0mX2EgRycb15+GqN48aeL2yesc/
         QPaLFswvihZByfd9DWtZ7NAmvBKRP+xqc5pqdb73pwcD/sCcYG6imNEZmHqHAjvniTTc
         kq4Q==
X-Forwarded-Encrypted: i=1; AJvYcCVDhtsOjZSrmX0IQnGhKOlqNEMC19huEn+RMDcia5icl+SLC4dpdmwKxqCUnwcjzql9UZGvx2aVXa+P0KMzEwto1nSwpi8tGy83tA==
X-Gm-Message-State: AOJu0YylLiGq3kvxc621NF9HkkADDzYFDr4OmQDqLYWIE2QeFny2VDyZ
	/94emM/aFX2nm9eHCp7UatM77qKRJ0Oij4Cyw4fuLZVS2Ah+cocVX2mM2dXdPK8=
X-Google-Smtp-Source: AGHT+IH8F1std92hvf4fXAZ5Hsa2XfNZ5XXJItRDYaUPxJEOGBg3MYvwiNgKSUGo270d1I21pwkKsA==
X-Received: by 2002:a05:6358:52c7:b0:183:b7a0:8aa with SMTP id z7-20020a05635852c700b00183b7a008aamr432390rwz.13.1714495575942;
        Tue, 30 Apr 2024 09:46:15 -0700 (PDT)
Received: from p14s ([2604:3d09:148c:c800:2e09:6862:d789:2631])
        by smtp.gmail.com with ESMTPSA id t15-20020a6564cf000000b006148e35166fsm2898855pgv.87.2024.04.30.09.46.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Apr 2024 09:46:15 -0700 (PDT)
Date: Tue, 30 Apr 2024 10:46:12 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Olivia Wen <olivia.wen@mediatek.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Tinghan Shen <tinghan.shen@mediatek.com>,
	linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	Project_Global_Chrome_Upstream_Group@mediatek.com,
	jason-ch.chen@mediatek.com, yaya.chang@mediatek.com,
	teddy.chen@mediatek.com
Subject: Re: [PATCH v4 0/4] Support MT8188 SCP core 1
Message-ID: <ZjEgVMj5s62pd3Db@p14s>
References: <20240430011534.9587-1-olivia.wen@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240430011534.9587-1-olivia.wen@mediatek.com>

On Tue, Apr 30, 2024 at 09:15:30AM +0800, Olivia Wen wrote:
> Change in v4:
> Updating the description of PATCH v4 4/4.
> 
> Olivia Wen (4):
>   dt-bindings: remoteproc: mediatek: Support MT8188 dual-core SCP
>   remoteproc: mediatek: Support MT8188 SCP core 1
>   remoteproc: mediatek: Support setting DRAM and IPI shared buffer sizes
>   remoteproc: mediatek: Add IMGSYS IPI command
> 
>  .../devicetree/bindings/remoteproc/mtk,scp.yaml    |   2 +
>  drivers/remoteproc/mtk_common.h                    |  11 +-
>  drivers/remoteproc/mtk_scp.c                       | 230 +++++++++++++++++++--
>  drivers/remoteproc/mtk_scp_ipi.c                   |   7 +-
>  include/linux/remoteproc/mtk_scp.h                 |   1 +
>  5 files changed, 225 insertions(+), 26 deletions(-)

I have applied this set.

Thanks,
Mathieu

> 
> -- 
> 2.6.4
> 

