Return-Path: <devicetree+bounces-227886-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C946BE56D5
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 22:45:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1AF4F4F60D9
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 20:45:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFA982DE6F4;
	Thu, 16 Oct 2025 20:45:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JPe1KlbI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BEB52DBF49
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 20:45:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760647520; cv=none; b=DmdHjEZnJuPUfw3OqA1EQHDAOByTMoVxgDBdASY8aqTuG4lQmCgaZybW0c4+IXxxwPpf5kHHAf9fY9AAwmrgp/K6OEdsxqGRUVR69TrAvymUQanb0PoTCn4LHzb4J/D3MExzmklusEQrDLncosGR3vDTDjLGarkfpolspVqpG1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760647520; c=relaxed/simple;
	bh=LQm93xfB3+yzk3o3RVUPECs6OYXcIa6l2rSYnVhGsQA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RGNZ87H/GnQ0jL7Cp3LubTYAsWe8uXYVkRUZVDqLWWAHD+5+bjJuM9Wh4szbirqPVLNn1s4dnGNkI92JZKwwADPk6q9v2c7AsC7vQdqxFJmf8m2BU5bK7dNgWI7UMeAo+P5ZyObyMtDm7aoVT8o70m0a01VVc+0f+W2jGlng//k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JPe1KlbI; arc=none smtp.client-ip=209.85.215.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-b679450ecb6so915601a12.2
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 13:45:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760647518; x=1761252318; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kUvcmGdyk/s+djMaF72W/xAp3wl/M6XbYfreGPpZef8=;
        b=JPe1KlbIdSyOu3J88HkIq88P4f5McdA0vuUvfDOi2k6OO043ToBJKWNsdSAIb+uZdy
         RO1xmxdzRAOcazUd6tq0FJG5TnPEKvfctbFx8Ghd0A/xX+NFPhElmBHsCTeKUoP/afMR
         b5Qd803YdptTTruWa+1vV/U9I5gM9cEmyIDzzoQnFaL9L3p4TdLscQ4EdS33p036bZ3k
         0oAmeV7eHQhnd+MQnV43AT3hyuAidpv5rlY6zDEMSPXCJMLX4xXYTtgsHWzxs5tTFj0a
         ZdEOXiUYx5aU6BYIM8eMFRPfURge9ugtT/3EdBI0GutsIZEHgYQYfdyfH4AZpJ50WWPz
         Fs3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760647518; x=1761252318;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kUvcmGdyk/s+djMaF72W/xAp3wl/M6XbYfreGPpZef8=;
        b=EYEffclT5CtuBQXMuPQxK0siIRygnIPJ/2f7NhEQMw4fAfO9es70eFySmk4DVBi3GA
         YgIxSuOHiNNWSzFXNxP+/q89arp9D0zpe9+hO3/r3nttrRIIwc+nV5rP+YiXJVpq3eX9
         OPyRVGMBdJa3eXmQpTZ0yLTmVVBiXf1U5OeUN8fsdcsiDry1T1t26en4cnNdOBUS4aIa
         qCABICgemAg4UbC81ynMergqCbxo3Ks/NXkuwCHj4or82yhFa/75X2Eml3RPNJBxdVtT
         XVruw1eAeYbbxY5E3ZUOKCCih/T55AqCCzd5uQvJw1Uw+yQg5M9F2JQIaTglDrX5QcaO
         eP6g==
X-Gm-Message-State: AOJu0YyLicHxFKxNo+DD83jwGVfDHd9U/XR8efb5uIgQgcFgbdEsoKvu
	BSqweavs+egPuFkz+tk9NhlysniKATwsv3XfjN4Pci8Dgpm0fsHoQoy7
X-Gm-Gg: ASbGncuoOgkkmBZAkzazehW6paheqw7keUucdRIg3O9Lf/XqLfG2PnCqNFQF2FuSukJ
	Bt4h1rfaXF0sqXHjH6WwyX34tDePVuYCa4i/H2UIa9OEAZLpyzQd4FBzmYh+pI1HrRJnGKSS0fD
	Tau+EOc/YK7+GofuvKZOL2gDpZVkk37Z8ZEeb9a8zQxD4QCukjFsxDlFiEgukEdCCeUaThWo8CL
	eyBRTprF/EPNrT4ONDrVm2YfFIhe/7MFeETRf079ADcHTqaZROQNZ9NoXPDBi18ScBc03YpdLjQ
	cA2/ypVm3lmz4mopGhYWL+n1RbRcMfCLAi/tYGd5Tak6441FxmJoOJCxQeBkvygka4Tiurb0v5e
	xW3qVgWvstpmBfFHCGJC4WXkZgQfFweZLY+SAq0qDvSYVo1qiRFN8L12e7XvmhwR+ZamcGZdmvx
	bU96eyragrfTd9
X-Google-Smtp-Source: AGHT+IHWDyq1dm9Vttu7p/9WqIA1DfcPLIV2tAzQ/oZCb7NoSTBpCr8dofKYEIYS2Mhjh4zeWUBoYg==
X-Received: by 2002:a17:902:ecc6:b0:290:7e29:f59f with SMTP id d9443c01a7336-290c9cf34f1mr15308975ad.27.1760647518516;
        Thu, 16 Oct 2025 13:45:18 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29099372c4fsm40248595ad.43.2025.10.16.13.45.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Oct 2025 13:45:17 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Thu, 16 Oct 2025 13:45:16 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>
Cc: devicetree@vger.kernel.org, linux-hwmon@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH 1/3] dt-bindings: trivial-devices: add ADT7410, ADT7420
 and ADT7422
Message-ID: <767f82f2-d153-451c-a330-91ff5b37a1b3@roeck-us.net>
References: <20251015-dev-add-adt7422-v1-0-7cf72d3253ad@analog.com>
 <20251015-dev-add-adt7422-v1-1-7cf72d3253ad@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251015-dev-add-adt7422-v1-1-7cf72d3253ad@analog.com>

On Wed, Oct 15, 2025 at 03:52:19PM +0100, Nuno Sá wrote:
> From: Nuno Sá <nuno.sa@analog.com>
> 
> Add Analog Devices high accuracy digital temperature sensors to trivial
> devices.
> 
> Signed-off-by: Nuno Sá <nuno.sa@analog.com>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

Applied.

Thanks,
Guenter

