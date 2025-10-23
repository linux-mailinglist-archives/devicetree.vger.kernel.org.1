Return-Path: <devicetree+bounces-230133-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B2159BFFF5B
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 10:37:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6CAF53ABC22
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 08:37:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F35DB3016E8;
	Thu, 23 Oct 2025 08:37:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="r7AZYcWu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 196EB301484
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 08:37:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761208674; cv=none; b=OzXs4B2UAB4jog1KA2bAYMxRzdHYxiu08ciCGOn5/2Gg89nJruGhTs2hUjANcO3d+CS1SQfOPwPmbauSVqo2YUSbxHN5BgBrWZGCmvMxfTFYkxtNr2fNbG4VtDDLjKVZExDfPOA+AIRwkPW7e8Hbp87paJIHwwTUnC1V0sWB0sU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761208674; c=relaxed/simple;
	bh=VZznkxUfOBBjwHVbcPT69mPGH8TLJ3qlknTOpaEzyh8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YnftiOGXy7iMmfqxHaU0gIymgkLucFhbV+i88sQP1lxTK3sSHmhjT3GZeFhmV8HsxpRISgQ8dJdEkW4vEqDbvFS0bT/c885BJNQBimJ7S0m3ve86IkZZyEbQZO08Nim5DjtVRiBvxPA/PE8w5UsFsXckQRF8aYLzC3H7xO9cdqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=r7AZYcWu; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-b3e234fcd4bso98931266b.3
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 01:37:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1761208671; x=1761813471; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kylES56a95Zr7XFZY/19713ISQDXB6XnworKEnMUaPo=;
        b=r7AZYcWuK1BvlxQDGTIu2Y2lA+oWbUQPvEX42vMD+1hP2Si5AzoVdZm5lvwXlZq47C
         MfdxUCGIGORJZIZ+AECc18BXtmkazScbzkYG10K4ELSvvOHf/wP0Ixf8vGf/m6jy4Rs9
         va9OFzrytZgALeeK473tWrn9a9KYXjx3o1konxcmBCrZ1DOQHRNaU+1OGmffKCJe2xOF
         5KV51PECPj6wf34HvyMVL+Z8k2d8nf0qNzi181NsNfr70uAy0GvJvnlU4au9jtAjzUYh
         XSx+PDRJccKZmUidcSmCCjDYtHNkV7FzWg0q6Bx2abuURC99Jl/NZcvGzgDTbeJ8EZVJ
         Jd2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761208671; x=1761813471;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kylES56a95Zr7XFZY/19713ISQDXB6XnworKEnMUaPo=;
        b=qLPU2X1at6J6to1Zga+H1KHZ1f+U6Fn5L/Jir2Wa2PYKusAdiu/cdO/mXSukhTh99Y
         HHwT0XCLAM3HlBPOrbhtmBnWWrdF75gdOAmTpqtTJqaDACwFisbdRpNEAWcIQ8J57kQp
         y64RV91yrcALiEtZIuNUX26rFZffMlNEDicrMl6BC2TlmSycB/zCspzA4odUHQcNhZjU
         SptXym90Q4155sJznr27ERXfciFQDWi8tmTDqBtbstoTkcRFW4YQb8RZqC6TB4Kr9B9l
         bTBiwt7D7HSEzT8bmFo/Vg2Fsa6+Ofzgz56kqb5CmDyWwN3UiSqUCux7ovywk/GQ1AOa
         vUEw==
X-Forwarded-Encrypted: i=1; AJvYcCUbG+Dv25BvcvZdbLtrTQXlHM4Axlsl+5je7inVu/RyhqDoA5U/+IMarjstL2aKNJxN58/tcurPPory@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1ToBDfRQPEg1DoikBu/Y0om/7n1SqELhUqJMIrA8/yze3rCXl
	3KAY34LXZu232xPi6tw00nEgj1G5ReIrjysjPmq31bcUUaPOU87jWnCotC7MEMlcW3g=
X-Gm-Gg: ASbGncthcGzqfOHtj8yN8Ws6rxZ69OGDPh8MVOyF8a9AYzVD1lpWyXvt+tYd8S0gbOh
	nF0gzi9Eiri1h6UWf3GAzFnlB3s/VEqO5ScNYAwN6Yf7DdiPEFhfXqFn5WWbtSlsArvwXd34LbM
	sZ3kO4TjIut7YKlOvxvN5nwglewgL02PmleWV8UevtNYbq99U/1uJjWqcqfV4aRQFKDlrzqo/Iv
	xNFfCzyhazBA8FUiyaoyJHAtACtniUzaDpNOrsEFXFngstfzEFcpSUPVMXLsLSzK9tSyOtxhWk1
	T5Xh8mVnn/87O8Ba8uov/8Orq2ZTSFxPZFqfTWxXX0tpxL0mcQjdmIFDjBdztoxb9CNAjhOkb7k
	v0Hk2lSDI6mRu2A/QeuhB2n4s7711+WG7kXtVPWNG1CxA/sH65UUyjxrssg+/zjJYJSitadHzla
	UqJvi7eUnc1h5yzPnCCErlxQXIm3/g+U6p9alG/xCplslFXMIcHGtxEWU2uQ==
X-Google-Smtp-Source: AGHT+IEF207BQMo0Dq88FSaSGXgKTLyR81jf+3IPYp4cFuUOJkWkUOJ0k7niMWfu/ZSG5bxpQZi0ZQ==
X-Received: by 2002:a17:906:c2d0:b0:b6d:2c92:a5f with SMTP id a640c23a62f3a-b6d2c920ademr642397266b.3.1761208671128;
        Thu, 23 Oct 2025 01:37:51 -0700 (PDT)
Received: from [172.16.220.227] (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d5144e4acsm151529866b.63.2025.10.23.01.37.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Oct 2025 01:37:50 -0700 (PDT)
Message-ID: <cd083217-27b1-4959-b80d-0189f178208d@fairphone.com>
Date: Thu, 23 Oct 2025 10:37:50 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 3/3] arm64: dts: qcom: qcm6490-fairphone-fp5: Add cam
 actuator
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Tianshu Qiu <tian.shu.qiu@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
References: <20251009-ak7377-driver-v1-0-29e4f6e16ed3@fairphone.com>
 <20251009-ak7377-driver-v1-3-29e4f6e16ed3@fairphone.com>
 <c1d09672-e8a4-473a-88dd-fc91e81aea52@oss.qualcomm.com>
Content-Language: en-US
From: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
In-Reply-To: <c1d09672-e8a4-473a-88dd-fc91e81aea52@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Konrad
On 10/22/25 19:29, Konrad Dybcio wrote:
> On 10/9/25 2:23 PM, Griffin Kroah-Hartman wrote:
>> Add a node for Asahi Kasei AK7377 actuator, used for focus of the main
>> back camera sensor.
>>
>> Signed-off-by: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
>> ---
>>   arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts | 7 +++++++
>>   1 file changed, 7 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
>> index e115b6a52b299ef663ccfb614785f8f89091f39d..49654f0f914fbe18080d2f55bb6877c8ab7baf0e 100644
>> --- a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
>> +++ b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
>> @@ -616,6 +616,13 @@ &cci0 {
>>   };
>>   
>>   &cci0_i2c0 {
>> +	camera_imx800_ak7377: actuator@c {
>> +		compatible = "asahi-kasei,ak7377";
>> +		reg = <0x0c>;
>> +		vdd-supply = <&vreg_l7p>;
>> +		vio-supply = <&vreg_l7p>;
> 
> The dt-bindings suggest vdd is 2.8 V and vio is 1.8 V (at least
> on AK7375, although this isn't stated explicitly..)

This AK7377 is integrated into a JHS-M15342-A2, which only takes in VDD 
as a power supply. VIO was only added to satisfy the dt-bindings, as we 
are not sure what the exact pin layout the AK7377 has.

> L7P on FP5 is 2.7 V (default) - 3.0 V (which you should probably
> tighten to the actual operating value), please double-check this

I can confirm that L7P is supposed to be 2.8V on the FP5, I will update 
the dts in my next patchset.

> Konrad

Griffin

