Return-Path: <devicetree+bounces-246268-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A9FC7CBB44A
	for <lists+devicetree@lfdr.de>; Sat, 13 Dec 2025 22:52:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D7CC43008F9B
	for <lists+devicetree@lfdr.de>; Sat, 13 Dec 2025 21:52:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 028682441B8;
	Sat, 13 Dec 2025 21:52:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Tk22ue/E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E11426FDBF
	for <devicetree@vger.kernel.org>; Sat, 13 Dec 2025 21:52:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765662761; cv=none; b=m1Cjz03NmYG9MyplW1UFLkQJVb3aU0TgCqJb8G4X58eBR43/O20T92qCwDrmjLxhUMqsh7PF/O97GtJFQ/1BTeZn/39Xdw1q8eFzF3zLEBtUfjwz7BKcSC60AgQe+MZpJ2a+pjyzoNFRCGkv3a5FFqbxGd0UGy3OztOZcIkSPjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765662761; c=relaxed/simple;
	bh=MOrv8Z468pz42F7Vvd2hP+rc9j/1X54/GPGCIfRTwL0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dHt5WcAlASwgAavX29oD9StqEtj9+TbjMOztnrEF+NDknUO6PE+QWwnv2Ye3RjtAjAXjYZwTvrHa/z31GyPZ+ZToj3qA9gUmeg9BzFSsy0O+6e1SLM6zhxvSzSBRpV+YlA3FMfIfpmd/ew/E0IQL7v9tPQvB/ifBk4nzNbDLUU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Tk22ue/E; arc=none smtp.client-ip=209.85.222.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f179.google.com with SMTP id af79cd13be357-8a3eac7ca30so166711585a.2
        for <devicetree@vger.kernel.org>; Sat, 13 Dec 2025 13:52:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765662759; x=1766267559; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0vmpfVrhKRCeQv0RKMF2hPkD4G5WVFs8+IoJsGJYwCQ=;
        b=Tk22ue/EZPyVUX+ppacY8yOIiMdBQwT5vrLi6BbR+l2HyDp3K8OsXqTTvRq3W9HfWo
         rAIgeiJKdtVK2UsK2t5lwPPlTAInbJD2WIhcrJ45X7kKuwZBvvI1/85Q+f1g3sY2ijty
         NlPlXrbJgnakpEFHuhmF/GD7wF0pSNccpEdTPIGP+J5ldhHcafLAU9qY55MuptgIft2Z
         3p0gqZh9mnNbR8sEbDJEKhRt5KlHKzkEFREMLlFCMLeODDVXyoGN6APvmoIIhoeOcMzd
         Nomddglb4/NW0Kqdhqj3lYLP7SKJ7CcGCq5nA4gBYwXPlVLlyrqrgNCQBa+5Nc3wgQ+I
         QGyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765662759; x=1766267559;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0vmpfVrhKRCeQv0RKMF2hPkD4G5WVFs8+IoJsGJYwCQ=;
        b=aG+ZCPE01R/IUt8sWOiE1h/ruRwv1CQMhPljx0+zV3U4NDnScosNBr193KAJ9s/hP+
         36L/kjUrhfobYsFNSq1mXq3+atGknMWykrgx0pRD4ZfHsFQyZGJiRJ/nHy9Tq8Ug+LZi
         ZZVysU7nBi1W4yQyMVpU2wab6/iovc6odhnny/BU7zA3WeePLcQBUtq2OjnIqmXtgGU9
         MYJB2JregH0/ra2uXc9ANF/tSqBdO6uFH3TmJ0r0DlqxdTGreQz3vTGL7ycejsenhBgk
         8TIY7iQ7+eITLfZ4+hT7v25ayESqmc7c5AtfdjFCaAU1yaVC4GqzigDBFDP/HAYX29Cz
         ftjg==
X-Forwarded-Encrypted: i=1; AJvYcCXzx1XLr+kJGqXt4Y0jO19hMPtlrTOY8xTLXDwixQcyirEHRUq4JAXXl09ayvfP78uQ5s+aEig7jPSh@vger.kernel.org
X-Gm-Message-State: AOJu0YzgnbTLjE+Gbb5eJhuwAfO6T/tJcLj7V7X1emjbw4cym+3aXRMb
	uYZllxNZThW4Lef2Qo3komDKTgStFF/F3FYomMBDvlHnDCR7BD57M5Vq
X-Gm-Gg: AY/fxX7QlRnOUz+nQxrpHWcBjp5YGwKgQ8I8pf5zSqpFz04b6O9iecrOvPkTtnOVICm
	qNBeyrOS2pbbBmKpnmWh+RGQwOOLMF2pNHZYMu566XiCaKGi18mHjsOxo3ZnF7FD5RltgKwXArV
	Jo+nLqf2+YsR5QvkW52SD44CDsKUsvgxOEbYCeqk1FpYw5egDBeTC2lW7QOW6AXVqYDwiO5ntSW
	SoYI4AQxA1utWMLNTK81md3092YQFlEPH/N19dPigw/86HkVecmvUx9xOpDEVYRgZFUEx3D8IGV
	Nd17/KUTo/T7ZN4Qp1oNbUjNcl/cQ3LAAJBYfKdgUo92pNw9GjkKqlMoGBhIpQTOpimhpPYrceN
	QNvs0B3n3gulVhSHgETZUYMhzZ15YnuvgBQbcVleK99ICY2UIx057+r/cj5RpwYGztpzbCM1OO0
	6sNYyRh+5HmByG4Q==
X-Google-Smtp-Source: AGHT+IHHh35U+sxh3+imqr2OZ78va01JS9YvuTHyoO2ahBYtY2IepXHUI8Y0tIiK43w8obVA7scckA==
X-Received: by 2002:a05:620a:4508:b0:8b2:e179:febd with SMTP id af79cd13be357-8bb398dfef4mr1038221585a.10.1765662759216;
        Sat, 13 Dec 2025 13:52:39 -0800 (PST)
Received: from localhost ([184.144.58.243])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8bab5c3bd4bsm744693985a.32.2025.12.13.13.52.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Dec 2025 13:52:37 -0800 (PST)
Date: Sat, 13 Dec 2025 16:52:51 -0500
From: Richard Acayan <mailingradian@gmail.com>
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Tianshu Qiu <tian.shu.qiu@intel.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-media@vger.kernel.org,
	Robert Mader <robert.mader@collabora.com>
Subject: Re: [PATCH v4 1/5] dt-bindings: media: i2c: Add Sony IMX355
Message-ID: <aT3gM5eSxjNRDmRW@rdacayan>
References: <20251211014846.16602-1-mailingradian@gmail.com>
 <20251211014846.16602-2-mailingradian@gmail.com>
 <25c8ad84-2a3f-4e09-a32f-8af68379858e@linaro.org>
 <aT3eUlQuwXptSFGD@rdacayan>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aT3eUlQuwXptSFGD@rdacayan>

On Sat, Dec 13, 2025 at 04:50:07PM -0500, Richard Acayan wrote:
> On Thu, Dec 11, 2025 at 01:02:49PM +0200, Vladimir Zapolskiy wrote:
> > On 12/11/25 03:48, Richard Acayan wrote:
> <snip>
> > > +  reset-gpios:
> > > +    maxItems: 1
> > 
> > Please explicitly document that the reset GPIO is active low, and make
> > the correspondent dts changes.
> 
> On my local copy, the DTS already specifies active low, and I haven't
> changed it since sending. I'll just change the dt-bindings.

Oh nevermind. It is still active high.

