Return-Path: <devicetree+bounces-153352-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DD92AA4C13B
	for <lists+devicetree@lfdr.de>; Mon,  3 Mar 2025 14:05:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 030EC3A703C
	for <lists+devicetree@lfdr.de>; Mon,  3 Mar 2025 13:04:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE35E21127D;
	Mon,  3 Mar 2025 13:04:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jczENyf6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 224D7211278
	for <devicetree@vger.kernel.org>; Mon,  3 Mar 2025 13:04:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741007087; cv=none; b=TWX8arVD7Uk/hLiN+ydDdFPJXuv9x85LtXRFICL6dlvCoUB5TRra7nI41IC7QXQ4VjiTI7jTxiBdpgxJ6qWTzR+SUgOK4RRvyL6mHWGYBq6QvOJcp06H1yh5uCk7LjWI61XoBa/lgbL/+XM8yCA9hXmfBQKqGSk9awHQMQ2GuiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741007087; c=relaxed/simple;
	bh=VTGS9z3V6Q/xCHN1camC46iCwwa/aosOC3MAy/OdECw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VnJ3jSkIJlEjlcwjC48w8lICHSXTknzm1Syf8u2st4BE2nzqgwprip6CWnM5FqUWETAiMQTnehdynVEP2wg1+zvN3REFiAwqO28rFdDQj8WPACi4IE1hwlqqX3Z4dQ6pDnII4pEvsftBS2bfslClzq9IjlmYEZrcH3wfOTBn2fE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jczENyf6; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-30762598511so47005451fa.0
        for <devicetree@vger.kernel.org>; Mon, 03 Mar 2025 05:04:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741007084; x=1741611884; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=hs6021W+ZEF1jgVJIvkS1BoBhBl+Zadb4lQ906tSWc8=;
        b=jczENyf61LzcAxDTc2zSS0GQnfs5gRzkh75eQHdMWLkx8WGL9mfqNb9wMFVMYeblG/
         Jfwg5rulSHH9/Pwc4VyEzCyQYBWhjNjWD1P6pj8+K/3HzIkZMByLXRBQFFgA/CUxVEcO
         5awAlcPUOq7xo6hz2ELSIcM+oycV3+cd3xzFHfAD8Mg7e5kf6A3gF0bIn/erUD+sBldh
         XndMFL47OyBpGEldNVqePFqMhX+2v3Znq/2ivn/XJNDBtTyRa+J8YZz2BzHkeTjes22A
         0sYaOi6ACTkWCsOErxYPh+roMBWexFJkyDipQPRbJOzLmkWnbhPHMaugdgUezvRkRYIM
         5jqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741007084; x=1741611884;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hs6021W+ZEF1jgVJIvkS1BoBhBl+Zadb4lQ906tSWc8=;
        b=QTfqW+cM730qlSwSeCZJmfPHiK4U8LBUsJcMJs0vi6adrbRXMFCPHIu6RHfV69ugbn
         hyAgO71TuHYu8R77Fe1DpCjZdqMMTW6ppEtzpREQAsKerdD+tQuRt84eknELSbN6vZIW
         4rejmOM+IX7Go7FM3bRVETvvFj2k/KxuFk885oWHbSHAgyOOY8SYPqZahDyslw9d2VEZ
         TRjHuVyKJ5cNBJWFzfnzO80ggTug6VNDCKSMvY6pzi/4MG93t0qW9ik2zoBWNuzUuUpx
         HzpHuobeO0JMWuWy5Rzsy/v8tmjCdhAHyXn00S7Ededua0cPEom3sytPHpKD+VZwFniG
         oSbA==
X-Forwarded-Encrypted: i=1; AJvYcCUP9b2JC9dZ/fKpT5xerSSjnnWxWZE7hKw8K2Q5LIgG2ROA/g6iLCHPj4vjrQDgmyrSBc3dQl6TRJxC@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5HUu+7gV8KNyib59ophOVas+3VNn4vLTgr36UugoNEKTkk5Lx
	hedL1bCgSisH9jOuMbuNDvN+jwlYBYB94zQguOrOaDp40hdtWNbGdFlsYDjW9Gk=
X-Gm-Gg: ASbGncsDdNbMNVK7R4UOqWvZ+YmIzLBl5B9+fMksBC2aekzkVME/7fqRWgGqbwQfF9D
	gpHP8lI4A/CK0Qi0Psj8oIa6TRknpaMrSMNRY9ENO7DvFFtV3ZpnESpZdiw/Z3CtXNcLms6g5iZ
	MYAAnVKyDdtq7ssFpN2lwZVRnXZ0tY9epfkBpAAXESzjPHTMHywcb3ZQUkqPsUvcEVamjH5fO21
	GfjBGrL5bUlcgURnJIBlPnDCrs/J6UnJ1UqoACEvLt0mgbaZMAh9/p/pQ/vLuv7DUayImaDTYBQ
	EnA2KcXsHl31jmSuEKRyqz42oadhPhTHSuictMl2rdPkiyf8gfrEUN7LTn0ES0H+R7tRqm2PuH/
	MxdGMOn7WHbBkuxH4aU+cLxt2
X-Google-Smtp-Source: AGHT+IFbAQM4Vg7NnCwXJQnOl/QXFO0jLcxGWTd7UWWRYV7p4mjc/3nqCPtXbPNZGlRw3vJtvB3rdQ==
X-Received: by 2002:a2e:a9a9:0:b0:309:2ed:7331 with SMTP id 38308e7fff4ca-30b9325a905mr62065031fa.18.1741007084138;
        Mon, 03 Mar 2025 05:04:44 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30bb14d00b0sm4996411fa.56.2025.03.03.05.04.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Mar 2025 05:04:42 -0800 (PST)
Date: Mon, 3 Mar 2025 15:04:41 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Sricharan Ramabadhran <quic_srichara@quicinc.com>
Cc: jassisinghbrar@gmail.com, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, andersson@kernel.org, konradybcio@kernel.org, 
	manivannan.sadhasivam@linaro.org
Subject: Re: [PATCH V3 2/2] mailbox: tmelite-qmp: Introduce TMEL QMP mailbox
 driver
Message-ID: <2xpu26pu4ovnchumwx7xzlp2gldpfgsurnhuqaioygb4a6xmsp@ygmpk6furqs6>
References: <20250228045356.3527662-1-quic_srichara@quicinc.com>
 <20250228045356.3527662-3-quic_srichara@quicinc.com>
 <lakoxihaqlu3vq42eoqtlip23ggdieizotyzax5up5n6ndbwsi@ddqyzvsdtmkv>
 <1359984c-2ace-450b-a3ff-bac0b9fb5cc9@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1359984c-2ace-450b-a3ff-bac0b9fb5cc9@quicinc.com>

On Mon, Mar 03, 2025 at 03:58:42PM +0530, Sricharan Ramabadhran wrote:
> 
> 
> On 2/28/2025 12:03 PM, Dmitry Baryshkov wrote:
> > On Fri, Feb 28, 2025 at 10:23:56AM +0530, Sricharan R wrote:

> > > +		dev_err(dev, "Failed with status: %d\n", msg.resp.status);
> > > +		ret = msg.resp.status;
> > 
> > return msg.resp.status (is it really errno?)
> > 
> ok, yes error.

The question was if it is an errno, not if it is an error.

> 

-- 
With best wishes
Dmitry

