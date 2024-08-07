Return-Path: <devicetree+bounces-91769-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5733B94A806
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2024 14:45:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C5A79B2A69F
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2024 12:45:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19FE71E3CCA;
	Wed,  7 Aug 2024 12:45:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="l29PCmRe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BACDA1C824B
	for <devicetree@vger.kernel.org>; Wed,  7 Aug 2024 12:45:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723034741; cv=none; b=HBJsKQRs7Ly3nG/kRvVz95lSpIeDPOEeT4VBFBifUrd7SUwG9xNeh0IlEi4mDaEzASA7ESVmR3LAg/QTzHKJC5L2WxJE//MUoa93atSmNhCrPwlmBz7r4TXcNKnIz+VkC+DcEKqN7PjQqElOgee0wffDsA5BW9i53M/gi+DvxPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723034741; c=relaxed/simple;
	bh=ok7x5RJI7Mn1AEexsPqp5C0x7eYorrIzLLTgw98K8jU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FmVzl/MsqBfM8WfNd5bsXByt8cAOjyYYtZ3VLKDpvsl5+p4wuh4GLTITbt7s/PVeOJHR15uECDKpyPNgRFOt5BUpiuMzob0kLWcSCMdYWRNDJ6c72aH4fBKAPMZlKIZDwEglodOPa1hBt0w2nkLOZroo8DiBxSDEj6lGzCTQBRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=l29PCmRe; arc=none smtp.client-ip=209.85.216.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f54.google.com with SMTP id 98e67ed59e1d1-2cd5e3c27c5so1276937a91.3
        for <devicetree@vger.kernel.org>; Wed, 07 Aug 2024 05:45:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723034739; x=1723639539; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ok7x5RJI7Mn1AEexsPqp5C0x7eYorrIzLLTgw98K8jU=;
        b=l29PCmReMhNJiPpIlRyrBGf+VCUVbScPXdzYyB06o9eGpYH9cNMl9WcEVfd4ZRtoQs
         MY0venaSBGWstuMh1Hw4xZ+FL3JFQiI95gt93SBRHtPviymo7UTCHvE+2KKc4feyA6Hw
         Pia1UZYrdtvgnxfYl5F7PAS3hdcqW95HGItYYj/Eu3e54nxqJQ8+aZPtAHYWXs8ZODfl
         /JHtMlmMmj+kyxgnab7WoEEQEcY5MSC8cmVVngX/vAoZgv3nltf6CNqTmQy2/qPQk3WX
         zorDksmco6Il1x8NkHa37ELbY89QioItwlNP1NVqbQL6+OaGa5emZgR5CgDrDH/4QnBS
         DNUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723034739; x=1723639539;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ok7x5RJI7Mn1AEexsPqp5C0x7eYorrIzLLTgw98K8jU=;
        b=Rc2/UlBbl1cRayJaaxW34g50XFeDD/wmZJoQp0tSovY5uagrZKbMYewqqIHYwA+jNz
         pfa3Z6W2777PhVEoi37p1jj3Fjfm7BqrmW1oNm7hD0g+9oJiPWkcXDNPkZ1yQ8Jv8bT5
         +Vp5EHESIPUTEUqsKdDkHg8EZ4Y/2YIor+LCaDxvjMKdJEHRPhz62t7HJ8WzwMjdsk++
         pukCdf68ojLLmifpM5LqtIxlAGIqVUV6lNnGhB1JQG7G5eWLbX/uCks9MTEPPLTyXlvd
         YiUpFlC2pW3MV7IAUbr0oKNf0nl/KDYKJ65N+6u4yOpVmLnfu2xGj5XM0k4qf1f83Ps3
         +C5A==
X-Gm-Message-State: AOJu0YziJ4W/jXxPYMQOVxxojJHX303Z+S5yVoh/ESVcsyNfn9WHbZXT
	/wyDi7G2eBjy8Bgrd7CN5ia1B1X+hNubxAlO99sBwrcikpRlvCNP0lpxDK3J
X-Google-Smtp-Source: AGHT+IEtgc/IfyM1hlCTxxmF58XsYDojlSbPF+RkdeCUdHQ1TcNs1V8jR+Qsv1B284ozMevCienU6A==
X-Received: by 2002:a17:90a:c38a:b0:2cd:b938:770b with SMTP id 98e67ed59e1d1-2cff93c8c07mr16335855a91.5.1723034738709;
        Wed, 07 Aug 2024 05:45:38 -0700 (PDT)
Received: from joaog-nb ([67.159.246.222])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2d1b36d7a12sm1458989a91.25.2024.08.07.05.45.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Aug 2024 05:45:38 -0700 (PDT)
Date: Wed, 7 Aug 2024 09:45:32 -0300
From: =?utf-8?Q?Jo=C3=A3o_Paulo_Gon=C3=A7alves?= <jpaulo.silvagoncalves@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	"linux-kernel @ vger . kernel . org" <joao.goncalves@toradex.com>
Subject: Re: [PATCH v1] arm64: dts: imx8mp-verdin: add HDMI audio support
Message-ID: <20240807124532.wcq36oshfce6lfbq@joaog-nb>
References: <20240807112035.236036-1-jpaulo.silvagoncalves@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240807112035.236036-1-jpaulo.silvagoncalves@gmail.com>

Hello all,

There was an issue with my e-mail and the "From:" for the patch is not
correct. Ignore this patch. I will send a v2 with the issue fixed.

Regards,
João Paulo Gonçalves

