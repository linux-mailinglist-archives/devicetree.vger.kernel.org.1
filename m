Return-Path: <devicetree+bounces-176760-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C8092AB5704
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 16:25:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1A23F3A5199
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 14:24:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7071E2BCF72;
	Tue, 13 May 2025 14:24:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GbbiUOd0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A04C91917C2
	for <devicetree@vger.kernel.org>; Tue, 13 May 2025 14:24:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747146297; cv=none; b=Pia+rZ1xuzV7hFyitpyr7+rADfP0XCqsKqFxZMEIhvPjhUQcqaRWjC94AmSXO6iX8hA9QTtpH2H5ZvRXUvTLo4wPJ3HRn5ITCVz/HazTmmAZvP/qpFhvFoHDEuXZW89CBhu9w3YeOPVrJqHYOYx9S1QU8Rwfus41mVGaufh8svw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747146297; c=relaxed/simple;
	bh=GxwcSYNe2p0XJBrJx4bSenouSf2vBwH0LKTpfUMyLn0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=N4jF+zKd+gP1Pv/kf4jKpy8wERMchJAfaLiTOvC88POcpHgC5j45b+7FxnYYTA/KwtBysG0P3Ms/mylvdeIIus2m3jihoBVDcMH1k0NwjkgsGypoit74jmq4rOIGSI+OFJJ1sjYOUFrBCK3m3xpFUFEPdy0o0Gv1OO83SJqGF1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GbbiUOd0; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-43cfebc343dso38015545e9.2
        for <devicetree@vger.kernel.org>; Tue, 13 May 2025 07:24:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747146294; x=1747751094; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/NWh098gqRLftvvY4dIkjtdvgIAwUVSrP7NdWik+NTk=;
        b=GbbiUOd0zktufQFK9LZO0f6IqfSKNNyks3R+IYGWOLbDrfHJeJ3WqDzARkp3llsvLB
         iL1wnox3ggk7x9CUZXYGf5iNRZFT4qf3BvPxOFwWWoKLTXBpwF14g/iyI6oQ2McqM3xf
         jMXov9f1UtvHF6v9DCYlbrZmOOpPHPiuZ3lDa439MgtgDTD1KgHkp9lrJCAlLcXHyAVz
         2HdpIcPVmWIOc+thpXTvBmqKxgHl8NCby9wHY7vQhsHf8S4Xw9zdE+ztu8Fuf7LvMLZS
         /MSnKxyLDv8XxtytFJ4l4wwM/YibtWaVobNTnkB9d0gzZguceEaSuKubnrLJ/H54bmNC
         mT0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747146294; x=1747751094;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/NWh098gqRLftvvY4dIkjtdvgIAwUVSrP7NdWik+NTk=;
        b=W+TF5N3elvR27acxEfrhgPBo8XDy+vYKYtHPdrckOevFPMeW6ZYe5Noa5CkpbmiKhw
         RKf3e+MXmS5ciTXEtiqQt+DL5JHoNANNujnBCLMqbe7qY/jFIISKa77BN0LFJr8IEBS7
         L5djYV4ucnVilTVB1rBZY/pEvJ1V+qThki8V55CQ7joHhk61QqzweF8hiAUBroez/Ahp
         5qpwZKNMbgcssmDW/xYw4GomwACj7XR5nPmqE9RG97tW+NdyGqIb8MQNpxW8ZQxf9gHx
         exMPb7cVjqDai9U+cBIYbriX3dSmGqTu8YLEDPJ6ufhSzO3VpY+Pnt/vdFhCDx1LWar/
         GFeA==
X-Forwarded-Encrypted: i=1; AJvYcCVDsxO9CZl9cFa3B6xUbk1ShtFCSXS3ODce04YpWbB1JuL0OvK8H5MrpF6o3u1saXZ2VRbhwIUsw8SF@vger.kernel.org
X-Gm-Message-State: AOJu0YwbGej7LUCEXlai8v3tsMX5cDcvumx2/Q3M/rklt0OIXR/2Akyw
	b8a2ZK7xLhEwXrsMBNAaJ6IzxRUE1zIUkkBR2LE8OHRDntZf3n2IfzCQsXfmKyw=
X-Gm-Gg: ASbGncuQPMOM+E54qQaKwu4nm1Lyhntfqy6kF3vdrVMQwkdy4L9zuw1XQJLZq+qHAIK
	TCm9sWFNgnNWGVfk3PPgScPADSfwmtMflvgjcN6KPmHFoyObvSR1nzuV3xlCiSNYJZubJzl0/Mp
	WyzwMnjnhnh0hf1+b/ILIB+xU2DnsWxq7wALTwG153oMb19gvFDpCnI0UwGBb3beLXO/zWzsEXu
	hYqc+d7n/yVr6YKEpOXxEow2SWEumV5DMXDes3Db4cJnWTytbjN8sEBeJr1J+gtqGQZRAdhjaCw
	GQoSYL9bl0uX+XjorIUyYZuGhs2mBk7JKfDCaHQlsJ22zfeVOcaFCehWvb9go3DROE+b0iHKTLg
	A/O9ny510Z79d0A==
X-Google-Smtp-Source: AGHT+IHHlX9t4nfJ+7hHMCJoNaC1yXBW+lGGwra9RnsLEfJITmGfdfvMv/X1F4SEEmKSiUDfR77dIg==
X-Received: by 2002:a05:600c:4e44:b0:439:8c80:6af4 with SMTP id 5b1f17b1804b1-442d6d6b603mr171874205e9.19.1747146293972;
        Tue, 13 May 2025 07:24:53 -0700 (PDT)
Received: from mai.linaro.org (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-442ed666dc7sm23697575e9.18.2025.05.13.07.24.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 May 2025 07:24:53 -0700 (PDT)
Date: Tue, 13 May 2025 16:24:51 +0200
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: Caleb James DeLisle <cjd@cjdns.fr>
Cc: linux-mips@vger.kernel.org, tglx@linutronix.de, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, tsbogend@alpha.franken.de,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	benjamin.larsson@genexis.eu, linux-mediatek@lists.infradead.org
Subject: Re: [PATCH v5 0/7] Add EcoNet EN751221 MIPS platform support
Message-ID: <aCNWM5Xq7wnHVCrc@mai.linaro.org>
References: <20250507134500.390547-1-cjd@cjdns.fr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250507134500.390547-1-cjd@cjdns.fr>

On Wed, May 07, 2025 at 01:44:53PM +0000, Caleb James DeLisle wrote:
> EcoNet MIPS SoCs are big endian machines based on 34Kc and 1004Kc
> processors. They are found in xDSL and xPON modems, and contain PCM
> (VoIP), Ethernet, USB, GPIO, I2C, SPI (Flash), UART, and PCIe.
> 
> The EcoNet MIPS SoCs are divided broadly into two families, the
> EN751221 family based on the 34Kc, and the EN751627 family based on
> the 1004Kc. Individual SoCs within a family are very similar, only
> with different peripherals.
> 
> This patchset adds basic "boots to a console" support for the EN751221
> family and adds SmartFiber XP8421-B, a low cost commercially available
> board that is useful for testing and development.
> 
> Note that Airoha (AN7523, AN7581) is similar to EcoNet in terms of
> peripherals, and for historical reasons Airoha chips are sometimes
> referred to with the EN75xx prefix. However this is a different
> platform because Airoha chips are ARM based.
> 
> This patchset is against mips-next.
> 
> v4 -> v5
> * 2/7 clocksource/drivers: Add EcoNet Timer HPT driver:
>   * Improve explanation of HPT timer in changelog
>   * Move pr_info to pr_debug per recommendation
>   * Remove pointless debug on spurious interrupt
>   * Small code-style change

Shall I pick the clocksource + bindings changes through my tree ?

-- 

 <http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

