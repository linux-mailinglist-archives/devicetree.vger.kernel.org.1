Return-Path: <devicetree+bounces-234996-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 767A9C3353B
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 00:07:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 22FE93B36AC
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 23:07:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD94D309F0E;
	Tue,  4 Nov 2025 23:06:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ay2+oeJg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1915E299959
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 23:06:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762297616; cv=none; b=F4NIXnBtdzLUctJ29OAyuJT1RmgCyhcNbQUnaOEqY5UEOUoRwHXzGsOX9tSGqRx+2HX/jpWwuFiZ2KmkQyAmnafygTEYpYR2PNRq7rEs3s8MKR6/7agHmZcjsSJVpKHtCS4N8ZBh9ay/GzHMvA/LeEvl18Bw4DZyztK5lPqINmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762297616; c=relaxed/simple;
	bh=fchhTn8MqJxLmfbqVXq6GZ7RtHLl+u227s4dumCWLq4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=oxRmW2MK9n5dElGvblSZDX5qqCzCqSRjlkDgBfUs4K8kU7civU360PXIzpfnTSk/S++fEB2Qu7449GEooPhvREFnwJk8Ti078x4qtj1yuOEvy0HsgQ+X7NqYgO9re1Npv5SaKNTR3/Ub+66AhhUfCbc3A+X8gJRcHOr6H/cULdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ay2+oeJg; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-2951a817541so68051515ad.2
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 15:06:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1762297614; x=1762902414; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WhlsviKHKhZuRlG/mtBhAql/+W3DM4TdZaLX7tyx7hw=;
        b=ay2+oeJgu77oqtDOGpf6cvP9dGbEzxwCDqNq2WcyPNRvJuH7XNSRJ2DWFVYPn2sNa8
         SR1TKw8bCQx+yd6zb8OT0VQPyEBBqZBttvn+Q1zpavpFAXuhCHp6UC2CNqKRLS+nhV8a
         RKlZSO+PorDv0J44t1Ca7/RTkFM4TTaG6g6k5Mn8pcjPR/J8N+bC4+AW+hg/1h1vkZDt
         10Y4ymh89MwK3J1vfmMAcfVl98ZxH4YlJGUE0DJ1tTEZcsBX3jYSDc3fm07zAg5yeCix
         cWBVlbejAkijBM2G57RMclMDhdIeRhQZBFQSSQxkusA+kBit0pNv250I9uC19awHsxRR
         4BMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762297614; x=1762902414;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WhlsviKHKhZuRlG/mtBhAql/+W3DM4TdZaLX7tyx7hw=;
        b=vHvqmcJ6mlRGDRtE/2WkkZHZ/3yAtV1EnEveIS2IKC7f1q14r0mjXkETtCCmUOrgxZ
         UhhBTWdjK4SVbb3yMbQNNn4TqW4PzhVZHpCIT8CA99T2Zfm8rxvNat8lurc4QaoszFGd
         OoU5KEKDquXQyBK9P+hzVO9ZcwTjecBcAjxc04D8WAngywGZHpGB+W5N54j05XURqdbm
         ddFTgkfuykhpozdjcjDRtHd8fvXR6vYioyVoOnidRrWC3yY6kAv5A8QQ2l02qdyHxRBR
         TzdgsyEopomvuFmjA87E+7vKKMskRfG3hO6kHAL1Wa5NW0xzr9NWLf1U0lCrNXmEeRcY
         rF+g==
X-Gm-Message-State: AOJu0Yyj7x7dbvoBF7TUIp/SMGhBqlLguiIzCtUAXoZ7LEGR5UfUMzGg
	tERURKz1hCM3M6e9KHvP2iLUeU+zjeK3pzUiTHtnBba6ZQnTDn+pPbUKMNunToz/MCVt4rKk6Z4
	vLEaW
X-Gm-Gg: ASbGnctvdQyHDZSTfmuEq5HdKUMKzWip0Ss/5lPEDm6wiFDlKfz6VtzTDLKFCNEqSL8
	ibFehdPMqLDm86pEN9gVebFQsIKRzFsHK3A5llBSn4+uXhDFSzu5nE6EaPZaflmaqeo/Z1kfIFf
	Z95E3gffKEfQgpVsFMJ8D01rgeOZmhCkQXtXFRnbdZ2giPIznMvUwFxvsF9P3b5IfdQD0OypMlm
	18tc/jKkdidWt4y552uCNQ27fzmMvZnKmdX9CbQLddHaoJEhxdKx6KoEFYyxlhN1XXyMqq5exRC
	CAjHfd/xuLcrtfaUM+BA50M47aRhYNz3DljS4CujEjjMxJRSlTQCL178tWLvmAWlkyAfpgVpOrf
	vH2xokMmAHKKlAszIMMNYpIXa9A0JavbIu7osx6OQpOUQv3C2yS8ZGFADQyMR702NIddjM8P9T8
	ZlU6VKxBXY
X-Google-Smtp-Source: AGHT+IEjOvXmbX0o+w1OKTng5InpcWCh6Frw8i83U49FZVBly0lrA+TfJV6RE2PP0IrDE9B02Feq7w==
X-Received: by 2002:a05:6a20:258b:b0:340:e2dc:95ae with SMTP id adf61e73a8af0-34f86cfcb5bmr1298282637.42.1762297614275;
        Tue, 04 Nov 2025 15:06:54 -0800 (PST)
Received: from localhost ([71.212.208.158])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-ba1f86b0688sm3520477a12.28.2025.11.04.15.06.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Nov 2025 15:06:53 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: devicetree@vger.kernel.org, yegorslists@googlemail.com
Cc: linux-omap@vger.kernel.org, tony@atomide.com, robh@kernel.org
In-Reply-To: <20251007085037.3605676-1-yegorslists@googlemail.com>
References: <20251007085037.3605676-1-yegorslists@googlemail.com>
Subject: Re: [PATCH] ARM: dts: ti: omap: am335x-baltos: add a regulator for
 the mPCIe slot
Message-Id: <176229761350.2840692.17457900842990015670.b4-ty@baylibre.com>
Date: Tue, 04 Nov 2025 15:06:53 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.15-dev-56183


On Tue, 07 Oct 2025 10:50:37 +0200, yegorslists@googlemail.com wrote:
> Baltos device provide a mPCIe slot that can be power cycled via a GPIO.
> 
> Add a userspace consumer mpcie-power-switch that references a fixed
> regulator attached to the GPIO3_4.
> 
> 

Applied, thanks!

[1/1] ARM: dts: ti: omap: am335x-baltos: add a regulator for the mPCIe slot
      commit: 473de5d3466f879b84a9d063fa34acdd9e895d76

Best regards,
-- 
Kevin Hilman <khilman@baylibre.com>


