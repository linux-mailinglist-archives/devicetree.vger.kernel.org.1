Return-Path: <devicetree+bounces-161532-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9083FA74662
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 10:30:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 504983BE314
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 09:29:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA328214201;
	Fri, 28 Mar 2025 09:30:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="B1KNts01"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5469213E7A
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 09:29:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743154201; cv=none; b=MKiW2xyeOLP2n3jlnJuPbvlz/zM/aNqgXBj9CNja4L02eptSYCMdC2PtDauVUNmPhBvb0VhkgqzPcvFtiF3c8iGk/577vUfbqOezZenJvjHZAruUPcliENqiXA+371Hy7OyLX72x94rS8IXVuVLD9lwYb/KvCDHEBHQ0OdJzmZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743154201; c=relaxed/simple;
	bh=8Vu9wccvRJP8ukJq1AmbQm1pxBvfrY2JQJAGM24f+qs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LbPZIOHzyrNHI0hxZmbW7EYs+oTjQsANSwF+B0Ou0rFFoYt8vo9tb+eeZ5wbJlSRFjlJL15nbtxqCZ4WqFT77PDyA5NPQ+42TUlcmZhUb2Qsip/9qFNFP3WIvpp1wLILRUAyWCNncLP6AYL+qFQHrFUm6H8biejEmdVhVufvJ+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=B1KNts01; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-5eb92df4fcbso3485412a12.0
        for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 02:29:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743154197; x=1743758997; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=MqSShgXJw3PA+4hUdB5QsWQTuvezZ525Q5xMzwXN2rc=;
        b=B1KNts01BRgg0aJXETm7M6ea9egioMTZOIPIYRmp8obe2y+Rtl1ox9bvusii+2cWI5
         HMbh4bl3aimUyn8yB0+Kn2tyKR6qxXDci0DUZS9ccyou4jT+ndhhQKULxSxmKYd8/wXd
         mUnWj1GokpFp2BWgdTbcRz15DVGkb5KEgfdOv5kRLsXuNMtvArhaKpJ85HyfebojAmKp
         Af3+OI3+AqVjV4O0wfB5Nv6NN2+YSJ2x0ntpHQtZNkXZ0EUs+zmxy+Lcsy/pDQAbvJ15
         X1MPVzOAXR0dh+vfMyZLWO2q2WRTjAnCgd3ccinl1LdnbBoDUW6dBBPyauRrA2+b+d8E
         CcjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743154197; x=1743758997;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MqSShgXJw3PA+4hUdB5QsWQTuvezZ525Q5xMzwXN2rc=;
        b=clGT0FZmiqVvVBwLveeduW6xuuhU9r1SBWnkWpwJioUoNO9IM8rCWJ8LQL9WzXot5D
         gxNZsnXtUYiI6cGbB4JuyY7Qu7PEJXuJ/f8o07iYR3hsjkaOBkzfh7+ESojG4aM4YiXV
         ZyrBXjKT0hCStQ4whm4RB3oW8tLO8LOZZF3LcyST6St4TEvb6p3gkY3BIomw5cBcTMAv
         SRb0WXOO4jQOMibh4BGZGPpBkN9W18Z3yKNuUAoaYkI2BiPp9HJ+Ac7byJl3an4IswjD
         Pc6EQBNPSsQ+elkFLGrJ7YhOB29zDsXAAeE6eibXTca6eLqkKS2vjLbKq2GY+6Rw9Yj+
         ogSg==
X-Forwarded-Encrypted: i=1; AJvYcCWkDeKAFk1ZeRdxCkiTPvm/hoIz327vi6fUgHSfVelr2ao/02cmRXtSlk8Wu8gslpbCbT5+QxZVXf6G@vger.kernel.org
X-Gm-Message-State: AOJu0YzEqiNub2y+h1gx/uXUxC1uADMG0pcxtjQTKwh6U0R41koR5WM7
	c0HUkUaLxIDLpuRViqTTZgzPwX9Zr4VNR8eCAVpif4zP+n148+lIfF+q/zkLlN0=
X-Gm-Gg: ASbGncvy2zBhaaVL34jcC6ejg1mMc+G4zGX4dLyHz+2rDsAI4ZzJ9a8t1ElaFlz6zED
	sfNSoA0uKmYnwexVBUL+7jqSGZR8DV9K5ZfFuyvxPjF45WbcA+efwCLP+Do0/6xwFBqqAPlRnCx
	wl8HtFzH3jPo6SlhjvsIfuwisSHZy50GO+4s+/VFRHXCTLi9Tdo/+3b8XLDC/AVrSddGAF7XQpm
	sGDJ287xiEfGYjXkb5Sm8oVz1BWIObu+ekRFzbt2dgQn4sUQhXsT+F2HVHUhuVRuSwGbeKmyhu4
	O/bxw0c5Tpfj6GqmAkfbNznKUgN6w9AivyhwBaFOjg==
X-Google-Smtp-Source: AGHT+IHfluKIRr7jH95wATbLlb3zKl9uT5b3dRjhMmF+OXcjSLOy4S6m1p6fE0ADRn8ZZaTWKhlyrQ==
X-Received: by 2002:a05:6402:90a:b0:5e5:e78a:c4d7 with SMTP id 4fb4d7f45d1cf-5ed8e387bbcmr7030250a12.12.1743154197144;
        Fri, 28 Mar 2025 02:29:57 -0700 (PDT)
Received: from linaro.org ([62.231.96.41])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5edc18030afsm1108964a12.81.2025.03.28.02.29.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Mar 2025 02:29:56 -0700 (PDT)
Date: Fri, 28 Mar 2025 11:29:55 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dennis Gilmore <dgilmore@redhat.com>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: x1e78100-t14s: enable SDX62 modem
Message-ID: <Z+ZsE1wm87GfVanE@linaro.org>
References: <20250327081427.19693-1-johan+linaro@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250327081427.19693-1-johan+linaro@kernel.org>

On 25-03-27 09:14:27, Johan Hovold wrote:
> Enable PCIe5 and the SDX62 modem present on some T14s.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
> 
> I don't have a modem in my T14s, but this is based on the work I did to
> enable the modem on the CRD reference design and the T14s schematics.
> 

What happens with T14s variants that do not have the WWAN ?

Is it OK to enable it on those, HW-wise ?

(Hope we don't have to split the devicetree again, like we did for the
panel)

