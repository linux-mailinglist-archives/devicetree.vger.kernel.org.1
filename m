Return-Path: <devicetree+bounces-222165-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B11FBA6784
	for <lists+devicetree@lfdr.de>; Sun, 28 Sep 2025 06:10:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BCFA017CEF8
	for <lists+devicetree@lfdr.de>; Sun, 28 Sep 2025 04:10:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F066D283680;
	Sun, 28 Sep 2025 04:10:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="abQhTIdn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AD37259CA7
	for <devicetree@vger.kernel.org>; Sun, 28 Sep 2025 04:10:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759032628; cv=none; b=ZHc9Nl4PVbd+7n/NL387PMEt4oj6KJQeTgsH5ll5oNlhuuhm6eZkregceQ/KlL2013Z1dnOw4mpPvaKQ7Z9fyuIE2AGNci/5efRw04NDQ4kpvhCRNwVf+aP0IeK1MC40oi1oLgqSoemrv6XBl9/2V7jDiFbob1eJnR2KE3rpplY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759032628; c=relaxed/simple;
	bh=MT9tKkwXIZXiyVLaQ6s0/YQ4jUj80adYH+HGV903H5U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NlRJPCyBRldSay7LQvPM+byoCtyO9zKU2Cvq/MSQiH+2LdjUuypcnfLpV3mF2r4XHCBYpOu50Qy/IdrTWKAtgKxdbMlA7ojKTWYx9Kr3Im/X+p8YYZwFhmS/hJumE6K1P3bEIHGHThr12V6C6OjqyjDjTkkMshP/KjbmoXj6ELY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=abQhTIdn; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-7811fa91774so1375382b3a.0
        for <devicetree@vger.kernel.org>; Sat, 27 Sep 2025 21:10:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759032627; x=1759637427; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=qzG/7kOHEfeLkUdxagU+uDSqBvkgOfJrlSWLn2MJmZc=;
        b=abQhTIdnMMhglJwaoBcyTozeCd7g4/u7soWp+Vgqfclv246AlRjtdSOUndyO7ns2Ds
         2htXqQyRgMneAZcrLZQKKznYd0UThV4TEkanp0taQHvBoPlyrGOA3J3+GbLxXo7tFgsL
         qQE+K+wfCiXkeRxKx8IAhaE8F9FlIoTI2QdoAZXwunWmVh4XUTyZV1Bz1TCgKZcvOoFI
         dpJ9QTmjWMl02Ec6bl7j2ooyHsIVZvYcZ4TtjTHNIXtNqnW4qfU5uExmzKYhPFkbAa/8
         GnLwuA4q6L/5PDH45A/ecpc3RugmCrczGtbY1tzW+7nwvg8wZfU1iM38I9IXdBsm47aQ
         DsmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759032627; x=1759637427;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qzG/7kOHEfeLkUdxagU+uDSqBvkgOfJrlSWLn2MJmZc=;
        b=Hp3LGiKWIaw2PTnoDeCJPhhIKx4NZ1yLrxoWTdPrOCz3PKGdxsjiQVzy6AW/l0z0eg
         M/3LEfYqjUN4y9eFkskfrgonjYvAy2yobHU/4nWViP3JXzeEY3HA9JdRnFvjsQNIYjRJ
         C93y/8DKaMYUGAuvTub1H28rZCgAxKO7on/Gg4ml2ojn+3s3lCTJeBLAkGbvkoP7Qn6i
         /rk/anoIpTR6lPWMNg1+KJX4P94/2E0LqqDVzZP+dBR4kcHsALAiI/BVNhdPjpNYXtyg
         Pa22nbRgVHLl8iL+Fx6kIcDW8rSXJWtYesxzYeMXevdZ3+NRwY/EXiYYP9LXk8/bfxy4
         vLCQ==
X-Forwarded-Encrypted: i=1; AJvYcCXu+f1BXb8GPWffx/INfiYp+pUGadZliqfeTyzt85mThtIqaZ1HWPOd+YqT2bkzJ3SnYO+hpahTtaQK@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7EaCEPTrPNSqa1P0bMhyzjPMrDJPfJ6JD5MlGYbEy43Hj6HoJ
	uYrCKpSRC5Tp25SeNx2poTQXAxaa8hBuLQe8xN3OsqPOagKIcY4jetE1
X-Gm-Gg: ASbGnctPazaxo1SaB1BTT9Qr7hf4d9wyEJIp1vVGdc5x82EMC5ZqNoz7ILV9lYx9PPO
	pf8xf63czV8izAmzMmWl4uKAGz1zDLbRxalwE3dpMTOdcwD8SzRmnN/2tDHG+knGcmJEuJ/v38R
	WHZAEB2UjN3Luno1Q8lP9pBLRrtGn/AmIfbL6AKLhc9DOXralj0p0SR93AbetHtePu4nzQNwqbo
	lXfvk0Mt2LPa+7O2OntqRu6gCnGQ/sd4qtXApGziAqLRa6CyCgNdOWSS/gxvzqGLhxLOAGzANl+
	bpXinqWlZPbfOtF4lfvwy8qaU3Ph+q7keyRIi4UvmX9t7KDNrAu4OyROE1BmN+WCvB/SH98YNaE
	sDOwg8hU120/+jurvWsntpS4DA6HvJkA0tmvsOsBSfvDPTSWrFbFJPbLz3zSa9q0=
X-Google-Smtp-Source: AGHT+IEttJNR6dQcxc0S02k/NqvdYM08QJTyqxD8QfDYHrUp+FQRyRQQhuVbqr8Tkf1c0f19Ut/XAQ==
X-Received: by 2002:a05:6a00:3e27:b0:781:2538:bfb4 with SMTP id d2e1a72fcca58-7812538c21fmr4706553b3a.10.1759032626571;
        Sat, 27 Sep 2025 21:10:26 -0700 (PDT)
Received: from google.com ([2a00:79e0:2ebe:8:22dc:7b49:8c5d:38f6])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7844ef5d62csm154187b3a.26.2025.09.27.21.10.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Sep 2025 21:10:25 -0700 (PDT)
Date: Sat, 27 Sep 2025 21:10:23 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Luca Weiss <luca.weiss@fairphone.com>, 
	linux-input@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH RESEND v3 2/3] Input: aw86927 - add driver for Awinic
 AW86927
Message-ID: <kzp2aodslil2urxszk7jjd2mhtx7amssn53g5msskwpw4fkvjw@iwqcwy2rk7ny>
References: <20250925-aw86927-v3-0-1fc6265b42de@fairphone.com>
 <20250925-aw86927-v3-2-1fc6265b42de@fairphone.com>
 <81822df8-1978-4f22-93e7-87b79e1fc9f3@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <81822df8-1978-4f22-93e7-87b79e1fc9f3@oss.qualcomm.com>

On Thu, Sep 25, 2025 at 02:15:42PM +0200, Konrad Dybcio wrote:
> On 9/25/25 12:07 PM, Griffin Kroah-Hartman wrote:
> > +static int aw86927_wait_enter_standby(struct aw86927_data *haptics)
> > +{
> > +	unsigned int reg_val;
> > +	int err;
> 
> "ret" is more common (for "return value")

I requested this, "error" or "err" is my preference for temporaries that
hold either a negative error code or 0.

Thanks.

-- 
Dmitry

