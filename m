Return-Path: <devicetree+bounces-219783-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D5A7B8E387
	for <lists+devicetree@lfdr.de>; Sun, 21 Sep 2025 20:53:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0EFD3189BB02
	for <lists+devicetree@lfdr.de>; Sun, 21 Sep 2025 18:53:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA9C226F463;
	Sun, 21 Sep 2025 18:53:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pinefeat.co.uk header.i=@pinefeat.co.uk header.b="UpO4mQmo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7C47266574
	for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 18:52:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758480780; cv=none; b=jQtOUtBFQN3XP7t4hlvdmlxmYR+/8lUJPruMhTizSdf6d+Mmf2jAs02AKvR1qVdd5BHIeuptBs6Zx4G2vnjZowlfCyFpMkVp8yKahRdqc3428aqrR3m1O3RS4NH4EjFl3wCQB7J+wIAoKvG/sjF9IZvW+/26N1mzyySSnAYqfNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758480780; c=relaxed/simple;
	bh=MC8psRJR3jjNg3dIH4LXX7tPa2/ymiVUB8mRNj6lCsQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Aoj1q3s6EeZ+9P79iDzPZ654ZvkvGc4t/vLnU1M629VLZjaI9J4A5QPDYy0IcxdQpqe6LJm5AC3+/eKzMLKVXzUseAXFvbp6MieNbvEArovZI4v2+aRtxSsO0nTdgEQecVRCNqr2JbOlvjU+cHqdw616Kr5EFeGVRsJvIDN58Wg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pinefeat.co.uk; spf=pass smtp.mailfrom=pinefeat.co.uk; dkim=pass (2048-bit key) header.d=pinefeat.co.uk header.i=@pinefeat.co.uk header.b=UpO4mQmo; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pinefeat.co.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pinefeat.co.uk
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-3ef166e625aso1734752f8f.2
        for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 11:52:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pinefeat.co.uk; s=google; t=1758480777; x=1759085577; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NkZms6IJlV9Kq6Bvugi++P5U8z/GfXKW3hq5MRRzeXM=;
        b=UpO4mQmo1r7rHLs6Dpn+PYFmyxtbIC0Ay2aUsszBgnLXijoG0uVD0ji+e2YHVBnrDQ
         Nm3WFyzkZNFE/LeuJNJCXFdmw+Tq7FqW59WUw3W6TtHBzXXjJs+1NxnxXqpGv2LBKIqz
         ZrB7QAZWvhvB8GTyJD//Erv4YSqS+OOU+onQmPxjHB5i92HMLszW223Vo+ndrAeOPWo4
         bWH6rxOJ2pnK113mdN9tn9janw2fyheQ0wyKXGfzPluzVAd5VxIMVpE8kCkpDc4WEFhP
         CZX+JUZBWpM7p5JRpSTLN4g49GHiEi32USDymlFqYzLJ9HC0H7iwx/3XUZwAjTQU7Zgl
         5NoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758480777; x=1759085577;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NkZms6IJlV9Kq6Bvugi++P5U8z/GfXKW3hq5MRRzeXM=;
        b=bjZEQypa9/O4UP2J9bLaNZ5iiXlRWP7pD2qV1VvIxlMmPiL36lJheUxUJeEKsIV4dg
         eFKB8v8GUNa20b3eI0UzKGmHtmCsP1XRB8p0YBqGLEGmhdDHCseZoj+rtIYEZp6X0C8o
         RDjWZYgnvvqNad2fFzbkQHWapiO7x+fmus1nAk65kDBmjLXCQ7Co+CkUYh8cokoFDUzv
         9EvGUfoQyoP1Nz1JaIhCrT0HFvFV+WXVfE5FTtd2LF3N4xXH8TQUqwjwKRucaPYMyzyA
         A/3LSlh/6y28u5DFRxMxpg9TSbhyCuGhtLRNFlBAA/jxW+ruWWcnM3jBNB3cA6YOnEBK
         qlBg==
X-Forwarded-Encrypted: i=1; AJvYcCXYQ8vKwrqOfBTV6uDcgrQi8okEzikubmIP7lYxYMYSvYLVx6BHdAZrR6eP/YRZm6YwzE4zUAGh4z7N@vger.kernel.org
X-Gm-Message-State: AOJu0YxOW6gUenBPgfsXFAnzSZZEo09tCxeUGzPKOL+El9POrGTuI00k
	wNb7N2eyyjMYvqC7m3AM98NFH1f9NZAoy7uugB1AIdtREafcidfJBP6GxOxR8GU4BGSUgksuWTm
	ZMUmP4gm6gA==
X-Gm-Gg: ASbGncvK4j7KJk9SWT/OSOxUxyhFH5yd9YeB+RWuvOuEpeF/0nfi69PJp8QxZKPkDJD
	0w2tDYhDhiM3Z6CP/RgdrnR95DQ3Xnk5FXmdzS8e1W7KpGmsYqyhlPT/7Zv3R5UaNIoMC//jP4y
	HrrP2hM9qwdET/vEbjJdfzyhJlICQoEK95UAUS1w+fGrgD0XRdhBGCGR0mGFwNlcmTiVUOESAQR
	tt8c/+VYFgZvAuxx+FnBXHcDK0AwFibftDqCtY7LOtt6qQe9kv1TGY2xPtuNOMLL09AY1uXDgcr
	9Ac9BTnee86vVli0Sr9KdcDA/wCbhvzzy5QS2Xr6FIA8o4r4Tmk0JCBam67E9zABbc3lMSi8uNk
	D1cM0iEjYCfPMNxc4HrebmWQw7qmITd2Qy8MUM0ZPuEUoDzESIQ1s
X-Google-Smtp-Source: AGHT+IFLokWFX5QQyvB31/3nPAXcA98bLt8kBvJ4UrliwgAEi7mGk/gCusbB300xH5lmm6GEt+I+gA==
X-Received: by 2002:a05:6000:603:b0:3e7:27b9:40f3 with SMTP id ffacd0b85a97d-3ee7db4c3cfmr8908411f8f.15.1758480776576;
        Sun, 21 Sep 2025 11:52:56 -0700 (PDT)
Received: from asmirnov-G751JM.Home ([2a02:c7c:b28c:1f00:3800:f880:3b2c:b75f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3fac7463f2fsm3468131f8f.39.2025.09.21.11.52.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Sep 2025 11:52:56 -0700 (PDT)
From: Aliaksandr Smirnou <asmirnou@pinefeat.co.uk>
To: krzk@kernel.org
Cc: asmirnou@pinefeat.co.uk,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	hverkuil@xs4all.nl,
	jacopo.mondi@ideasonboard.com,
	krzk+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	mchehab@kernel.org,
	robh@kernel.org
Subject: Re: [PATCH v4 0/2] Pinefeat cef168 lens control board driver
Date: Sun, 21 Sep 2025 19:52:50 +0100
Message-Id: <20250921185250.7619-1-asmirnou@pinefeat.co.uk>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <436efc30-5e54-43c4-9d68-88bc63d71231@kernel.org>
References: <436efc30-5e54-43c4-9d68-88bc63d71231@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

On Sat, 30 Aug 2025 15:20:30 +0200, Krzysztof Kozlowski wrote:
> > This patch series adds support for the Pinefeat adapter, which interfaces
> > Canon EF and EF-S lenses to non-Canon camera bodies. The cef168 circuit
> > control board provides an I2C interface for electronic focus and aperture
> > control. The driver integrates with the V4L2 sub-device API.
> > 
> > For more information about the product, see:
> > https://github.com/pinefeat/cef168
> > 
> > Changes in v4:
> 
> You already sent v4, so this makes a duplicate posting messing up with
> tools.
> 
> https://lore.kernel.org/all/20250824-cuddly-cryptic-porpoise-b66b4a@kuoka/
> 
> Each posting is its own version. Resending - not marked here as resend -
> would be sending the same patch.

Gentle ping.

This is still v4; the only difference was correcting the sender address.
No functional changes since v4. I'm keeping this as v4 unless you prefer a
rebase.

