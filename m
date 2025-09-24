Return-Path: <devicetree+bounces-220778-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D156B9A4E6
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 16:41:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BE4077ADBD3
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 14:40:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66A17308F05;
	Wed, 24 Sep 2025 14:41:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lbXt3tWc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA60723504B
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 14:41:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758724908; cv=none; b=Pa5NZwRL5qWhmUuxwbnWRzys5CnZZM+dOsCU413Y/7urFpkcg/QvDB+LsG4ZHh9ELBqn4Axgp3PKzCqlOLJkw9QpzBfg6ywZcUPCz5c/x7G5qUdcZxF9TSYbyk98v8pzoMGg1GyK/Oa63aOR5VrmTJ3VF8iebAuNGnKMy5o8anY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758724908; c=relaxed/simple;
	bh=W0CAhktGRZ04V99yCWSPlVYW9qZzY2wunBg7h0NhCIM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=daie3tQjhiPSjMA5k1gkz8bg/JYHRnvmmYkAnTDKMdjQLj4u0FPCehd2ch9PG3U7YUo5fNoUDB0BdSoEaEzEXdetEeU/pPJ02YzLvksTIEZPiPusxBpK58A2Y1gsJTu7wajYLaS32cRKg7tpHlJdCwGcZgrxR8stletjtNqrx+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lbXt3tWc; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-77f7da24397so707868b3a.2
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 07:41:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758724906; x=1759329706; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ePDH5KGJWCygcppGoaQCIvDmpnnW40P9lL64y9nVceU=;
        b=lbXt3tWcjKJvB+kDC16FAMuTrE0MOVUqEpo4ndY6kOcyFfXe65VDq6RdFMKLH5dkCL
         LyRy2zoEaj2zUQlWlWPhJ9fTZZqJofKKi5EOwwBzGZUiFjRqdH2S6hyRTSRGMqAAeC4Z
         97diC6wYez0k4yKZDVUGw+l6Gh3oIijyuJfCEBnPHtlZsGSHF7Op2lk40FpF57tUpcZY
         oBoZAirXIpj0cEjrngvurd8rkZoUala8cBPAoolGRPrQdgsuZkhdhD4iEC8EKbhpDItv
         PS/b1tji43BQrBUnxMp0PVDRJX3QTkJ5AKPAti8B5I3M1YPnW5Jaej0k4bmtXkV11KSr
         EqqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758724906; x=1759329706;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ePDH5KGJWCygcppGoaQCIvDmpnnW40P9lL64y9nVceU=;
        b=QAPbzDWiP1dwY7pY0daYLVDbIg/SEZvucCbBwCD2LKjxXUqRIq3bCbh6xo9bpvjETJ
         CH8AnKJgNyIVxpFLj9T8J/QWyRwQB1XJ2hzrAvi6jPuYli5T8IXUqaQ0IEDUejwr7X1a
         xR4IyeXAGnoh5pjDh6N9N/4Bz5fAsyh47Pw1/0MPanJzvqGVQpu2gh0cWOJOFq0lt8Jc
         GzN0zuxuCKOZCWYpl3B4ubAXM70rpa7Sq4yne3OiNFtaco9O6OMw5jCGsGd46lu/T1pg
         EbrLP6yxv0JJ1JMarWbVl5VOEskjALG8xqKnAuTtk/zE4b0UeO29gijceDDgQL86jbBo
         Kq+Q==
X-Forwarded-Encrypted: i=1; AJvYcCWkZ3yZF0u53JwV4cGVBGLCrhNsRp2YQY18wjno9QtOAqY8G0nZCM9+4br4NwU7bgu5nMlJsVLSG7A6@vger.kernel.org
X-Gm-Message-State: AOJu0YyG2R/cMjvLjIvlMTqMiltMo1LlVtCtAIpNqTWl4E6ws2q+hDO2
	p/4SjioRaM1MCbQaX6kVK05NSR9FaYQju5UoFeHZmh5ySXWTJTZi3+YW
X-Gm-Gg: ASbGncs+dnMnsnRsO/rn84K1CLErFhtxLTIVm/LGA2L/N1m+ZI8sdY+3QewUM8onq28
	PEvWvrhc8dpBPkBkueAjsUDgXUzbtmAifs2VienbIvRUAoaV7Pu234tUpt9p0T7NdS3fHa0DXq0
	O1xbPw3Rp9T4aLRhOgVRl+M8flkydFJyjOMfBiElbLQSUBEs7mAirfm5ySwfenrP/HJoTRkO4ej
	efYomsoDtt/jFD60KuvcPIA0BIUhv4jMd1GxANReN2kt+uj4oQ4tyTgG4VKwZ+uefPnXGu+9hfA
	/1sZuuvoAW0+KPnbLv0+HiF27bMGgLrpAYgZWcivddqkvd/PeX6kErVdI18g3MZzIx7SYika9Dv
	BEhCA2RbsoFcft4UadFaYG7ek6/1oJjin5Rs=
X-Google-Smtp-Source: AGHT+IE/thFWQvdVClEOk/6wwXKwPKjW/dGu1B5hditayD8OO6MbNLQaLCuiocvpMwHugPUxDy74zg==
X-Received: by 2002:a05:6a20:729f:b0:2c0:227b:13e4 with SMTP id adf61e73a8af0-2cfe7b1879cmr9245324637.26.1758724906138;
        Wed, 24 Sep 2025 07:41:46 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77cfbb7aad7sm18984248b3a.12.2025.09.24.07.41.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 07:41:45 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Wed, 24 Sep 2025 07:41:44 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Troy Mitchell <troy.mitchell@linux.dev>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jean Delvare <jdelvare@suse.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: vendor-prefixes: Add Sensylink
Message-ID: <5327db80-86c3-4b68-83fa-1788e5a30fc2@roeck-us.net>
References: <20250916-ctl2301-v1-0-97e7c84f2c47@linux.dev>
 <20250916-ctl2301-v1-1-97e7c84f2c47@linux.dev>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250916-ctl2301-v1-1-97e7c84f2c47@linux.dev>

On Tue, Sep 16, 2025 at 12:46:44PM +0800, Troy Mitchell wrote:
> Link: https://www.sensylink.com/
> 
This is not an appropriate patch description.

> Signed-off-by: Troy Mitchell <troy.mitchell@linux.dev>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> index 77160cd47f54079a39f35b570d69f7c4c2274724..ea4011d64ab9081d212a738839849d5814cf6c98 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -1353,6 +1353,8 @@ patternProperties:
>      description: Sensirion AG
>    "^sensortek,.*":
>      description: Sensortek Technology Corporation
> +  "^sensylink,.*":
> +    description: Sensylink Microelectronics Technology Co., Ltd.
>    "^sercomm,.*":
>      description: Sercomm (Suzhou) Corporation
>    "^sff,.*":

