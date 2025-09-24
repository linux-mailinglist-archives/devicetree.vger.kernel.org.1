Return-Path: <devicetree+bounces-220785-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5233DB9A6C8
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 17:00:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C42507A3721
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 14:57:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18E9E308F02;
	Wed, 24 Sep 2025 14:53:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EGMXIV9t"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69F3C3112D2
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 14:53:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758725614; cv=none; b=JDVJVEBNBQHdny7GqyUp1uf7KwhBHd9J79gZ8GW9AmIAbwquOFTGd09mTbg5jc8pWcnLv/EMLfaqvURMzO93DCK2C3X29x6jeVRlKyAro5iiOxHMC4YvqDbqG9XHzhXt2/WaSFZ49CV9JhP5j4M8QaHef+IrDtMlFrqSVRDHUcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758725614; c=relaxed/simple;
	bh=yM/Q+X92fTlkNYlGxigRsIYhUdkygT31tNqbJqR8rLk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ap+tqj69ycROnfW+9BO3t2tI5qPJVg8IhMFkAq4RvCwNlU7WCTcNm8cGauFXt4tohQEt11ct2Btd5+NCykctkbkB0SixGEqf1eVNE00x8aHs5Cq/2Gio6CcssCtSUunuOlmjnB1f7E8QP4p/anrzWopqxJVk/SGlqzQblQ/HA6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EGMXIV9t; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-2570bf605b1so84782125ad.2
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 07:53:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758725612; x=1759330412; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/3NJ6x5Kdp89Akvi+2hnn1AXNw69P1zSYTXvdA/OXZA=;
        b=EGMXIV9tUKUdZlTJ7F6/RmTACuQtSD3XNPEO2xf7cCTaKRIFdsGMsqMgTfpX1GlgX1
         XrvyyfuecHlK/V0Rd5OwOMYOwJTQ2aoCS+TaqyQK1b2wc6leWzSqnwAmBTzTazsoatbg
         o/zF9QBrGQ9CCca/sGOXFP+B7j7SjnTIdokeNXfp+0VbBdfjgdkd+5xURshJPe7qG6dM
         luI2YDyPt7EdDbrS7c/N/psTJ4rf6iKZAq0oxq9IrZROhffIds7euXJigCkjvpj6+YOD
         GhnurF9vgZsfUBdVVVyXjYPnrWzJDwfdORjC8BpdcwGJxvwT8XRbXEkn5+PiuXC2ojD5
         B/EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758725612; x=1759330412;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/3NJ6x5Kdp89Akvi+2hnn1AXNw69P1zSYTXvdA/OXZA=;
        b=JsBc+taOaF4aOa7bGNNzgSziDAOPN+oEGTi/6f7u1n25ELBAqTOt4efL1ABpa0FSnZ
         XUlo1VRZ7NErVSX74Hj7RpDCxGqc+YNgMFyJ3WQjs4wbwKWOBNps8a5Sg+I20/LSp5Kd
         OZy86RLRopjv7W474C8n4pyXE42hE4FBKe4fCqO+mq9NvEFIVuyJhrWcpA0QR9dgJL11
         mQv4cltB9uNIf3y1CJ36MsTVY0An9Yzg9nQvhHWP3JVzl7HHbGQOQq538dj9LhA1OeeK
         eBs3n+dYx0SgQMsaWOwy0C5gKijFQowLYXucUbrjDkY0AdI2pFeH8c9E9Fii896wMeB/
         MvxQ==
X-Forwarded-Encrypted: i=1; AJvYcCXWbHyDEIr4Z8MwiglcIdbeQZVrdLDaz7dm9AVR8X+933sB9sXmdfUWXy/83rsZMz+8llhC+FP4urFd@vger.kernel.org
X-Gm-Message-State: AOJu0YwzgNwEd5sKwTQyyLyVlGkr/h5rz0zT0n7jDrGES98u0TWRBSlb
	sosTL8HzCiM9S7L0qBCLq8CZg6o/E6dyz4LsNdWXxiQM6tAgQQN9QAbu
X-Gm-Gg: ASbGncsDWiwe7m/IbNo/+O28G7k83lVbX/8c24H8DT0ljLii1gBavaQ3CPlCHYoXxQY
	X2iSuKeo3EAeePuSZnk6GCGoVl5CN0j9ZU3Qu3ayH+cogj00yzbmYOHC4uCYdzz/77ZfGVtIwHS
	3p7hmsSQh03Mc+NLNofTSeQQBzmmHR+UeJKBYGTOhVJ+oirvY0fgUNSeYlf3xh9ZkBmMqJJy2r3
	8NE62kEgNewJn6sDHETgf9Kz/yM0qaj4EkCuzDWQaZUToy0S5yhMKT5gqS28a4BrEOdM4AOFul9
	jFbZi3u8fLveQmgNwwrpYRugR1uzLxSyu2bAjqaAbmZbwbxI8oQXkKiEprxt0SLT3a6QKdpo/LO
	uMML8E+P64L8R8yvZASrB+65yZGtyQhtvhlY=
X-Google-Smtp-Source: AGHT+IHwdBjJXGvCWrYxZfTaJY8CaOaLZ3+d2LVxSNcLp40JjFPUdhB/JhjXkWgZBBL3x2RWHHNt/Q==
X-Received: by 2002:a17:903:3d06:b0:275:7ee4:83bc with SMTP id d9443c01a7336-27ed49b8694mr315435ad.2.1758725611709;
        Wed, 24 Sep 2025 07:53:31 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-26afe6385afsm155848085ad.39.2025.09.24.07.53.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 07:53:31 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Wed, 24 Sep 2025 07:53:30 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: wenswang@yeah.net
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	jdelvare@suse.com, corbet@lwn.net, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org,
	linux-doc@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: hwmon: Add MPS mp2925 and mp2929
Message-ID: <03adf64f-e583-4de2-97bc-0a4a9778d5a6@roeck-us.net>
References: <20250918080349.1154140-1-wenswang@yeah.net>
 <20250918080603.1154497-1-wenswang@yeah.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250918080603.1154497-1-wenswang@yeah.net>

On Thu, Sep 18, 2025 at 04:06:02PM +0800, wenswang@yeah.net wrote:
> From: Wensheng Wang <wenswang@yeah.net>
> 
> Add support for MPS mp2925 and mp2929 controller.
> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Wensheng Wang <wenswang@yeah.net>

Applied.

Guenter

