Return-Path: <devicetree+bounces-228348-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id E17BBBEC728
	for <lists+devicetree@lfdr.de>; Sat, 18 Oct 2025 06:23:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 29EE94EA3D2
	for <lists+devicetree@lfdr.de>; Sat, 18 Oct 2025 04:23:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3FB528C00D;
	Sat, 18 Oct 2025 04:23:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FFrG/yRL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 746D728724D
	for <devicetree@vger.kernel.org>; Sat, 18 Oct 2025 04:22:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760761381; cv=none; b=BGF44Hg0dvjUk/dEh2sDLdK44kNWr3XhTQLjk7vcA6s/mf6UcRPfzwJXGnuNX6hdLeVJziZekoyUttJOTxJxKTy6COGS4+0f0Qg9UeBYK5wq/4XRnYXDfcVTQjeYDfy3xLv4SfCMeTqT/TzmVuVupSELyqUFU65vxMiKqUq8TQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760761381; c=relaxed/simple;
	bh=twucSrQ5gBaSxq5bHh4w/uiMfTGTQSSYFbLCd3U7t1s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=biQyuU4G2T2IQYQ7CrBQimNVFjmTOYH+k50Rb+1SGnR4ku2mpELhuC157SMYBquVClDjXMiHF1c26/iKS+cOGkvHjZlfbaZ+Tjps+NAn31jxj7noT1YFFfU+BRAn4HOacPsh5E1l+ys50QnIXbsh/qGi32NlHDYdOP7ZNlc8XZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FFrG/yRL; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-781db5068b8so2145137b3a.0
        for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 21:22:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760761379; x=1761366179; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9sLob+FuMRhc3oCQLkxbSCKuBsggj1HN+/JP5OBcKrA=;
        b=FFrG/yRLejUwgHhCLt3PdErv354g7VQQgIlnFWEdFotO6bYVjzdCUMio53YpEOwLwN
         UbfTiwPA8hXRV8sJdkbvdiXNzSxjruImeLRWeUc6KyVdQPTxs2w2vS99o7mg3rAkeE98
         z+Adt+XqEumh8b3RqTTHGwDQiixkqa36jP1b0Oz2RLwMeMysI5wdg7WSsZLPR7WUeNAs
         L3M4h8ahUy4DCXF3oQH40OrKZcFEx9+sM4HfRfAlpH2lAoKjWc+BdHYExsiX+0GqLdjs
         q7Q0nwFI50m+i7cpXq6+gfmrWsHio93yIc9RUrRH2p91y4dp+d6rJ17xJyPzxJT0YLwA
         UHVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760761379; x=1761366179;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9sLob+FuMRhc3oCQLkxbSCKuBsggj1HN+/JP5OBcKrA=;
        b=xKJ1cZYp2YWDhgmqhkGFukTDiaUF8E/ROSjpuFHDR+tW8l4PJM2lD+tcD98zt3HqcW
         Oma791oqdw+Om6T8D3kzt3MFNHFMBFTXn0pRSpRVuEwHlyoyyvelojbtvqN+FMdq3caV
         bccScna0ehvZdvNRVdDTAhiT+WsM6mrRkLjjahLww6s/tf0zq9wwhPudNAN0UevCUAQb
         rVS8pLeE8SqWL3LsYbFaRab8qvRZOjfgaa1m/p/FYjoK+uqc3kEW1qPp+GW4/6FnaRc/
         QIHSMnkuQeE8S+2nIrdNinC/uppJo3IDikjAU5OxSvsOSiPHkpkAe7+vq98j2pGjmEM9
         O/zw==
X-Forwarded-Encrypted: i=1; AJvYcCV5lBqaL/5e8cVQujPD8Y5S8HKdg/qMoxl66HUDptcfMdMhk/aTaBLChjQIClu6wN/nUedtpwNetFLn@vger.kernel.org
X-Gm-Message-State: AOJu0YwUpTpu+iT22oinV+/7gOQUvCtPCGk202v0mv5hFiFUsnoOwSKz
	yHevdwvKOA2CJ2H7kL/N1b7lb1XtRokro6aB83wGm/YPJjUd5ts+Njs2
X-Gm-Gg: ASbGncu9wVLEjd8NsYGzrjS48aA9uNBN9HjBTTL6HGYEPkHAkVStessOAZWviabyxEF
	zxx8hZKJ3rGsV5rS7ILodpBlYT7vpTAjILO8jugWgqd6MfCSRSXz7tD+k0tllSyk+sjr5pUoA//
	eXvE0GOUs2apnF0rq7B+Be3TSPKaYTaOVeoVoYuaLgraY/zsCZTynntJSmJAIcqg+5efyFDGzP+
	mQxUlaMbm4hLpXYMCwxJA1KpLfLKrjYRj3TqMJwubAy22hd90iThKMgS5jf7yRdVkbrJfK6FP48
	q15JLkOc/kZOI2Snm3mWYRO9xLigelVu84IFfI5ku+yGE8U2YGGCi7qK5DvcgJ1HPVjHO+TuWMC
	bOnSQ45YsEObmvY0vI+FhI8h2x4lVpk6da5mI17XQjZjJTk868V5e/c1E2UsqheIDce7d9+3vk2
	DMJ7EWirh/87G1P7nUlVWCXn1FslV4yo+4qjRI1bAeXIwsZONnRvA=
X-Google-Smtp-Source: AGHT+IEhKFhi3mFcny1EeYAjFFvibCPRFlOFAaD2YdcMmlpvQjgeW53Ajd4FqG8YZ9mvVIB5YeafcQ==
X-Received: by 2002:a05:6a00:4288:b0:7a2:2100:1d4b with SMTP id d2e1a72fcca58-7a221001d8cmr7669202b3a.14.1760761378534;
        Fri, 17 Oct 2025 21:22:58 -0700 (PDT)
Received: from google.com ([2a00:79e0:2ebe:8:5e2d:c6df:afce:809b])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a22ff34e98sm1318508b3a.26.2025.10.17.21.22.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Oct 2025 21:22:58 -0700 (PDT)
Date: Fri, 17 Oct 2025 21:22:55 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Frank Li <Frank.Li@nxp.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	"open list:INPUT (KEYBOARD, MOUSE, JOYSTICK, TOUCHSCREEN)..." <linux-input@vger.kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, imx@lists.linux.dev
Subject: Re: [PATCH v2 2/2] dt-bindings: touchscreen: move ar1021.txt to
 trivial-touch.yaml
Message-ID: <jxtqhq7u5obj6em7p6hnzqjkmr7svomeptqy5bgvmqr75pbbnq@d5didfx4qqvl>
References: <20250926184720.391335-1-Frank.Li@nxp.com>
 <20250926184720.391335-2-Frank.Li@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250926184720.391335-2-Frank.Li@nxp.com>

On Fri, Sep 26, 2025 at 02:47:12PM -0400, Frank Li wrote:
> ar1021 have only reg and interrupts property beside touch common
> properties. So move context of ar1021.txt into trivial-touch.yaml.
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>

Applied, thank you.

-- 
Dmitry

