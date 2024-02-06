Return-Path: <devicetree+bounces-39110-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C9DB84B6FF
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 14:55:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CE945B2487F
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 13:55:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3D5B13172E;
	Tue,  6 Feb 2024 13:55:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="AWk1oaax"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74C781DFFB
	for <devicetree@vger.kernel.org>; Tue,  6 Feb 2024 13:55:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707227727; cv=none; b=e7TGS7UrFiIGHg9DUbbpclVjqnuLmP+kyorRHFgC2XTPwrB4lqCAazCc5Q4Z0DitO0FfSQrwbYnXtSQ7ykU3J2XqwrRErwC7YSzn+54F3WdcKpgGV55KOy2bVaKJoUJi9tWfbuJdW5DnlAFOgQ1kaUf0QmtOpHbQ50URcLUeQ6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707227727; c=relaxed/simple;
	bh=Uzx5+NdBJaUY07QniKEU6bMgZAWULDCkc9A+Y6eHQfA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DwlLAyo/ckWvi5uIHvVq4VT461PqwrTgwv/q0ml43vIkZjNU6WjfAMdrqQAXmodzh6POF94n9R5519qy2FypwGdm1Nak8htZqaTdpVdbKRRIglV35RZgaNm/e5l9Aa4kwBjTYryK32z3DkTxKu7D288ujY3LxM6DbMSieArwjQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=AWk1oaax; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-40ff812442aso409055e9.2
        for <devicetree@vger.kernel.org>; Tue, 06 Feb 2024 05:55:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1707227724; x=1707832524; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OXXm4a3L1qeCqs7hKY2UKoD7COlkjD9nKpIhELY2ah8=;
        b=AWk1oaaxCAfLXWP5XMAH97rgoWzSli+2cP1EwGCU9SlcV4O+9cmcrSID9v3bEsbSA5
         SyyaPuM+BvfMRmJu4DRoB7l6EVfd21S+RxkUuQwm2kbXRNAcMze6QO31PRVPBnKMCug8
         gWp4C3v4noVuvBOrNGI/Ms608dqTkt4e7naSrMpEe8QLnMjK6VpzTuR1z9OXqGNRf0M6
         G4yZcMB18GClvIpzhsGa2HskmHLSZTjFhJZaO4ncaHK1a9cLkY/n/huemjCmyfHv6/1t
         oRuCTs/t0kSJ6TUw2z3xWBk9G4LNn5od7PO8dQtZz8A0EcCLlrQMalwqi4+POBpJvdD0
         0U6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707227724; x=1707832524;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OXXm4a3L1qeCqs7hKY2UKoD7COlkjD9nKpIhELY2ah8=;
        b=bhob8p8Uo+64LZ6zZJyNAHZnQGVGpJwjc0daYjybX2c8tgH9C2JzwAEI6rbNeS0Ko6
         D4etzC3Q8w1URhXU26Y4gwHCdZPdcHQ2conYDSdcLkGR42QKBNx6p+P68u/PYtrWLDdf
         jrbFPqOzdVPajtueXAwzWKerjxGVlSxMD+qXiFEGqiKNDJWhWzA2VtEfWAdFlB7mdjSR
         o473rTsC3Bak/KWjsnSHIRMbopLC16NQqIk1udWhuO/i9fEpeFdBPUpn5M0x1GZ2G7yd
         ATTH2/Lh7syNv1jwAfdZR5eDnDEY37obzc3f4D6F9HSRezWcS8iZe3y+DoVokaibdlqg
         3BMQ==
X-Gm-Message-State: AOJu0YyYeefuilmAX1GEw+h8uCyX7sNMy89ZCcaO9DevMPac0TTMeoE5
	zCtzrPv7H/ASxTYQllS3XAC+VhcmEzl8yS/Be4lBUddL6AunrPQKvPz8sSWDsSA=
X-Google-Smtp-Source: AGHT+IFzUmOEzFFJDutsSDDgNuefiOuM4tOOCdMDQA0KH6u9YXnuSVJTB+fJyI7YwTZy2rqWMhWEOA==
X-Received: by 2002:a05:600c:3c97:b0:40f:cb0d:a44e with SMTP id bg23-20020a05600c3c9700b0040fcb0da44emr1821175wmb.9.1707227723621;
        Tue, 06 Feb 2024 05:55:23 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCWSiKw0OU8gktCMMX8VC155KdNWS90FrO6qrCyaZ0NWIt2XI0hwB2BtjPRn/cvrsUBIAWeIyh9ITUhTTwFxwopHZvRvHmKsELs/TZNuV9aWKSDCUoK6D1mE9hcFFLIOe9w8HLBAVdbqVLBJGgJZZKGZq5mVWbLX39N7ByQ34ItJai4gT7x1KWqT1anZ2udKM/hbf4DlfGqMHX10ZR0MGejDucdue72l7ule64WuOvEDJA2BE5JnD2hnyt6Y8cyezspo+5UFkSwn/mU8YnO87Qg+WZL1Wx6gug5yUE8wSZY0ZnKqAsNqnglVR1uYexTR9toxHkoPzAzfugakKe6JEzMW2nKSy0tpoghNaCzRKljJt8eWrgFgpVuRPuCI9POv0/aQEg3xoBVGceKE2O9shc1KxiY3dcKxEeAcp3JDoYA=
Received: from [192.168.108.81] (freebox.vlq16.iliad.fr. [213.36.7.13])
        by smtp.gmail.com with ESMTPSA id s13-20020a05600c45cd00b0040e4733aecbsm2101060wmo.15.2024.02.06.05.55.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Feb 2024 05:55:23 -0800 (PST)
Message-ID: <ef146687-688a-4cf9-a11e-4034a50fb6b4@freebox.fr>
Date: Tue, 6 Feb 2024 14:55:22 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH v1] arm64: dts: amlogic: Add Freebox fbx8am boards
Content-Language: en-US
To: Neil Armstrong <neil.armstrong@linaro.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 AML <linux-amlogic@lists.infradead.org>, DT <devicetree@vger.kernel.org>
Cc: Kevin Hilman <khilman@baylibre.com>, Jerome Brunet
 <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Pierre-Hugues Husson <phhusson@freebox.fr>
References: <8c865c62-cd80-4c78-9fc5-c85491c037ca@freebox.fr>
 <b69a2132-25c0-4acd-808e-d134f5034e58@linaro.org>
 <59ef3824-13d3-40af-9a3a-9b1ec8add9d3@linaro.org>
From: Marc Gonzalez <mgonzalez@freebox.fr>
In-Reply-To: <59ef3824-13d3-40af-9a3a-9b1ec8add9d3@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 06/02/2024 14:30, Neil Armstrong wrote:

> I do have some dtbs_check errors, but those are expected since they are not specific to this patchset.

Wanted to mention those warnings as a follow-up.
Are they easy to fix?

$ make dtbs_check
  LINT    Documentation/devicetree/bindings
  CHKDT   Documentation/devicetree/bindings/processed-schema.json
  SCHEMA  Documentation/devicetree/bindings/processed-schema.json
/home/mgonzalez/linux/Documentation/devicetree/bindings/net/snps,dwmac.yaml: mac-mode: missing type definition
  DTC_CHK arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dtb
arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dtb: /soc/bus@ff600000/bus@42000/clock-controller@0: failed to match any schema with compatible: ['amlogic,g12a-audio-clkc']
arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dtb: /soc/bus@ff600000/bus@42000/audio-controller@744: failed to match any schema with compatible: ['amlogic,g12a-tohdmitx']
/home/mgonzalez/linux/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dtb: sys-ctrl@0: '#address-cells', '#size-cells', 'ranges' do not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/soc/amlogic/amlogic,meson-gx-hhi-sysctrl.yaml#
/home/mgonzalez/linux/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dtb: sound: Unevaluated properties are not allowed ('assigned-clock-parents', 'assigned-clock-rates', 'assigned-clocks' were unexpected)
	from schema $id: http://devicetree.org/schemas/sound/amlogic,axg-sound-card.yaml#
/home/mgonzalez/linux/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dtb: sound: 'anyOf' conditional failed, one must be fixed:
	'clocks' is a required property
	'#clock-cells' is a required property
	from schema $id: http://devicetree.org/schemas/clock/clock.yaml#


Regards


