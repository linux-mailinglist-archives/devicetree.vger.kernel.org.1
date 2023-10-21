Return-Path: <devicetree+bounces-10505-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 877D87D19EA
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 02:29:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B934E1C2100A
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 00:29:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A67937B;
	Sat, 21 Oct 2023 00:29:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tweaklogic.com header.i=@tweaklogic.com header.b="ITEAE7hZ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2E99362
	for <devicetree@vger.kernel.org>; Sat, 21 Oct 2023 00:29:38 +0000 (UTC)
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com [IPv6:2607:f8b0:4864:20::42d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09AB9D6F
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 17:29:34 -0700 (PDT)
Received: by mail-pf1-x42d.google.com with SMTP id d2e1a72fcca58-6b89ab5ddb7so1358488b3a.0
        for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 17:29:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tweaklogic.com; s=google; t=1697848173; x=1698452973; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tdPtho0lZgqDhudRFkQ/fseTAW/FWwjkB2rta3ajsgU=;
        b=ITEAE7hZDAW3zGDMoeqKEbMgW11t0OV9nenT+xLv1cwFEsEub7kyP4QvjWz4BOuhIh
         wVbJPopBbnmvXlonV7UrtTW2RT0e3lFyWd+RH6zgjIYd64qEW7dFQt7d5Kb2ALKA2n6Z
         /hErRm+9JotdCdv9F4IQdf7JbinMJglpjjLzT/a642wuVJbFxUh0uXjBSYkrsJek7V9L
         7StBxjTJE46yrbypOsT0OW4kFIzpiMtOESkb95oRK+RkBad6dRlgLKtAQJ3+cISXVNzw
         SWP0fTFavyU2a4rd6H+NXs4XKJFkbsjszH9lxDVd8WGBJllVg/OC/gYB7AocX/pYWB09
         orkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697848173; x=1698452973;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tdPtho0lZgqDhudRFkQ/fseTAW/FWwjkB2rta3ajsgU=;
        b=KAhXZ1ZdywIKTVuQ61V6MXpVUti20KmhhlPUIpv5RJe5n5qdK2Ib+sbuLrhr3wTEo2
         4c2mKwGKgGn0B9y8paZYG6dTyDizaC7e3f6AGFI+vrj13pKx5aIeUqaLae/9qwsYfsMO
         QWdJieAiUSRH0bDYydak8y5kjdrnaS9wN/JZhgpRntMyYjohG/9qDCRDH3HE3pJCaWym
         FjqLsa3aCcLTo21t8xgGCm6shSymKtfJg6Ta2GmjjhKUi7lqS7jVcSa2E0Km8Hdg1uz8
         pFv714ehqGmaJD7SadjzD0zul3UUUBJUDGFwQ8k4jlo/HxIjDXKWb/b/fY8WmJ8jOzXR
         dQkA==
X-Gm-Message-State: AOJu0YzxThGyglq3jBNQyzoR+Q1NXHPRBmDVNmyKAWdqwYEUyN3Mtggc
	5MFKaWER6osOU8XBc5C7DiqnKA==
X-Google-Smtp-Source: AGHT+IHCF9PJMgtvdjcnRVAtiC6KUBhkPgeWJlPpLOtze88+nkKKgKs9Sb0LJMpRJr5q/ex2tv8j1g==
X-Received: by 2002:a05:6a20:3d83:b0:174:2d20:5404 with SMTP id s3-20020a056a203d8300b001742d205404mr4212302pzi.37.1697848173442;
        Fri, 20 Oct 2023 17:29:33 -0700 (PDT)
Received: from ?IPV6:2403:580d:82f4:0:9012:790b:50f:4eda? (2403-580d-82f4-0-9012-790b-50f-4eda.ip6.aussiebb.net. [2403:580d:82f4:0:9012:790b:50f:4eda])
        by smtp.gmail.com with ESMTPSA id x3-20020aa784c3000000b006b2677d3685sm2113397pfn.207.2023.10.20.17.29.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Oct 2023 17:29:32 -0700 (PDT)
Message-ID: <4cf6dfe7-5afa-460a-bbae-80a9b96be1d2@tweaklogic.com>
Date: Sat, 21 Oct 2023 10:59:26 +1030
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: iio: light: Squash APDS9300 and APDS9960
 schemas
To: Jonathan Cameron <jic23@kernel.org>,
 Jonathan Cameron <Jonathan.Cameron@Huawei.com>
Cc: Conor Dooley <conor@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, matt@ranostay.org
References: <20231019080437.94849-1-subhajit.ghosh@tweaklogic.com>
 <20231019-rematch-ethically-9d482ca4607e@spud>
 <20231019-theme-clunky-f4a2e1d122e7@spud>
 <0084ddad-d6fc-ca26-2d26-ba71e81f5f8b@tweaklogic.com>
 <20231019122120.00007cdd@Huawei.com> <20231020082804.5ee8364a@jic23-huawei>
Content-Language: en-US
From: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>
In-Reply-To: <20231020082804.5ee8364a@jic23-huawei>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

>>
> +CC address Matt suggested using going forwards.
>   
>> J
Sure. Thanks Jonathan.

Regards,
Subhajit Ghosh


