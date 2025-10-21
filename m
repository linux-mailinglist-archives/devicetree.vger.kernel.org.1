Return-Path: <devicetree+bounces-229470-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C5ECBF7FFF
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 19:58:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 047EF1888AB5
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 17:59:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C8E634E740;
	Tue, 21 Oct 2025 17:58:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="W0wtJmlO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9470934E74F
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 17:58:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761069520; cv=none; b=JoFErfst0Rk8rWrxTo37UAOQFt72GGtR5nOJ5q3Sj2V6PmoRwOVMzk2WC1tabmhwCgaEdj3+bWqICxQoVazZtxMPsKGH4I8UwSdGymWbwsZnQxGeM8X3CUbgD+FvE+WJcFP1BhsMOu/DN5zliWE/us5jOA4jo377mxNDIGvjyhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761069520; c=relaxed/simple;
	bh=oVng6fWpL6+zAcowBglyuHt/XIthmz+mN+6mXhWfgns=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AAfeMUTAUa3SUx5svpH5+YfHHhlQQyOBiWZDJ1233cJH77BACA6oRWrIho3/38rX1kQMVBUSKFRnHbLr4DaMpT6eB+ujK+42G3JlXnwo3pNIChdCLX6+fhXLwwfkyCLiON9CDdtAe0OXLyvbWZxFugNHZ4/nyLLPYIhOHauFRyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=W0wtJmlO; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-780fc3b181aso3355974b3a.2
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 10:58:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761069519; x=1761674319; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=WrSVEkanyR2raSWr6Z5enbATkDaqZXlpz9bzA6mqOvo=;
        b=W0wtJmlOUkEuSXcABm36IicjC1uVQ23JTFm/RJUGDAd+cr2T21rMwbOkNdmrWPz02r
         nnEL/iN3hvdehB9QTvdP5C6MgYlIn5iyR9qB2MYoZVz40T9UxT/zEeSMFwRYWQaQUZU5
         +7mskIfCrigsGeYVJeuyAOqBweWRfGtvXtQ94jemhPt65DY/AErpNYX+HN7Ad72pZwRD
         /YhJXdtuekO6vUIGkJdBI+kMW0gkS0But1ZEEnCv2+rYwah7jTIGksSAD49KBw1W5dzI
         l+nMowBhFQkw78pYzicRvC6gODSU1/UCN+G5Jh3hNSqUzlffTLEyuK5KRwrQmfLm26Gg
         TZ4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761069519; x=1761674319;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WrSVEkanyR2raSWr6Z5enbATkDaqZXlpz9bzA6mqOvo=;
        b=U+bHQnIN9Mx7nb2fTwaM8MF0QLT3DbTunDNmYlfHE6oBJVUyZEG0WRTsi73pLPZTw1
         PQlxrxbUB1xEcbHf4C+lvwDhlEtP6uoN5PlLldDCFtQJtkcHa9jzZK8yufhWzOSs18BK
         zKNxuqOJwcchai8WxWcIUH+AmulVJLiotjhC5ynXhZA0nJGFqLssP5JbLaiwMs3Ejo9D
         kllnw3RoyjLFqu5+MxW/wbOFIbRagOVz00GjFzKPmLn8k206KqybBi3BOrMeWucQOpff
         8w8/EUpo1LFQUfThwUcLcNMwQ59TIRayXSbFB1sSEWzjk9dowAFU1rSVJ8AvGq7wy1Db
         NjpQ==
X-Forwarded-Encrypted: i=1; AJvYcCVycIRZpUyc1ZjNV60cPDnyiRNEvxVF4ZmKaODwbnDQ+eglmJHHsDEZaPmOWK2TgC5GVdmGHtLnv8Ze@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2RqFZdoQ4spojqA2J+VGDdkSS4YOnIIhHIOEkxBkZEDTc2Ojj
	oat1kqoO3YXqhLB0fTTiCV0yucwki6wUfslUfgb09I07E/tGUyTfALk7TcLETg==
X-Gm-Gg: ASbGncsplL2ols98TgI0Eee4UXN+RQH52ZDhIFl7RQH3NvAY83OZS+MZIMxhL2a02pC
	nVAzGGO4KeVtGTvRIIu1XEPqAv88trG+hMkS92ybYRDV0AH1Y7Kt5Ft/70r0TFa9tAJt/3MSyUN
	KQTP/jHSgEBVy3JkI0y5GyhT6ajpGryEIGbj8T38T1dWwzVyKF5QRz/2qXwcOIb3IJa+IObHu2h
	FzjCFxq+02hKuToqpVP7TuW/hFk0+PAC7gT50XjFm1elezv+vHrgwVT7AV4KMYYQ9eZfOQ27SRQ
	hpyO2qFNY6HmPZsgyfD1kzbHWBuliiRwkjo7RU+umFS9stvjhJQtmTAW2NU3MwpdFj5aW6t9A8k
	CP9hdDG7j1CaydKMEfZ8UpgjM2sBczdcRj3IqGVXWsRImWMpDBVUwZyFkSsrFBL40lLqfDlDoN3
	onVpfwS2S7P/uluKvT4hY/me+T1TuIZQkpXAkl/3ZS
X-Google-Smtp-Source: AGHT+IG1/8RQi0Z/qvWdJQ+g6q3+RnnFcN/xD+n+8yNjkNb6lOorDEZJv4LXW+vDN+NpEpk2xHxl0Q==
X-Received: by 2002:a05:6a20:9392:b0:334:942a:daa8 with SMTP id adf61e73a8af0-334a8622b2emr21456240637.50.1761069518621;
        Tue, 21 Oct 2025 10:58:38 -0700 (PDT)
Received: from google.com ([2a00:79e0:2ebe:8:bf44:8af2:4f63:3654])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a23010df2asm11941146b3a.64.2025.10.21.10.58.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Oct 2025 10:58:38 -0700 (PDT)
Date: Tue, 21 Oct 2025 10:58:35 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: akemnade@kernel.org
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Andreas Kemnade <andreas@kemnade.info>, Tony Lindgren <tony@atomide.com>, 
	Kevin Hilman <khilman@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-input@vger.kernel.org, linux-omap@vger.kernel.org
Subject: Re: [PATCH 2/3] Input: add TWL603x power button
Message-ID: <aalnnbzeajxgnq33go5b2gi72yjzeeun5f2pkbdulu2hwuz663@b65xssnkse7l>
References: <20251020-twl6030-button-v1-0-93e4644ac974@kernel.org>
 <20251020-twl6030-button-v1-2-93e4644ac974@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251020-twl6030-button-v1-2-93e4644ac974@kernel.org>

On Mon, Oct 20, 2025 at 02:31:59PM +0200, akemnade@kernel.org wrote:
> From: Andreas Kemnade <andreas@kemnade.info>
> 
> Like the TWL4030, these PMICs also have a power button feature, so add
> a driver for it.

Could it be integrated into twl4030-pwrbutton.c? I think the differences
can be accounted for via a "chip" structure attached to a compatible...

Thanks.

-- 
Dmitry

