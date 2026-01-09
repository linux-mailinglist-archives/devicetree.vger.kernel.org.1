Return-Path: <devicetree+bounces-253104-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CB11BD0787C
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 08:20:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2A294301E1B7
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 07:20:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84D872EBBB3;
	Fri,  9 Jan 2026 07:20:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Z2B5aS2I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 276F2284B26
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 07:20:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767943247; cv=none; b=sXKMw0vb8iJzi07xjskrmLoBye00zD0EBR2SZBm1SpTK0i4VoNqDim8u/EMh5wpbKAvL02UJj6XC993YEBovVrqIdeLbgYpmdJIJla67nSzeQwGY7AsQ3g403yYEMyEbLi172/ycSSpOkcZKqUad7neSywggKlv1kU7l/IhVEU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767943247; c=relaxed/simple;
	bh=1rnS5XRp1yWzNTJeU9K0Gj7sW0f19SNPCAOyf3Y6EpE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AIP7LXIIGhfwnWjdYszI8/bciyvf3PySGXymXG0URembnNwpz+GyudpkliviocD70DSUXyzq1EL36OBqZjqIJ+Tk6OhZ4bZKliRunSxKH2VVkMKu41MndXz2qeLSzg5mtoN+u2jiyIILdBBZWMaVqOIKSAjpdc5bqdNPZY+JtW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Z2B5aS2I; arc=none smtp.client-ip=209.85.216.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-34c84ec3b6eso3953585a91.3
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 23:20:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767943245; x=1768548045; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Gjh/B51GKz4sotq4IBJ8Xtx9aW2OBPIgIZ03H5aF2As=;
        b=Z2B5aS2IJYo+3z6ZH7F7BSIT4eTn2akNUxnc1ice6xVVHWFpzrAYpiqAhOM4qo+utO
         FTJYTJYX52PJxZNmjPXQ73eq24l+qsd1FFr41izaDB2v262NviZEdlh7jhYiShP3I+up
         Dvf8O1hcrg2EcwupTCoZmgqk/heKaDAi6yum5l0jljLQc8+YL7JVGW9KQpwYwCTmYio3
         7KVeJcSGI5Ab79R3vrtzaU+phKQlfxnB2QGtewQcJYh3BkaTbub0FxMrHY1Smozc45dG
         bG71yL/8htvo/QVtEBoZHsPIn8Rlp+NbKA+pUS7PwPa0put9vJpVyYS1dCifGMMB056j
         KLpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767943245; x=1768548045;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Gjh/B51GKz4sotq4IBJ8Xtx9aW2OBPIgIZ03H5aF2As=;
        b=wG30BUvQkS4kkoDzpR4FLuFlmdrt0oIBU8Hxlc+Br/n7YjVxSXxmVVsbbaIC42Rt8M
         AXaZo0PM5/yAJl+Pc4cG0C+VZVTS+PNwcdIFcKkNxNmznC/6xa8FuQZlT25Kc8mnxRwl
         4RWBSP7Fiqiklvy6yAD4Gf/Gl+hXQgSWORYEMVYsVBsdEwgYjj6pFXjAA2/1paZA8tUe
         X6tweLCT0izhoS/ebtFpSFHrRaxJ+p7MuUBEu3eNX+7x3JqW2LuX+xPAeXE5En0r+DuJ
         AzZePxI9r8cCmVF1+geReF7AuiVNjxNx9FC9gTshfrfBDnqwYxKY6YpCHTtRE8MEICqv
         hdQQ==
X-Forwarded-Encrypted: i=1; AJvYcCV1u7fpV8bntWQ9Nwr1gkGYrWry47PxFkL+HTGcMMYOUrUjcov0QEWsDF5vxH1s7yjt/31XaOwuW5Qw@vger.kernel.org
X-Gm-Message-State: AOJu0YyF0m6RDXK9zBCf+eLb13zTZx3lREpKL4U/8WUutvN5c2xNnJQo
	SNTZyaCgrGcoL1am4tFe2pmjo63sxp0Qw79jInaMoDQav8Po4fp4SZNo
X-Gm-Gg: AY/fxX5L/LNjfRFsyguFUkXgSV9T7XOpo230JPa4uZhnJydEOZWJGiSnH5urh8ulc0Z
	miZaUGoHUJXdc7kn9tgwiegT9d/4iMlV5eLb9TcvT5PaVmDo5WtutEfzRRCBwkESOavqOhZlElC
	H06nAhzy/fb/BnRNn9BQb7rPUO1U/sNSrUDQ77seK0W27wlIztPLu87foabk3RUgW6Drsp9147y
	K/evD0eElDHhi5lSM9vkYrpafYKwzHiN875YBXRxxhn6hbyhK3jA911ICIAszvBvcxOblHus1JW
	CzZFSdr1/VpZje5ICH563K0efwed8aN2BtzzcH+gOGxG5Jv9Wl1LjokCUKpUKgzfgPe77toRg1U
	ldpNqyrz+zUOY/6T/b/ygD+NHdeZ4sGDRcFkEAK6LquQD5l3pm3gtUEx0++hm4eCd7lcsySQVqh
	HkoCY3QqRjHnAJg3GOEpsskzLCPHOognG2Hoo=
X-Google-Smtp-Source: AGHT+IGDeke3s7DvHDTCRLcjoHKgMXubAVayYDXbAtIFbO4uBpuh9F0ug7JupUWMLuC115l2p/X5FA==
X-Received: by 2002:a17:90b:568d:b0:34a:a65e:e6ad with SMTP id 98e67ed59e1d1-34f68c32ae0mr8159182a91.1.1767943245493;
        Thu, 08 Jan 2026 23:20:45 -0800 (PST)
Received: from [172.16.20.12] ([136.226.244.249])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34f5f7c4118sm9691715a91.7.2026.01.08.23.20.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jan 2026 23:20:45 -0800 (PST)
Message-ID: <189e2cd5-0c1d-43cb-ba9e-4cc29537cdd1@gmail.com>
Date: Fri, 9 Jan 2026 12:51:10 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 5/5] arm64: dts: qcom: talos-evk: Add support for
 QCS615 talos evk board
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 yuanjiey <yuanjie.yang@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251230130227.3503590-6-tessolveupstream@gmail.com>
 <aV4bRLY6s3s3uAXa@yuanjiey.ap.qualcomm.com>
 <0d48a1b6-6946-4882-9dbd-1a1bb50770e2@gmail.com>
 <9ceefc01-46fe-4c9c-b23e-d08835810d96@oss.qualcomm.com>
Content-Language: en-US
From: tessolveupstream@gmail.com
In-Reply-To: <9ceefc01-46fe-4c9c-b23e-d08835810d96@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 08-01-2026 18:44, Konrad Dybcio wrote:
> On 1/8/26 10:29 AM, tessolveupstream@gmail.com wrote:
>>
>>
>> On 07-01-2026 14:07, yuanjiey wrote:
>>> On Tue, Dec 30, 2025 at 06:32:27PM +0530, Sudarshan Shetty wrote:
>>>> Add the device tree for the QCS615-based Talos EVK platform. The
>>>> platform is composed of a System-on-Module following the SMARC
>>>> standard, and a Carrier Board.
> 
> [...]
> 
>>> These properties can work?
>>>
>>> dtbinding check says:
>>>
>>> /local/mnt/workspace/yyj/develop_linux/git-repository/Talos_repository/upstream_linux-next/linux-sheepdog/linux-next/arch/arm64/boot/dts/qcom/talos-evk-lvds-auo,g133han01.dtb: panel-lvds: 'power-supply' is a required property
>>>         from schema $id: http://devicetree.org/schemas/display/panel/panel-simple-lvds-dual-ports.yaml#
>>> /local/mnt/workspace/yyj/develop_linux/git-repository/Talos_repository/upstream_linux-next/linux-sheepdog/linux-next/arch/arm64/boot/dts/qcom/talos-evk-lvds-auo,g133han01.dtb: clock-controller@100000: 'clock-names' is a required property
>>>         from schema $id: http://devicetree.org/schemas/clock/qcom,qcs615-gcc.yaml#
>>> /local/mnt/workspace/yyj/develop_linux/git-repository/Talos_repository/upstream_linux-next/linux-sheepdog/linux-next/arch/arm64/boot/dts/qcom/talos-evk-lvds-auo,g133han01.dtb: bridge@2c: ports:port@0:endpoint:data-lanes:0: 1 was expected
>>>         from schema $id: http://devicetree.org/schemas/display/bridge/ti,sn65dsi83.yaml#
>>> /local/mnt/workspace/yyj/develop_linux/git-repository/Talos_repository/upstream_linux-next/linux-sheepdog/linux-next/arch/arm64/boot/dts/qcom/talos-evk-lvds-auo,g133han01.dtb: bridge@2c: ports:port@0:endpoint:data-lanes:1: 2 was expected
>>>         from schema $id: http://devicetree.org/schemas/display/bridge/ti,sn65dsi83.yaml#
>>> /local/mnt/workspace/yyj/develop_linux/git-repository/Talos_repository/upstream_linux-next/linux-sheepdog/linux-next/arch/arm64/boot/dts/qcom/talos-evk-lvds-auo,g133han01.dtb: bridge@2c: ports:port@0:endpoint:data-lanes:2: 3 was expected
>>>         from schema $id: http://devicetree.org/schemas/display/bridge/ti,sn65dsi83.yaml#
>>> /local/mnt/workspace/yyj/develop_linux/git-repository/Talos_repository/upstream_linux-next/linux-sheepdog/linux-next/arch/arm64/boot/dts/qcom/talos-evk-lvds-auo,g133han01.dtb: bridge@2c: ports:port@0:endpoint:data-lanes:3: 4 was expected
>>>         from schema $id: http://devicetree.org/schemas/display/bridge/ti,sn65dsi83.yaml#
>>> /local/mnt/workspace/yyj/develop_linux/git-repository/Talos_repository/upstream_linux-next/linux-sheepdog/linux-next/arch/arm64/boot/dts/qcom/talos-evk-lvds-auo,g133han01.dtb: bridge@2c: 'ti,dsi-lanes', 'ti,lvds-bpp', 'ti,lvds-format' do not match any of the regexes: 'pinctrl-[0-9]+'
>>>         from schema $id: http://devicetree.org/schemas/display/bridge/ti,sn65dsi83.yaml#
>>>
>>
>> With regard to the power-supply property for the LVDS panel: the 
>> panel does not incorporate a dedicated power regulator, and therefore
>> this property cannot be defined.
>> Concerning the data-lanes configuration, the LVDS display operates
>> correctly only with <0,1,2,3> in my environment. Modifying this
>> to <1,2,3,4> as proposed, prevents the display from initializing.
> 
> You'll need to fix the bindings checker errors one way or another.
> 
> For the power-supply, I think it may be made optional
> 
> For data-lanes, I'm not sure it's even parsed. Are you sure altering
> the value under the TI bridge endpoint (*not* mdss_dsi0) causes
> issues?

Okay, I will fix the bindings checker errors in the next patch.
Regarding data-lanes: altering the value under mdss_dsi0 is causing 
the issue, not the value under the TI bridge endpoint. I will address
this properly in the next patch.
> 
> Konrad


