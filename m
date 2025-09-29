Return-Path: <devicetree+bounces-222530-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 632A8BAA19C
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 19:07:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0E7D01C5A72
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 17:07:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52523214A97;
	Mon, 29 Sep 2025 17:07:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ewfAFgJH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97D29204C36
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 17:07:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759165668; cv=none; b=s1Ki17G8UXyZhrt+7UeUWEACWNEZ7bbhN/YuZIcn8e9IRxlnj+pctWBgCWHTYFVZPLMgCUrz+iyAdwAwYJk2hzxXBL4gWHEKhwKyXDg+fiSNpraJKoocEmNl8vHNuq6NsT1P4yUqJGgXE2NrHnUAUmJ7TvheqUs24rIUIHrW4f4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759165668; c=relaxed/simple;
	bh=GHaH6xHVSsfmMOhc3Q4Uv4imU4pJ//tOMuXYRsOMut8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=B23sDNIg/ENXfwIc5WK7AsdUxRuEn2RAu9pPdiHDOxhFvem2VMG4ImP6LTzfDpmeVBsNmrmNTgJkHeyPeXbk2wxRsJiAoXSUTwjuxq2JuPcqcblwAPKaQfv88pi8wV+pspQIv8tL9pgY8iqTr3s5yTZhpILUmEVxeUBK+TPVWTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ewfAFgJH; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-46e425de753so18010805e9.1
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 10:07:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759165665; x=1759770465; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zj9JtujIrCASOTxrqaUt0QRKvTAm0yHb0MuPSQjc/js=;
        b=ewfAFgJHx40FBB5cQCI13U9paQma0tclOSnUjz4eo7r1yCwJRaNwKOw5H88HdSUKem
         PVck37GzfTxOlPQd2Eet7e4yJLzIT4OhlDN9CmfWIcFyT4sMtdXA5+N17o3jHrZ5N8ix
         GYQbgw2kutnIic0UklpUwoQlPUdIxBETC6/f30ksnFpPZ8ZPXGATBpRWJW4WTEG9KApb
         +CHGDcNsYhiVvuVMW6KZ96BlsEmPHmbsw7Dg+LL8V7cNG8Whqh6z6wd3EKFzGP5drK7c
         BB+qLJrFR66bzrZjOVuJzJgZZIUFeCtd97IPt7IaMQOSk1lzHn3oU+73yiPqYm1T8dvf
         uzIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759165665; x=1759770465;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zj9JtujIrCASOTxrqaUt0QRKvTAm0yHb0MuPSQjc/js=;
        b=TfuV0sRZMB1SPraML2nhp8zW6bjGvtNbzkwV2z/xYszvFczlFI338LMdSrmd21GVQh
         6Bp2YDt3w8Aj7P+dCb5uwc37SLAxF4g6DJtf8hpNkXYszFvFlXeXR52E30dEggVhGChF
         YhulUCHJRhBUD5OedMP64x9e0UYkDQdm69xb1+RBNr3tnGveR2BYpmA8FkPTi46A1Dc1
         k2UKahGvgagZ+IvU/C/BGw26yrnnpOtz1GcQtwUOzA+++TXtPrmgCyadrFjNtnxixOpa
         alFpkpiF1P1PvErlSeCSq3lPwhCMrL5wDMp5bcf9g5C6d018s7+Gwbn7CXH108HQbGJ8
         pL8Q==
X-Forwarded-Encrypted: i=1; AJvYcCVBsOew4AIbh25qSQr3kMAUhgvByWiYaVaumXuDydCydjw0+WC2YnKsO35XEehpjWlI3r7YWTZuYasO@vger.kernel.org
X-Gm-Message-State: AOJu0YxHQiSTIzYqAZAqBchJGnxPpvg2TQ4b2FiJBnasoh7/Hk1f7y+1
	e6rcxNyNLNaJtydCUUrcpcMk7cnnnqbQ2a3EqIyXSrcELx5yvZDtV1zc
X-Gm-Gg: ASbGnct5UwYOOL1Zntlzy2Oik7mAbLvaiFMJyRIk7DHTIs1pTHA+tXP5dtmfiS8vr3k
	SK/Tya0bqjWfyvF6uyhRnQEQpC5j6e2PqD4ZlLsvDBzVfs447WlfeXdBT0YH4nbkuVNSaBak6lW
	r145bfWSJk8HNCtqAIQe6L67yjAawh2jLZna3vz6xVyJ+Tg60fWAKm4hx311XeqNDyxfZgHNDn+
	KEGQVhQcM+BFfos495UHHv82mwiyk0UBtqh1mGdGFyYp5+yoZ+jtzP9+MOpTu6ab0S4Sky+4+6V
	FJlqLaI3gj8TElYU/h/quz2ZHnJ0gbQxuC0bZKb0aPUO35lj32zRV339WMGSVhFslrbbefMXgrQ
	mWH7caQzUOPZncFA7wOrP+f4pp2udKadGniU07nHVIN/4RnBtiNOaPJpKPYFBBhl0AvN7rcJ7QY
	+GSgFL
X-Google-Smtp-Source: AGHT+IE8a0TuB4O+ROJaTBK4jhGL6wAS75qWcIM1U4/kmaIwGYyni0pYeoJGRjfNbkPbKaoBFbyg2Q==
X-Received: by 2002:a05:6000:2307:b0:408:ffb9:9f62 with SMTP id ffacd0b85a97d-40e47ee07eamr13272578f8f.29.1759165664670;
        Mon, 29 Sep 2025 10:07:44 -0700 (PDT)
Received: from flaviu-Aspire-E5-572G.. ([5.15.71.99])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e2ab61eecsm232769755e9.20.2025.09.29.10.07.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Sep 2025 10:07:43 -0700 (PDT)
From: Flaviu Nistor <flaviu.nistor@gmail.com>
To: Conor Dooley <conor+dt@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Jean Delvare <jdelvare@suse.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Flaviu Nistor <flaviu.nistor@gmail.com>,
	linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: hwmon: tmp102: Add TMP110 and TMP113 devices
Date: Mon, 29 Sep 2025 20:07:30 +0300
Message-ID: <20250929170730.8285-1-flaviu.nistor@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250924-grievance-crisply-8c7da95946f1@spud>
References: <20250924-grievance-crisply-8c7da95946f1@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

On Mon, Sep 24, 2025 at 19:12:26 +0100, Conor Dooley wrote:
>On Wed, Sep 24, 2025 at 08:55:39AM -0700, Guenter Roeck wrote:
>> On 9/15/25 10:18, Conor Dooley wrote:
>> > On Mon, Sep 15, 2025 at 08:08:18PM +0300, Flaviu Nistor wrote:
>> > > Add a compatible string for TMP110 and TMP113 devices.
>> > > 
>> > > Signed-off-by: Flaviu Nistor <flaviu.nistor@gmail.com>
>> > > ---
>> > >   Documentation/devicetree/bindings/hwmon/ti,tmp102.yaml | 2 ++
>> > >   1 file changed, 2 insertions(+)
>> > > 
>> > > diff --git a/Documentation/devicetree/bindings/hwmon/ti,tmp102.yaml b/Documentation/devicetree/bindings/hwmon/ti,tmp102.yaml
>> > > index 96b2e4969f78..840b5306a8cf 100644
>> > > --- a/Documentation/devicetree/bindings/hwmon/ti,tmp102.yaml
>> > > +++ b/Documentation/devicetree/bindings/hwmon/ti,tmp102.yaml
>> > > @@ -13,6 +13,8 @@ properties:
>> > >     compatible:
>> > >       enum:
>> > >         - ti,tmp102
>> > > +      - ti,tmp110
>> > > +      - ti,tmp113
>> > 
>> > The driver has no match data and no compatible based decisions added in
>> > your patch. Why is a fallback to tmp102 not suitable?
>> > 
>> 
>> That should work for tmp110. However, tmp113 does have additional registers, and it
>> might be desirable to report the content of those using debugfs. Fallback for that chip
>> would work for now, but that might have to change later if support for the additional
>> registers is added to the driver.
>
>In that case, only the driver would need to change not the binding.
>That's fine though, of course.
>

I am a little confused and I would appreciate some advice if I should leave
the series as it is or send a v2 only for documentation and Kconfig updates,
droping the binding update?

>> 
>> Guenter
>> 
>> > >     interrupts:
>> > >       maxItems: 1
>> > > -- 
>> > > 2.43.0
>> > > 
>> 

