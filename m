Return-Path: <devicetree+bounces-221701-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 747F2BA221D
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 03:21:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ED1DE4A3472
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 01:21:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4B2F18A956;
	Fri, 26 Sep 2025 01:21:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TtQmfJNp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EF021632DD
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 01:21:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758849705; cv=none; b=m3Xnje/V7aIoMmTk/sbhJa7zgnpPiIxRYU7IS3tONu2+cKNed15h+6nw4k244XIaU4mysZH4yREH/vaQbdlhqa8KD+Qo5yE/CuiYIm3ZUg66l4nJAi47ERRClTXypVs8LyrdFMqYgfd0aBJoFeACKWenUg8jVOxiYegfIJg+nUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758849705; c=relaxed/simple;
	bh=Qf7Aixfg+ZsH4rCpuTDs20y0ntBGG8SleC6ZBW3wAKY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cvA49D+lV5Dc09ay5QCpOK7kkY6p0EPyJrjctL66fsbUy2SWAfNhKdmj+usbaEa/xUjz4WV+g+X4Ez3LzUDDc9USvvKTRgAJcQmWjO+2NfUSD0twe0m8ivLEjuXtgEc7L3aUiJVLHLU4uJRu3CU0MgQNky1L7E2BxkjBtqji9LE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TtQmfJNp; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-76e2ea933b7so1531656b3a.1
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 18:21:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758849704; x=1759454504; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AP6fJWx+DDl8KhZETli23Qj60jKeOdbMieamHjTLXYo=;
        b=TtQmfJNpa0fh2qm1v7ZTXZ6SkpX3iMslISkjYVr4FdVyVlJObRcRJQWnJYgM8lA+P9
         DUDpE8lQbFmJWayUM8zkoFFZwOekDUwi8ZipTmI9SzM7O54qV9NCGgP12gJ08M1I4hBz
         MiOCgYo2dDzuMWkesKJv7j7nMs/eq/Q7KdPkAYtBZM9H/OjTrNHWF+9jKtJQF6eJojEw
         UVSXZrJvqeBYaCOYVTKrweb5xnUHWaNcdp+5CNFZw/Bc4qDuFwZVQTHxhhPbtsM1uIem
         VQYMXC8bsTHc3J+rjkkwrrHE17eJ4lwuCS3MoyGT0RkTympcEPmjHiBQT35O3w+etVW/
         0lNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758849704; x=1759454504;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AP6fJWx+DDl8KhZETli23Qj60jKeOdbMieamHjTLXYo=;
        b=pw+uZawfMVjN6yueLDcSypQorjNWHMxQ/A0Vr7tWJYm6RkVW6CA4qq2Z7Z8j2KXCVf
         exn3H0sfEXHeRy5pzXvhxSLIaYxss0u16/CJ2IMiu4sKiGAfXZACOYE6mr9YG8mQm2cw
         pvfMbD0EwHpTVo/PnVMfubOn2hEu1mw4tYNCMtTfT9KF/4xLq1olyr0w2z1eJx9afOe7
         K2MD7vD47wXKuk9c9T/t+3gBHJYnTckhjUTxK7NvOYhgb4ZTdOLSnnVs8zKbPfqKHjmW
         VDl0Y1iiCsqwfs0MDkc4/eXuAAo+MC3w8DIQGqO8NP6juusJ7sJ87oWNvFNHhZaWCCF5
         Dftg==
X-Forwarded-Encrypted: i=1; AJvYcCU+yv4/RYctx6kTOU/VZtDJHDnFhLydTydqdPUToujmXaFogV9TGUJ/GTLwocAM2sbDRIpe65aOWmE3@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7SZ+weyBl/AFguX3rLjbRafSMplcoSKU4GYedDyLs8wgV2MXL
	nEThYj2QwYsn7QlbRv8ZHzEZUd2Ltjf5cMIw5UaDaoFXpOIab/BE1TvU
X-Gm-Gg: ASbGncv2zRJMZdn6fWgOOJJ19VaKXodxMREh1/2pVho2DnKchcHnnymThcdwjYuFAxJ
	DxSVJRqYUYgg4NLoAU+JhPM6bdQoahV0lH5DVMKKDsaM+TdlKGCdI2p4yo/q3ojlcOsg+UAfqwP
	FyA4augGT8pnLOqSeQ0N/yxT/0QCgCf+op4io8D8LM17lrWcI33bAg6yg6xEuVsLC8Et8yPzx9X
	bJwjsaPGKJLwvEOGzC1wpIUrbTEEpCSlqYIcL7xfdNZ43gA9g3IO6WGjofoCWLCeGN8T+k2Jy6L
	m/ldZoYmXuFDfATfX+1cIjVDze/mmWPkcxzFWNa85UfFf5bZ8mHLpnnSt6M8yCT6PVZmCnx+dMl
	YavQvmPFWNJ5a2kDnc0QAidK+UlFDrW6eObg=
X-Google-Smtp-Source: AGHT+IH7AU9odF5p04RR7XTxrYV8lFhFoYCRERAsrchheebfwRcifSg/WunbI2lPkJCi9K5QgUVHCw==
X-Received: by 2002:a05:6a20:a122:b0:248:86a1:a242 with SMTP id adf61e73a8af0-2e9a0b9b2e5mr5509072637.4.1758849703636;
        Thu, 25 Sep 2025 18:21:43 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-78102b5dfd6sm3112336b3a.68.2025.09.25.18.21.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 18:21:43 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Thu, 25 Sep 2025 18:21:42 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Frank Li <Frank.Li@nxp.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jean Delvare <jdelvare@suse.com>,
	"open list:HARDWARE MONITORING" <linux-hwmon@vger.kernel.org>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	open list <linux-kernel@vger.kernel.org>, imx@lists.linux.dev
Subject: Re: [PATCH 1/1] dt-bindings: hwmon: (lm75) allow interrupt for
 ti,tmp75
Message-ID: <e6143356-3de1-4be1-a9c1-6a250a5e9390@roeck-us.net>
References: <20250925192219.303825-1-Frank.Li@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250925192219.303825-1-Frank.Li@nxp.com>

On Thu, Sep 25, 2025 at 03:22:19PM -0400, Frank Li wrote:
> Allow interrupt for ti,tmp75 because chip has open drain ALERT signal.
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

Applied.

Guenter

