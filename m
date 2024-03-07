Return-Path: <devicetree+bounces-49191-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E639875324
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 16:29:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 174AF2891C2
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 15:29:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 658B612F36C;
	Thu,  7 Mar 2024 15:29:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="ctgMptqN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D02212F5A0
	for <devicetree@vger.kernel.org>; Thu,  7 Mar 2024 15:29:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709825372; cv=none; b=KV6ebY+dhBPHyzSkSJWs04QqjPjq9xK4l2QoHL2Eq/Izjj2nJ2N61TffPZm2nyPtmUhBPS3+YxEt+tMggmt5Gg5lOGyoY2DwPYpH04uuD5PwJYLh0XmzR0xbHe8V+cLuFlYaXon+db5wrMUhoKA1EXbaZuNtUG2lJFfTBz4tONk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709825372; c=relaxed/simple;
	bh=/CwM10SLvVd0qeLIDk7fSDRyhLofwyJ6hkYcbEkvGBs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=a2bGHGBnQKZ9A8Wteicu1EF5FdwjC/4nx6mbmAUY5noiSV3LW7N9yP1I+UsEksNvdDRGw/DnslE544f1iVWrWQgGz+ndPxlzLE7hX2FkJHq+LbYiU8x7uUTpbILRNqox214gZfvxvgspLgTcAdhEPjjygtULXE+rfkQg3hrDloE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=ctgMptqN; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-412f62edf25so7649965e9.3
        for <devicetree@vger.kernel.org>; Thu, 07 Mar 2024 07:29:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1709825368; x=1710430168; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=X4rA7glPrCrKwr981a28u15ca/pzff2LojpS0g84uXI=;
        b=ctgMptqNcuDfgmlLEsDRLPR12V3i3DxbmO/UcFyVmvKjM1HGMH9MHW2U3HOQpgCnlZ
         +5ZobBhHtfu2GbxWFq1WR5YWylV1mMNrZoAXdSzOItn4aRbK6jTO4a55xhGgWFHMuI4J
         kxjicZxKvv48aKdxxSGL2yzsDqszbQP4zOwBXhA4Y3klHEwlFpWWEXIvHUwLE29YVgyt
         tGaBTw0aqQ182m/6TU+azNIWDY+1NcU3NUdMXl1S7LswcKg5HIOu8YQtJwO8G2yfCWiJ
         Ysbi2PaAxbKMmOADchHMzzZdQDm2OrzvCYtvisiCrUYN+NwcmNK18rhp8NyWSROR//US
         uueg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709825368; x=1710430168;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=X4rA7glPrCrKwr981a28u15ca/pzff2LojpS0g84uXI=;
        b=rGnBSvX/gpyyKcL7r2NH0NGOXHfgLaTeobfH/DBXNNP6aFr3+dz5wa7Y2FRE8EFdvt
         mp5jzQFNVqZEkss/usfVxCAAO/YP5B0RFe4NSPRHUv9VvFdBFS7eBq/8GRxQaamBpevW
         w4q+gJjMQcGJv4a3guaEYrZCF7U2rjiaSyzWnSSQPKW6VakAIKDhjog26aO1LNEtUN2L
         CSY56cD97+OF8ofIRB1xijtCf3jdSSMErwFLcdHqDcZEcAs45lfcENSzGr18u0oLV1rw
         O3jx1I/HNbysdhL0zd2WYbou2Vx0zyeQmtXCmQV4V0Pgk4JhN678bzLW1vPW2zBD/j2M
         SqZg==
X-Forwarded-Encrypted: i=1; AJvYcCVLF3cxBq7JSpk0HMhCFtEQ+v7M+D3r0or6XFON+yoMIQ0G4qgDeXvmEdya9gNcKfYKwzihzRqhNNAuUvisLfgL3x+HWXQzKZE9mg==
X-Gm-Message-State: AOJu0Yy6F5ata1vqkAYh/MR3aT9RLRA/YJJaZd3nz3wYoQFcbE0q9HTe
	34sZv8rRD3HmO2pd1NwygsOmPRSKWayDzgb8qGuDU+ensPRDOl6Z1xsVC8Gmp2Y=
X-Google-Smtp-Source: AGHT+IGEMjZrwSX4KlE3+S4Mx14JfUgPt2iuZklnN3V5j7oUm9gfxTUCLTshjWeoxPKz1UsSxB7+iA==
X-Received: by 2002:a05:600c:450e:b0:413:1013:cc7f with SMTP id t14-20020a05600c450e00b004131013cc7fmr1576665wmo.29.1709825368172;
        Thu, 07 Mar 2024 07:29:28 -0800 (PST)
Received: from [192.168.108.81] (freebox.vlq16.iliad.fr. [213.36.7.13])
        by smtp.gmail.com with ESMTPSA id w14-20020a05600c474e00b004131310a29fsm1366528wmo.15.2024.03.07.07.29.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Mar 2024 07:29:27 -0800 (PST)
Message-ID: <2f588948-0261-4985-91e8-d5060e673cd9@freebox.fr>
Date: Thu, 7 Mar 2024 16:29:27 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: net: wireless: ath10k: add
 qcom,no-msa-ready-indicator prop
Content-Language: en-US
To: Jeff Johnson <quic_jjohnson@quicinc.com>, Conor Dooley
 <conor@kernel.org>, Kalle Valo <kvalo@kernel.org>
Cc: ath10k <ath10k@lists.infradead.org>,
 wireless <linux-wireless@vger.kernel.org>, DT <devicetree@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Pierre-Hugues Husson <phhusson@freebox.fr>,
 Jami Kettunen <jamipkettunen@gmail.com>,
 Jeffrey Hugo <quic_jhugo@quicinc.com>
References: <14daa98e-7fd3-4ebb-87bb-5d2c1fba679f@freebox.fr>
 <b8de96c7-cbb6-4a09-a4d4-2c11b3ab3e01@freebox.fr> <871q8wk7o3.fsf@kernel.org>
 <3392f356-7b19-483d-b9f8-3bd84068fa52@freebox.fr> <87wmqoilzf.fsf@kernel.org>
 <20240229-ageless-primal-7a0544420949@spud>
 <c48ead11-0e2a-4066-b324-84f802215c9a@quicinc.com>
From: Marc Gonzalez <mgonzalez@freebox.fr>
In-Reply-To: <c48ead11-0e2a-4066-b324-84f802215c9a@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 29/02/2024 20:46, Jeff Johnson wrote:

> On 2/29/2024 10:40 AM, Conor Dooley wrote:
>
>> On Wed, Feb 28, 2024 at 06:37:08PM +0200, Kalle Valo wrote:
>>
>>> Marc Gonzalez writes:
>>
>>>> As mentioned in my other reply, there are several msm8998-based
>>>> devices affected by this issue. Is it not appropriate to consider
>>>> a kernel-based work-around?
>>>
>>> Sorry, not following you here. But I'll try to answer anyway:
>>>
>>> I have understood that Device Tree is supposed to describe hardware, not
>>> software. This is why having this property in DT does not look right
>>> place for this. For example, if the ath10k firmware is fixed then DT
>>> would have to be changed even though nothing changed in hardware. But of
>>> course DT maintainers have the final say.
>>
>> I dunno, if the firmware affects the functionality of the hardware in a
>> way that cannot be detected from the operating system at runtime how
>> else is it supposed to deal with that?
>> The devicetree is supposed to describe hardware, yes, but at a certain
>> point the line between firmware and hardware is invisible :)
>> Not describing software is mostly about not using it to determine
>> software policy in the operating system.
> 
> FWIW I've compared ath10k to the out-of-tree Android driver and there
> are discrepancies in this area. I've asked the development team that
> supports ath10k to provide a recommendation.

Hello Jeff,

Have you heard back from the dev team?

Do they confirm that an issue involving missing MSA_READY notifications
was ever noticed?

What devices were affected? (All msm8998? A subset of msm8998?)

Was the issue eventually fixed?
(Probably fixed, otherwise newer devices would be affected)

-- 
Regards.



