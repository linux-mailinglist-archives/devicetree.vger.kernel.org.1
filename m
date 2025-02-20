Return-Path: <devicetree+bounces-149042-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DA10A3E0F4
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 17:38:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A72011889097
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 16:37:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B74911FECD0;
	Thu, 20 Feb 2025 16:36:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.microsoft.com header.i=@linux.microsoft.com header.b="O90HNH/W"
X-Original-To: devicetree@vger.kernel.org
Received: from linux.microsoft.com (linux.microsoft.com [13.77.154.182])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 637F81FDA94;
	Thu, 20 Feb 2025 16:36:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=13.77.154.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740069413; cv=none; b=drRBZLejAnocEZtg0HKhNwJ9kY9JD8rEHML5q+jcQE+vDLuc5NJH+DB2iQLPYlO2JD1abZ91YjRL+Z26mOi4yQJ9F/wm1LGP7LhTEqzsVrGzWYvQB63QVsXQU7hXUYGFioJCDkiEjEVJCrkXiJrMpmb5RRBl7shCnNxw2e/UUzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740069413; c=relaxed/simple;
	bh=PQe7bripx++zcXNXBM1O/bP2KCfp3lJ2bUMK6DifAMI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aKYgfd8+wUGFG6qYkv0XwhOUCf/vK9axICrrDPQJ4vPYB9MjoWBMit7oXH5nsux+2YcND+MIbT2rnZnpFhHboo5PVmiVX0yivm6w7vNIk2Kayh5iZ1M9kdy23Ap7ybwtVb+gD8+ULQywDM7IfZCw1RR5V5Yji6SdNfsC6yyQkyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.microsoft.com; spf=pass smtp.mailfrom=linux.microsoft.com; dkim=pass (1024-bit key) header.d=linux.microsoft.com header.i=@linux.microsoft.com header.b=O90HNH/W; arc=none smtp.client-ip=13.77.154.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.microsoft.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.microsoft.com
Received: from [10.137.184.60] (unknown [131.107.160.188])
	by linux.microsoft.com (Postfix) with ESMTPSA id 8250A20376F8;
	Thu, 20 Feb 2025 08:36:51 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 8250A20376F8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
	s=default; t=1740069411;
	bh=cNwF/TmLe06a3bjDk2gyUgRGrHM5swdU3hTbrZcKuHQ=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=O90HNH/WVZcizQUG/bBmDXrhQmO6I6OuNcVudW3ubvh6sEMRKmFsVh320lL0RI82m
	 gB+l+vwS3571aHGPAe9oRsh5knORk/AThp2CLTkuLZlJTg+MlM3A7nEWXVnzzet3Ai
	 AneBCVj5jBieBuTrlJZTpjp/uzwBxBXe9+gGakck=
Message-ID: <fb162f81-9365-425d-8153-75c2c7d5ff13@linux.microsoft.com>
Date: Thu, 20 Feb 2025 08:36:51 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH hyperv-next v4 2/6] Drivers: hv: Enable VTL mode for arm64
To: Michael Kelley <mhklinux@outlook.com>, "arnd@arndb.de" <arnd@arndb.de>,
 "bhelgaas@google.com" <bhelgaas@google.com>, "bp@alien8.de" <bp@alien8.de>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "dave.hansen@linux.intel.com" <dave.hansen@linux.intel.com>,
 "decui@microsoft.com" <decui@microsoft.com>,
 "haiyangz@microsoft.com" <haiyangz@microsoft.com>,
 "hpa@zytor.com" <hpa@zytor.com>, "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
 "kw@linux.com" <kw@linux.com>, "kys@microsoft.com" <kys@microsoft.com>,
 "lpieralisi@kernel.org" <lpieralisi@kernel.org>,
 "manivannan.sadhasivam@linaro.org" <manivannan.sadhasivam@linaro.org>,
 "mingo@redhat.com" <mingo@redhat.com>, "robh@kernel.org" <robh@kernel.org>,
 "ssengar@linux.microsoft.com" <ssengar@linux.microsoft.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "wei.liu@kernel.org" <wei.liu@kernel.org>, "will@kernel.org"
 <will@kernel.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>,
 "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-hyperv@vger.kernel.org" <linux-hyperv@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "x86@kernel.org" <x86@kernel.org>
Cc: "benhill@microsoft.com" <benhill@microsoft.com>,
 "bperkins@microsoft.com" <bperkins@microsoft.com>,
 "sunilmut@microsoft.com" <sunilmut@microsoft.com>
References: <20250212014321.1108840-1-romank@linux.microsoft.com>
 <20250212014321.1108840-3-romank@linux.microsoft.com>
 <SN6PR02MB4157EFEE74BD71B6392502A0D4C52@SN6PR02MB4157.namprd02.prod.outlook.com>
Content-Language: en-US
From: Roman Kisel <romank@linux.microsoft.com>
In-Reply-To: <SN6PR02MB4157EFEE74BD71B6392502A0D4C52@SN6PR02MB4157.namprd02.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 2/19/2025 3:14 PM, Michael Kelley wrote:
> From: Roman Kisel <romank@linux.microsoft.com> Sent: Tuesday, February 11, 2025 5:43 PM

[...]

>>   config HYPERV_VTL_MODE
>>   	bool "Enable Linux to boot in VTL context"
>> -	depends on X86_64 && HYPERV
>> +	depends on (X86 || ARM64)
> 
> Any reason to choose "X86" instead of "X86_64"? I can't
> imagine VTL mode making any sense for 32-bit, but maybe
> I'm wrong! :-)

You're 100% right, appreciate your review very much :)
Will tweak this in the next submission.

-- 
Thank you,
Roman


