Return-Path: <devicetree+bounces-223460-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F24EBB555E
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 22:58:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 53EA44E6BA7
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 20:58:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1F3C2D028A;
	Thu,  2 Oct 2025 20:54:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NXrHVqtp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2132017C77
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 20:54:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759438467; cv=none; b=dq+jZkUJ65r0eAKJQ9QLTyQWRS2V2UvmYeaRAop5ef1IwZG4dqEUf5dnqMtYiTmKvVF0adYxx602e2sKogzKqP+UfqQw+nLK4ugzViW9WKB/4ouubIWHMKNyKOvNwsro5YOR0642e6gSIbk8ljNxS3ZWFOC78UBxByKvXjo5AY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759438467; c=relaxed/simple;
	bh=CMLY035keOpu6fjvgp4q742qgsi3l+0VCoZ7cJkByO0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PTgmVtWGWELT6Owz9FcaHTAFUvA2eWQgqSYOVp9Z1sYmY3UaeGi6824/3gESqrot8//s2ZUNAwqemtRKTmKDMSEcGg/yQee6Y9QkJiRLBN9ZXF/HkQvxPjq1wGT8SItjnnVTHAgB1gk66GNDC7zhU5Zu5WOoQ8zmEkh7BYA1+/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NXrHVqtp; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-28e7cd6dbc0so17988305ad.0
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 13:54:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759438465; x=1760043265; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=z8aA8eYQbOy4enGJKPbNIIg5fF5qMbQf/5jHtVJ5nvc=;
        b=NXrHVqtpynEKEJtRLn3ibfwDo0wiI74vYMTMCrXilA0Q2GOUn3FEhKArWtalnN7R5t
         WlgLPEFzz0HUvEKdlg9jmd34Z7yOPI5JUMDdduoxfc8KQc1M1zVbi4B5MRM3snlv0d/Q
         viKoZBsftnzUZjL9jbZEiXr4ct7IiIt5cdf7SWZmAF5Uc4TdrAs7ulQgmthFxBRq10X6
         zfXg+yWxw25E61TYruyO+bkkvvadLdDSSC7FTOFT8d9SIzJSDF2cC931iQ4wU0eMsshq
         FdJB07Ga14vEhGV7T4yxpxqekzIC767EE3B3flKxFGNWIiy+GF05ITyjLEMJ5fVxmu+s
         nRhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759438465; x=1760043265;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=z8aA8eYQbOy4enGJKPbNIIg5fF5qMbQf/5jHtVJ5nvc=;
        b=EntT5Lke+LaPTitDqNQzBwBpv3OAWfCIx1hPJXZ03oz7MlbeVxmKdtJjTM0pf1wxRo
         bYc6FCZ8rg2stjneMTP5fgmItlzKXswcoKC39tQUZXfUfQfNpCLP4TYGkKLB/TeuqLl9
         i2SAgKzlrwkBuXHtevQN7FivtTzQjCZCqGBoetozoRi0MgRPuOxmmPTPgi5nXPUe6+Ks
         wm/hPLGhJDMevXrS3UP5gBDQlvvYcDKMKjGBwjff2bthCp8eYeWFGxhXdJjha6oiJjbU
         NmC+7lkuGPVIjge/wW6+jQwt/5IwXdsVNJCvi/u2p+jpb1MH9wLUDjL0Y6mj3cGEzVr8
         iuzg==
X-Forwarded-Encrypted: i=1; AJvYcCW8LblC11JvqCAZt2PqzAQb3yZbr34QNRVSDi2svXsW+uHrk2K0rO8qykB8Gba6A9E5ItVT6QRJC7Y3@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8OPZH9/nLdCrDljxcjORoTFTfG/o9w//DFoBLds7bjNBSvb1R
	swwxAopl84dITWLGlqPLwKtzTLBXH4gy/FTwm4Afcvj+Doo2IQ/be+qD
X-Gm-Gg: ASbGnctcvCG6KvQkB7SDqwuA2rQ15R21oi8dmZUgy1yk+szja088rpX+FbXvjchDnwe
	Gx7k8uzcc5Nf6pGu1Xnhv5UdLpR8sKcaH49QSCciftTEKZmiG+MmCTgREULVJoXwDWRXN+hYihM
	gtIdrdlmxxTokjBMnWprGOrMjndBl2COYFMjBIhPCoAUHmF1lfnJxNlsSev8LCn6zug1SdqCLxe
	pkp4Tr/eSwDSgwYMtapBJxIZMyuYTwwW0BMnbUJ2YXo6LlRkMQ17djjjCrSZZnCQA9OE3p0SfU0
	JWn2RPja7BT60v5WAaHI67RL+gwwEw5sawLGzX+NCACM8SKVOsMqwjPvTp3vUqCBdAosHtTIIZ1
	Xno7CJRS63rq4+UJ3DdnbBNuQekF6JKeSt98oF1BQrQLwWVYqly6EToaNQRU=
X-Google-Smtp-Source: AGHT+IGiu9l09JdJ6ZfjgQrIh+h+Pm7NXkpaxqUj8z/G296jIby1wJ/+5YRLY8gYxUFOm0nbWSBUhw==
X-Received: by 2002:a17:903:11ce:b0:269:6052:3536 with SMTP id d9443c01a7336-28e9a67bf21mr7065045ad.45.1759438465299;
        Thu, 02 Oct 2025 13:54:25 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-28e8d1108b8sm29533565ad.26.2025.10.02.13.54.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Oct 2025 13:54:24 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Thu, 2 Oct 2025 13:54:24 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: wenswang@yeah.net
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	jdelvare@suse.com, corbet@lwn.net, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org,
	linux-doc@vger.kernel.org
Subject: Re: [PATCH v3 2/2] hwmon: add MP2925 and MP2929 driver
Message-ID: <bd28f637-bae6-4d9e-a94a-019b4104ee09@roeck-us.net>
References: <20250928092655.1394429-1-wenswang@yeah.net>
 <20250928092845.1394718-1-wenswang@yeah.net>
 <20250928092845.1394718-2-wenswang@yeah.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250928092845.1394718-2-wenswang@yeah.net>

On Sun, Sep 28, 2025 at 05:28:45PM +0800, wenswang@yeah.net wrote:
> From: Wensheng Wang <wenswang@yeah.net>
> 
> Add support for MPS VR mp2925 and mp2929 controller. This driver exposes
> telemetry and limit value readings and writtings.
> 
> Signed-off-by: Wensheng Wang <wenswang@yeah.net>

Applied to hwmon-next.

Guenter

