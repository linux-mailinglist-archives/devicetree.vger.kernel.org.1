Return-Path: <devicetree+bounces-177559-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3256AAB80C4
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 10:33:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B83003B079D
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 08:31:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D7D128853E;
	Thu, 15 May 2025 08:29:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="E39/xhv8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DD44297B85
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 08:29:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747297767; cv=none; b=lNrfXfXwpJN8fiMsZDJ06HZTb0TxqS2M8PWeDIzckwZwrjx6kRGmY1RQTAj/VNm2g95N3t4hkFjST4bKCHUtiKdB4Yea49RDmI8z1JYzJlrrzRfyS+EzdV8P4gzI1j7B7f49xUA7FF5ZzoQWHcAxtUKn2OvQ+f14e2WUAmIewEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747297767; c=relaxed/simple;
	bh=UeYArS1ijkGtKL5wk6wSZ8WWkjH3gkjimR8WfZx4mgA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DgJFxS2KclSfcDeAEY07PMtXTxzGpV9I9mJWW3a7r3s/vBu+XM+UedFYiGx6Kwirqjo327SQdufdc/eN6Ywy7+uNSvMasPFSkpCXc2kQoPl9VPxIK1ruda2di3evF1jyehSS8hihy+3pcHqlk2wUyydLRG9h3ORLrg3coM9PtRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=E39/xhv8; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-43cf848528aso5518705e9.2
        for <devicetree@vger.kernel.org>; Thu, 15 May 2025 01:29:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747297764; x=1747902564; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=QvvTZD6xjMgYWwxEjzxwhxIFlt+w29WI3exoLPokiug=;
        b=E39/xhv81/pjrXzQ6BL9YPWWqwdvso+mqp4f6aZnscbcRdf5PI21A5NgYcOPaYDXDF
         zvsTPJjEXwhKFSMLPuDiOToGT1ES6bCLppInBL3d8oPGJHsbqFFIIuhDE/vz9qzRq9xd
         PN3VjM6cE7CAppW5huEcc43tHSNStCFFJArC5PvpvREPWMHLbU5p1IRFzLs0woHVqsxi
         ru0Jv0bjd/PYj/VzIH/iAQSYUI8dKQahhpslHr5+3XvfVSFf0RFEbF5YB8nUrmAfx7JR
         qDUh1SfFGUmn7El6SVHeS1SjK3Ak49Rttw0EgqJuiQCZ0Yxtmog+C2mRyks1Ayyh3rAE
         YV4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747297764; x=1747902564;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QvvTZD6xjMgYWwxEjzxwhxIFlt+w29WI3exoLPokiug=;
        b=f113uCs0/jkvGMKWeEFih0S+ihFxYeWUq0BhhjIMKnRcS4ir2hyvDfeEm5EquevZcx
         DH8lfjT/uaUo2itki3xox1ZHVbZuqdLO8i1DlsZsbr2GuTNU1CDAPC2TZGuNKU7vfSjY
         uWs2IwaksW2muu0ilH9OzRRT6fdAd8kZB7cYGTSHfnTx2aaF3pq2JETt8rIetOMt+wvd
         WA9ND6h+lLe4oFX3j4abwD77lb29HmL8vfA9AixmQPA19jNeYUDX7XQrL89EgXHcZJwL
         IOn5ajukaZNY6nAlQafNRa1jFIxEAKTilVfweZypd5woTfV+RkAvp36njzr/Vobcsz9O
         mcNQ==
X-Forwarded-Encrypted: i=1; AJvYcCWidVBMdWlkj2PZB94WLjZ2pNwebr0z6TK6rxI2GTQZDlnMgPUWaHEAad4D0D7FKJ2ScA30wF5BBBlG@vger.kernel.org
X-Gm-Message-State: AOJu0YwqUX7i553P/fAVbNFHdbGS1zv+2dpCjuddMZSO9chYDygOrNJk
	fPsr3Rj+BHzuDKjxSS/NMJCcbXaVx/7PfmAul5D590rJ/CmWYmgKHvXQ+tS88QVnO/z2Z/QULVO
	MRrBOrQ==
X-Gm-Gg: ASbGncsxzlo3yDUnOVIaUfMPWd5snLOtXBOFlp1vwMba+jcFTemaXomE5PDlcTsEUGc
	diXB+Lq7wCruNdNStduH4pe5x1ZcLc0Bc8vuThr7prRpEiSTblbMpu15S8NQk1guMFLLjnGKmKE
	Ltz5yCft7W09VsZFZ491Nb3SyGmMR5iDLUmyR/e9uAxdjWu6guTI8oWFPtr6r8RvyMIMqnR9/OH
	yMeG8/6jweGW/2aS5X4ei0EeG/qN0mHJ+x26sH444cIUypzxfmLjmSZL+1U8/5mZkKwL358uKZA
	Db4fC1CYmmyKbUGgd5gwTgib/jBvt6rPbbGYHBhB8MAW4UCjlIDPhEtymx4vL6UPsc0kVT5SI4E
	mBXydYsOGN9Gq3Bh99VRHksmR
X-Google-Smtp-Source: AGHT+IF10sihNIz4wz256XDOxcdd7U8icJxjPxfUVyNfZMzpJJdb6YNmdRmD2foR3y02vdzRglMqQQ==
X-Received: by 2002:a05:600c:1d9a:b0:442:e9eb:cba2 with SMTP id 5b1f17b1804b1-442f1dd6452mr64202305e9.0.1747297763879;
        Thu, 15 May 2025 01:29:23 -0700 (PDT)
Received: from mai.linaro.org (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-442f39ef8f7sm57962225e9.39.2025.05.15.01.29.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 May 2025 01:29:23 -0700 (PDT)
Date: Thu, 15 May 2025 10:29:21 +0200
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Viresh Kumar <vireshk@kernel.org>,
	Shiraz Hashim <shiraz.linux.kernel@gmail.com>,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: timer: Convert st,spear-timer to DT schema
Message-ID: <aCWl4SfFb4Px9Yd2@mai.linaro.org>
References: <20250506022326.2589389-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250506022326.2589389-1-robh@kernel.org>

On Mon, May 05, 2025 at 09:23:25PM -0500, Rob Herring wrote:
> Convert the ST SPEAr Timer binding to DT schema format. It's a
> straight-forward conversion.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---

Applied, thanks

-- 

 <http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

