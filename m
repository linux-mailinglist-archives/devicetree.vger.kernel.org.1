Return-Path: <devicetree+bounces-220779-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 738DAB9A4F8
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 16:43:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 629B04E0657
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 14:43:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F9173093D2;
	Wed, 24 Sep 2025 14:42:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PTVQnFUU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F17428C870
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 14:42:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758724975; cv=none; b=jP1WnY1jK8EV3bIHeGxH1CRXfTKdiJA+Gk/Qf4cg1nq4TEm6fvonDwV1q+20+D1iAwGEj8cTwosTzoeEFJX0A/athHNSsZAZsO7uiTc6nD3rgKvqM9Vk3e7MlPOf+7L6D1H6lNSu5zuNvBPRzyA1aW47XVi679WaZ5KFuoRbW+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758724975; c=relaxed/simple;
	bh=Qi99wGIzKeaUad3sDiEcjysh7dML+0H6SlWCfVtNMOQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=H3vYsN5C+raFw9+eul6z3Ayf18b7n6b/l7rfDm7zP5/ObAA/sDfgT7+MU6uLf9qhsh2qNoLqR5RKePNqbNByC27XhplFUxEarIZiRphGeOxIzek2tn+i32/5MYMxeXnSl8xg55v2jbBuFiXc1EIRXPfe/KAJ/kfNgmAYRW1vpXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PTVQnFUU; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-76e2ea933b7so1164631b3a.1
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 07:42:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758724972; x=1759329772; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Qi99wGIzKeaUad3sDiEcjysh7dML+0H6SlWCfVtNMOQ=;
        b=PTVQnFUU79O8vzgqZhmtnLZh5W+Pt0eadQ4Fi8HeB4uItw4NdFzlljwmzYjmsKgXI6
         WTgCJj88wWhKOQ2XbFxeVvb3onp87FKVMSZ+JcSs4IQ6/eQEwlE6bds3Lrl+Kp0SFnmb
         ZMAbEvESwCROzyLqD2AQtWSBg+Op/MaZoIkU3Gp5GSM3aKSuVWm8d8y5nOclV8/gJY+b
         W+C9uQIe3B0tPsjt9gfFcUHUcu5qAtqGyKrAHGUv4SCSQZnFaZ01Qj83wX0Q40DKixif
         l4G5DSXEALcIIL9sdDAsGIWHk8Y7Ot51SDcGMhF/4ElwxCbAg5vrcZOlFNnm6nwIqVBz
         yKdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758724972; x=1759329772;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Qi99wGIzKeaUad3sDiEcjysh7dML+0H6SlWCfVtNMOQ=;
        b=bAmhMM5HKuQJxwsqew9hFWvk/z14mJoghIrXrwzTxlwY4eZSviU/vNR1W/c9avFLEn
         mmtLhEOkuBcLLFp90Wobia+LdZUgNBRSxqVuv6gIeH7trLAk2KQP6I/Jay2U5OLyZFXR
         qiHHJ2n7fy6jE/rAwBBYg/II/NwWYvx69tDg1smXxbdAN8UO3GjIED6rQhABOopU1Erd
         EfrtQhcO/xuoTmMXi2ggo3M/P8EdUXj4dVEgo58UkeJMmaBZA0gHa7GR+aag3NQ9P0zy
         lxnUdGJAxSnVKacW9Rm2mQE6C6eChX3wK2YTLTAxkEA8kaxp6Yu21c5SaoeUs+31HgJr
         pJBQ==
X-Forwarded-Encrypted: i=1; AJvYcCWTmoOUaS6zyUlNHpfv4fdMgi3QX2YwVh1ENiZRXCnUFDwlTlAtxaHndONd5pfmgS4F/W+XRwK2Z7Ia@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2A56cTYt0xflSh0YkqpQXrNNiGKjuzC+hRHsPgCtTFxhETP5L
	yajd4UF2hPWCJbtUANm6pH/Qb6ucpklztCC3YCng0P9/uS7B1W/AApJK
X-Gm-Gg: ASbGncsoUsW4RucRkFvnz1RvTmPrt0O2mKUJGH/c3Y5ZpXyS1iXYS4XCnURl5ESpaS0
	ajxO2ccod0w8GJDxQOYhr4NH37m/ip5bQYIDx7SgHg4Kh0IjCqEf6EPqRjMHdwrqLglu5TuQqPS
	FG65JQHCte7m1ktlCkMzAsgTceDnz4lUh8KdzKKKhD/8F0tXiUmTFBImxr15sWZ9LFcMchpjvzj
	RSvex7bIutH6vJKjFsIY4cQCJfQ+FUVFXS/MyWuVUvKVbAxgYggNEUF5ybQqXDQfkegcanlvYHB
	RYrKNoUvICu7urzdyN+LMuLBA8e7dDMRp03L6C5dv127fUAbcRisI69mlCuDHJjyOkLEQgf0WaA
	UP9udaxzCp8vOtElxPS/SQ4BC0ViQTMFzQsE=
X-Google-Smtp-Source: AGHT+IGh3h0E81Q1ukwkM0pUlfPxVBz9FgZBOD0oJJn4La63+Ve2DMvTsoHX/t4ygfBSH0SK7iio+Q==
X-Received: by 2002:a05:6a00:2344:b0:77e:eb28:c59d with SMTP id d2e1a72fcca58-77f697803ecmr2756206b3a.5.1758724971968;
        Wed, 24 Sep 2025 07:42:51 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77f61ce72ecsm3233549b3a.23.2025.09.24.07.42.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 07:42:51 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Wed, 24 Sep 2025 07:42:50 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Yuxi Wang <Yuxi.Wang@monolithicpower.com>
Cc: corbet@lwn.net, jdelvare@suse.com, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, wyx137120466@gmail.com,
	linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org,
	linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/2] hwmon: add mp5998 driver
Message-ID: <5f651f3e-202b-4406-b438-421489b874db@roeck-us.net>
References: <20250923090926.619-1-Yuxi.Wang@monolithicpower.com>
 <20250923090926.619-3-Yuxi.Wang@monolithicpower.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250923090926.619-3-Yuxi.Wang@monolithicpower.com>

On Tue, Sep 23, 2025 at 05:09:25PM +0800, Yuxi Wang wrote:
> Add support for MPS mp5998.
> Signed-off-by: Yuxi Wang <Yuxi.Wang@monolithicpower.com>

A separate patch was submitted adding support for this chip
to the mp5990 driver. I applied that patch instead.

Guenter

