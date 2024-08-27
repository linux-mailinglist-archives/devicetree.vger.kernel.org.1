Return-Path: <devicetree+bounces-97124-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B6BFC960CF1
	for <lists+devicetree@lfdr.de>; Tue, 27 Aug 2024 16:05:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 69A7B1F23BE7
	for <lists+devicetree@lfdr.de>; Tue, 27 Aug 2024 14:05:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FA021C4612;
	Tue, 27 Aug 2024 14:05:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="f0wsI+aC"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD41A1C1725
	for <devicetree@vger.kernel.org>; Tue, 27 Aug 2024 14:05:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724767508; cv=none; b=tq2Cechu1KWanc3sKE/k4Gi/ChswT06iHyTLJ1jUDwGMvl9i0O0NnlxNqukETrADLraWTT9cv2V6ycCzED3HQzycP4xgPa+G1fyJPjz+oYYoYX3cBRTHOxIUugwWAYw7NaGRx9khXSYR63vYzXQ0V+zbTpANzXTt8IPC6DNezyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724767508; c=relaxed/simple;
	bh=bM4fxNbrY/+xVU8fyQSBkQzkgoPZsh5qN3u1v0lkPNQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=afjkfnT02BZGcIFJnKsAMmcYtu6Hz8KLRMnG/7tnL4HtLs5O2fBis3vK4xK0Rf+kKPr0woHLjytXbAlrF9PLDoPMihiSbir7Brt6CA+5Z0ovHBIZJVdqGVM2BPGJT9Zb8Yn5FmB4Ghn8P9Z6oXupoUNtQrJBROxFJy0/+PJTISw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=f0wsI+aC; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1724767505;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=o/+4z3eCYQ3ifiWxh2Mo64fSEyLTY0srxIMSGlgXIu0=;
	b=f0wsI+aCnyVCs9y5QYruZtqR5vEiINYu1Xgq+jQ/7dATouu8B+TkWKwZ6fqMyp5j/y7pjN
	2BKFegidSHoxi4zaIOuSs5/FShDZTk1ICVGkpzTq3646XJXjRivG04ynCtO31cfvUkTadn
	vkSDW9PucLftdffePUo5j16i4AsHyxU=
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-298-04p4MyfqOHqD9rh7KkHJZw-1; Tue, 27 Aug 2024 10:05:04 -0400
X-MC-Unique: 04p4MyfqOHqD9rh7KkHJZw-1
Received: by mail-ej1-f72.google.com with SMTP id a640c23a62f3a-a8698664af8so711930766b.0
        for <devicetree@vger.kernel.org>; Tue, 27 Aug 2024 07:05:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724767503; x=1725372303;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=o/+4z3eCYQ3ifiWxh2Mo64fSEyLTY0srxIMSGlgXIu0=;
        b=pig0hB2XSjd3oAdNlJV+VB928gkaF0kjj1hugyy+iWU/uwwSJO1x10R4fmV0wejE49
         mjMHYjIFQIZHaodh7X2qwQD3grkJIEldVISwV9YDAp0cmbhvUqVSfPNt+xpvtTv/8R+9
         TX8WLreVed00cbNCbJ2fg7f+MltR82x3VIrhgj0FIdg6l3vmwUoCgNbNy2C5yUekyoia
         sUdFxFWXXqvyJkTNNoZ75hyCPYxJ4JAL1pNJRz7ZQi38xNFF4jQtqX5ChGD3pv4Lobz+
         mosZxi3ryoHWvwi/tm03ux6/QNfvoXVGcljeBEyLvMfw3iOTmOq3eNLwSpGyaW6+9Iin
         RF3w==
X-Forwarded-Encrypted: i=1; AJvYcCXgpegMRc8NJkK6MusRCbPcpxSMsK03CHGqDm1hOn2qeUI1llM60a9dzJPs4vDHqFoavmCAAnLH5ebM@vger.kernel.org
X-Gm-Message-State: AOJu0YxMbGz+NvvtcUTU1VK4QwSpozEAnjQLbpQV6PJcBf5n7hwZW1Ay
	/vQm1vnajvWyFkHNaTE9aUn8nByXm8XdVKkCjojMDuEecDxqZtV/Ziik+uWtedKjlTV7xDYkkCy
	W0vzFNj2Ru0SaqeEH5hE4yzwxC4Zl+OGtdy2txOVe6c49rXGvmBoQpMJvK0A=
X-Received: by 2002:a17:906:fe46:b0:a7a:130e:fb6e with SMTP id a640c23a62f3a-a86e297a558mr332225566b.15.1724767501459;
        Tue, 27 Aug 2024 07:05:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFPFM6fsuNqAoz9t1ZCb79CqPD0sS5dxWyKrPwS3nP6u25sZDYw8Fpsre6BrGY9O9j4ICI+Jw==
X-Received: by 2002:a17:906:fe46:b0:a7a:130e:fb6e with SMTP id a640c23a62f3a-a86e297a558mr332217866b.15.1724767500740;
        Tue, 27 Aug 2024 07:05:00 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec? (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl. [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a86e582d54dsm112656866b.129.2024.08.27.07.04.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Aug 2024 07:05:00 -0700 (PDT)
Message-ID: <56292842-2071-4c26-a380-c6ae1488361a@redhat.com>
Date: Tue, 27 Aug 2024 16:04:58 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/3] platform/surface: Add OF support
To: Konrad Dybcio <konradybcio@kernel.org>,
 Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: Rob Herring <robh@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jirislaby@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Len Brown <lenb@kernel.org>, Maximilian Luz <luzmaximilian@gmail.com>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 linux-serial@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-acpi@vger.kernel.org,
 platform-driver-x86@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <quic_kdybcio@quicinc.com>
References: <20240814-topic-sam-v3-0-a84588aad233@quicinc.com>
 <20240814-topic-sam-v3-3-a84588aad233@quicinc.com>
 <ZszrjQChQ2aS5YjV@surfacebook.localdomain>
 <4dab4f36-309d-4b95-8b01-84963ca08d16@redhat.com>
 <cdd77270-3189-4fa9-9b4e-e443db5fb583@kernel.org>
Content-Language: en-US, nl
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <cdd77270-3189-4fa9-9b4e-e443db5fb583@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi,

On 8/27/24 3:52 PM, Konrad Dybcio wrote:
> On 27.08.2024 11:07 AM, Hans de Goede wrote:
>> Hi Andy,
>>
>> Thank you for the review.
>>
>> Note this has already been merged though.
>>
>> Still there are some good suggestions here for a follow-up
>> cleanup patch.
> 
> Andy, Hans
> 
> Is it fine if I submit a fat "address review comments" patch, or should
> I split it up per issue?

I would say use your best judgement / something in the middle.

IOW start with a fat "address review comments" patch and if
specific parts turn out to be somewhat involved do 1 patch
with smaller clean-ups and split out the involved parts in
a separate patch.

Thanks & Regards,

Hans



