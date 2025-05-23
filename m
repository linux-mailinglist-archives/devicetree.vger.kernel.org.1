Return-Path: <devicetree+bounces-180112-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 41115AC2A09
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 20:58:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4BEBEA41948
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 18:58:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 800D229B208;
	Fri, 23 May 2025 18:58:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ieee.org header.i=@ieee.org header.b="QOM9uUV0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f174.google.com (mail-il1-f174.google.com [209.85.166.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41F1329AAF0
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 18:58:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748026725; cv=none; b=pIyt4oUtoTK5s74lKsjPlMJhQ/wlOlrgDfBJGm5EnOKe0qe6EMBdwKd7MTq0EEK+wV31xUbK6Iyv66y4ErvCxC3P+T/+jsvdNaitcqYVSKQuZ3Qe9P4lycrfC+J8Qu9ZosJECtzkKCUffydI3KX0BStyPMj5l0JNfrCxXuLvGmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748026725; c=relaxed/simple;
	bh=LPX11ulev6vsiZzUTJlFx9XAlmtcK4qqUesuzNzoNS8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pUVfOKrcjGmhc7YTtEgBFYDeQ4AusRZR4bSyoQIngBeYu6cL3gYN0z8Aa8IPP0KU4KludooWvb7tpjjqvcOskVnbLg2yk++hYoCzkv0sbBlu1ZstcQD1k8RT9RKzlypZgN/E/6g9kwSFFQ4BFhPjTJEbRfErJwF7ytS7xvaMF8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ieee.org; spf=pass smtp.mailfrom=ieee.org; dkim=pass (1024-bit key) header.d=ieee.org header.i=@ieee.org header.b=QOM9uUV0; arc=none smtp.client-ip=209.85.166.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ieee.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ieee.org
Received: by mail-il1-f174.google.com with SMTP id e9e14a558f8ab-3dc73b1bd7aso1320925ab.1
        for <devicetree@vger.kernel.org>; Fri, 23 May 2025 11:58:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ieee.org; s=google; t=1748026721; x=1748631521; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=j9H9/06xSR/EO0urvzhakeUTOG7Si+ArWVJ43pvHHEg=;
        b=QOM9uUV0WD6CeftzAAzSAKvQq0AIicTQCFjBmWcx4Sf+gPalBml8w+AgauJlZQX03Z
         2iJ68gYGsEdOjyeQ1zsvYTxLcxBWSNSpdfRjIIBedIMBeEko0h6NWCVDxuwAys3rFGgk
         AGTh6dxiQpQDGPLZhYBnZk/QeiakHx5VZQ+vg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748026721; x=1748631521;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=j9H9/06xSR/EO0urvzhakeUTOG7Si+ArWVJ43pvHHEg=;
        b=MYoH801SYyhRgXDedtZJCErUzXT65ivparJXhDo224+c00CFarxltuL7eHeEUP8gIo
         JN9ZyoH9wbruKpOlsE/phd3g2KU0fzSIevl5XLml44NkXbkhJCq5voh2uvQ6rosbXQKd
         EafasWbDlMwOD/kvWGpo3Ji017TzDHcuQqLPRexT8vOrsei3k6DYYfZXBPfT6pjfGedp
         QBhFC1RQ9+jzEv+LZ2jqcjBsq/FfB0ueTR4ogNFr12i0f/QYr5XfNcYxloc80I5nA0bQ
         qTQX4WCYocUCuRDR0UApX4Dz+Xcm4XQE1IS4mBgheGt9+ROlC6LacCBwp82PqRjyAaV0
         jnfA==
X-Forwarded-Encrypted: i=1; AJvYcCVRa4CCEllZFuXw+psAsAxDl0S61eLWEwT5/+2+7gPuTV0twJsrVAPGkavDM3SwuymYtFjHLn4yVpZk@vger.kernel.org
X-Gm-Message-State: AOJu0YzyktFaeFJEWC7jQQTlXC7CspRqssfy8PBgimQOSOr/g8o9qG8x
	eeym1m0QyMUHpUU/4oHl12lM7B18jE4eIr7HlK9YtFdVe8umVdf75elinpLjELXauw==
X-Gm-Gg: ASbGncsY5QjT54vwA5goz0zD7uPXNWjj8WrHu9ysrQoaSsF5JObtqWSEEPsaHfA4p4J
	rUbZxubkl2adu4YSsRyGiXg1yi8WYzKfkcyAqB3QIVb0o/jx0tGbdOJB+OfgXbSnOAcgz9TFdpi
	Z4ap7Rejr/FC3akYmpOjuxae6cmqf5JdglmZfX06k1Yci59KgZvFx+ZhIxtMoA/3ZmE9uYulr2p
	8779Z639YcpMkgQHuC5beQampmqPpQuOHu+773rDoSfoKwaOO/k3CWSrREQTC/UgIIBLjLfv5Wa
	5nL9P5zuyEXl3TpGvh9UTq8ssZvb5DNXpyo9o6upFCKTBJ9oWdH4DsWljfNenNvsRCIMtwSbouE
	NN6lWy/pPDw==
X-Google-Smtp-Source: AGHT+IGg84kIi0IDmJ6WLUU9PxQzn/IS+LAqvSr+ETXvi6WXzqyA+Lt8CEs5YfPUjKQBchbbqZ6n2g==
X-Received: by 2002:a05:6e02:3802:b0:3dc:90fc:282d with SMTP id e9e14a558f8ab-3dc9b6e5684mr2325875ab.16.1748026721187;
        Fri, 23 May 2025 11:58:41 -0700 (PDT)
Received: from [172.22.22.28] (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.googlemail.com with ESMTPSA id 8926c6da1cb9f-4fbcc48c8c1sm3769482173.90.2025.05.23.11.58.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 May 2025 11:58:40 -0700 (PDT)
Message-ID: <a47ceee1-6530-4f3d-971e-450069ede557@ieee.org>
Date: Fri, 23 May 2025 13:58:38 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: net: qcom,ipa: document qcm2290
 compatible
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Wojciech Slenska <wojciech.slenska@gmail.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Alex Elder <elder@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org
References: <20241220073540.37631-1-wojciech.slenska@gmail.com>
 <20241220073540.37631-2-wojciech.slenska@gmail.com>
 <7d33eed7-92ba-4cbb-89b0-9b7e894f1c94@oss.qualcomm.com>
Content-Language: en-US
From: Alex Elder <elder@ieee.org>
In-Reply-To: <7d33eed7-92ba-4cbb-89b0-9b7e894f1c94@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/20/24 7:25 AM, Konrad Dybcio wrote:
> On 20.12.2024 8:35 AM, Wojciech Slenska wrote:
>> Document that ipa on qcm2290 uses version 4.2, the same
>> as sc7180.
>>
>> Signed-off-by: Wojciech Slenska <wojciech.slenska@gmail.com>
>> ---
> 
> FWIW this needs some more work on the Linux side, the IPA driver
> currently hardcodes a reference to IMEM, which has a different
> base between these two SoCs.

Everything currently assumes the IPA version dictates many things.
That works, so far.  But a lot of these fixed/hard-coded definitions
(per version) could be changed for specific implementations--they
just haven't needed to be.

> The IMEM region doesn't seem to be used as of current, but things
> will explode the second it is.
> 
> A long overdue update would be to make the IPA driver consume
> a syscon/memory-region-like property pointing to IMEM (or a slice
> of it, maybe Alex knows what it was supposed to be used for).

Yes, we talked about this last year, or the year before.

Konrad's patches to put this in DT is the right solution.
It doesn't matter that it's six months later.  I really
appreciate the improvement.

					-Alex

> 
> Konrad


