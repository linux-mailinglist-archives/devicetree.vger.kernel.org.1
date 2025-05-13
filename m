Return-Path: <devicetree+bounces-176762-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A0B9AB5716
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 16:27:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4D17D1884803
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 14:27:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79B7C2BE0E1;
	Tue, 13 May 2025 14:27:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uwaPuZZ0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9792E24503C
	for <devicetree@vger.kernel.org>; Tue, 13 May 2025 14:27:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747146447; cv=none; b=EvvaJ76yY/XdZnT8Jc9z/W/+wfHPluW/XMRt2Ot93dSJ8kADFzg+Yuaddky9isBf55lvRXjYznMf3GkWb9ZVHtdjOVc8oFwKMy0JyUo2AWS7QykUuX+f5j+4gmcCS5iGgwwHgvzlpplu0vH4LIZbNb+vtNDskmLHSn1zEgxp4CE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747146447; c=relaxed/simple;
	bh=lgLLaFw+DGiRpN5vtWLkRsjp7dexj3Ed4DWpipUeNIY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oPz7XhEK48nnEdjKgKMwmv0TcivViA73JBs0JrAITwH/edJwICbTe+UNfXDhOlOGHjGs3eHGWPA+zuXDn6KwYHnm1+xhx4Hh58Fv6sWPASj0tcbN6Edf5YmjWhhs7dagPJjbOJOA2TZRqOU1hvt3OcX2REkGFu7nekpfjZX4nio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uwaPuZZ0; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-3a1b8e8b2b2so3018266f8f.2
        for <devicetree@vger.kernel.org>; Tue, 13 May 2025 07:27:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747146444; x=1747751244; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=viRbW34aeCx4jZ8hMquiEOhZCzi3ewdZnltxTsu27hY=;
        b=uwaPuZZ0pzNj6ljJXOiXQA8VNI16ETkn5jlnyK3YRWZ0E0mABezpXqrIrB2OLUpU6j
         yq+PGkxFUfi3sHRQP3LsJpBZ752Yv7Fl+Yf2jJr9h2FaALlozvybL7vz3sUhisQ4Zzo4
         sHIqQlCvMesRjOmpw8xepgWahcq3bt/f4lj/FwFSZXMqnGrmV+1XJk2k+G08AHmqVfHe
         L9zYifxfSeghKIdtIHJpRbxm252b0TH1ddaJKSTDje8ghw4vfx9efXrO1Nk2TB61W0bB
         zeiX/gX+SHd/dHpgv9gwr6vTSj+RPSoHl+9/vuusgJhq8iP/J5wzvZlGa3mxKxEqOK0F
         +pMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747146444; x=1747751244;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=viRbW34aeCx4jZ8hMquiEOhZCzi3ewdZnltxTsu27hY=;
        b=vPVHcZPogtCCShMr7G5kpPehxKLohhhHxpiIyiH88hoOlmhtNUH9bTMEkcDC1B5ZiJ
         Sg0Y2gq3NrBuI8PH+yJrcCWnSPpvnTosB064d8SCm3RYindzIjCRg8d/594G1C19Js70
         9IcxBi0haz2z0+yBxXyAg2qGOJ66OtzPGpZK4Tw5QxZduT0/R2m7lucAPj3M4xBVx2NW
         6dzkBBJ3Yu39pEvbS8iMBFabZVidCp3H2aKBXOiz+aAQzBK7rIO/J/MmLvdveJKiBcn9
         vgBmSyi+qARSdTpewY8zttPAB2ymKVWmxwFl41D5gkLnpmRF00+UPXP1t8122GMCdDhD
         Dmew==
X-Forwarded-Encrypted: i=1; AJvYcCV/+a/Ac91SpswbwzYUHgn6agHNbZDLW0MtdkHLMFXYFsvDcLOLv5Osov05QuodIqjL0/4ivrSnfNDM@vger.kernel.org
X-Gm-Message-State: AOJu0YwNCWzM0TUc97U1KExUZqCDqbSV6N9XlXK57dVwegnY+cwiXtZz
	zGUXPEgOpeJiaQ0WjplKZfkuV6OPYk/7gjrBkHitrD6mGcZe0EhhxiGb+p7y57I=
X-Gm-Gg: ASbGncsRTxXGp47Kc6E6TaGRXgfz1KJWPhI0m7lHOAfSwHo8HPaORsFzz6rPbFjY3/D
	vNihV08qBsLuDiOAwBQfB8RZF7M79ac2yfhIbNLYPN9uLzCvHRgu+KzSwEEOb1gz9dkzf6hM9Vu
	c5w8B1BHdYKFOc84jbA7L3yXHJDf3PGJ/UPefB0cpXeSpbJrzO4XnGUEE5dfm6QS8/7Mow7GtAC
	j1gbyHjcyyfv/EgBU/F98PSdQjeRPObYaSb6U9sJtPDzgome0nT7zdTPlpBSwODM4fPQEJnj5zI
	3dsckpCTWj1C37Px0pogeDTx7Z8oelC+Z0bsde9+G5xAV8Gx1UujVSVbYaIFA9FKUg3Y8eLjzrB
	tEdcHHCxgquk9LA==
X-Google-Smtp-Source: AGHT+IHh/hXr3C7uQeuwDkBgmFkciCogzqhIeeyghe0EZPx1ZwEoRcQabNz0405E/QeKtC3MsK4qiw==
X-Received: by 2002:a5d:6305:0:b0:3a1:f67f:1bc with SMTP id ffacd0b85a97d-3a1f67f022emr12630885f8f.0.1747146444005;
        Tue, 13 May 2025 07:27:24 -0700 (PDT)
Received: from mai.linaro.org (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a1f5a2ca47sm16511097f8f.73.2025.05.13.07.27.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 May 2025 07:27:23 -0700 (PDT)
Date: Tue, 13 May 2025 16:27:21 +0200
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
	Gregory Clement <gregory.clement@bootlin.com>,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: timer: Convert marvell,orion-timer to DT
 schema
Message-ID: <aCNWybCBUHQ2FKl8@mai.linaro.org>
References: <20250506022305.2588431-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250506022305.2588431-1-robh@kernel.org>

On Mon, May 05, 2025 at 09:23:04PM -0500, Rob Herring wrote:
> Convert the Marvell Orion Timer binding to DT schema format. It's a
> straight-forward conversion.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---

Applied, thanks!

-- 

 <http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

