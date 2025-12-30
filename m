Return-Path: <devicetree+bounces-250579-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BB48FCEA2F1
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 17:36:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 534983022F34
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 16:35:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABF6A302151;
	Tue, 30 Dec 2025 16:35:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ji9qwTpO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D21D92288F7
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 16:35:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767112558; cv=none; b=f2m7oR14qHmi3mFpjEAC/sKX7ESFQpLXAME+memJ4kzIf4pRsXTkQ2W5lYBu15H2dfNid+AoOrCh0K7AexwIuxNO/9jCtfaOsQwd+M3MyOzz7/mTOBotFBXc69ZGGsj5QMkBV0Y0LAToI/DrQad4AMCy41pv5XUCJuVZ02tX5WU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767112558; c=relaxed/simple;
	bh=1wQ/WIqwcgmKRkbPIx0yDFY45a7cXR6s67FQ4b9/Kvk=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=ktSqd2C21yKdlxeWdgaz4urElI8TEStRRhnpPehHc/oeJesKx9yWgELwfn2O1ImSoz1+eki2pq4p9rsos6NIjytGeCmry/8XUfPO/U7WFx8isSa7rw7dJkR3qqGv6EiMZaN5wiAPPudZqBJgfsr8JDO+311yXk6/PuQIu70zEfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ji9qwTpO; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-5943d20f352so10853686e87.0
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 08:35:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767112555; x=1767717355; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=lPKpQJlCeJhCd8J/11ap+widQ29YewZ9v5ztqzPCYik=;
        b=ji9qwTpOjIVYeay2OnuRJFztTd+3iTPQpQr1svfFvaui1p7LQgzUDlJLyMEu290qQ5
         bdAltO/d/iKFbPTSsbdCkz0hCABih0TUNHaUbVYehSsi9nELPEQxZLYKlI7q5mcSPHDn
         Oe8gbe9shZbr/I3xZiXzbdNy8zKkjsRtfV4Pk1Xep/Eh4hlwLsbNbzCJW94K3tXCEIEw
         BQ0ApemdkxCX0ZMtSXGvWrVcZUiWenKpB38jOs5ACCFqiaPURWRrMtTEReuFlINmqcMk
         jcwgSHRs6uAe28y7NeWDrF9h5mBGnr2cjt2dqxtJpMeJfmsKfXU6C4TVxscLpRVNRfdR
         gHLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767112555; x=1767717355;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lPKpQJlCeJhCd8J/11ap+widQ29YewZ9v5ztqzPCYik=;
        b=TMEHQKldHDRsTR9s28gZCWYsFY0NAQCIPH49u+EWleZ36kwNFuH7mbKglLPWQQwHTf
         M/XKBk/sioB3sDxUeVdWOp0f2ZK1JX37DOgvIKbd8jIurrhE1XdBjn9uNqqoLk8B+pRS
         8BH3edfdLvlMHPp8q5Ys0eN7iVFE5okOsN1rm51+ycb1zGT341icqiqsZyVDWwIpXsEr
         LIYcFOfxigXViOs8eZqwsH+gaOePjIYTw6LJQyu9o1k6/ZbVsT5COHhFDbsWHNTKNMXH
         x5PjqV1PS6DzONDxEmnSzr36mpxKsuAECtYo7+K8DV57jStoZPVpHjU0X0MRR2fkv0C5
         1bhQ==
X-Forwarded-Encrypted: i=1; AJvYcCUXn2O9VtjHGKZVDZuNaWqlhHUXzGO59ahLKdCOW4b157bDMPDKgd5sBP4WZ4QspXQzSABSvc0fjCh1@vger.kernel.org
X-Gm-Message-State: AOJu0Ywn3tFob8GxtaRuPBiZM+H7ao83fhyNKz+0n+gFvg0yYHgTGxTe
	TC/zqY9MtAv+JMobvt7g5WZTzHbBk17SpEWTNNaQ0URU3Pb5A5owDRpe
X-Gm-Gg: AY/fxX51Fb5lv52wFCVO0xX1NwexDfbAOuFRt1/r3UUeYmcNgtUTYlzbfmJ0q9NJfJI
	27YFqjNpOZ7qZk4/6D8c5RCyuSMmDKbxUN5ob8cThweKzlkynUzGaCjBBv+ZZ0fsDfPMG3mZJwK
	bMlHpm5CA1UtgXxN7pWDSQsjH0nKmAGNxSKNY0kMbHPaI5UFrYWAWQtxOV2zupLoIgRRBnmGDj7
	qdkSf/z8iup/3Wm+HMuitaarjV1PzWgduvOUZe/CEo1/4zFGCf6x9rtR/yzzIzaGVabgyByertp
	qpAAwIsZFJF5FWLxVqaV9ojwbJebaR3UaZfZy3+xbBUhvoI1yqRhaDGq/RMozIkcGECLN0jtY6e
	u6ojl+La4bFZlQ6v1jDpkMHNE/3z1s/gT0woQqXeivpXpxaG30bt0o9ouUayjLLD4Rwj66gP+KS
	c+gyZthaoXakAZ9qDFHixGSMK6RXJvfEGvXA==
X-Google-Smtp-Source: AGHT+IEh3MZf6CTJOzZeHGCYU9GIDpW05Uh+YS/H0es49h+fagK6eB66vYua5uI+HyG3ZwOGSMS1kg==
X-Received: by 2002:a05:6512:b05:b0:59a:10c1:8f11 with SMTP id 2adb3069b0e04-59a17de704emr12001326e87.39.1767112554670;
        Tue, 30 Dec 2025 08:35:54 -0800 (PST)
Received: from [192.168.0.131] ([194.183.54.57])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a185d5e32sm10121302e87.8.2025.12.30.08.35.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Dec 2025 08:35:54 -0800 (PST)
Message-ID: <8022bcc7-c47d-44f8-b5b0-d2ff74ad9efd@gmail.com>
Date: Tue, 30 Dec 2025 17:35:52 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Jacek Anaszewski <jacek.anaszewski@gmail.com>
Subject: Re: [RFC PATCH 0/2] leds: Add optional instance identifier for
 deterministic naming
To: Jonathan Brophy <Professor_jonny@hotmail.com>,
 Andriy Shevencho <andriy.shevchenko@linux.intel.com>
Cc: Jonathan Brophy <professorjonny98@gmail.com>, lee Jones <lee@kernel.org>,
 Pavel Machek <pavel@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Radoslav Tsvetkov <rtsvetkov@gradotech.eu>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-leds@vger.kernel.org" <linux-leds@vger.kernel.org>
References: <20251228182252.1550173-1-professorjonny98@gmail.com>
 <761d6573-3751-47fb-9b0e-8063f3cecf76@gmail.com>
 <aVJ0c3injbP7yRIJ@smile.fi.intel.com>
 <44ffa209-48b8-439e-a1ce-f9eb2aeb2f26@gmail.com>
 <DS0PR84MB3746F2BB2CB8381BA02013059FBFA@DS0PR84MB3746.NAMPRD84.PROD.OUTLOOK.COM>
Content-Language: en-US
In-Reply-To: <DS0PR84MB3746F2BB2CB8381BA02013059FBFA@DS0PR84MB3746.NAMPRD84.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



On 12/30/25 00:59, Jonathan Brophy wrote:
> 
>>> The problem as I understood not exactly in this. The reporter wants
>>> deterministic way of the mapping between HW numbered LEDs and their respective
>>> names. It seems it was already mentioned that current code depends on the
>>> arbitrary probe ordering. Saying this, I now think that perhaps GPIO led driver
>>> should somehow allocate a range of the LEDs and then enumerate them in
> 
>> accordance with the DT description?
> 
> 
>> function-enumerator DT property enables deterministic enumeration.
> 
> 
>> --
>> Best regards,
>> Jacek Anaszewski
> 
> That's not really the the problem I'm trying to solve but it is part of it.
> The functions are quite ambiguous at the moment.
> Having a string that  can define something custom, the fallback _1 _2 identifiers are
> high lighting the issue because the lack of options.
> 
> I have a virtual led grouping driver that this restriction will highlight the issue even more.
> with a status led on a typical oem device that indicate multiple states eg:
> 
>   - Solid Blue: setting up/ committing settings change.
>   - Pulse Blue: factory reset/ first boot ready for setup or WPS in progress.
>   - Fade in-out Blue: system upgrade in progress
>   - Solid Yellow: starting up.*/
>   - pulse Yellow: resetting/ rebooting.*/
> 
>  From sysfs i will end up with the below that really does not explain the use:
> 
> led:status:blue
> led:status:blue_1
> led:ststus:blue_2
> led:status:yellow
> led:status:yellow_1
> 
> The LED subsystem has a semantic ambiguity:
> What does LED_FUNCTION_LAN actually mean?
> LAN port exists?
> LAN cable connected?
> LAN link active?
> LAN traffic activity?
> LAN speed indicator?
> 
> Rather than making custom identifiers that are overly specific we could make
> them up from stacking qualifiers or include a custom string to add meaning.
> Would this be preferable over filling the common.h with long time gone
> devices past identifiers that are overly specific to that platform or device? we
> already have a few of them now.
> 
> Something like this:
> 
> led-lan-link {
>      function = LED_FUNCTION_LAN;
>      function-qualifier = "link-speed";  // NEW PROPERTY
>      color = <LED_COLOR_ID_GREEN>;
>      led-instance = "port5";
>      /* Result: green:lan-link-speed:port5 */
> };
> 
> led-cellular-signal {
>      function = LED_FUNCTION_WLAN;  // or new LED_FUNCTION_CELLULAR
>      function-qualifier = "signal-strength";
>      color = <LED_COLOR_ID_GREEN>;
>      led-instance = "modem0";
>      /* Result: green:wlan-signal-strength:modem0 */
> };

LED naming standardization was introduced to avoid multiplication of
custom LED names for the same functionality. Allowing to define parts
of LED function in plain text would bring back that old problem.

Both function-qualifier and led-instance are not telling anything at
first glance. Their purpose would be to define meaningful LED function
name, thus we should rather think of introducing more advanced mechanism
for composing LED function name, instead of extending the LED naming
pattern.

That could be preprocessor macros that would concatenate standard LED
function name segments that would be still defined in common.h, which
would allow to keep the standardization.

Below example shows how some of your exemplary LED names could be
created with that (for numerical postfixes function-enumerator would
have to employed in addition to those):

// These ones already exist in common.h
#define LED_FUNCTION_WLAN "wlan"
#define LED_FUNCTION_LAN "lan"
#define LED_FUNCTION_INDICATOR "indicator"

#define LED_FUNCTION_PORT "port"
#define LED_FUNCTION_CABLE "cable"
#define LED_FUNCTION_CONNECTED "connected"
#define LED_FUNCTION_CABLE "cable"
#define LED_FUNCTION_LINK "link"
#define LED_FUNCTION_TRAFFIC "traffic"
#define LED_FUNCTION_SPEED "speed"
#define LED_FUNCTION_SIGNAL "signal"
#define LED_FUNCTION_STRENGTH "strength"
#define LED_FUNCTION_MODEM "modem"

#define MAKE_LED_FUNCTION2(seg1, seg2) seg1"-"seg2
#define MAKE_LED_FUNCTION3(seg1, seg2, seg3) seg1"-"seg2"-"seg3
#define MAKE_LED_FUNCTION4(seg1, seg2, seg3, seg4) seg1"-"seg2"-"seg3"-"seg4

Then, when called as below:

MAKE_LED_FUNCTION3(LED_FUNCTION_LAN, LED_FUNCTION_CABLE, 
LED_FUNCTION_CONNECTED)
MAKE_LED_FUNCTION3(LED_FUNCTION_WLAN, LED_FUNCTION_SPEED, 
LED_FUNCTION_INDICATOR)
MAKE_LED_FUNCTION4(LED_FUNCTION_WLAN, LED_FUNCTION_SIGNAL, 
LED_FUNCTION_STRENGTH, LED_FUNCTION_MODEM)
MAKE_LED_FUNCTION4(LED_FUNCTION_LAN, LED_FUNCTION_LINK, 
LED_FUNCTION_SPEED, LED_FUNCTION_PORT)

would produce below:

lan-cable-connected
wlan-speed-indicator
wlan-signal-strength-modem
lan-link-speed-port



> // Network qualifiers
> "link"         // Cable connected
> "activity"     // Data transfer
> "speed"        // Link speed indication
> "duplex"       // Full/half duplex
> "mesh"         // Mesh node
> 
> // Cellular qualifiers
> "signal"       // Signal strength
> "activity"     // Data activity
> "registered"   // Registered to network
> "roaming"      // Roaming status
> 
> // Power qualifiers
> "charging"     // Battery charging
> "low"          // Low battery warning
> "present"      // Power source present
> 
> I'm just really trying to find a way to make the naming more descriptive and I'm
> open to suggestions.
> 
> regards Jonathan Brophy
> 
> 

-- 
Best regards,
Jacek Anaszewski


