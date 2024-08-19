Return-Path: <devicetree+bounces-94862-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E984956FB5
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2024 18:06:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A0A221C23857
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2024 16:06:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A0D71898EF;
	Mon, 19 Aug 2024 16:03:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="if+OLV0V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE1C3175D50
	for <devicetree@vger.kernel.org>; Mon, 19 Aug 2024 16:03:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724083385; cv=none; b=lvQDKsH81gb3/XlbqoVU8rMo10mG97ArpiC5WZDgukt64VLR/v16P0AC2g3jJ8/wFqjDjtQmR4NGCfLYSHLbd/xtU9TuwhTDQVHlfT5dAzlL2b41j74/s+Dwhd9AQQYGUx+RumNzhxZWrx6Z6KnKgG9tM/b4czzuiq/NOx/kxMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724083385; c=relaxed/simple;
	bh=apyuz9RjpbRZkWTu7u/sHjbSElSqgDIn+Vgu9VuZC9Y=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=XnA/WRIHd0Mh3/BtUCdW/Cnqk2ColxnlqEiXgfxGUl+pvaeRDB8MdyL/rUQDt1jNJIW3uLs0z5a5BERqbkyly2JsJDoCa8ffA5TnRhLS1OMGKlIHRqKog3ay0JXcK57s2cZl/MX5OCLaSplwAobJzse2XACvQzt50lo+Daao1XQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=if+OLV0V; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-371b015572cso1675732f8f.1
        for <devicetree@vger.kernel.org>; Mon, 19 Aug 2024 09:03:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724083382; x=1724688182; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QSGdUUsmjOuUqs3Sb/HBP7VBG8yMf91ri1hASSPUnjM=;
        b=if+OLV0VnEMZUs1cUlFGwAPBQNe8XYIMAYVxj9OZ6eRwWUfEhTOobxv8nqSiO0ppsD
         STOYfDYup26lclxqVNojhhYqA5P1C1dOp/GkQE6ouvTf89I3dhTd9hR424wwN9cjxSq8
         2t05YI7UuMMAP9GbGl7RRytMaImk2g94UVtaGmI7L6lg82IV0i1MbnVm09OuSzrlSV3U
         ryBNTaWlQ8S2bgojj7G05uVM3NuWGGjKy/bvxCoKVc220dP7akaUvUJxP4/naJ8AiBMg
         Dw3K8NxLF6ue1fGOIrmSVjjmHio5IOTxdcP7tQFjPkNSscp5oceCjnW8Xn7PJD00HqXl
         iQwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724083382; x=1724688182;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QSGdUUsmjOuUqs3Sb/HBP7VBG8yMf91ri1hASSPUnjM=;
        b=AMkTDkAbFKmJXkynhtgkZsIYSfz1JYpf0fha9PTGZBs6veQ4OMM+s8FDJE4ytxU3hn
         vnQ+rzm7/6o2EQOpS9Ue2yKyiqJ59Z8zUxtvjnC0PiQyo/QktjIYVoa0yU4fx1f8om20
         dWCMHZL+EbnX3V2H8g4iuoIAqKcC67l189kkTD4vAvRnfH2StrOhQEoljQkhq9gIyGDP
         32hKmTyYKf1ERzlWvxpUqDUrktJ6NAKrPX5xZsQPRsD3aqYFFHS8Fs+oa9YML6HVxY2q
         C9zdGDYZ+CejTI0ehT0c+i4gYQDL8pRd2l9+1Hj/o7Q+pXWU4DKWxx8TCHuErmh4/Qz+
         iWHw==
X-Forwarded-Encrypted: i=1; AJvYcCUrNbsdiRs/KTIuZ2uZKG1XW3kT0SMYlJo/OOEKA9xHwC9xWGxUvn43+4hdO8dfBh+fNuUmelqQ9dfA@vger.kernel.org
X-Gm-Message-State: AOJu0YwhR55MYpVcX4WjTgVYHltBjWKKwv+gKulrvGsqysgP0OG9Tt5x
	uWHrLTNfAtTUb5s8oF/1f40aR576x1VJVnETLUQKWPx5aiChIq3EtQG4scKPHm8=
X-Google-Smtp-Source: AGHT+IE027jEWALLQjfHSgPFYDvatdKVAfuyDGITo5V0HDNJZ1Z7dl4sInpAcLoDEHOXsxvRP+KByg==
X-Received: by 2002:a5d:5a15:0:b0:371:8e9c:e608 with SMTP id ffacd0b85a97d-371946a1a0dmr14651679f8f.52.1724083381406;
        Mon, 19 Aug 2024 09:03:01 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-371898aabe9sm10907638f8f.92.2024.08.19.09.03.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Aug 2024 09:03:00 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Liu Ying <victor.liu@nxp.com>
Cc: quic_jesszhan@quicinc.com, maarten.lankhorst@linux.intel.com, 
 mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, daniel@ffwll.ch, 
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
 thierry.reding@gmail.com, sam@ravnborg.org
In-Reply-To: <20240816085004.491494-1-victor.liu@nxp.com>
References: <20240816085004.491494-1-victor.liu@nxp.com>
Subject: Re: [PATCH 0/2] drm/panel: simple: Add ON Tat Industrial Company
 KD50G21-40NT-A1 panel
Message-Id: <172408338025.1748689.1253255812043892050.b4-ty@linaro.org>
Date: Mon, 19 Aug 2024 18:03:00 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.0

Hi,

On Fri, 16 Aug 2024 16:50:02 +0800, Liu Ying wrote:
> This patch series aims at adding ON Tat Industrial Company KD50G21-40NT-A1
> 5" WVGA LCD panel support.  The panel has a DPI interface.
> 
> The LCD module specification can be found at:
> https://cdn-shop.adafruit.com/datasheets/KD50G21-40NT-A1.pdf
> 
> Liu Ying (2):
>   dt-bindings: display: panel-simple: Add On Tat Industrial Company
>     KD50G21-40NT-A1
>   drm/panel: simple: Add ON Tat Industrial Company KD50G21-40NT-A1 panel
> 
> [...]

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/2] dt-bindings: display: panel-simple: Add On Tat Industrial Company KD50G21-40NT-A1
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/773a0e3e89b354f14ec9ea8bddf3e86a602d162d
[2/2] drm/panel: simple: Add ON Tat Industrial Company KD50G21-40NT-A1 panel
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/91a759d402b5c17263f82097c647e784f217e2d4

-- 
Neil


