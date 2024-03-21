Return-Path: <devicetree+bounces-52072-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 02323881B67
	for <lists+devicetree@lfdr.de>; Thu, 21 Mar 2024 04:09:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6BB771F219D8
	for <lists+devicetree@lfdr.de>; Thu, 21 Mar 2024 03:09:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6570479D2;
	Thu, 21 Mar 2024 03:09:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Vfmsk8Jt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f50.google.com (mail-oa1-f50.google.com [209.85.160.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93A6128E7
	for <devicetree@vger.kernel.org>; Thu, 21 Mar 2024 03:09:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710990569; cv=none; b=XIyyPVigxXVKV+9earbXigzmd6yOslg+N/4Er93di9g41gJ9EC2JZXm9BrFmJpdVE534pesZ1h2d1J7IsKrge/nGtEChy3UgtdQWZFWYU6aGN10rLYzXOZVeT91Ne5gxKF8st31p3cE6tBwYAtBLbvj9FXSb6SBYkUM8C52i3Fw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710990569; c=relaxed/simple;
	bh=FkzYpBJteeqdIUyppcVF9bTPAo5a25hyFgWuRcXW8/U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NgS8S+9ovGo+e4Q6KmG44lfazyafEwysVv3Vpi2crnxUKv6HxOblPenLcryj8BeJvveCKK7devCJ6+lUB5GYasL58fzN/P+A3lkiAfZt2oMCR1CAElg1JJi0ROCLd8CA4wLTH0wWSyssFKf1WC6vyDfEazcZLm4BhOGWjT2anw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Vfmsk8Jt; arc=none smtp.client-ip=209.85.160.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-221830f6643so336361fac.2
        for <devicetree@vger.kernel.org>; Wed, 20 Mar 2024 20:09:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710990567; x=1711595367; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Iw4MaM5+26FIFeV25IT9vHlMrg0yjNPt8G+THE0Fuao=;
        b=Vfmsk8Jt3iKMfVyVnds7fTnOUWP+Nh+VJ9HwC4b++92mpd7kfRDU97X+WBvwQq5CSR
         H0WuqFwe5deMqHPtYHhFZePmFy2umZPA8IWMHlEdK6uuaZvBbm8ysKFL2KLQuf7Phrgc
         reDDaqCLeX12g2isCb4B/0EKvATqBhqJhTq3+SUj3zqfZsZty90cFd3CkgLFbfQ3oN40
         rRm37/nR18+IxC/UMrySWneRvwlaxtgHQ4qxUxJIfNLVWHXFTMkVtXwHiIK5wHQ6Cub4
         TyI9GLKhuMXcH5Q7UmIGw70i08QH302u3J4Syllj4biTTX8B9E3CvcBcAob2tLNLkBzL
         lJFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710990567; x=1711595367;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Iw4MaM5+26FIFeV25IT9vHlMrg0yjNPt8G+THE0Fuao=;
        b=xPjYcq3b9X16lmLh5x09rxMGjFyNt/TmyjSq0F10ahrh05mupbUqL0ceX0Hzyfs7P9
         H1C1KbyjVagjnN9QgIz14DzXex45/JAxAqUVOlCqt13Sy8tJsCxJbVR10S7SUz/eVI9q
         UnDwedHkci6OccZ0JGwjxWjiz/U/NEZCwQPEyo0uwECvWTftSV88tV3v699fQmqsStbF
         A+f9HVV4ImCyLLG9E+CAjATaXFQ7eKsI/KY7Oh1ilaSZv3Dnn2GTDRhi0cZVSIHtMzau
         N6DULGu75Iof0XZTIM4+zv2vyqZj/4ho4wjmQotH0ldBABZ1X/GE50As3E3h5xrFIZIx
         fU3w==
X-Forwarded-Encrypted: i=1; AJvYcCUMerHgAZzh1PaqQ/whd9dwPy5XIWO4sBrV0yTqqJiL444M6ufwKvPZXFtWWF1jFDhap6BVQSU99c/MLxp4a2z0FiYP96FvQWLMsQ==
X-Gm-Message-State: AOJu0Yx3MJp5VfeCi7c1rSjFehSiQ33rIcc9fNg2V77Ri7+jUw+IGmWs
	0lLJnLZDztz1giIHSoyoLmz25eFBp+g5LMufZ8iZsyd66p8SOZlVmAszpUnQ/hk=
X-Google-Smtp-Source: AGHT+IGIbn5EcLAYZDaoUG505+Amf/scsMEzE64kDpE2ctwVRmiHQCrFAMGnLRo1k63RMX+6aqG0JQ==
X-Received: by 2002:a05:6870:4141:b0:221:c887:dc6b with SMTP id r1-20020a056870414100b00221c887dc6bmr8224433oad.6.1710990566510;
        Wed, 20 Mar 2024 20:09:26 -0700 (PDT)
Received: from localhost ([122.172.85.206])
        by smtp.gmail.com with ESMTPSA id y15-20020aa793cf000000b006e6b9a963a5sm12395995pff.131.2024.03.20.20.09.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Mar 2024 20:09:25 -0700 (PDT)
Date: Thu, 21 Mar 2024 08:39:23 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Andre Przywara <andre.przywara@arm.com>
Cc: Rob Herring <robh@kernel.org>, Yangtao Li <tiny.windzz@gmail.com>,
	Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	"Rafael J . Wysocki" <rafael@kernel.org>, linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-sunxi@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	Brandon Cheo Fusi <fusibrandon13@gmail.com>,
	Martin Botka <martin.botka@somainline.org>,
	Martin Botka <martin.botka1@gmail.com>
Subject: Re: [PATCH v2 3/8] dt-bindings: opp: Describe H616 OPPs and
 opp-supported-hw
Message-ID: <20240321030923.4sf3lifbmnvvidaa@vireshk-i7>
References: <20240318011228.2626-1-andre.przywara@arm.com>
 <20240318011228.2626-4-andre.przywara@arm.com>
 <20240320150228.GA1705913-robh@kernel.org>
 <20240320153738.3e2410bf@donnerap.manchester.arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240320153738.3e2410bf@donnerap.manchester.arm.com>

On 20-03-24, 15:37, Andre Przywara wrote:
> On Wed, 20 Mar 2024 10:02:28 -0500
> Rob Herring <robh@kernel.org> wrote:
> > On Mon, Mar 18, 2024 at 01:12:23AM +0000, Andre Przywara wrote:
> > > From: Martin Botka <martin.botka@somainline.org>
> > > -        opp-1080000000 {
> > > +        opp-792000000-l {
> > >              clock-latency-ns = <244144>; /* 8 32k periods */
> > > -            opp-hz = /bits/ 64 <1080000000>;
> > > +            opp-hz = /bits/ 64 <792000000>;
> > >  
> > > -            opp-microvolt-speed0 = <1060000>;
> > > -            opp-microvolt-speed1 = <880000>;
> > > -            opp-microvolt-speed2 = <840000>;
> > > +            opp-microvolt = <900000>;
> > > +            opp-supported-hw = <0x02>;
> > >          };
> > >  
> > > -        opp-1320000000 {
> > > +        opp-792000000-h {
> > >              clock-latency-ns = <244144>; /* 8 32k periods */
> > > -            opp-hz = /bits/ 64 <1320000000>;
> > > +            opp-hz = /bits/ 64 <792000000>;
> > >  
> > > -            opp-microvolt-speed0 = <1160000>;
> > > -            opp-microvolt-speed1 = <940000>;
> > > -            opp-microvolt-speed2 = <900000>;
> > > +            opp-microvolt = <940000>;
> > > +            opp-supported-hw = <0x10>;  
> > 
> > So far, we've avoided multiple entries for a single frequency. I think 
> > it would be good to maintain that.
> 
> Fair, I wasn't super happy with that either, but it still seemed better
> than the alternatives.
> 
> > Couldn't you just do:
> > 
> > opp-supported-hw = <0>, <0x10>, <0x02>;
> > 
> > Where the index corresponds to speed0, speed1, speed2.
> > 
> > If not, then I don't understand how multiple entries of opp-supported-hw 
> > are supposed to work.
> 
> If I got this correctly, multiple cells in opp-supported-hw are to
> describe various levels of hierarchy for a chip version, so like silicon
> mask, metal layer revision, bin, I guess? The binding doc speaks of "cuts,
> substrate and process", not really sure what that means exactly.

Right. That basically translates to hardware versions the OPP will be parsed
for.

> I think currently we cannot easily combine microvolt suffixes and
> opp-supported-hw in one OPP node?

It should be fine.

> I think it bails out if one
> microvolt-speed<x> property is missing, but I have to double check.
> But IIRC v1 of this series somehow pulled that off, so we can maybe bring
> it back? To end up with:
> 	opp-792 {
> 		opp-hz = <792000000>;
> 		opp-microvolt-speed1 = <900000>;
> 		opp-microvolt-speed4 = <940000>;
> 		opp-supported-hw = <0x12>;
> 	};

That's what I thought too while reading your email.. Just populate the OPP for
both 0x10 and 0x02 versions and let the speedN thing get you the right voltage.

-- 
viresh

