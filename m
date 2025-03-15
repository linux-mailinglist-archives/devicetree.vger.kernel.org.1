Return-Path: <devicetree+bounces-157745-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 63C92A62360
	for <lists+devicetree@lfdr.de>; Sat, 15 Mar 2025 01:49:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8872917F7A5
	for <lists+devicetree@lfdr.de>; Sat, 15 Mar 2025 00:49:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B091539A;
	Sat, 15 Mar 2025 00:49:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="ahpWgTdZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DBA22F50
	for <devicetree@vger.kernel.org>; Sat, 15 Mar 2025 00:49:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741999783; cv=none; b=maSOphz/HPRbxJUMLU1ERjHJcy5aGM1c5T+KPUGq0Go+kXgY/wpXI3dqTVroaqDPyD/B95c/9tNs0jqw+k6Ts+NORQ27dglvl47IpDmS8T3/Eae0axe9VgL0tZbxHPCdA9CVpvnxfaKVy/f9mw0qsBgxCEmDpsCuUeRT5WVUTCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741999783; c=relaxed/simple;
	bh=EVcLkRoYjzPskNvsgLUC1U6E5af0qrbR6gcf9LQ/UQM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hhYBTLyeFXGHPQ1jZyagIVHMS0r7aH2R7axQXqhc0hFx6PqXXsQLzzKVaIzwH9DT9Bevgfl5zJxYaIsEuI4Ayu7yiFLMh9Xb7CeXeM2UBOujUXTDoTEGEtGu8qsAKCco+Op1MO9SdFiI27tS/H6NCKYmoMYdBd+zPSvna/ygy7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=ahpWgTdZ; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-225477548e1so48648165ad.0
        for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 17:49:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1741999782; x=1742604582; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=D1jM8RpZtcKZIilOJqvJ3/LMYhzoydClew6e4ccobUM=;
        b=ahpWgTdZrxepaLdjwWi6FGIjFOmg2quhTaWPIl3GLik9D8p7eQC65Hwif+AMlp1T4H
         hrrQhXL1guNdjxHtbsp7pNBAuOxpQzkHTEyp5oXXeMp6Zdwr5LxHedxoneCBfeD2WFP+
         7W5EIJ/gQzsqwYfUx9528D6z/uZvEPhcXZ2OtaYoI8KTa1XA74QKUpUVQ1XhFDRRKBdY
         vZV+Ux1HrrD0ZIqrsrNtWa4NgujnTfc3r62Ic/lhmrhz+/d71EUZXDwk1sxn24WVdlQq
         moP8q4eIG0kPCrIZeCOLBwz6dAveCcy1/fzznRJFUXZroT03Q2OhQD8w/VsGcb5pdmqc
         GtcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741999782; x=1742604582;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=D1jM8RpZtcKZIilOJqvJ3/LMYhzoydClew6e4ccobUM=;
        b=rcG1HYDoXAobfKH3JaAtc5hppvLfptcm1FfFmN0r3l8i9gHB2lMBC122/LLUr2SgsV
         umLJPsDzyye7qC40MCbG7pxJGwxcdkantrf0EvT+9pUKO8KfR4eCICMCx0LHDqXZlEu0
         m3nR5cZgEYg4orzL4IO2x3nuAs68gWRt0Yf+OXHHHvoDgir/tNUiHLpI0eCEnuDYtHL+
         vKoLP5YMQjDZKZt6fRivfN6eJgr9TYVZw5WtFQ3VGT9xSFihNXZBv0I+9JyGXt9I+EQc
         r2/C3VJdi1nD6UAVo69p9UoST9wFoLMXXDGl4RxpS8ErwZ4ksdc4EeEhbLYtCSruL8UB
         IG4g==
X-Forwarded-Encrypted: i=1; AJvYcCVgYgpU3f4h5jlNa5IrsUBxMPTZyJi6zGP04K01ece3SF8ZcrN5wlnRceT++sSxFJdfFje2zBdvYFao@vger.kernel.org
X-Gm-Message-State: AOJu0Yxt2y5eMeRBSHwdZNFVkHF7CboMwlS6CFLgh/AYk9h7gRk6lHik
	YwffO8wYq68cbgbjsnF1D1Pc265odGw6bqXhccRyVSoYJH9iezDsqnR7b3bwmQ==
X-Gm-Gg: ASbGncvpVnjIlEvxiw6K9ls/NL6rMJUGmABb4080NiYC0oOrGK+RlL19+uthbx3qRax
	xoq7sjh1CKI6/nIQeYcHAUOfzWJeGxtzulzVTjsAQqSzc/wQRMT/YhMrI1StwqgvHneC/8YTma1
	a9PFEX+F+vSVgss6r6hU5bOahETfvgOfZ9hokav48XJrA+rGV3i4Thcp2t4aSIE72mtm9+GzW9f
	edSjxYqGDem5wUK1xCdcYPsYiHEp86zT8BXqGHqFgbFcMpp8FlYPUYNuoBoqKqbbVm5A3tN/Q8r
	cgGtU0uLxAmiPJxEa87LsnLoQO2tdxXCJ9wPYqKZrLF45Qgxm5fvYNiI9L4rBfuUxRrqaVO/SWu
	WpZcOPQLVfGoJHJPy+RIM/0PvDFuhsVDqxT0D/b0DFUZ0zTm5B6Tw3w==
X-Google-Smtp-Source: AGHT+IEmHc6dXkowj/KC6TLkI13gyY8Emlnd81lhhSStCWu+Bw/F/Vpl30+Ts5hmEGYnRZqPPjqDcw==
X-Received: by 2002:a05:6a00:3d0c:b0:736:6151:c6ca with SMTP id d2e1a72fcca58-7372234b8f3mr5799632b3a.4.1741999781372;
        Fri, 14 Mar 2025 17:49:41 -0700 (PDT)
Received: from ?IPV6:2a00:79e0:2e14:7:1790:6e62:92ba:cb2b? ([2a00:79e0:2e14:7:1790:6e62:92ba:cb2b])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73711529397sm3501714b3a.22.2025.03.14.17.49.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Mar 2025 17:49:40 -0700 (PDT)
Message-ID: <914a0df4-96d0-4cd4-ac87-3826fa9c1440@google.com>
Date: Fri, 14 Mar 2025 17:49:38 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/5] Add support for Battery Status & Battery Caps AMS in
 TCPM
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Badhri Jagan Sridharan <badhri@google.com>,
 Sebastian Reichel <sre@kernel.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Len Brown <len.brown@intel.com>,
 Pavel Machek <pavel@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-pm@vger.kernel.org, RD Babiera <rdbabiera@google.com>,
 Kyle Tso <kyletso@google.com>
References: <20250312-batt_ops-v1-0-88e0bb3129fd@google.com>
 <20250313-determined-wild-seahorse-f7871a@krzk-bin>
Content-Language: en-US
From: Amit Sunil Dhamne <amitsd@google.com>
In-Reply-To: <20250313-determined-wild-seahorse-f7871a@krzk-bin>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Krzysztof,

Thanks for the review!

On 3/13/25 1:50 AM, Krzysztof Kozlowski wrote:
> On Wed, Mar 12, 2025 at 04:42:00PM -0700, Amit Sunil Dhamne wrote:
>> Support for Battery Status & Battery Caps messages in response to
>> Get_Battery_Status & Get_Battery_Cap request is required by USB PD devices
>> powered by battery, as per "USB PD R3.1 V1.8 Spec", "6.13 Message
>> Applicability" section. This patchset adds support for these AMSes
>> to achieve greater compliance with the spec.
> Which board uses it? I would be happy to see that connection between
> batteries and USB connector on the schematics of some real device. How
> does it look like?
Any board that uses a USB Type-C connector that supplies power into or 
out of a battery while operating in sink or source mode respectively. 
The VBUS is connected to the (battery + buck boost IC's CHGin/Vin) or a 
companion IFPMIC connected to a battery.  In our board we have USB 
Connector <-> IFPMIC <-> Battery.

Thanks,

Amit

> Best regards,
> Krzysztof
>

