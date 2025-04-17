Return-Path: <devicetree+bounces-168315-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A0DBCA921DD
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 17:43:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E0F7A3AFE8B
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 15:43:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55CDF254846;
	Thu, 17 Apr 2025 15:43:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pJ1ibxZf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B879253F12
	for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 15:43:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744904599; cv=none; b=M6Krph5vMz7eFGREA3CAYvRq0U1eZ7uvpFNgYXX4Iiz/j0SVL+o/mHsy5x4YLssgoJAjjPBPtTx/jE++g1GMwo80UEkjM1fF3AL4+ZhmbOshQ/OdGBmYD94WIbx6+mnjOaH4mVQNiXAWygN9+BqI0jTR4hHWhlqQPABNx7/Za40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744904599; c=relaxed/simple;
	bh=/ls7sBWqBfSenr7asANJeNgAWf1apqx+Udo/DkYWxjI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=Tw+Kx17ODnnwfNzForasLuCbYMSBOcaxyYJG044vwTlu6W0+cy843KnGyn+NZXiWKkC3tQP3Tb5sWNIoKButgNGc1zPncyBXoP5gx0lUDeb4TR+Z+3UkR26MSvVze29Ki6EjOkLi3awYpaZ25OCschlpTKa5C9DdhIbI3lhSMmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pJ1ibxZf; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-39141ffa9fcso1212756f8f.0
        for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 08:43:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744904596; x=1745509396; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pcmDyccsNttBk1NEg+6hG3KCFS05A9O/iwmE0/V4rHM=;
        b=pJ1ibxZf1j/j9xQVMHMv6417BciZLIY0ejjgdAkmDi9j6/EOEVgZq3Gq/a7k5/zDQ3
         RwLlQiI2lyGv4vL+cHNiDPCjlbnjsSvBwA5NMRs7vgZ5v5cVcoivXFYJSatFma7ZGLy6
         sPhuWzyi13jQEx6LVQ/gsJKogLIHoJOVpe8ydvpkqu52C6q183uXp4MCx2fjtq6sllNg
         gzs/DBAA3jlH5lGgkgjNOLb+HTElqEFI9OgbyKa4X8kse/X7GKF0VYyCKZ01tKlhZkpg
         0sMDe0LpoDnNoSUnviOe+2ZOkCTepL1icUD0IFEYb2yK8Z0TvfVZ/wZa2N7wOw3q/VAA
         RkDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744904596; x=1745509396;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pcmDyccsNttBk1NEg+6hG3KCFS05A9O/iwmE0/V4rHM=;
        b=I6WyOLb4+sDRS1cckQu8qdqvbLDaJm3SqO4pR6eE/WoAkhZHRTmXI2wVKmYXCIvS90
         n2/vESJY0dGLDeK8hcnyzSTal55mWtWE5JwFCQgoNmX4sizJLzoAPPIwUELYu44AjaGV
         OaWTTWjTZb6HCqrB2SlDa0KYhwC6VMGdu4jO/qGwqm+pmWkRI131V8+178Q87f8MM6U0
         nOAgJX1iCh7+n9vD9tFsU1qZwhm3MbSjFo+uWzXejJxVrQjSBHUMPVndZ34B5kJOw3iD
         tsy3xhiGrBcpqvgPNqUKIbXivsRXu4KRDYyMcAphN2gEhVxY5GpZ12aFN5pfW8deEqZB
         A3xA==
X-Forwarded-Encrypted: i=1; AJvYcCUQ6TMYA3G65VFoscWbWOFQTgSy68AkqAslyPiU+tRj09Shmt+VBvygCGn/ynIPG/wXIHnAeLfJ5nFb@vger.kernel.org
X-Gm-Message-State: AOJu0Yw623GHsf+1veySpcjgEEohX6PokDdDn0qwDrxwzLgIjx4ldS8h
	Xx7cnWTU+yKI5u2KohIWN08HmPQPbDSWE0n3JAWpH0yIrLZpsOLsJsBcTLo6JxQ=
X-Gm-Gg: ASbGnctJ91IeDJRnY5kP9mZFoDIg8SIbafCzptrwRhH337Nf66Mpk5KZDi6/ZD7rjhJ
	65SBlecwZcI17fdpblVhdU5UEReVcIn0RK2gr7kmEqIZwxcX+AiFZkDqbShpDpqqm8A1pRCdSbu
	TuQECveuQtR1PgEO5KH1d/rTadLw6yEPQKR8eudSr7IptqlbUgxXSORah9+vxR9EPgoWOrYpJav
	/X7Bs+GM2pWp4l6UOKMrIphc7RLRheMGVV9SamuVP67LwX/z2Snx+h0idzmBPCy6R7nuHLTfP+f
	pj+TJdgGTeJ51j9iPS1AjZM9Ha0M8qLj0xvHU099nJHdrU3VQ9KdH8SQ6ESvjw==
X-Google-Smtp-Source: AGHT+IEU5hSJ6PQyOtWU4JcRiIyUToVqInBdR55ONV+0tTCpl+QOvuCPnUHp/XeMa+65tSD1j+KrnQ==
X-Received: by 2002:a05:6000:1867:b0:391:2a9a:478c with SMTP id ffacd0b85a97d-39ee5b1618dmr5694942f8f.23.1744904595706;
        Thu, 17 Apr 2025 08:43:15 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39eaf44577dsm20773640f8f.94.2025.04.17.08.43.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Apr 2025 08:43:15 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: quic_jesszhan@quicinc.com, maarten.lankhorst@linux.intel.com, 
 mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch, 
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
 Alexander Baransky <sanyapilot496@gmail.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20250414172637.197792-1-sanyapilot496@gmail.com>
References: <20250414172637.197792-1-sanyapilot496@gmail.com>
Subject: Re: [PATCH v3 0/2] Add Visionox G2647FB105 panel support
Message-Id: <174490459500.1152288.2148667843889329004.b4-ty@linaro.org>
Date: Thu, 17 Apr 2025 17:43:15 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2

Hi,

On Mon, 14 Apr 2025 20:26:30 +0300, Alexander Baransky wrote:
> This patch series adds support for the Visionox G2647FB105 panel, used in:
> - Xiaomi Mi Note 10 / CC9 Pro (sm7150-xiaomi-tucana)
> - Xiaomi Mi Note 10 Lite (sm7150-xiaomi-toco)
> 
> Testing has been done by me on sm7150-xiaomi-tucana. According to the
> downstream DTS, this driver should be fully compatible with the
> sm7150-xiaomi-toco (unfortunately not tested) without requiring any
> modifications.
> 
> [...]

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/2] dt-bindings: display: panel: Add Visionox G2647FB105
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/7a5d0cbd8b19403ededbe84f21780f70632d1e09
[2/2] drm/panel: Add Visionox G2647FB105 panel driver
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/3d55aebe257ec49f577deb7c8e4acb40dabc05e4

-- 
Neil


