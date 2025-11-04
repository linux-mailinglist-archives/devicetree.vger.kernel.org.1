Return-Path: <devicetree+bounces-234999-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 15A94C3356E
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 00:08:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id BE88C4F3160
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 23:07:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DAA47346E48;
	Tue,  4 Nov 2025 23:07:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Nf3h5MV3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F2C033F8B7
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 23:07:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762297621; cv=none; b=f94qbTfuBkKouwzUGrcDWO7g5+uySewvYO6pwP9V8qV8Ru8Wmip0Y5AcEwd9PlMMOtmuDARE/EuQ4O5NgXz167GPG2naacwEf9lexs43BuB96YAvxd01e0wr7eJEbzX2BmnhPY+PDA0P2TSKGqWzxN4jzOMwgdfV+NFmLpG0MlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762297621; c=relaxed/simple;
	bh=CsY4m5s2RMJkD3lvjeOF++mv47u/HIAkSzDbG5YyYFA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=SFKha+WCmkSG+R17hludWFfkQsBJ8LgD/vj4SOpk63IXhtVZ31ci71Du1fxY4+IoY8RcmypSWk/7+XOvGnXOnUd1/J7IeEuw3HWv8gr1gh87sqmK5nsu3KUsMCu4Ur+wDt56S2/l/k+XVU5PiTyjIci6gdNU+cjh++5UWodHihg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Nf3h5MV3; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-7a23208a0c2so4882446b3a.0
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 15:07:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1762297619; x=1762902419; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C7rOk2SljDe8T4aO8i0PRNva7QDAcRd0Lww0kxlgSZQ=;
        b=Nf3h5MV3kq0+e7RI2TRSY/yX09WXLgN5TtiF3py68fUPDEfoNlXrgqlNGhhPl0Mr1Y
         1kZv/1dvM8+f6I8/yjDAgpDLJdNqO+hP0OJ+OazFUnStjli5WLaQOyaStql/UIhwvLhN
         k/OdXiVBOJRIuxqFr/SD8iepocR4ZlHrIT9o6c3JJ3VT7iYnoMWDfcz7/pDSM1Lnm3rN
         9/0BoBzb3wh74v7q1HV0OokX80JZzSijACcrBU0o3/0D0H1qhufR3ErOQ4afJcH2sMoZ
         vCHsJM1vsBMLuQP/dPF3CpvYrSKwHVtjh0a1tAL5PiqEA14EZYrE+JiZUD+lSmqEzzuQ
         aOCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762297619; x=1762902419;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=C7rOk2SljDe8T4aO8i0PRNva7QDAcRd0Lww0kxlgSZQ=;
        b=f6uNNFSxZxYhw8AEX7sI1ywvy6jnoi3RHzmowKz3pP8jaXi5zCDwaz7KY3LPYfPZK6
         yFA45MEZxh8GGnOoOOknkfPvkmkdaga/FdqidkHqr+HhXfOP29HMQ6xfB8ReQlRnDNEK
         HD9rT9DOb+Q6BvUB1Royz+R16LFFQ8Yy8z3UzfannAVrDZFvmqbxzJLumD7260DeVOL7
         89g9Fs9ti5Tn581Mt7KGVh16w8QNIT0sS4WXM3Ju9aYoybJAKDJpbOfYK3bXKKkhgAHP
         lMzguAbsxeX32WhzcoH+YKTBIPK+80GXQAdJzybn1Swf5EONF9sNWFAiTNDzKTuUOvvr
         ZqmQ==
X-Forwarded-Encrypted: i=1; AJvYcCVssz3oEA35pYgymtv4MFuy6MxAG+bfHcStUNKOYsq+qMI2XMl8l17GPc0Jpe++kZc8Z2gRvq6K+4BJ@vger.kernel.org
X-Gm-Message-State: AOJu0YxV89OC2RhShKUrPwnd1wtuMdszxPW2hQ3ilEHvm29SJ7kLRUYv
	ozhPBLeR/Zb/9NqHLInve3byVLUGn2k/AuqgQDagUpHfckS/c50cuY1t9pWvFcoTKZo=
X-Gm-Gg: ASbGncs4ZUilp+KWte//oGvIB0ibWW4q3/CIxTyQj2G++ezL+7psSjZ0djgUWRevo2/
	dBX6vQ317fC38fg7dItbcepK125aLwptwFe6Gxzzkrg2w4CgmkQ+QVjXL4rraM456FFmNcDvKjW
	MDiuvJdSV99TV4wJ6Li1nlFUJy1DZ19qZitdA6ItrtpDNcRwvS/qkN3MWIzvq+1NCt1t/c3deDq
	CoLO2ncMtrJzsbyw67Dq0Tu1HVUUH4PyszSu/Dw2SWqcMYnfPFCjb9XTnu7W7lTKOFqmd3hDojh
	uHoZi8ST2MKUuUkBW03U8i+LcNyoD09A9rmMtpge+OJv600OoB8mldzIsZmltj5sJcAk+8ofyHH
	n135q8luKOdrF79+6uYkUU3eYNt9Yc0EaRbO2OsxyO5L7MVr8RJ7GR17g3JA5aGURtPBYi02f7A
	==
X-Google-Smtp-Source: AGHT+IGLYp80GBLpwoYMtkxAs/l4LiwUD9QsWZrdQvRIeBfncu8inTEVtgBSRIphFP4oV2r+3SM7DQ==
X-Received: by 2002:a05:6a00:2d92:b0:7a1:68b2:5341 with SMTP id d2e1a72fcca58-7ae1d250dfemr1114563b3a.11.1762297619593;
        Tue, 04 Nov 2025 15:06:59 -0800 (PST)
Received: from localhost ([71.212.208.158])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7acd5774c21sm4156649b3a.43.2025.11.04.15.06.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Nov 2025 15:06:59 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: andreas@kemnade.info, Jihed Chaibi <jihed.chaibi.dev@gmail.com>
Cc: lee@kernel.org, krzk+dt@kernel.org, tony@atomide.com, robh@kernel.org, 
 conor+dt@kernel.org, ukleinek@kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-pwm@vger.kernel.org, 
 linux-omap@vger.kernel.org
In-Reply-To: <20250914192516.164629-1-jihed.chaibi.dev@gmail.com>
References: <20250914192516.164629-1-jihed.chaibi.dev@gmail.com>
Subject: Re: (subset) [PATCH v8 0/3] dt-bindings: mfd: twl: Consolidate and
 fix TI TWL family bindings
Message-Id: <176229761865.2840692.9613824843684430886.b4-ty@baylibre.com>
Date: Tue, 04 Nov 2025 15:06:58 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.15-dev-56183


On Sun, 14 Sep 2025 21:25:13 +0200, Jihed Chaibi wrote:
> Following extensive maintainer feedback, this patch implements the
> "define then disable" pattern. All possible child nodes are now defined
> at the top level. Conditional if/then blocks are used to explicitly
> disallow sub-modules that are not present on specific chip variants.
> 
> This refactoring also moves pre-existing sub-node definitions
> (e.g. madc, pwrbutton, gpadc, etc.) out of the conditional blocks
> to the top level, following the new pattern.
> 
> [...]

Applied, thanks!

[2/3] ARM: dts: omap3: beagle-xm: Correct obsolete TWL4030 power compatible
      commit: f7f3bc18300a230e0f1bfb17fc8889435c1e47f5
[3/3] ARM: dts: omap3: n900: Correct obsolete TWL4030 power compatible
      commit: 3862123e9b56663c7a3e4a308e6e65bffe44f646

Best regards,
-- 
Kevin Hilman <khilman@baylibre.com>


