Return-Path: <devicetree+bounces-62142-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C62C48B01B2
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 08:22:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6A72E28232B
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 06:22:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88A7F156C65;
	Wed, 24 Apr 2024 06:22:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vjN9qFk4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4551156C4C
	for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 06:22:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713939731; cv=none; b=jaioEPNdL9ZwCelUwc1thCqSegHf+nnQr/jvtYuxoM6qsVoIhr7fumEncGdl9kYsIB0XRW9jR++UFfgGmnBBmiP8DRCv+IJ6VEIEpyiK5Se0Lzr0aa5FKKHFw+CVzlo27jOdaSBd3DrFVzlC/A30xyhCLBPV+i3VhowLtwQPirE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713939731; c=relaxed/simple;
	bh=MQPtpz9vQk6STzTFq4kGJqD2Y8NKbLZKvqBnfStP6A8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oQu64yWYVhgarcm/QGkY4EX3aQn46bmwrQTXVSvcBEnmJJtEJ33M3+BgzcWUOgjRJXpKB5poomo2EcpmB0eY0wIS1ZbFHaubudIAb32l8m7JzjD2R+/B2Q7y+y2JsclvNLUjVszngJ0uBxsrEU0O3O8HBe5a/FqeLfLoqaFikmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vjN9qFk4; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-343b7c015a8so5496633f8f.1
        for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 23:22:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713939728; x=1714544528; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=VloZgAiIDg8xCm7oqET/SZ077s2AvYrrDK0yYi3Zp5Y=;
        b=vjN9qFk4I9DB0Y+bdKT7sW+YHNVz6fselZzNefAm3qt/grlEoo/JJwUbLggUvXPuRb
         RUYN9j3K6wUC7lD0k58YQ2HZex3aoKVwTbSQFsnOCYq1+51Ad+mo0GXSwkMwYOPK0Fbu
         Bn5dQgsU3uGKZa+JfYnAeTNi46r6l4lleWl6hZTwjJqsdTP2b2Xp5OSlNZwt2aO0C8AZ
         fKCToSEZn3EcMdWv2jrYWLp5OLsGrEv5dihqAcfdV1lJLj8n+8fCPOtt3nyLBVNLq6sy
         yT2zOweEUw4S3KoExsbJIXAk0kuiygycMgji5F1Jz8O9IdZCPBH1rLjyoGE/R8k2qm0W
         O3dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713939728; x=1714544528;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VloZgAiIDg8xCm7oqET/SZ077s2AvYrrDK0yYi3Zp5Y=;
        b=oS5qXqJPu1U1hLnp5KS5S+bqmpCDIVlzPDCQv/hHS0VQ9fZUurIc5AiKOfKXf1TOW9
         zpxr8M/+z3WJbtWUH4G21Dz0uiJs8UVcJ104e4jmF2e0tZUm7BgmjeP9If/MMRAzYNrX
         HDD4IB6TbuVjEMU4MrjkH7hlXsNOvRGV6H0S5vPiAaRuKTrIv2F62i3Z4sQuI9GKwXiu
         D+SDQL3VDtIbqvmSQWw03azV2jRqtnPgsaTz3NhgZXg+Mxc4UHBfVX/G4LSjBWM+FZ8q
         FwPGt223sIeTqoWkJ3xv1zGPvXLNfrej4j3LfwJoNWfTlj0aEgczGSUQeWR4kVPOE+LR
         yGNQ==
X-Forwarded-Encrypted: i=1; AJvYcCWNw+X2EFW+WgvmEf04JyFD5GJTJNmdQZXOt+Wvqq3fdSpHndkVGPxpA8/yZns3wVjsYtaVpMuVOczWrcpN/BFc99bCdAk+RrK0hg==
X-Gm-Message-State: AOJu0YxF64DDrjZQnlNR3WeuDu55eOnR4Sj7buK3N1vUS99Hv9AgtoBI
	c8SYIYlmpGMCIOgejlLjtbYHibR6UmLr5qGbL7z1iYbNfMH6E/aEMmzPu257WR4=
X-Google-Smtp-Source: AGHT+IGJadW+BQi1gpqVuF5OXatbduHm+VwYwQa5DQduYxoVoCem+8ZwKXGiMeEv76x92rCZ1Fa+yA==
X-Received: by 2002:a5d:4892:0:b0:34a:4eac:2e43 with SMTP id g18-20020a5d4892000000b0034a4eac2e43mr933848wrq.68.1713939727761;
        Tue, 23 Apr 2024 23:22:07 -0700 (PDT)
Received: from localhost ([102.222.70.76])
        by smtp.gmail.com with ESMTPSA id f8-20020adff8c8000000b0033e7b05edf3sm16182230wrq.44.2024.04.23.23.22.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Apr 2024 23:22:07 -0700 (PDT)
Date: Wed, 24 Apr 2024 09:22:02 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Sinan Kaya <franksinankaya@gmail.com>
Cc: "Rob Herring (Arm)" <robh@kernel.org>, Sinan Kaya <okaya@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	dmaengine@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dmaengine: qcom: Drop hidma DT support
Message-ID: <758648fd-9c00-4b40-a827-b1c84c81d183@moroto.mountain>
References: <20240423161413.481670-1-robh@kernel.org>
 <22adec0d-3b20-40f4-9ced-72d7cd48c968@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <22adec0d-3b20-40f4-9ced-72d7cd48c968@gmail.com>

On Tue, Apr 23, 2024 at 08:51:36PM -0400, Sinan Kaya wrote:
> On 4/23/2024 12:14 PM, Rob Herring (Arm) wrote:
> > The DT support in hidma has been broken since commit 37fa4905d22a
> > ("dmaengine: qcom_hidma: simplify DT resource parsing") in 2018. The
> > issue is the of_address_to_resource() calls bail out on success rather
> > than failure. This driver is for a defunct QCom server platform where
> > DT use was limited to start with. As it seems no one has noticed the
> > breakage, just remove the DT support altogether.
> 
> I disagree here. This seems to have been broken your patch.
> 
> dmaengine: qcom_hidma: simplify DT resource parsing · torvalds/linux@37fa490
> (github.com) <https://github.com/torvalds/linux/commit/37fa4905d22a903f9fe120016fe7d6a2ece8d736>

That's the same commit that was mentioned in the first sentence of the
commit message.  The commit is from Jan 2018 but the oldest supported
kernel (v4.19) is from Oct 2018.  If someone really cares about this
code then they should be testing supported kernels...

regards,
dan carpenter


