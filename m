Return-Path: <devicetree+bounces-75560-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ABB2907BC6
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 20:55:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1E302282806
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 18:55:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3D2E14B95B;
	Thu, 13 Jun 2024 18:55:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=minyard-net.20230601.gappssmtp.com header.i=@minyard-net.20230601.gappssmtp.com header.b="GHZjS+eH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com [209.85.167.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DE9884A48
	for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 18:55:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718304907; cv=none; b=TUpueXimaE++uZlQW5Ft+ECBTq7si9WA5T7yImhk811WnEnEx7Ustlve8yZ22bSxXx/q40HU21vskRd7wj+A9lw3tMphL/MueLHTRD4AxkamJLfPw6vkq+8KLCidGP96URFwaBKe0gEm5TWtK1bNblVWsC/GX+NMmzIaxplPcJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718304907; c=relaxed/simple;
	bh=Gt1evT2ZipUP3A+a89FXb11fe3WcAOPmqcd8GjtBsjY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=POeoiQgLFoC5gUAUEqVDfF5PToo5YpCDZoGSkaTnlyjp7+aTrzGEp155G8zW9KrIYTZrvajGh6FIY9x2XEI5kiTHnDznoJRzLxsRi8fu1EXwfwXWehFNtPa489GVOh0HWcbvxYw2KPat2Fz8dg52d2dkWRmbY4IOOHUlmkcTTTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=minyard.net; spf=none smtp.mailfrom=minyard.net; dkim=pass (2048-bit key) header.d=minyard-net.20230601.gappssmtp.com header.i=@minyard-net.20230601.gappssmtp.com header.b=GHZjS+eH; arc=none smtp.client-ip=209.85.167.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=minyard.net
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=minyard.net
Received: by mail-oi1-f181.google.com with SMTP id 5614622812f47-3d21b3da741so733673b6e.2
        for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 11:55:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1718304904; x=1718909704; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:reply-to:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ir7jlQ3ukg3Y+MOa/f3FfJkxsyDu68agk9z7RN1WCrk=;
        b=GHZjS+eH2ab+5fRa8RnB/gVniYwqF38mGtfVcdNdXjMxOiwjJbeUjTdq0yo8QiGM8T
         1wD53lyZjtcC/wk8kQ3GZUqt3i9Z398+kGkQOXEsJDPgZfdK1omf9anEirt4s7zIvJLW
         t1cFiIoBRw/ZFUWuhcwVL7eo1LSIlLXWZqnSxUk83FFSKA+GmKFYmVK/6ObNjyy2Yltg
         fbiVvuCWm/HZJ+J3jGoyODugYbSu4HQTegphG1gotabXLFMbmMkuE26S36Znh+UW59il
         QN94taaag0B5C7Xpl8QzgHjsLohwNlZkgVSux+PfSkKj+AnYXJeoM9pErWeYKIc92mT+
         OX5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718304904; x=1718909704;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:reply-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ir7jlQ3ukg3Y+MOa/f3FfJkxsyDu68agk9z7RN1WCrk=;
        b=wXeAZ+IF0zRinHwmhEF7ZyOBFBxnXJI4VBGi0CLsDeAvCQjl20pC+qS92KQo048/Pq
         g2Xq9fCtFXrHyYhRAQZN3pOdDc6z2dM0DZQBXDm/MIdTbR9jYHS3hA3oVaJqAWm51EjS
         crdkXRXilCeZhZ5Lc49bzdW/XN7Bf3G3vqBd7rdWngTEb8IcKoVx8aLGy3rY4Ac5ThBs
         ifQWkWXgCH4t/9oZDka20ebOhikdg8WA6N64XuAoHaRBZOUTJlrgHkwPPv1x/QHpegU5
         hRoztVD0/ZXoEChZ6j2FTJ7HfUIoWr/GnObxe05GyojQ02WaPJtSHqm0i82/yTuyBTfA
         obaA==
X-Forwarded-Encrypted: i=1; AJvYcCWYPKrVeNbyFTiv8HKMhpRRcYEfIG2dXr+3MpzIdJE4FhEUWg7APiQlGsN69AM0VPdeHSiRu6FF2lEeEfDVoLMki5uu0e/+3UgIUg==
X-Gm-Message-State: AOJu0YxTnu/Ni1UXTAg8nbGOGzlqNzVq9t3iQWBG3cH2BFb+BQcZ5VC8
	K3lO8zkmAzdZMCz63ICs2wHl19LKuzW0aNoylwHbtE31re5Nrv19ygAcENB29eI=
X-Google-Smtp-Source: AGHT+IG9MnlA72bZ18aF5rYF5wl0pr5uFRNrPbLUoHQMtyYlzNhExUV24HDmhv5A6kYfu5h17G7Atw==
X-Received: by 2002:a05:6808:10d2:b0:3d2:14b5:adf8 with SMTP id 5614622812f47-3d24e8a7ac9mr606995b6e.5.1718304904174;
        Thu, 13 Jun 2024 11:55:04 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:f695:486a:b518:fdb])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3d2476bb5aesm282578b6e.38.2024.06.13.11.55.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jun 2024 11:55:03 -0700 (PDT)
Date: Thu, 13 Jun 2024 13:55:01 -0500
From: Corey Minyard <corey@minyard.net>
To: Rob Herring <robh@kernel.org>
Cc: Potin Lai <potin.lai.pt@gmail.com>, Corey Minyard <minyard@acm.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Quan Nguyen <quan@os.amperecomputing.com>,
	openipmi-developer@lists.sourceforge.net,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Patrick Williams <patrick@stwcx.xyz>,
	Cosmo Chou <cosmo.chou@quantatw.com>,
	Potin Lai <potin.lai@quantatw.com>
Subject: Re: [PATCH 1/2] bindings: ipmi: Add property for skipping SBMR boot
 progress response
Message-ID: <ZmtAhcviSUKoFLsz@mail.minyard.net>
Reply-To: corey@minyard.net
References: <20240612043255.1849007-1-potin.lai.pt@gmail.com>
 <20240612043255.1849007-2-potin.lai.pt@gmail.com>
 <20240613175946.GA2085029-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240613175946.GA2085029-robh@kernel.org>

On Thu, Jun 13, 2024 at 11:59:46AM -0600, Rob Herring wrote:
> On Wed, Jun 12, 2024 at 12:32:54PM +0800, Potin Lai wrote:
> > In ARM Server Base Manageability Requirements (SBMR) document, Callers can
> > choose to not read back Response Data after sending the command "Send Boot
> > Progress Code".
> 
> Got a link to that document?
> 
> > Define "arm-sbmr,skip-bootprogress-response" property for skipping the
> > response of "Send Boot Progress Code" from userspace.
> 
> I don't understand why this would be conditional? How can you define in 
> the BMC what the host behavior is? Doesn't the host side decide 
> that? So don't you always have to support no response?

Yeah, this doesn't make any sense for two reasons:

What if the host wanted to read back the response?  You make no
provision for that, as I believe Rob said above.

The BMC should be able to start a new transaction without the previous
response being read.  So this should be pointless.  If that's not
happening, it's a bug and should be fixed.  Otherwise an untimely reset
could hang the SSIF interface.

-corey

> 
> > 
> > Signed-off-by: Potin Lai <potin.lai.pt@gmail.com>
> > ---
> >  Documentation/devicetree/bindings/ipmi/ssif-bmc.yaml | 5 +++++
> >  1 file changed, 5 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/ipmi/ssif-bmc.yaml b/Documentation/devicetree/bindings/ipmi/ssif-bmc.yaml
> > index 02b662d780bbb..b21e958efc184 100644
> > --- a/Documentation/devicetree/bindings/ipmi/ssif-bmc.yaml
> > +++ b/Documentation/devicetree/bindings/ipmi/ssif-bmc.yaml
> > @@ -19,6 +19,11 @@ properties:
> >    reg:
> >      maxItems: 1
> >  
> > +  arm-sbmr,skip-bootprogress-response:
> 
> Form is vendor,property-name where vendor is defined in 
> vendor-prefixes.yaml. 'arm-sbmr' is not a vendor.
> 
> > +    type: boolean
> > +    description:
> > +      Skipping ARM SBMR “Send Boot Progress Code” response.
> > +
> >  required:
> >    - compatible
> >    - reg
> > -- 
> > 2.31.1
> > 

