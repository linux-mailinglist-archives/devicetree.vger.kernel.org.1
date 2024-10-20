Return-Path: <devicetree+bounces-113345-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 419DE9A54C5
	for <lists+devicetree@lfdr.de>; Sun, 20 Oct 2024 17:35:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AE0CA1F20219
	for <lists+devicetree@lfdr.de>; Sun, 20 Oct 2024 15:35:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4CC8193086;
	Sun, 20 Oct 2024 15:35:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="RawwGfzY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E59873232
	for <devicetree@vger.kernel.org>; Sun, 20 Oct 2024 15:35:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729438552; cv=none; b=m5+5N6PT496n92paSXLJ0JwU31KCq9hxmUY6NIg0MwxFujw2Z/oUXGUzIQgkeUKWaIvKN+8j/VgNyugt8aVM72T0CYA88L5sh78SEQD7GxA8ZmB/IjfDM/4L0vgjTl9cgqDngCWYCj9/CiSoazCUMvSIXDynISEAmY33fIjePMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729438552; c=relaxed/simple;
	bh=/PYwXEiDstZMGEQhnOqiz52pNH704/eHayQp9KjHnLk=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=P7Av9SqE4/pIMrnnZaHGKkHLj/ju7pPNFoPnCU6182URgnX8dfH3zaNx7EpSbF26lcGdjdmiti/vt9U2KPk1lFR9fw0umUwAkS7xqMZFQqcsx9QSU8lh6RzQdFrRKo9bbavL2uelxc4yNpV0Y3KK6pu31/RX92F8fphWl0A4Uos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=RawwGfzY; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-37d50fad249so2747351f8f.1
        for <devicetree@vger.kernel.org>; Sun, 20 Oct 2024 08:35:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1729438549; x=1730043349; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=N75GCuQKKdZ2Q+iXDHUmp8l2Xt5deW/h0B9rGsG540c=;
        b=RawwGfzYgzeN3ZYwCYEAEZ5nhSxlm9aLgkE0vlXxv024gjJnK5eZYA5TxHKIiP8q8i
         2cve4RjWMmEbhHyJy+8DcbwZSD3elxRiEEiwpFjIRL23nC3vr0E1kXMWJwKditUW4Ji2
         GARl2Tvwx7P7o9K+fQl5hoCrLOH+LIVWmVtHUnU1vGVZ/6jd6thAbR+MxuuAxtEk1+Wr
         QKBPNM0/mPdwb5kpnZ1c/YhN2rmLsloa5LwN5APprsCyhHAAmix6LpsdvRdQ+M5BRi2S
         EFBrLMYu5MkWiJW/FABL1RWW6AQJL9iepgqTOqYQtpjC9v4QKsy11Tnnwa4fBlCUqbmM
         ALJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729438549; x=1730043349;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=N75GCuQKKdZ2Q+iXDHUmp8l2Xt5deW/h0B9rGsG540c=;
        b=L2wtMSBBd2v204exrirwp17PmbdHRgz2t46L7LFkFPOL3kJcYnrqlxzGYtEC+394hL
         mAM3/6hbX/0XwYsHHTP9+aci2JEEH3DHVPDjVkMWZOCk9IFQ4DjYvPB2pqjtMsAvShim
         CHxS6D8NvkAbUxxM5oFnvivSaY2otOu5Ikjz3G2EdeVCDUV2B+k2jUzOsHWwn3JmM345
         PDDcZ5BVIXLrPWWbbBIe853cP6cGAbP/2SUNOozignZQLS80ChqSxvUsyNN6CCtZ6Ds+
         SSrQvbRgCiAnwYS6bT6rubKKxt5HA2Z1j9fLhdeGuLJ/DzrYjTn5U7kQYmj9gcLAf+5b
         OmSw==
X-Forwarded-Encrypted: i=1; AJvYcCXbay0cCLnaM4ug7AskVfGdU6Y3j2w7obP61qxkp6az7jkCdVXXO+wrQ+DZ8xfBa9NxIBsL6Mv/Vjr+@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9Ht26zL3tKMFrvm0IVdWi7Q/u/ip7nLJgGlIUA7vi1tuiWyDy
	Ztfmm/A1So1XbagAVpsCrhyAi8bJbP2yEDhIHdCRJIOFAfqr6cLlxbTYIlVrZzM=
X-Google-Smtp-Source: AGHT+IEq6YB4wm60xSuRb20NFHLTXF9xHNheNnSiXAwbNiIRo5NVs3JbegQ8C/NHYtVHj9mgefHVDw==
X-Received: by 2002:a05:6000:bd1:b0:37d:2de4:d64 with SMTP id ffacd0b85a97d-37eab70f8d7mr5200492f8f.35.1729438549187;
        Sun, 20 Oct 2024 08:35:49 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.23])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37ee0b9432fsm1961891f8f.83.2024.10.20.08.35.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Oct 2024 08:35:48 -0700 (PDT)
Message-ID: <11af2db9-ee23-41f4-ae05-d593df7b8bb4@tuxon.dev>
Date: Sun, 20 Oct 2024 18:35:47 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/5] Add power monitor support on Microchip boards
Content-Language: en-US
To: Mihai Sain <mihai.sain@microchip.com>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, linux@armlinux.org.uk,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240923064932.5797-1-mihai.sain@microchip.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20240923064932.5797-1-mihai.sain@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 23.09.2024 09:49, Mihai Sain wrote:
> Mihai Sain (5):
>   ARM: dts: microchip: sam9x60ek: Add power monitor support
>   ARM: dts: microchip: sama5d2_icp: Add power monitor support
>   ARM: dts: microchip: sama7g54_curiosity: Add power monitor support
>   ARM: dts: microchip: sama7g5ek: Add power monitor support
>   ARM: configs: at91: enable PAC1934 driver as module

Applied to at91-dt, thanks!

