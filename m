Return-Path: <devicetree+bounces-107989-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 46C08991140
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2024 23:22:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4CCEC1C2369C
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2024 21:22:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 379F2142E9F;
	Fri,  4 Oct 2024 21:22:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="u63zFRnF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A26A183CC7
	for <devicetree@vger.kernel.org>; Fri,  4 Oct 2024 21:22:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728076946; cv=none; b=OCDhVRdNzVTk2tblJrc2odp45PENKnWMnmx/W72L0xKkArV/mNRNQXaoAZa4e6O9SqcCTTWpECXTpNxPYRe6tixd2jccPDdo/xq1y//nu5Hr3LEHjg73F2v8dfCdKvkrJNsfRdr8nLhrLzcSyBhLWE0GSo54ewXJroKJbKbuSIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728076946; c=relaxed/simple;
	bh=05vE/t6MeYR8RdZePLMne+XSZDZ74HIiBGiljHrRiH4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=E0D89IX5mR5p18NFG/7a2IwGy3wlE1kktWVpwHggp345qk1BBYBSr/5x15r4YMgWg+XZOkwrQUEdlu464T+V5e7v3rUYzT9VoI7IgD6LnzrV8BSCZmBAVoXwoc6bz51DiOiMkjsp6j6rUeh4l7SVgsE7cVSvIDg3OT8YWeJkC2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=u63zFRnF; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-71dbdb7afe7so2137216b3a.0
        for <devicetree@vger.kernel.org>; Fri, 04 Oct 2024 14:22:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1728076944; x=1728681744; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bQeTakrtwH0EL9Wwyif9xs5eWJrpAyWIHCaCI8pJibE=;
        b=u63zFRnF1zQqgMSTmFvRHrlUKogZq5lr6EDuQVLHLoX7jTdmu5uCn2yz9ipG7zPws9
         kBMkcnN4qiERU8agVYkVIkJ9P4OfJl1NQ7Gh166WyMa2MfDvusL4QI2LBwTxOrTJwe/Y
         gEZEesucLIHt5U86CHszwjIxOUKvvQDHLEHCcXf4/275/WIVjLo22LHhJ3pL0E+7xKh3
         OpCA5o/8srVO1s9Lp945r3bX5K3C9dfDxJGwvpK0abrkfzvoj2q90Dis2JciXovavYao
         /4+k2romv2IPJkjJnojQ0MdGnhB4HPsuLy0KSkUhoe0DSAgia/D8acwT8AzEjn00XjA0
         kOaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728076944; x=1728681744;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bQeTakrtwH0EL9Wwyif9xs5eWJrpAyWIHCaCI8pJibE=;
        b=eByjc4WbgH4+hdYJqJKQCADO2Xa56wEAis9vUIhTn9gdxdtkfWQEvkabUu7M+N/LyP
         DZcVn5jP9XLa7JT/Y8mvryu0LZ0iEGlG+l36TEJAlxDBuq1e8sdfbrdBUTO+2ZzVhTY2
         dkPvl8xoGj4J4AgBvNPjjaqcLB1A5862cazCcEMgA9cfBsvc4MkspzgpiKEh7HERhUAk
         30QRj+6E2Y7p80dY7opjRBROfK1YeMlS0RLLrkrxrtGEZCWSryo2T7nxkuTgSE+pUPTm
         JYNVQfYOP75fqkl0rKGcFFAELAwfnXdzkJYsc9PyNEavHIsT3eaXMVIkkI+Nu2dUG2xQ
         lung==
X-Forwarded-Encrypted: i=1; AJvYcCUnfm+UWPllWkxtIgJshrp5RL2JcdM0keuvLRa9zXlIRwb0ISQVGrNA1G8IbQi0FyWaSNy0RrJeREJo@vger.kernel.org
X-Gm-Message-State: AOJu0YzpJY+rUegcYtGW5wXgw8ztQ7dy6IOUfj1D6SjG1gZj+Y/yiI1V
	WtAPJBl7k1reejMSwiseSbbtfIoVsSFPhh/B7ejfq8hgeHupGo1enlrpkBuLris=
X-Google-Smtp-Source: AGHT+IFvqKcSClFCMk+YLgSqmXo+YU8LqN0pftZdWpGC+2qvSD1DJWoG/2t0W3Ooh0/23Dc6wDRPPQ==
X-Received: by 2002:a05:6a00:b8a:b0:718:dd1e:de1a with SMTP id d2e1a72fcca58-71de2469f7amr6199017b3a.28.1728076943933;
        Fri, 04 Oct 2024 14:22:23 -0700 (PDT)
Received: from localhost ([71.212.170.185])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7e9f6c4aa24sm435850a12.88.2024.10.04.14.22.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Oct 2024 14:22:23 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Tony Lindgren <tony@atomide.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-omap@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: ti/omap: Fix at24 EEPROM node names
Date: Fri,  4 Oct 2024 14:22:12 -0700
Message-ID: <172807691222.745674.5605904922080924014.b4-ty@baylibre.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240910215942.824137-1-robh@kernel.org>
References: <20240910215942.824137-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Tue, 10 Sep 2024 16:59:38 -0500, Rob Herring (Arm) wrote:
> at24.yaml defines the node name for at24 EEPROMs as 'eeprom'.
> 
> 

Applied, thanks!

[1/1] ARM: dts: ti/omap: Fix at24 EEPROM node names
      commit: 47048d5bcf05b4529009e4434dd1ece7f0c4f4d1

Best regards,
-- 
Kevin Hilman <khilman@baylibre.com>

