Return-Path: <devicetree+bounces-239496-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id E956AC6576F
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 18:25:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id BD4B24F27B1
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 17:17:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC66A32E696;
	Mon, 17 Nov 2025 17:12:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="SrXRGYrZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f177.google.com (mail-il1-f177.google.com [209.85.166.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E77D832E12B
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 17:12:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763399568; cv=none; b=IYnVCapj28FLC5ZwxaFlwH+xGuGT5h1CCthgmhK27xQfIRpRmzlSdZeOhZWmXXiw+BLdt0LlqyybSv08WjqnuOYT2ATWc3hzdSbIbbYLIwjYmW4KeOBAFkq6UCw3xEoBc8XWfRFu8IaqxL72t5Hx8OnJiQFGD4YtReYYxBbv/1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763399568; c=relaxed/simple;
	bh=nmhM4LSVMsUor5QeIBHpH3224iyADx1BLXHEi4pE9A8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pHsa6uNu0mIM68Xa0cHKXWwh2iWXd1DLnazTzjCDJIcbTTikiRj0tHtgP5jnJgjLonYqH+XLyeqe9dQDKaiSapaB082nD7u3eJ9+SVfqvzzjHdwDntJYkGLE72b84ROERMZfp9zP8k7c6Qetzyjox5o71GP6QAIa09moUjxhV7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=SrXRGYrZ; arc=none smtp.client-ip=209.85.166.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f177.google.com with SMTP id e9e14a558f8ab-4349044be0eso20346785ab.1
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 09:12:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1763399565; x=1764004365; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UVyQ1lgChGCDzR3SsqjIRgL3e2y5+BZfD9Zpt6v7tGs=;
        b=SrXRGYrZXXbnrJRWeIKeGeL/8WDjcUC4s6ncilqvNzfFQD/U4xbwiJuaqK/NOh0DA0
         o0IxFFtF7eOHVHyCoJ05YXoNPJem7yxHTwjLj1ZI5MBT3kY+8D/zMX7cxTBDZmBUudWE
         hazUieVJvXz5FjNrYYLZKjnhiDuUHWr+BLsG8QQs9CkQfOdbwD61XhlqQ/Ni8WtnWrFv
         TR/kiv62OEFZChU1LGT25IGmMqI+r1PVBLur1MP+nDlDbA9q5THVc/EAa4rpqO19EgNL
         632NrtfRprRL4oSMqhBYS5Tu92z2zMExnCUnWr1aYxTJS0EB8W9WvmCdpfY8SkA85RyQ
         woDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763399565; x=1764004365;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UVyQ1lgChGCDzR3SsqjIRgL3e2y5+BZfD9Zpt6v7tGs=;
        b=YvgQTpu1XFZAATLIk+ZyKwrkiSBJ/7xDah2SSbepWSWG+DbXC46hmg4Dzu8a7DhJDf
         WrtC6phBj/qjvAm/UnAcWdl6LOZGgY+BzVRLKb39YbR1oUpv3i9Vzt+Ck4f3UmrXTUAM
         dCSg3QllWOfHaxKpqodlp8R8N3PsvRhNAyTY2a/98/FWgE4MwiFA3NvsiYGwV7/eChYO
         dsVvXtZZTtxFul2WQYTy3vLPikB96P452+MxR9lXKjDFbBsUuBAtZkjNMD5sEIoYsVMz
         VzbWQfdOMg6NUER1u+iKFq5Auk4YhdsgtQpt1+bSi45eOl7dCZyS3AMVOsfy5mCBuQgI
         jn2A==
X-Forwarded-Encrypted: i=1; AJvYcCUB0/9YMaP1GPXLj2kP3k/3f1MqAhVB27FvXzgrLfoKpQ78uN7WWQ8I7YQcp2dQyD4jY+vM6ML1pdd4@vger.kernel.org
X-Gm-Message-State: AOJu0YxjfXWR2tYomSpz0qOTZ5Xpkigqq5PpNMFca+txKTGt1ZBkVCO7
	SBwUSrh4O5he8CJZyjI69j28TB0p12Kx14mJFpZLVNdbppXdLQPRyV9lxDn0/z7D2Lg=
X-Gm-Gg: ASbGncs9tJTbV+PCZU4ISY5REH+MCwv2hrsPMlKO5v/hhKd9Ib/Lponvnfz1NDWPTLC
	jAcTL0K6QeqKbIb7RYeETvJNsyB7cjMG5JJVe5LRP6ogfrjtaQTQaLDrdLoMTHMDH2tIzNWInpC
	NlyZeY6Qeh1e5EmPmKsZjnrCxgLXeG/yCjOfR7wHKxEu8NF3i6h0qHP7EIRma/tXOIFnMBlKT9G
	WaRQgSvm+Jb3Vrf5eV6lZLFYiqP7bfn7/aRnSEYD4FOcZIeBTop34m6nVFn6Ua2kprVbU5jcnE2
	dcB93XAIiPxcLRc3TqfMm0WZ0YPJ66lrAvDSPIwpcSF9BIwdvAHQmG2ctKhsBqfKZ98o4Wh0blp
	38/ebiVN7QJFxmyCCY+kco7pf9ycJ0+1xPVb169hD/uPDhGHM5/IHn7yg21lV2AIc5cMHuGGIsO
	66QXE5xgW+Qnzm1pW9HdfaIeH13mF7Of5yzyyq/5Wj2zBaa2XU852znOUPyUIA
X-Google-Smtp-Source: AGHT+IFGKqdRJLV9RQOyvs5MvCac0JQUqvPl4j+mCywXmiQhs/UBqawUJsZSrZzGsMyRTHumxUBE2g==
X-Received: by 2002:a05:6638:4b8b:b0:5b7:1ebd:4d11 with SMTP id 8926c6da1cb9f-5b7c9c45d2bmr9122365173.3.1763399564687;
        Mon, 17 Nov 2025 09:12:44 -0800 (PST)
Received: from [172.22.22.28] (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-5b7bd24d5e9sm4708226173.3.2025.11.17.09.12.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Nov 2025 09:12:44 -0800 (PST)
Message-ID: <b9769b9f-cbc4-459f-911e-f29f848b6ce7@riscstar.com>
Date: Mon, 17 Nov 2025 11:12:41 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 0/7] Introduce SpacemiT K1 PCIe phy and host controller
To: Jason Montleon <jmontleo@redhat.com>
Cc: dlan@gentoo.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, vkoul@kernel.org, kishon@kernel.org,
 bhelgaas@google.com, lpieralisi@kernel.org, kwilczynski@kernel.org,
 mani@kernel.org, ziyao@disroot.org, aurelien@aurel32.net,
 johannes@erdfelt.com, mayank.rana@oss.qualcomm.com,
 qiang.yu@oss.qualcomm.com, shradha.t@samsung.com, inochiama@gmail.com,
 pjw@kernel.org, palmer@dabbelt.com, aou@eecs.berkeley.edu, alex@ghiti.fr,
 p.zabel@pengutronix.de, christian.bruel@foss.st.com,
 thippeswamy.havalige@amd.com, krishna.chundru@oss.qualcomm.com,
 guodong@riscstar.com, devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-phy@lists.infradead.org, spacemit@lists.linux.dev,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20251113214540.2623070-1-elder@riscstar.com>
 <CAJD_bP+AjhNCB6kCeKdnXERjP9j8dhbCejnS1OVmFf_VShti5Q@mail.gmail.com>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <CAJD_bP+AjhNCB6kCeKdnXERjP9j8dhbCejnS1OVmFf_VShti5Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 11/14/25 10:21 PM, Jason Montleon wrote:
> On Thu, Nov 13, 2025 at 4:45 PM Alex Elder <elder@riscstar.com> wrote:
>>
>> This series introduces a PHY driver and a PCIe driver to support PCIe
>> on the SpacemiT K1 SoC.  The PCIe implementation is derived from a
>> Synopsys DesignWare PCIe IP.  The PHY driver supports one combination
>> PCIe/USB PHY as well as two PCIe-only PHYs.  The combo PHY port uses
>> one PCIe lane, and the other two ports each have two lanes.  All PCIe
>> ports operate at 5 GT/second.
>>
>> The PCIe PHYs must be configured using a value that can only be
>> determined using the combo PHY, operating in PCIe mode.  To allow
>> that PHY to be used for USB, the needed calibration step is performed
>> by the PHY driver automatically at probe time.  Once this step is done,
>> the PHY can be used for either PCIe or USB.
>>
>> The driver supports 256 MSIs, and initially does not support PCI INTx
>> interrupts.  The hardware does not support MSI-X.
>>
>> Version 6 of this series addresses a few comments from Christophe
>> Jaillet, and improves a workaround that disables ASPM L1.  The two
>> people who had reported errors on earlier versions of this code have
>> confirmed their NVMe devices now work when configured with the default
>> RISC-V kernel configuration.
> 
> I successfully tested this patchset on a Banana Pi F3 and also a
> Milk-V M1 Jupiter by making the same additions to k1-milkv-jupiter.dts
> as were made to k1-bananapi-f3.dts.
> I no longer have problems with NVME devices like I did when I tried v3 and v4.
> 
> Tested-by: Jason Montleon <jmontleo@redhat.com>

Thank you very much for testing this.  Your Tested-by is included
in Mani's commit.

					-Alex

