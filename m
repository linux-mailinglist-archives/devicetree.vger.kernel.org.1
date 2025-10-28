Return-Path: <devicetree+bounces-232359-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 18381C16D16
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 21:50:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 06C204E8E61
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 20:50:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D320E34A3AA;
	Tue, 28 Oct 2025 20:50:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="bs8NDvL4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f194.google.com (mail-il1-f194.google.com [209.85.166.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB21A23BD17
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 20:49:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761684600; cv=none; b=Zr6wvFinhM94P/PHewhABbwSLSm22OYKaWp4cnmE1EQUk0CiN0wNAHjBWnTVzJ0aVDCa+wVR3zEQpVHYa9qUZH25+mBqQbdrPQidxyEbHLX6sj2vhmvLPfHGoTuK40aRwbxhJ02rgE/YRSRFEA4OfIxmC7FTwMYILzyqKe9f4OE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761684600; c=relaxed/simple;
	bh=FKJWPmS5QgnY3R2AdTz5RMSJOELWW0vWKsMJbBFymPg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Y4Mmwvg8Jbb0SNPQenZb92ob8p82nO7H79jJzXXNtLPxkRmSKRhyB3yrGJYswTuDmQHu+t5qbp3640aJXVHgPupfJdpgm9FqdI9nlONQKZz+0rTifJrVvGnBLE/YUw++v9x9NK7QEdki9E2906dsZ8fA95RMbdQo4yxamCCXgkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=bs8NDvL4; arc=none smtp.client-ip=209.85.166.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f194.google.com with SMTP id e9e14a558f8ab-430ae09ea23so26487345ab.0
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 13:49:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1761684598; x=1762289398; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=R6TldsVLxc7ZpZ3BCidhfMeu0Nkd2dELKLkuMBzPbjk=;
        b=bs8NDvL4TkV9Yr5/sWWuZbbaScMYRyQzo52bR75MPu1Vjyqm0fxOFiumx8WfDGHkea
         XA7c2cAxbgPa1Ee6NQJzOTcIzUHaZbbun1lW0K/kqB37llWGHTCR6hOK4UHpXNicxgDm
         J7konW3qL9+6LUf57Z0Wun92PbW/RDsxiTyanwYMwacdEPiNZEW7l1LfH9E1PcYtLryt
         lWCd7L/eugWwjlgb7eHuMLpPO9yW4g4x5X9o+b39nsDjTojl/vjrZ+DxH0cLdEAPIqvL
         t3L20gswBakNJBERZaXkG7NIVhBc6+SttNbX5OpDNtBny5QMlUWfhnQnJMhqVWV9CKJD
         qBXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761684598; x=1762289398;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=R6TldsVLxc7ZpZ3BCidhfMeu0Nkd2dELKLkuMBzPbjk=;
        b=jPIY0EHfT2Q0TI4ST17wuGmNc3DXVqCUSVSZMh2LecqxnA6T1Hjrl/lBk9gjPLc14r
         RYl5zGFw4aaAJMO1SeeOQwRVgavW3v+l3tV6BY1RNINxsxAQ8vhUH1S7xDONLJr6r1qA
         ssmYhp31H09qARxVjz/dRDTtunSVAFctHkPZT3+M/KDst1E6YiSQq+YFrl671UrITVQ4
         tKnN6kasLoQ5Jq3ZxXfOhrdCb/O/KlYbLA4PUz9qFIOu5g1TLJmGKufwqdKcswHXHBtk
         8+Ev+ssT+QRM/H8eWdEaq2PBZgC26D+ei5BwgzC20qmawLSvY9AdCW8lG6QY2V3Rr4MH
         EwXw==
X-Forwarded-Encrypted: i=1; AJvYcCWtPJM5CCyiipw7n6gwVxVc80ZSgKOn/h4Pmx15V75Dauwifeb6c/0qtr0oBcbTr9lD7elVijA5m08w@vger.kernel.org
X-Gm-Message-State: AOJu0Ywa5R9P4zC96TlLd5HHNdMDlCBjdKvwedsF30kql+Y7LKUDHcUa
	aVGXKL7WUlQf4Rk+MHGiPXpz/3rKSeozB75VtDx+YEZoIBgL7Uy/fU5ix5B+9Reo0YA=
X-Gm-Gg: ASbGncsy/304s0PpQruBCTbAxRvjcHvR+iN0mBiVPSkQf775jsu4i1AnD9ORVbJhI3D
	Q9uQMAKJQgMT7nI/h/7WAxFumQzNVoevpGZielfkcIU/+VsgWUzQwvzqKmLI+lPX2lC7TMJmDIv
	a0SCWVAWIwRYmZXFwemLSWoGMKN9urJRXC/f+1SGeKbw3G9Si6tEfbb1OCY++rX1ioXss7mmHSb
	3/zsh+PWyUTR/NJufRsbpTiAV7hNY7RDPu/AMvtUOtLrE/eeYtIoVOjI0mfB+a1zDzSDN6y0rPZ
	z6TGOtMig7sWTmdCWqWvpSFzPS2Dy2cOtXysNVkp+gzNrylPBm4QtWk7XRSe60eE/bIy2JWYR3c
	py2pg5Dg9Qr0O3M9qWbI9jSvfbT6xwMTyVmntDYC+Ci8Xyb1HcqtqNfDynRmnmfz6DoI9JKKHtU
	/ibFrbTHyKFkKz7aC1YDXAYaDNxPE7jCMijuVLBSz+
X-Google-Smtp-Source: AGHT+IEqrqUPdxyh6nYJQcfD3zvrLobFkCBCdnIEdI/83k2YFCmj2OXCJVPDfmu5Z5HhIeTYWdj2MQ==
X-Received: by 2002:a05:6e02:154a:b0:42f:9399:ce93 with SMTP id e9e14a558f8ab-432f9028b73mr8923535ab.20.1761684597966;
        Tue, 28 Oct 2025 13:49:57 -0700 (PDT)
Received: from [172.22.22.234] (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-431f67eb4b3sm47212635ab.12.2025.10.28.13.49.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Oct 2025 13:49:57 -0700 (PDT)
Message-ID: <a836c200-e079-424c-9fad-600f802e5220@riscstar.com>
Date: Tue, 28 Oct 2025 15:49:54 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/7] Introduce SpacemiT K1 PCIe phy and host controller
To: Johannes Erdfelt <johannes@erdfelt.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 bhelgaas@google.com, lpieralisi@kernel.org, kwilczynski@kernel.org,
 mani@kernel.org, vkoul@kernel.org, kishon@kernel.org, dlan@gentoo.org,
 guodong@riscstar.com, pjw@kernel.org, palmer@dabbelt.com,
 aou@eecs.berkeley.edu, alex@ghiti.fr, p.zabel@pengutronix.de,
 christian.bruel@foss.st.com, shradha.t@samsung.com,
 krishna.chundru@oss.qualcomm.com, qiang.yu@oss.qualcomm.com,
 namcao@linutronix.de, thippeswamy.havalige@amd.com, inochiama@gmail.com,
 devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-phy@lists.infradead.org, spacemit@lists.linux.dev,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20251013153526.2276556-1-elder@riscstar.com>
 <aPEhvFD8TzVtqE2n@aurel32.net>
 <92ee253f-bf6a-481a-acc2-daf26d268395@riscstar.com>
 <aQEElhSCRNqaPf8m@aurel32.net> <20251028184250.GM15521@sventech.com>
 <82848c80-15e0-4c0e-a3f6-821a7f4778a5@riscstar.com>
 <20251028204832.GN15521@sventech.com>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <20251028204832.GN15521@sventech.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/28/25 3:48 PM, Johannes Erdfelt wrote:
> On Tue, Oct 28, 2025, Alex Elder <elder@riscstar.com> wrote:
>> On 10/28/25 1:42 PM, Johannes Erdfelt wrote:
>>> I have been testing this patchset recently as well, but on an Orange Pi
>>> RV2 board instead (and an extra RV2 specific patch to enable power to
>>> the M.2 slot).
>>>
>>> I ran into the same symptoms you had ("QID 0 timeout" after about 60
>>> seconds). However, I'm using an Intel 600p. I can confirm my NVME drive
>>> seems to work fine with the "pcie_aspm=off" workaround as well.
>>
>> I don't see this problem, and haven't tried to reproduce it yet.
>>
>> Mani told me I needed to add these lines to ensure the "runtime
>> PM hierarchy of PCIe chain" won't be "broken":
>>
>> 	pm_runtime_set_active()
>> 	pm_runtime_no_callbacks()
>> 	devm_pm_runtime_enable()
>>
>> Just out of curiosity, could you try with those lines added
>> just before these assignments in k1_pcie_probe()?
>>
>> 	k1->pci.dev = dev;
>> 	k1->pci.ops = &k1_pcie_ops;
>> 	dw_pcie_cap_set(&k1->pci, REQ_RES);
>>
>> I doubt it will fix what you're seeing, but at the moment I'm
>> working on something else.
> 
> Unfortunately there is no difference with the runtime PM hierarchy
> additions.
> 
> JE

Thank you very much for testing.  I'll try to learn more
about this in the next day or so and will resolve it if
possible before I send the next version of this code.

					-Alex

