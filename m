Return-Path: <devicetree+bounces-224020-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EFE2DBC0498
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 07:59:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 710CC3C6C01
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 05:57:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9663721A94F;
	Tue,  7 Oct 2025 05:56:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IFQEo8u8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17D0C21D59C
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 05:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759816596; cv=none; b=JHv7WvmA+LQ61IYWmYx/eUbbOpqfrsCLhti6gP7PJH+MHkF2zZG/mjJAbJco+IzlxLcy50+MB8FkIb7vZ2d7jWKmnM63JMAVWaH8ICVm62asWaJT4s5ga1hHVYN96rIOBgJ8YqVcHotov4sw9AKSGMeCfV1IyAeJhGRVxwChd9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759816596; c=relaxed/simple;
	bh=H19dVZQAvzTGNCf9cRaVWZQQIqzZENNgBWLT6yh9rho=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AkfNcprz696HF5xEbV/0QkV9dffYdaUZoos06jGs/IZVEZ6Sy17uppKYxPtg1aGSiDgSszlQE9kUD8+EllawWLCR+vMUVtp5Wz3U3Njnjps+zs4Hva2faiiEE/TiGMVl0faGKd/aR9j80Wb/O99L63DJ6H4WZ6nstoZyjybcB6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IFQEo8u8; arc=none smtp.client-ip=209.85.215.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f180.google.com with SMTP id 41be03b00d2f7-b6271ea39f4so3475595a12.3
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 22:56:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759816594; x=1760421394; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Zze8JjQGVZ59f9v5sepoZK52dG/J61vT00o7vhqIkGY=;
        b=IFQEo8u8qL/nkBwp0/drwPuHxpUxr0gBPA+QGaPEMGZJOJJWKOYIp29AdLvBEx5lLF
         B/0hAzhZAOsziFAnapHNNO90vj/IsRhfmKbvITcpO27tynUymcgRnY8gM/phnCJ3lVdb
         pzKeTOc82X4mJbjNttuDEZE0WtGwpqdgWDbxVd7bEU8XsGfxbSRWJVEFIMy22ZvMldvb
         x9K6pEKIExIwCFYgrnMtLfN0syWzarchpgc5ESv86rhjudt9OBGSRVlG/Nx/S6ydHFja
         3/u3/wvXuGVuvzEQUCo4Rs6lBIsYe80HNm+1bvTV/FupruZuspYCdfdNqbWphNV3rqVM
         fOoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759816594; x=1760421394;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Zze8JjQGVZ59f9v5sepoZK52dG/J61vT00o7vhqIkGY=;
        b=Js4OTlJbB4wz5vNZTgM6SrETOKNFsIGStAGS3xOLzOOIgBe54/is9n+xfn66QR+p7h
         zhL6kPWNP7HjfbqgkCJCR3mXCOZ3xyycr0wbVgc94wpDxXtW/RbMGaO71RPWPlkct0CS
         HhSOjeAjKv6YlM24e1FySQ/Miwelr3P3YdCdjJgAG+O7ZFH7fTZn6/rJhBQ+HA1X+O0H
         RaLzNP82gP+NUdLr2NXJ7VlVWaDKXbFs54obexdgDNDQlChyz+HROUlah4B3+apfePPh
         xiaZ7IFf11VpGtcJTKnnsm6Tq+rjdrOMDzjmjlQJWbPGLCNbE7Jk7lACCVgsyIYrrr+9
         Te8Q==
X-Forwarded-Encrypted: i=1; AJvYcCUEjVBAVK1tpwA7eOmpURXTLu0vni3Z/nGwWDtrIh/e6qyohZKAgQtSQ4shUFVM79ZskvjynAeorCtv@vger.kernel.org
X-Gm-Message-State: AOJu0YxjgokI0zEdfRn9Ufd/2AtkcUZVRIgXvyFUuOmamSSRm/+eHjbF
	1J9taX6ZqmHS3kRT/+PnD6BEpQHqEZOEmFBd6IezRQXr5doomK/4ZbOJ
X-Gm-Gg: ASbGncuZx/7GIiBiCAVem7yL1xvMqqmI0kKGvCw876qVePwg2BsvYJ89RZ17SWSTpV+
	yJj7yIdoys3KthfLazz4i/+yfMT6z9UoU7/q+8PP6a/+5ZG8yqNI+Q/8VHOUfpKqh0fUk4BV12G
	wAIsqIocB/F53Be59d6m7hDItyPRz5e6WiPqQfp9ZlKXBGmse5EMUwZWYB2TmfGiTTCuV3XfpUk
	+8a93pJga5hHvLkJBM+van3aW7P+X+3r0GH3DcS2rBRHilJYTv18fbVBFkBHo9idb7ZKBCvu6g2
	ojngBykVnUwckGbAo18tYs87JWEelKJtvWZ++kEL+DYR3604/krK8xjFfY2OyChw5n/FZakMPpF
	0Kc7igqne6S6pcfDLkvalG/EIfv43kMXrxYtqnB4eqTeC276R7pUII1PmqvSj56iHz6x/sfgK3u
	8yfD1DAPB7fjhuAlvszeIt3lxW
X-Google-Smtp-Source: AGHT+IGJchkaRL43RoVbJQM3/xqF6zJKcQKtxGwtkcJ6fAH1ggss6t03FonlumhoWLdanF+7D9Tj0Q==
X-Received: by 2002:a17:903:987:b0:267:a95d:7164 with SMTP id d9443c01a7336-28e9a6b25a2mr170679085ad.60.1759816594138;
        Mon, 06 Oct 2025 22:56:34 -0700 (PDT)
Received: from [192.168.68.62] (104-12-136-65.lightspeed.irvnca.sbcglobal.net. [104.12.136.65])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-28e8d1eee04sm148269865ad.130.2025.10.06.22.56.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Oct 2025 22:56:33 -0700 (PDT)
Message-ID: <467bd938-6fa4-46e7-9f98-d8d2a9e74eaa@gmail.com>
Date: Mon, 6 Oct 2025 22:56:32 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/4] Upstreaming Pinephone Pro Patches
To: Heiko Stuebner <heiko@sntech.de>, Dragan Simic <dsimic@manjaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Ondrej Jirman <megi@xff.cz>,
 Martijn Braam <martijn@brixit.nl>, =?UTF-8?Q?Kamil_Trzci=C5=84ski?=
 <ayufan@ayufan.eu>, "Leonardo G. Trombetta" <lgtrombetta@gmx.com>
References: <20250929-ppp_light_accel_mag_vol-down-v4-0-6598f22d3451@gmail.com>
 <49dafe9afc5962d8fec10e6135c9b84d@manjaro.org> <8606261.29KlJPOoH8@phil>
Content-Language: en-US
From: Rudraksha Gupta <guptarud@gmail.com>
In-Reply-To: <8606261.29KlJPOoH8@phil>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello all,
> for reference for Rockchip dts files, the preferred format is:
> arm64: dts: rockchip: Do something on boardname
>
> aka "arm64: dts: rockchip: " and the rest is free form but should
> mention the board.
>
> But I'll generally fix those up myself if needed, so right now
> there is no need to resend just for that change.

Gotcha thanks! I'll leave this be for now while awaiting for comments on 
the mount matrix for the accelerometer and the magnetometer.


Rudraksha


