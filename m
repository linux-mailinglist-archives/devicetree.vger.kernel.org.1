Return-Path: <devicetree+bounces-215579-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 96A66B51E90
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 19:07:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4D3105E3CE9
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 17:07:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0AB82D1F72;
	Wed, 10 Sep 2025 17:07:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=thegoodpenguin-co-uk.20230601.gappssmtp.com header.i=@thegoodpenguin-co-uk.20230601.gappssmtp.com header.b="rhkC4LkV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B67B24C077
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 17:07:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757524051; cv=none; b=b38lS0y3VPOL+ZmzDY5uQFmCpFKpYOGoDv1Jkum4w1YJ9SuOi4vx9Nvd7mcZvfK7/NpmqNb9HB31VOew99X4jkcqHre9dtxeVWEyXIOKWxv5OHBTVaDizzEl2X9Dp+rxy0pNePda02BvQcGn3bOKJPRjl5ie86Vy0P3g6vqiUqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757524051; c=relaxed/simple;
	bh=N4gPPS/3dSviDV+nJ9aMHOkSB0mRiMcb3pe0ijxcYPQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=pnZo28wmnZV+UZJiuyK/OV3SuPO+o4XHVmB9WBe00YnjWRS+IgKYWqM0wwQWX1+tSFrGYB1n+qqKqvF5+4RaM/9CYHdv6/zkc8z5eseZ4lGpRBc/KQKsr3RIEAFWKBvSMjqVNEJydvTfAG4di4tUFD1CIzYDNw3nGxMcWeEddVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=thegoodpenguin.co.uk; spf=pass smtp.mailfrom=thegoodpenguin.co.uk; dkim=pass (2048-bit key) header.d=thegoodpenguin-co-uk.20230601.gappssmtp.com header.i=@thegoodpenguin-co-uk.20230601.gappssmtp.com header.b=rhkC4LkV; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=thegoodpenguin.co.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=thegoodpenguin.co.uk
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-45dde353b47so22636195e9.3
        for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 10:07:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thegoodpenguin-co-uk.20230601.gappssmtp.com; s=20230601; t=1757524048; x=1758128848; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gekjhcGuFAvCdvKdCIZQrxRikZ2Ctx9B6SPOTCwdqxo=;
        b=rhkC4LkV9HgSetgiQBBzpRSSpgSYZRb8GKm4It+rCmJMSWa0PpFISTr4dLKqlm6Xix
         HVp43ELa8ujo4gi3CNfEUdrPr+T/nwyKXGCJYqT8peaXgsKGnhRc0Jgiv54TKhAmK/0x
         bIi3ayuNEoIiQchKnFjzvLgdBeoQkp3BAN5iqner4Yjx7QQVFhZOD313LCcOOUSl/gE/
         0xE+9J0ItcTgn0ArHXRTmG7FKPEpaMOjfr9FxKAvr5NdJF3TdpAu6gh4pSlvWAtv9Wnf
         Y03MzoALIRhpDWpgzC9zmODMVQMI6z4Figwx71tgZYaklgDpkICVxIFJNY+Kt3HDdNBL
         I8ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757524048; x=1758128848;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gekjhcGuFAvCdvKdCIZQrxRikZ2Ctx9B6SPOTCwdqxo=;
        b=lbDM4YFmpdToBghGyPZqDgs9YXKbpZdSkoQHr0s/luIVWR62JJpQvvkMYBBE137H2A
         SiV1OgeNcHwWxwveClMH4xDf+XRua72QIGnxiZO/6Au1tPWRTt0RzKz0QgDz4vXJvux8
         OVwk0T9BGZLo82PR31UzARP5/TkuVDJCazAE5YFN20HriXc5ww2Uu7bjOYuCgR6yGNFE
         u0YvGMnNiKYFB2JWkhMupBMsy6B3sNpBT7OmQxQRAtGyAaXLLtXNyfAWtpl6uJ0Cg9m6
         LVgii0LypkZG/eYP2vfjvsw6zDGCYIJUz7VaYESRQqvrYsKRMVqs6eMc9hiNg5CJX86K
         8hKw==
X-Forwarded-Encrypted: i=1; AJvYcCW9yGNfwhjNp3z1mN19dRL/zbjikdxuLAL1SYoLygduZ+OjhtbErDNWJIypgMDaxcA8MdIS9QoaXgiI@vger.kernel.org
X-Gm-Message-State: AOJu0YwfzNaXB2Apvj+7TmSFXLE/Je6AOC0xa4QHhvZNEB4tPnzw/xzb
	aRDJeDSaNRCwE7Q95LoMcirmyth0vYp2iGFYpfydcZRs+iQbj7Tvox2qGg3hd0a+eDo=
X-Gm-Gg: ASbGncuFm60dIbVHlDxsuD+TTTNsqpzNwL/pLIYBZl55LWczHnGZTJO1XRt4hVZ/aFd
	qBvOi+K0MziVvL1lEmguGJvZBNdEnVCJvNI+caN+AdbSWpKCaldNdikpD2x9fL/qf8fSWmDOEE9
	nY6uiOHgeRGMbGLutl/L+h0zg3E9QsAf9nr4muAF557Ozohf/Gh1XUu3ef8fPtmaqsS4f4c84aM
	kW365Tq0w6jYIUU73YhPpvTrrkc/W8AeREUTiT5jku/QeLBIZ29mfRbCQIsjOgKpWgJfZouXHP/
	druKFQcBEokEdaqvYZ6ycNX+o7QJBhz0jhmCXYWQO55509CMDHrDq3F+Y92ipyHosNg5TErw1jJ
	M3xdGr2s8K972VZFQqpEP/KPo6MOMJhdETCCPHMuE
X-Google-Smtp-Source: AGHT+IE8ICbq+Y0pNELl5MS1Ijotr4nvX+Ht9YB0UVmmnGjj1nmt8pLLDUc5Zs7zq66i3nLkc7Fh/g==
X-Received: by 2002:a05:6000:26d2:b0:3df:b9e7:35ba with SMTP id ffacd0b85a97d-3e6440f0674mr13101716f8f.57.1757524048387;
        Wed, 10 Sep 2025 10:07:28 -0700 (PDT)
Received: from hapmop ([2a02:c7c:8a3e:8c00:27ad:58c1:9156:5215])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e752238755sm7374432f8f.32.2025.09.10.10.07.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Sep 2025 10:07:28 -0700 (PDT)
From: Harrison Carter <hcarter@thegoodpenguin.co.uk>
To: robh@kernel.org
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	hcarter@thegoodpenguin.co.uk,
	krzk+dt@kernel.org,
	lee@kernel.org,
	linux-kernel@vger.kernel.org,
	linux-leds@vger.kernel.org,
	pavel@kernel.org,
	sakari.ailus@linux.intel.com
Subject: 
Date: Wed, 10 Sep 2025 18:07:27 +0100
Message-ID: <20250910170727.548880-1-hcarter@thegoodpenguin.co.uk>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250910150527.GA54174-robh@kernel.org>
References: <20250910150527.GA54174-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Subject: Quick clarification

Hi Rob,

Thanks for looking it over. Just to clarify on your
comments:

1. Is this to stop duplicating things that are clearly 
    described in the variable names?
2. Should I keep the "Must be dvisible by X" parts of the 
    description?

Cheers,

HarryC

