Return-Path: <devicetree+bounces-117202-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DE179B5719
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 00:42:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9F23C1C20382
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 23:42:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF4AE20C308;
	Tue, 29 Oct 2024 23:42:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="jCNRPrJG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EA4620C01D
	for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 23:42:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730245325; cv=none; b=qbeMU5tYNHYqX5iEkR/zOxe4eDIwLWIpGY11jOtS15rRHxZvPi6pAdjM89g/4C/NwiAOzQmHT2Jb6ZwCogO2wZDmrKGx2B8LEXPaAu7OmX9Q7a/JlGNx4lQUibj7260fzPjTS7Qv9sfGclqNhnN4BRs+F8co/Mn0R15yUaKF6jY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730245325; c=relaxed/simple;
	bh=YmhqWH2LH5RJV2vXD5XPSPpN/3LgfwH6oaRL8feNlPg=;
	h=From:To:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=LXZS73CU+dbJwvyp+sQJiI8SNhbo5Uj9Vh0ikRhBdJW6+SZbAeQ0He2rGu7csqwK24furWSQT6aVWTOoOs7eXX9BDR+9h8gmuypMWwaaSHEBXwPxJ9rzmrGt/wI+SkZh0ZnUnLlSBIFMUCOeZCw0IkECJN8dTSiKlySvNl+gOtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=jCNRPrJG; arc=none smtp.client-ip=209.85.216.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pj1-f48.google.com with SMTP id 98e67ed59e1d1-2e2a999b287so4899712a91.0
        for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 16:42:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1730245322; x=1730850122; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bUFxc4/8h5YCr04CklGoLvH8jXBQzwVxphyqaqs8LpM=;
        b=jCNRPrJGzQFKQ9/wpS36qwuNEd5KVli6PXTJ7nTtLvSGSnhpbMPzSAbPcQPXyixwBX
         uPPQeWXQPWIUhZQcluD5bHgWzQx2YvyArabW9U2tZOl7nr4tv51UjXpFlwIK822j4Lcw
         T12TT+jFnveZ6x+LLcuKesd7ZkIT0dTpOIsHqCX1qDzWzbXLrBEsOHygz8MA+hEN4PdV
         iwHzo06Iz1DJIZYcvUNjRAnc/hhgFNhllctY3restUqE3/5rPk3z4DAK3X7S7cQktT6l
         8EUKWlcKf3qZQf16+GmkKY5HMFFrGXohPz6di+wfOgJKdlORuw8Ny2mZKSySIVKBtG98
         P58g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730245322; x=1730850122;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bUFxc4/8h5YCr04CklGoLvH8jXBQzwVxphyqaqs8LpM=;
        b=wmMqZcmk4FQio8MLRt1SVnE+4/WdpYILSd4VTYzvm1jtEUDo/CrpvtS1E1OUE2PN/L
         JDkijp9oJWQfVDaXdNy00O8aN5M+htYcVnCpJQI2mkaxJv9bbVpnEkT83tRztkkYFLQf
         G+v7YfMIguw/ISE1D/x2+tmPhFWVrruQgMvBx7xSD+uH1jaHHzpcwXsL4/SfRR3KJmV2
         NhRfQ1rUuM87BYbauHHF0vNF/P0IqY9Sar9qTtBFgw6fPNjY/HoO+5Nril9BMukU45kW
         sa9r0HcN8MANLjMdcHlxxy8PXPAY7hQYWoluzvJ7pBmZhvjcq+viWM3GGrckaIOcArjq
         reNw==
X-Forwarded-Encrypted: i=1; AJvYcCU2XHgheArKFbnztzEIrfDI+yraKTI5suqPd62lEeUFL3VdMmbezmCyDoSrZ6QWe/zUUvXAJ61lUqLQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yyh1n7cymN5ajgOjAWMzfHqNNTqzMmO6Zue4c5/Fgb+gOJo7/FI
	bwivGVpmiZnQbJRO+mCTXHdw6PeuhrEAEJagLnNBoVB3v7VLonIGCsHxvotcI9zUDpu/uinWshT
	aFQI=
X-Google-Smtp-Source: AGHT+IHuMqUoPA9vvykcD+aVuMrEA6iREjFB8z97qFtvohJ/0EG10EF/ose2EVS5RIqKv4wMlh7WTw==
X-Received: by 2002:a17:90a:9292:b0:2e2:cf5c:8ee8 with SMTP id 98e67ed59e1d1-2e8f105e601mr14080879a91.12.1730245322552;
        Tue, 29 Oct 2024 16:42:02 -0700 (PDT)
Received: from localhost ([97.126.177.194])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e92fa0ea9bsm259788a91.10.2024.10.29.16.42.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Oct 2024 16:42:02 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
 Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>, 
 devicetree@vger.kernel.org, Lee Jones <lee@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, tony@atomide.com, 
 linux-omap@vger.kernel.org, Andreas Kemnade <andreas@kemnade.info>
In-Reply-To: <20241016080314.222674-4-andreas@kemnade.info>
References: <20241016080314.222674-1-andreas@kemnade.info>
 <20241016080314.222674-4-andreas@kemnade.info>
Subject: Re: [PATCH v5 3/3] ARM: dts: ti/omap: use standard node name for
 twl4030 charger
Message-Id: <173024532183.1250381.10578209015263837020.b4-ty@baylibre.com>
Date: Tue, 29 Oct 2024 16:42:01 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.15-dev-cb14d


On Wed, 16 Oct 2024 10:03:14 +0200, Andreas Kemnade wrote:
> Use the established node name for the charger.
> 
> 

Applied, thanks!

[3/3] ARM: dts: ti/omap: use standard node name for twl4030 charger
      commit: 55f96ea329ee8248215a08ae0b88330084304748

Best regards,
-- 
Kevin Hilman <khilman@baylibre.com>


