Return-Path: <devicetree+bounces-44097-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 91B3C85CB47
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 23:59:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CC9221C21A79
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 22:59:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD160154431;
	Tue, 20 Feb 2024 22:59:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="Gj1c8hCc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f52.google.com (mail-io1-f52.google.com [209.85.166.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E5F154429
	for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 22:59:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708469955; cv=none; b=UDqEPNlbOyEhGq+bJHG56lAfdzGrKprXoBfmsEGI4/1Yw51zYPI9dXCsV+emmzmMj3GdQxqvaoLQdo09W/Ssvh6K5tXlNsTGccezt5p/dtL+0RDsRFSiEMwPup/Vmo/9/Av2TcjoDYk9/Vulab4l3As9VSg6UyfmIRu2d7YDh1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708469955; c=relaxed/simple;
	bh=r0q7C3BTXQWVoAF7et7PmO58LjUv8JMMw/dJkBUXwvM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Cs+/gNjcJVHzUf6enDHyB0NVytysLXedvUiPeHVGvVGGevXsP5DiHE/8cHoypbXjOzbiQn8AoakkZuI7Kou0kcPCsYlpOOi3Lsxd4dOKZAe52VLvJEa8K6NYEMYIM14LCW+ec5nI0qxQZqVQzRvASMafo/YHoQw3824GGOWRh7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linuxfoundation.org; spf=pass smtp.mailfrom=linuxfoundation.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=Gj1c8hCc; arc=none smtp.client-ip=209.85.166.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linuxfoundation.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linuxfoundation.org
Received: by mail-io1-f52.google.com with SMTP id ca18e2360f4ac-7c00a2cbcf6so44426939f.1
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 14:59:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1708469953; x=1709074753; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8K9aXU3q/65GO6Sm64RSpJezMgpW/RCj7oX3cxUfRkg=;
        b=Gj1c8hCcYSd4okPF+vUnyV3bJ5FryzBylMcTH5n6+MGQiBOxOc5VTjkpqZ+ex1Vido
         3AtQ4Kxvgt7naVBRIagjV+wMsve3jGBnMHsYEUHhUClCGshddZSvK77PD+Y0NJpn8s6t
         d0ntAoMmVCHB4qfFwbnniFSXMuKyzVHxhIf/o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708469953; x=1709074753;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8K9aXU3q/65GO6Sm64RSpJezMgpW/RCj7oX3cxUfRkg=;
        b=mthj6xFwYBRtmTs1GucegQ3ljuh+ifF8eDNz+6lDr+j69Kaz6PPP2Th/aVT0myMDfA
         ei+o55GZ28jlFpw75pGcGIyf71LBX5AzRbElsZRNZL2ziBmuov+m3tifdpMwE87W/8YF
         qM7CWwvEqF1EhDmvJCcNRijzRfbgfFDe53r4sOy/Dz5ujSYY4rddwdIV8I6v8b6PtSmo
         yMoudgFF/YUHEJmfTyjNXg2FGeFENKhtEEJtelBTvrlGUQXfXFtatYbSDKi763mxKu9r
         HAQsdJkDnTDNCoZGuZeDVg4vGZtrgrRCqQcrNtbsYxYNdqa+BWEP6ihz+s8g1WqlA9mI
         oGuA==
X-Forwarded-Encrypted: i=1; AJvYcCXxD3SJqTB+MGdFEtT3h+LIcCQSDpjo/q/TlsQSZ03/uKxL9uTIUvahMHzJMy6SPpkJCrNlmKfH2ICddcxSKUYUtLuRXc3w8JGkdg==
X-Gm-Message-State: AOJu0YyJF/mFcrKNk+isK1sVdt9NVC8ltd80vjKplx9p3towYOStfUeT
	tk0Oe4aU3nh1T6Wr+5eVIPg2/wE38Kh9T760U4SMBcLSUjGDJ2ABypm4m5zjQlY=
X-Google-Smtp-Source: AGHT+IHZpeFeP6L7Ans4kMahbW2XFNoZzvvWR3gSQCybe4GM0oe5Uc1SPG4SLL1RTSnn2zX+eOQezw==
X-Received: by 2002:a05:6602:2cd6:b0:7c4:9e06:b9c8 with SMTP id j22-20020a0566022cd600b007c49e06b9c8mr15482650iow.2.1708469953307;
        Tue, 20 Feb 2024 14:59:13 -0800 (PST)
Received: from [192.168.1.128] ([38.175.170.29])
        by smtp.gmail.com with ESMTPSA id b7-20020a5edc07000000b007c45ab3dc34sm2483821iok.29.2024.02.20.14.59.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Feb 2024 14:59:12 -0800 (PST)
Message-ID: <cbd29a01-d8db-4052-9d95-1e5357b0c10a@linuxfoundation.org>
Date: Tue, 20 Feb 2024 15:59:11 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] selftests: Move KTAP bash helpers to selftests common
 folder
Content-Language: en-US
To: =?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= <nfraprado@collabora.com>,
 Laura Nao <laura.nao@collabora.com>
Cc: Shuah Khan <shuah@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, Miguel Ojeda <ojeda@kernel.org>,
 linux-kselftest@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, kernel@collabora.com,
 Shuah Khan <skhan@linuxfoundation.org>
References: <20240102141528.169947-1-laura.nao@collabora.com>
 <5b14aa28-a239-4204-a8ce-8d37f19b724b@notapiano>
From: Shuah Khan <skhan@linuxfoundation.org>
In-Reply-To: <5b14aa28-a239-4204-a8ce-8d37f19b724b@notapiano>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 2/12/24 08:01, Nícolas F. R. A. Prado wrote:
> On Tue, Jan 02, 2024 at 03:15:28PM +0100, Laura Nao wrote:
>> Move bash helpers for outputting in KTAP format to the common selftests
>> folder. This allows kselftests other than the dt one to source the file
>> and make use of the helper functions.
>> Define pass, fail and skip codes in the same file too.
>>
>> Signed-off-by: Laura Nao <laura.nao@collabora.com>
>> ---
> 
> Hi Shuah, any thoughts on this patch?
> 
> It's gotten Rob's ack, so I take this will be merged through your tree.
> 
> Thanks,
> Nícolas

Applied to next for Linux 6.9-rc1

thanks,
-- Shuah

