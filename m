Return-Path: <devicetree+bounces-65431-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6798A8BE5F7
	for <lists+devicetree@lfdr.de>; Tue,  7 May 2024 16:32:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 399D4B2C353
	for <lists+devicetree@lfdr.de>; Tue,  7 May 2024 14:23:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41113161333;
	Tue,  7 May 2024 14:18:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MJnI0WgV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6285415FA66
	for <devicetree@vger.kernel.org>; Tue,  7 May 2024 14:18:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715091534; cv=none; b=YHwKzU/Hvt907MwOxOuoaXnkOdqNDCPjWgKMJnqgTZgTHoWfLZ+MofCrJErISVatftLsWXFBcYzqeBAvYxM1RkVPYKCd9reCWcW/C/CaWUHJSZwhl0p5TE1uKfZE2smbWvPXwjtiRhxQTAh+LJjtseunq56rijTIJMFQMIjqiWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715091534; c=relaxed/simple;
	bh=E9jPUsIV1FFv9HwtRXaXD20Lt/JQPRSXI3gSnwpUUkc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=L54vKRUVpW6lkbsEMldJJc+NRFSOwXV+Znr3+AO0HYbIPkGBnizvZoeH5ItH/XjoTktaUp2zRMVr5a5TU6N62n6/tnUh7ybjsGW09YigDYl7n823cGPj8UwLUxXvGdFWwHPbS3++J5fk0DW1gr9fUaCLQLfG4/2eUnXpIr85X3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MJnI0WgV; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-51f0f6b613dso3940247e87.1
        for <devicetree@vger.kernel.org>; Tue, 07 May 2024 07:18:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715091529; x=1715696329; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=V6B9/opbNGy2dF5CZyiOc2E1LTO1EkA3zCx/KbLDUB4=;
        b=MJnI0WgVZ5azaNfgzoT6XCYsR3mQzU/ZJl/yMEQuRT56bY1NWPxQDAbJh6HFKj/bjY
         G+vnF6FIBIOq1J7Lu/ZUSuoIqkoqahbs/M8qNP9NlBiFmKW6ocsuEcu2ySC2mjdnfbrR
         IxH/rKx76VRzG5bsZ/964SO7Hm8SkKlvBdRTsPL+wXXYrAkrNo+p61k/bAluk/oODi+m
         DEg30/wHFcftOeUstrS1gWNJGw5BwkHQtnbDwE3c+7CiXpCdtqCtq6dnXJWEavS8tVMt
         lo6NqVD55ehzbDPU1SB8utFdDSWJNxeAsqcw8MkB5GXwP78Ozkg7IQRmoCU19JuS1/Jr
         27CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715091530; x=1715696330;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=V6B9/opbNGy2dF5CZyiOc2E1LTO1EkA3zCx/KbLDUB4=;
        b=FQ/g3D/GDk+Z5XVD4eUOYilfxSH3j+vToTkpnOQcaChisC9pYItL2n65+OpYFk2uYw
         xakriVfTVRU4/iOJKD3Df32Asj9aY1CjOvE1Fn69nqy6JjC8wgcBYgUUYELmY/HO/nXX
         biB6YfImEsqj98D6XKSKN3YPBda3PZF8c4vXFlZuDebkcP17+5OhC/yGt7fnx1S8WLIc
         oGbVMWjTacNZd0V7LKtF0tbhR+oLJEEtc7EelksOTa1NxopOYFUfV62FMzfOv2KXqkDw
         dIp2LXrcI/o8QPCTjsLY780lCTNYmcDUDExOYRZZhPePUhO/3KGQOOwGF6T7MizVGXOV
         97wQ==
X-Forwarded-Encrypted: i=1; AJvYcCWaTI1fHN5JQQMyKXhC/0gvuGq+f+rB2TdyFkAo9u1gzjhCOEw9bs5RzinNqlNztwpM2mFoYcaOOFBGAzB8pfpQvWhcMMe7ONQxPg==
X-Gm-Message-State: AOJu0YzsTnQn4l9s7a0LddIoWMQFCJGE2+hpVpkWmTILHgAiYvp7KnSy
	3kwhCvxQo+wPOGSJAVdPZcHgF0Vt7tq5EqLGq/VFUi17SKH8BWeI3OYKeoL+5LE=
X-Google-Smtp-Source: AGHT+IGvfA2LnxMsAtbgMLtJQdOK715lWo1rdpwj0+KQ282HVHdI8dUi4imvbg6NqFVVZUmIGJifiw==
X-Received: by 2002:ac2:5603:0:b0:51f:3fea:cbcf with SMTP id v3-20020ac25603000000b0051f3feacbcfmr7210675lfd.52.1715091529529;
        Tue, 07 May 2024 07:18:49 -0700 (PDT)
Received: from ?IPV6:2a00:f41:c0d:408:fa88:abdb:17c2:cf24? ([2a00:f41:c0d:408:fa88:abdb:17c2:cf24])
        by smtp.gmail.com with ESMTPSA id br39-20020a056512402700b0051da1d9c47esm2124202lfb.64.2024.05.07.07.18.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 May 2024 07:18:49 -0700 (PDT)
Message-ID: <6d9879aa-ae84-4ed0-8b5f-5609fd0c37b9@linaro.org>
Date: Tue, 7 May 2024 16:18:46 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/3] arch: arm64: dts: sm8650-hdk: add support for the
 Display Card overlay
To: Neil Armstrong <neil.armstrong@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
References: <20240422-topic-sm8650-upstream-hdk-v4-0-b33993eaa2e8@linaro.org>
 <20240422-topic-sm8650-upstream-hdk-v4-3-b33993eaa2e8@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240422-topic-sm8650-upstream-hdk-v4-3-b33993eaa2e8@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 4/22/24 10:48, Neil Armstrong wrote:
> With the SM8650-HDK, a Display Card kit can be connected to provide
> a VTDR6130 display with Goodix Berlin Touch controller.
> 
> In order to route the DSI lanes to the connector for the Display
> Card kit, a switch must be changed on the board.
> 
> The HDMI nodes are disabled since the DSI lanes are shared with
> the DSI to HDMI transceiver.
> 
> Add support for this card as an overlay and apply it it at
> build-time to the sm8650-hdk dtb.
> 
> Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> Tested-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---

After testing this on real hardware and getting some word, it turns out
there's an issue with what seems like the SMMU ACL settings, preventing
the display bridge I2C controller from being accessed and ending up in
the board being unbootable, even without directly addressing the bridge.

Not mergable as-is.

Konrad

