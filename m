Return-Path: <devicetree+bounces-117238-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A853C9B584E
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 01:10:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AF81A1C22D3B
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 00:10:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86CCBD2FF;
	Wed, 30 Oct 2024 00:10:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="CjJDeSU3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96862C8CE
	for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 00:10:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730247027; cv=none; b=aFeexYOHhaVB735DvclKxP8ZQtQZQH+qdmcOi1lfmFxtbucIHVERey6akvSjzGtUxVZePYy1p/i3coR4yiIlE8FFHAHcqQX+NxcH+4JH7S4t5ZI0vOFgpcLDPVPVUDaG2sn2FKBknNANPEBf0RNONe6Dpm+kKzvMX93gfCaFhfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730247027; c=relaxed/simple;
	bh=q0i42hDBYEiA8jFgG2lAGqDUsGATPmNCEi8eFOlIglQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=CpcZ3NQxX+/eAI8Bs2ZFINubYgHo8uyhXP2j+qHI5apuSDhsol/1ludowx2Xe8ekyBJ9FTMYDfVinDeVlvnA1bxBhFYlB3YxSUZoVl3IJxl1jnhLUhXS4JyfzihRQ0cxOgb8HfW1M2Jx1rDTvy0nq1FeErq6F7Q6UUlQcATETns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=CjJDeSU3; arc=none smtp.client-ip=209.85.215.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-7ee020ec76dso1983784a12.3
        for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 17:10:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1730247025; x=1730851825; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G1UwSQeRTLIt25NZ6/OqCii0PiMM5HRqpVvz0vZvlv8=;
        b=CjJDeSU3t9qEv5mfFGc+i2h35EtLulHnyQtzTfCHwC7LH+8K8L7ZjW0RUS4DKty0bQ
         /LP2ZFt1H6R/6GjpIW90EpEuEL0iqzw4VRjXIxSpORUa0fP8xI8R0Oj5jgJ3KVpzzs43
         l/wGxQ5L0Xaug0FoBGcICeV20cnUo02TtYus9bTtY2AYpc06ZLnLsCL45UZ1NVW000Gw
         askpAwa5L6PoRBe19iAgHHENs40IaSCQA6eURidH5gNqIFTmld+Oe3OSRJ5nbSVwcuv6
         myY1HZyIK335r2iaGp9EdqaFrS5KZgajV0oQEGZfTra1omiNEn7J4h/kFQ8je6ijM3wY
         PUeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730247025; x=1730851825;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=G1UwSQeRTLIt25NZ6/OqCii0PiMM5HRqpVvz0vZvlv8=;
        b=S1AkydKwYpVizNQay+e168+nEZS3clo+gdcOHu/tEd7bKZ75xqMdwhfg7qNqzDBehJ
         9ZnAkwnOstbJ0daV6GlkcFNZcoqfyY1SmbWpqyU/SdrSrEopIifAbJ+HG8+5MP9zr2zU
         v8JDQIUDbb8gDgYwHw2sJSMk0aTvSK0/gGjXqmfA5FiYfZ80rUvX91XlaJx1UAbvMvsy
         cpjk6e4HLOwtpbAYGYopg4GBtsE79c5MOFPDhYWACz50Ji6Kkcg80xoccP8D8WFweyOB
         BgpMU2WKFzdkMkpxFJqNLtWNc/I8+MHI7Bmcnco48JYXhylk9jZywlAePl0Fy0BnntDr
         bumw==
X-Forwarded-Encrypted: i=1; AJvYcCWqy+fvg9zRDEwnfLMJhSbpmgA5Dc8VIumRqes/s2kSTtylIMhJyZSnmUf/YDutikMoj5ZSRTGWxzEO@vger.kernel.org
X-Gm-Message-State: AOJu0YwW1EZolyciXa4CzB+DoCZVh6LKcorZPnoDaTfX99C8k1rclvrV
	TfB8/FYhWNKnzs5SfS30Fj6aHWB2i4stb6JmatCX5prfLxQ0x7HkaUFxIYlg0os=
X-Google-Smtp-Source: AGHT+IEbACN93lnbolh8qxQeLolYcCWCwnoV113Mbnno3BD8A21A9K6FH648K1KDnJt8KKCAYtbR2A==
X-Received: by 2002:a05:6a20:1d98:b0:1d4:e68c:2eb9 with SMTP id adf61e73a8af0-1d9a83cfa9amr18019722637.20.1730247024983;
        Tue, 29 Oct 2024 17:10:24 -0700 (PDT)
Received: from localhost ([97.126.177.194])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72057a0b7basm8194736b3a.109.2024.10.29.17.10.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Oct 2024 17:10:19 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: tony@atomide.com, robh@kernel.org, krzk+dt@kernel.org, 
 conor+dt@kernel.org, aford173@gmail.com, linux-omap@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 aaro.koskinen@iki.fi, Roger Quadros <rogerq@kernel.org>, 
 Andreas Kemnade <andreas@kemnade.info>
Cc: Stable@vger.kernel.org
In-Reply-To: <20241018214727.275162-1-andreas@kemnade.info>
References: <20241018214727.275162-1-andreas@kemnade.info>
Subject: Re: [PATCH] ARM: dts: omap36xx: declare 1GHz OPP as turbo again
Message-Id: <173024701867.1375433.4545777039452817587.b4-ty@baylibre.com>
Date: Tue, 29 Oct 2024 17:10:18 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.15-dev-cb14d


On Fri, 18 Oct 2024 23:47:27 +0200, Andreas Kemnade wrote:
> Operating stable without reduced chip life at 1Ghz needs several
> technologies working: The technologies involve
> - SmartReflex
> - DVFS
> 
> As this cannot directly specified in the OPP table as dependecies in the
> devicetree yet, use the turbo flag again to mark this OPP as something
> special to have some kind of opt-in.
> 
> [...]

Applied, thanks!

[1/1] ARM: dts: omap36xx: declare 1GHz OPP as turbo again
      commit: 96a64e9730c2c76cfa5c510583a0fbf40d62886b

Best regards,
-- 
Kevin Hilman <khilman@baylibre.com>


