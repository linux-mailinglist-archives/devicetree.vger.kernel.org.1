Return-Path: <devicetree+bounces-91731-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A92B894A4AD
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2024 11:49:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5F37F1F207C6
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2024 09:49:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57D431CB324;
	Wed,  7 Aug 2024 09:49:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="U/JRDVL9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C07E1801
	for <devicetree@vger.kernel.org>; Wed,  7 Aug 2024 09:49:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723024177; cv=none; b=IXiPCHHMWZ9RVrdqqiB5oXcocsizP+foo/+uuQZfk7sTgOr9iao8+tBls16VWVLaCcqHTVoYbeChjJr7TnyoSd89gnLpA7uNTLhonCjhe9PBalXfT4rJeGrTpXGoLhP7I9pvJo3xbV+vw8I33TfaclrNKOkcjQACaSX2XuEtLVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723024177; c=relaxed/simple;
	bh=p8oOle8j0YyFB8aei5q+8ZxQH0nnNcOH9u81uVEH3kQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=tAPiqN2pwadE3qF+Y/VD5t0BfH2bEa/ApJk53meEcugurcVlXjaxk4IygOrFTK+W220OLkObDLh9pmqD8/6CLwJZwLeXIugJ0HyJUQOJjVjZSSgXqlln2NVU49JryTZTZg3StwZ/Yj03Z63W9Gj+Xd1XKmQIhH46V+unvviii+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=U/JRDVL9; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4280ee5f1e3so10783145e9.0
        for <devicetree@vger.kernel.org>; Wed, 07 Aug 2024 02:49:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723024174; x=1723628974; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Pc/1iktJr3p9PLDHAKJFkcEhANCClecq2itvdxpvggU=;
        b=U/JRDVL9/aejtlmKGZiVJc2g2hJLNssl+dieRDEFJ4fJJmj8eA7wZ8X+GhFwz7Laf9
         1p/65uTxuyKkmCgM2UOw0dBEhx/aPLouPj4p+yt6hnruAu8i9W9NTymWEg007t5EQfvj
         bCD9ncZBrncK2lY/ysBDOspCH7m8t7Cjvgev3CbEXEALMCK+kV9En1Si8IXoX493bYqL
         RzUho7anmN+6xZ9hAJoZv6fWZsM48fDvHYx8yrQTlFcpvZZxL1RSQ1+zZfL/enEw72bO
         IIEp0QQspvGv+6/rGISowKiQs79ltoO6MwynxsOIWG7rssY3ojvBLue9HKFmcnad7uPN
         aXaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723024174; x=1723628974;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Pc/1iktJr3p9PLDHAKJFkcEhANCClecq2itvdxpvggU=;
        b=eGv5DJKKC9il+cnbCMMNYUx5YGgOwYiJy88plYW93IIbaD0VWI5mZw9UrcifJJNwca
         ftGhMnptxI3TVnUwXkspTI8r4y/Amnlx98mU0joxGuaSmQQ0j3NEMQW3Qhk04yA+yJD8
         brfEq+3MFvIrDXlDJNexxlP8bMG1p/IlqUM5p8JRu9o86Wzcc2+Q3FXfz7PkgjIAfTad
         3QjZNyF3RSuQlEIjW85zpgFpl1lwiDt5NICa0UxIeN01D3c8L+TxhmEcPWH0LF3kb51B
         UJC49rpQjEEArVDBnOeZMv3kLMv5DMmHRV0siLtJm92Tt3Syh0OhQS2TndtF/KkOJ2Cm
         12uQ==
X-Forwarded-Encrypted: i=1; AJvYcCVryS/yDqBO+FInlnIgz0Vstdl3LcSyrZXHovcM/tSQ1+aKZ2RvU5D1ixWY2c/f7DdwMdxAjUOOTHykFhEjLra+VgF1nUOvN6STMQ==
X-Gm-Message-State: AOJu0Yzh+H8m93Xcs/S2lD0x7yt/9w/sbEierlUnEBkNlHSsb7jRnYS4
	pRS+i45J4yuOmofju+Aq6hRw6NR1ZmRZfXLtyDs+/1DJXTWk16O0M9/5Plr+skA=
X-Google-Smtp-Source: AGHT+IG7C+gyfAmIU5emdVImNYDBwmPpefND5NNGBZ5h26Nijfjr5hlnMITUlNJ6c7ynyH03xWfJyA==
X-Received: by 2002:a5d:4ac7:0:b0:367:9237:611d with SMTP id ffacd0b85a97d-36bbc17bfebmr11861794f8f.60.1723024174050;
        Wed, 07 Aug 2024 02:49:34 -0700 (PDT)
Received: from [192.168.68.116] ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-36bbd05982bsm15530967f8f.86.2024.08.07.02.49.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Aug 2024 02:49:33 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
 "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc: shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, 
 festevam@gmail.com, imx@lists.linux.dev, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Peng Fan <peng.fan@nxp.com>
In-Reply-To: <20240228081355.1627744-1-peng.fan@oss.nxp.com>
References: <20240228081355.1627744-1-peng.fan@oss.nxp.com>
Subject: Re: [PATCH 1/2] dt-bindings: nvmem: imx-ocotp: support i.MX95
Message-Id: <172302417240.381927.16775224846160228092.b4-ty@linaro.org>
Date: Wed, 07 Aug 2024 10:49:32 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.2


On Wed, 28 Feb 2024 16:13:54 +0800, Peng Fan (OSS) wrote:
> Add i.MX95 ocotp compatible string
> 
> 

Applied, thanks!

[1/2] dt-bindings: nvmem: imx-ocotp: support i.MX95
      commit: 62e39987d3d5f27e2c074398805d101d7b9abaf4
[2/2] nvmem: imx-ocotp-ele: support i.MX95
      commit: 04d372dd5562ed8aed4cdbb1004fe33a3bc4fa24

Best regards,
-- 
Srinivas Kandagatla <srinivas.kandagatla@linaro.org>


