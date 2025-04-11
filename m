Return-Path: <devicetree+bounces-165672-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D550FA85094
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 02:35:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ABB231B6447E
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 00:35:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24D084A33;
	Fri, 11 Apr 2025 00:34:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 965ACD299
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 00:34:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744331688; cv=none; b=sFnQclsoTvChvo02+yeDS3Xz7nzWEZPRdw/3v8iFVnPVZbl9jJVXAtL7j58IHmqf6+Unf3VmcMZYySzxAyAdA7VfHXNzDZtXjyFcBfkyF45Hd6TzuKhoZyVotWeGqdIzzZXoDBfnGAlHyzvNf9P05+z6D/temiSygVT3jC8tzZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744331688; c=relaxed/simple;
	bh=2n9pQ7lqkOTFMiL/4NeGhhQeB/25Nn+RC/N+U/7ad+c=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=Z/Caeh8poQHEcPR3EL7UybKxhM0dlM0myA8hy5iwZKnH+NjvH0XG/+nvs0RitkLoiCUCCgt248yDcDo5kuXP7cgOzumPQDs7s6uk5GzmSTCGnm4kX/PDmH40foVZXkuB7u5M2Lc1xFSQUKJF+bbsrIRSVC0E0hwHqZ7TqGHruYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=kernel.org; spf=pass smtp.mailfrom=baylibre.com; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=kernel.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-72d3b48d2ffso1456779b3a.2
        for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 17:34:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744331686; x=1744936486;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2n9pQ7lqkOTFMiL/4NeGhhQeB/25Nn+RC/N+U/7ad+c=;
        b=ralH6JfKBtMm5LuazlueWidlRNUlOi0admySNjxMcJQGMvFQ9FAUex8A8Kw/U2DfB+
         bGMQWW1MB/4nCZcnI22v/h3P75jsvHx3r9FixZLDuu6KmMvKK8DTuxLbJvuPid3VAunj
         l5hs6bzlptguFCXaBJu2f5jMhCKprV/fdTwYj5vynBrhdYQqiQXI4khFBuesAWV5QJXq
         yNTV0lgJBXTTPyiu9AfGcAcunAWbE/TMf98x4Jr0Nm9Ewc+RBCWiYXxc8E+jF4muSfOU
         fkhm+tCluO6SpWKv2hE4V0mG/32ILB+9QECM4iGNp0rmNnoDszT1iOTU27Te/EE+bNjx
         XrKg==
X-Forwarded-Encrypted: i=1; AJvYcCVc2uD1B8H91QagD3AST7AT9wzceV3kcVy0KzxbpZvL/nAA9GwyG0Tlngi5PZw3c5T/AYdBV5Wq37Fn@vger.kernel.org
X-Gm-Message-State: AOJu0YxGvL/PmLqnKs/BQr86+P+xqIBOheIhtPmNez2mERpsvMx5J8kK
	PmehEOX1bD3j/sk76hTj15uo2W7E813IIlfpaBJsLWJb0xjiFiEqIfRmfy+86uY=
X-Gm-Gg: ASbGnctcVwMTDBq/HJQ0XEXr1sMF2RZl6wIH7ovp2OeSC3fQw8hkj0kiHEV1dMHcc5K
	9NWRMTwid8QUu6oaCIPogsZZQW+7agN0wunpMe1lekeaSEZCjcKP2znDGXK0zFNBt9pVEJadIPK
	4cp6Gp5snSMSzKGbRwtEdjQLpzo+JjUszlCHWhawBYux7e++EO27oxkbZ1HfYpSFJsxA14YRow3
	+ccavvraJHjIFLBUvCwlIzqoF0Gyt9z8ybDlTfP6SHXJge6VOW+RWkorAUbZ6zRn+duuSb07Dw7
	TO+mODl24r1eVb0r0mjx+l91awB9Qcr6ZjQDpyUu1mU/U5qezg==
X-Google-Smtp-Source: AGHT+IGQAAV5woR4RVRjXO9TpIAsphvWKT0jMORsfI7xQgrPS++t8q5XWvn8GDPpegpqJNYEQ9nN9w==
X-Received: by 2002:a05:6a00:1481:b0:736:ab1e:b1ab with SMTP id d2e1a72fcca58-73bd0e97a1emr1046946b3a.0.1744331685906;
        Thu, 10 Apr 2025 17:34:45 -0700 (PDT)
Received: from localhost ([97.126.182.119])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73bd22f0f28sm213644b3a.97.2025.04.10.17.34.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Apr 2025 17:34:45 -0700 (PDT)
From: Kevin Hilman <khilman@kernel.org>
To: Wolfram Sang <wsa+renesas@sang-engineering.com>,
 linux-arm-kernel@lists.infradead.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>, Krzysztof Kozlowski
 <krzysztof.kozlowski@linaro.org>, Tony Lindgren <tony@atomide.com>, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, linux-omap@vger.kernel.org,
 devicetree@vger.kernel.org
Subject: Re: [PATCH v2 4/5] ARM: dts: ti: omap: use correct ohci/ehci node
 names
In-Reply-To: <20250330193833.21970-11-wsa+renesas@sang-engineering.com>
References: <20250330193833.21970-7-wsa+renesas@sang-engineering.com>
 <20250330193833.21970-11-wsa+renesas@sang-engineering.com>
Date: Thu, 10 Apr 2025 17:34:45 -0700
Message-ID: <7hzfgnwn6i.fsf@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Wolfram Sang <wsa+renesas@sang-engineering.com> writes:

> They should be named "usb@".
>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

Thanks, queuing for OMAP.

Kevin

