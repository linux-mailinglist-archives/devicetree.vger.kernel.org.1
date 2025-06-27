Return-Path: <devicetree+bounces-190172-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 09FE4AEAE96
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 07:57:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6CFF87B095B
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 05:55:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E9F51E32CF;
	Fri, 27 Jun 2025 05:57:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XLdFIPOo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9409C1E0DBA
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 05:57:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751003826; cv=none; b=eE/2cmFFSQ0hgvs9Z22pCdsRLEVaiY2JeVrygWn/rRttHzWLtx+0mi2SWrmXWb1rNxZRUsw/Ga7COFDo2uzfal/m5BvIqox+Fv9z//73njqVd29wXJfogDH4blgCYFqr6xQT+FOpkf3BxPA4bOtpAWQhkHalgJghGVJLPEacE/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751003826; c=relaxed/simple;
	bh=+h6UbanBcEDSczpIUGbKBBHkAMzPJzRTwr8Ng2Y2WlE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=bn/OdiFGNoas+vgkfMo2coo/8mou/voPnUrOBVRKFILRwsRZqDx6pxlryWy4jwOycj1I3nafCdWfZcOeGig3uLAxfFG645jq0+Fka8ZrzZlLABWihAafDTr+a//Wi2vUlrslkCSarxfAyxCQzk8zl+ZWVZvALkjmFDrIvLcuh7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XLdFIPOo; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-450ddb35583so2559855e9.1
        for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 22:57:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751003822; x=1751608622; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ihA46zUWoj4y9yH4wv6zt6EYeKMN/ZkRKZwdyhiNCYA=;
        b=XLdFIPOomeL0hFHy97Fq9g3eSKdQCxhBlCusbQ1HCPQ2P/6Xke9pPZuoNVaKBp3kwK
         8M4ohqjuw6Bme/9FsiS0xP97drcDLvphzIbH1dVUx3NntQUxyLOMUEaFUEQfh4busfX/
         eg7FLGi2BmSjQEDkFyO/dDumIqB3XY5pZ6mjYerULaLeAKV3G9Un6EOhimewpbUcg+Yh
         biFk1IkpRvK+RVfKEes5ZAjWb8YGnHfITByiEQ+yAT2qykAlX21h7/ll2KnbyYPP/zuw
         /M4IOVe1kntBTvZTVsEcHYXJpQLfXrAhuNctxJl7iFctAW0HZLoPs4n6BuipRhmKeI59
         9rlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751003822; x=1751608622;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ihA46zUWoj4y9yH4wv6zt6EYeKMN/ZkRKZwdyhiNCYA=;
        b=cj1fkxlFGRS1EZm9GpzTyb2Ei6BUD1wFC+kzv0tXwtFuVXe85uz87O1Pvi1RGD2r9/
         KQLGZcA9PbBSMhPycENMf3XxQ9HUIcdsHjMKCOsnVLZ5Sni8hitXix9FZfp8nnQqI8Sw
         CjqStT2hN3yCpUAOPOiIYUi+G9HIft9cscSSVSM0OhMz119aVqOkK89sSNFy9YcIcsO6
         nZZXVBL7FKxvwUb9QkyetkNOyZIuI7ANwttEmoTsY02UwxUYf/4r/FWt0jSV4fqvwlRV
         ntsnq6B7trO+L3RH4tNfNJkB+UBwISRiPBIJfCAyldYXiuogKTLuYnk3CbMxAcEZ1zAM
         y67g==
X-Forwarded-Encrypted: i=1; AJvYcCVEFOQZXLh3P3LgYXYTyj8RLs1eihN7k885kTwhIy63oYRfgIl5dMEDcZB8a6WqLBs4qcbGYyB8OzBL@vger.kernel.org
X-Gm-Message-State: AOJu0YwkjJzwAOp9LxURYYXBWS5yxiDr4dZhnderFbxb6LfRuooT+uz/
	C9LH/hmJmrqghTUFshJtkXK0lNulyx1/f3U9dw8oVIABr1FYsVQKsp3g0Ik9rAbtT04=
X-Gm-Gg: ASbGncv0r2r4PWaRbrjl64Gr4WA2cNc4v6BVoKihnX3L6OVLaMWGFOLj+FWPxHrXMKv
	r19BleJDOhkrPybMLcp4HSitdoytpvrgXj3y037XUocnUq87Mm5bY7sFeOSD0JqSPd65JqLqf/S
	DsLi7MOQ3Wf6rv+l/r5k5HaanqFTmFqsSrnWpvwaRybMNUEabHvLkWp/ywxGNZKQjlZCOLbg8rL
	Jn+Sa6tl1TOtXNt3eFB/h8nEaGG/ll6c5HbnxowzH8MXGG7HdpwIrPjP0P+jWwO8Ame8dLDfouJ
	SY8D4aA8x7ngfLxkS+oBzdw27iqnYVbhDgYsiLxC6tDH28/GT3cf3S9kEh4Wrdt9DbMKBs3AsrO
	w
X-Google-Smtp-Source: AGHT+IEO+Lc7qL8+vyNa1Fzk+jCY3AgG5vruLPblFHJDruNTVICQAyjisLLGwKbaVbHs/dAXjI2hxg==
X-Received: by 2002:adf:b650:0:b0:3a5:77ea:2d36 with SMTP id ffacd0b85a97d-3a8ff8f56a0mr556159f8f.10.1751003821836;
        Thu, 26 Jun 2025 22:57:01 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.222.89])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4538a390bf8sm40414175e9.4.2025.06.26.22.57.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jun 2025 22:57:00 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: linux-kernel@vger.kernel.org, 
 Florian Fainelli <florian.fainelli@broadcom.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
In-Reply-To: <20250609212356.2264244-1-florian.fainelli@broadcom.com>
References: <20250609212356.2264244-1-florian.fainelli@broadcom.com>
Subject: Re: [PATCH v2 0/2] Simplify compatible matching for brcmstb_memc
Message-Id: <175100382008.7419.10025995325292671372.b4-ty@linaro.org>
Date: Fri, 27 Jun 2025 07:57:00 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Mon, 09 Jun 2025 14:23:54 -0700, Florian Fainelli wrote:
> Since the conversation died off in
> https://lore.kernel.org/all/20241217194439.929040-2-florian.fainelli@broadcom.com/
> here is a second attempt at addressing what I understood from the
> conversation back then.
> 
> Changes in v2:
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: memory-controller: Define fallback compatible
      https://git.kernel.org/krzk/linux-mem-ctrl/c/501be7cecec9aaf9cd52e76d0820efd6d0b952e7
[2/2] memory: brcmstb_memc: Simplify compatible matching
      https://git.kernel.org/krzk/linux-mem-ctrl/c/0e3dd41a94b29d5d9973dac356ebd37f87bd8a37

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


