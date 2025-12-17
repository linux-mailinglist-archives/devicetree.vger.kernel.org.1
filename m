Return-Path: <devicetree+bounces-247617-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 88B98CC9470
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 19:22:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CA2F0307067B
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 18:20:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AA5833FE01;
	Wed, 17 Dec 2025 18:15:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Y675B+a4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CB8632E748
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 18:14:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765995301; cv=none; b=r00J6APk/4sFqzCXamgRenysgIombIDzKDVfAUBWlwLwHf3g14B7sWxMDzls5uoAJ8PpyrJGCChEiXorzRDD8lCTl/544zQkbbbXkEGJjdkr1VqRxsx4HKfcLGrF1zzxyUWuS+cxK0omboLg0lO1j7eovJBlsMZyofaaLg/itV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765995301; c=relaxed/simple;
	bh=0b2gRGXSpyZ15UlE+OKvYacDD0BErU6W+ls5XNZdyMw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ewnun+s9NhS1lrbGekn40p0CCRHCtB0KdwspMj4NbSO5bvghosDsVQ6Ut7KrPavViawXlxwCOcmVDL+u5z9O1GP7XJnr3rS3ZYb5P8aMA9Lyj4yehhPKS3uG61pAiyhZqqdx6foI68HJIP+R45Mv+ptz0zK71EA8eQu8fJGXJOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Y675B+a4; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-7acd9a03ba9so6914153b3a.1
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 10:14:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765995299; x=1766600099; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=EOrq08hGajOOcYRL5EptOwi+//lemPFZkoEb66MSWgc=;
        b=Y675B+a4c4kaOLrxIbjU6GAgwZ2mQtZPavGmyF7NRcAhWsu+rjjBm2PGAgPg2GZ/40
         z8E/2KMIa9LuXjipPfU0ACMggWnVSqL60d4WzxQnNaT4cwCz3+zIEtVYX0f5lZnCAqsy
         JwTi53PgicXSk9tXWjA0z52Xmyd6i+kFxbQjd217Mv1W5bzARczqbFC81q0GLBKhp9aF
         GcjcKEWkCJAR2GToRBoNkgdO2m8BP/jseyz9n6BWu15yjxeVIpi4V2wvG+uds0nV8WeQ
         W09dfbbvq0YzBVjGdr2Tg/3aHUgfQByIhFwUzAgW+uilLLDmB2l3ga1yyHUhnJSNPY2M
         MgGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765995299; x=1766600099;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EOrq08hGajOOcYRL5EptOwi+//lemPFZkoEb66MSWgc=;
        b=gWBnBgj/+hpSQT38YlNmlzAc2NetZzMp7ZZVMLRyzxmr16moO3ytJJH2RfUcDPo5N0
         DhI8vXZLrIEgqd/s2tRZeMmfvegW72GSU5a2pFhAmfZUggI6NPqiUDueg9yYpKA6tO6Z
         jeuJ8o2KQRvhiSmCSfam9l/4FOkOIO6gCDAZYMLk4H8zrI6qKfAFwefW6MztPEdmDJt/
         nbs2Q0A5lc1cuVVHnzsL+SqAPFr79ei6f61EVCyB59gmzftZmN0A6mfawEzQt/lfubTk
         vNY8fyBWZVAqxAcGLuuekHwTSrWHK+9OVahwuXvl4r18Q6lfhgyvILiSdIekh4z3vqyz
         u4KQ==
X-Forwarded-Encrypted: i=1; AJvYcCWYfD13sUHuY4ZlBdOUT2mLlGxzqF8HlIioQFfE5eB7iqlCQWNoUeY3AihjvcXuswDJg5s3DDmyBdhR@vger.kernel.org
X-Gm-Message-State: AOJu0YxDTbQ7A4naImfBVy1zdFoXYo8Xoev+i+UTTWfEtzXmb7ZDkt78
	NKijbkfwax4nSRfhMqCvicT8eYzKIQW4Ehre90gPM1F7letSOmSG0oTO
X-Gm-Gg: AY/fxX62b7TqCyXg3mrgl01vBAh40NlMzSpr0SFjrNOtLK4gViK3VXkZhcgaz4y8ezr
	ckgibv0fZCIiVBlg3DQ9SVdx43MaGcNlY/+RlYGQP9+FjJHaZko2oheZfUgFbGK2TsF0aFTRBag
	bOXzeeJwn36Cpq35dRZBp3hrXrBQFGdyhT+wwzz+4oVvJ2PUffkCM01sH6c8bru7jrn699Tnbif
	7ruYcSkzZn/YTQ/oe6t5bdvo+kvH57IZCC3F4ly9wwZ3StjubbGJMkXx5Lt9a9Dv05hok3CZZGe
	u5/2c1RqxJTXuMocv7wfTSTR3IEj5g7z5a9C4L46Pd2suB77e5rMtEmp1//gKTEY3J95rC2BTMz
	3/Ebo/L6V4vPKLeaLMEiP2kSGj4txOUAEFiQgihDu0VRQ6o15wYCn/unwBJLs572VqDZ3HTCtia
	ellb1CbTCq97WgJ3/MgSwvpVwk6I8LvRMX9/jyLrc+a9j86wzHjQ==
X-Google-Smtp-Source: AGHT+IGu4A8aCmIISvgNTt5TQ/2P2t6MUK5elnXz8xGRiwALTRAQVQAklx3WiH8aN/Y84/vAAG4n/A==
X-Received: by 2002:a05:701b:2407:b0:119:e56b:957c with SMTP id a92af1059eb24-11f34bd911emr11560652c88.1.1765995298591;
        Wed, 17 Dec 2025 10:14:58 -0800 (PST)
Received: from google.com ([2a00:79e0:2ebe:8:86:f92f:a027:b12a])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-12061a888d8sm533828c88.11.2025.12.17.10.14.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Dec 2025 10:14:58 -0800 (PST)
Date: Wed, 17 Dec 2025 10:14:56 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: "Rob Herring (Arm)" <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bastian Hecht <hechtb@gmail.com>, linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: input: touchscreen: sitronix,st1232: Add
 Sitronix ST1624
Message-ID: <vxady6umownu5jap3s46p5n4skqv4iz23azyxztey2vzpzghl4@strecn6y6bgo>
References: <20251215212524.3318311-1-robh@kernel.org>
 <20251217-intelligent-herring-of-defiance-3753db@quoll>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251217-intelligent-herring-of-defiance-3753db@quoll>

On Wed, Dec 17, 2025 at 09:40:43AM +0100, Krzysztof Kozlowski wrote:
> On Mon, Dec 15, 2025 at 03:25:24PM -0600, Rob Herring (Arm) wrote:
> > Add the Sitronix ST1624 which is compatible with ST1633.
> > 
> > Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> > ---
> >  .../bindings/input/touchscreen/sitronix,st1232.yaml    | 10 +++++++---
> >  1 file changed, 7 insertions(+), 3 deletions(-)
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Sorry Krzysztof, I already applied Rob's patch but neglected to mention
this on the list...

-- 
Dmitry

