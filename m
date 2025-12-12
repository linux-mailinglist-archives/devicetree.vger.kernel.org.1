Return-Path: <devicetree+bounces-245996-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 889CFCB7A7A
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 03:18:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 70D7A3004A21
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 02:18:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3301E1494C2;
	Fri, 12 Dec 2025 02:18:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="m/t+6B8P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BF303597B
	for <devicetree@vger.kernel.org>; Fri, 12 Dec 2025 02:18:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765505929; cv=none; b=nVrACU01esVTUYD/h65Z7LmURPK4uCNFGXUs+lje2oR9zSUzyMuw5qAKEp47erOqrio+qdlq1sJxASPe7w0liKRx9CMTJA29bkjqIcFx7crrisGw0iCtUrbs4wMHQqeocg21rd3vxpd/nGThYMKfzn3AXFE5hT9aNkeu859oYJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765505929; c=relaxed/simple;
	bh=vXY33GjJm5KPKMDDg0jEaAABT+hBR+cONrD6JmAwXDc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YEoMDXHOh0yBILynjW8QHtuYk3BLFnJC/Mprb/pHJnc6QnsqVjLCdorxZGXrwjIQNlOsT0rirKxorl8ZQGc2m8hIzyEoHdPVYrkkiSgljYKbyMKy9Ql4JzCcQLptbXcBcryN0ePuWSBGumw9jeNgnnsrg4KRbf6QIIGec3yeoeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=m/t+6B8P; arc=none smtp.client-ip=209.85.219.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f53.google.com with SMTP id 6a1803df08f44-8824888ce97so10502016d6.2
        for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 18:18:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765505926; x=1766110726; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rz/eTry6Y2wq/O9yk3kZ7L7qqerqYSKAZUQ7umqPc1U=;
        b=m/t+6B8PoS5vGcAgLl4O3pmOI5CWzflpjcQoFk/q6S11RymuyDRw+EdntE2nbhbu4N
         /Lf6YEjYt3Sp84RtkXJmIUa1aEGemALbdVtraDjB0cPkpiaHS1fytigjGoEamfBlsj+J
         4FxrzvuQEwKAZyqxr+CQDzhHR4/vnOStONHu/tolh7Zsjqyle/8sNpwRZGBuuyPz3oah
         NYdasxRQPddBCMrnJI8K1+PrPZHentUFaBpcDyw0EwpYPjVuFNMofZRYHPdu+e1KnKU5
         38uj0drAiLBmpWeAqd+DlQkBmCzxXSa0Z1ZD5KpvQWO42y0cm8ewQxAoQFC9p7/XQy6u
         pPKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765505926; x=1766110726;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rz/eTry6Y2wq/O9yk3kZ7L7qqerqYSKAZUQ7umqPc1U=;
        b=Ax9oDzaJdsz5fdLQjQvblxTPV5q5WXoAB/szbARwR0SKaOVNcs7k5kO+Pl5jpci+dM
         MVWABZeadyUWMZcK52mghsY+5pNuUoAXxw/mXOHJuyCSEsRdqcV+XM1CF3bOOXuJcgof
         6XPAtSrNKi5yyanoR19a1kka+4FZ/O18XohHeeOlqoh4/8YVC0Sz7BxDg4wcEYjvpevc
         HuuOTnY/0xud/eAhHNLF+z4A+JRwLDB11Z8KZQUciEmsisxJsBEXf7UpnBfcwHLikkIg
         zExjp53OoYc+m+CQnmR4gAGPE9qOD+54bkaiPK6HDRSbn8JTEhFOrwXzieqGk3gVYdp3
         EaDA==
X-Forwarded-Encrypted: i=1; AJvYcCVNgkF+XMN2EDotYF4bEffRcjljuwpcCDDvVEQDAAz9OqJBOaO+yCvYTVFwn7gbQ2FhJGyn5CHNwfMV@vger.kernel.org
X-Gm-Message-State: AOJu0YzbA3NWXyYrwqPsjOk1BY4JM1TtaSPiJwkWR8vkrWhPwKu8mECt
	WkrBP3wu6OsI0eScZ7fxbvZJBxvD5SGezPRBZrjZqQemY5iSZ1Ux4sHZ
X-Gm-Gg: AY/fxX6loIMtAzt8hhNm6z8ivi6UnqoPtetpgzrk+z2VOOTikdS8EGKnySJqLl/cAXU
	MZyVfzEVd2NcNlDdZCM0pZ1Hd1QXNChQycfwqpjEsZ5gajmnuOUMuVMcFWbL08kpmG0YZsHoFs4
	83GNTO7xFR+bVYaSWee0mb8aQUmtDLD+Pmg9p3k1lCQqPGnTk4s1Y6iBNowBM5MgFn7JQEBJzo9
	x6Imx7sdRt/3mwigEw60XxnrjMEwCfaodjcqtSkh1dfEslfQ7dJ1GbJTlgTDIkxWXNZ8U8hhpUl
	ct5/1SpX8jMyaYHBqFz8OYxT7yzvvFinhsXatFcjZueBLxYLhtepqKKEz3fB2MNGfwP7cu4npk7
	f4iHI+vDG8Ks4KrjRLtuIvIIzJAgafu4AJ8ev7q+dvU/eTvzdI02OL2mwIb04qJMsO6ig6fe0fX
	QHHZrG+xxFCVxVrA==
X-Google-Smtp-Source: AGHT+IGXWSQntm+9zo+FUUZWqvqyL6o/9gm+1bWRSev67+FCA2MGS0NQpQMbsyqXv/UrMCSeKZL2kg==
X-Received: by 2002:a05:6214:2b84:b0:880:51f0:5b93 with SMTP id 6a1803df08f44-8887e020d0fmr11582396d6.18.1765505926409;
        Thu, 11 Dec 2025 18:18:46 -0800 (PST)
Received: from localhost ([184.144.58.243])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-88881a19c88sm778006d6.50.2025.12.11.18.18.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 18:18:45 -0800 (PST)
Date: Thu, 11 Dec 2025 21:19:00 -0500
From: Richard Acayan <mailingradian@gmail.com>
To: Bryan O'Donoghue <bod.linux@nxsw.ie>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Tianshu Qiu <tian.shu.qiu@intel.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-media@vger.kernel.org,
	Robert Mader <robert.mader@collabora.com>,
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Subject: Re: [PATCH v4 5/5] arm64: dts: qcom: sdm670-google-sargo: add imx355
 front camera
Message-ID: <aTt7lGXU5IPfANxq@rdacayan>
References: <20251211014846.16602-1-mailingradian@gmail.com>
 <20251211014846.16602-6-mailingradian@gmail.com>
 <wwpqaecvz42jopgaboasbh353ieelctpvgo3yj6y5tnxoem5oz@j5sbx3yxntot>
 <aTtkwQb2gOeWAFuv@rdacayan>
 <2fff55c6-aea5-4019-bcb9-eaff3b44474e@nxsw.ie>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2fff55c6-aea5-4019-bcb9-eaff3b44474e@nxsw.ie>

On Fri, Dec 12, 2025 at 01:45:52AM +0000, Bryan O'Donoghue wrote:
> On 12/12/2025 00:41, Richard Acayan wrote:
> >> This would be much better:
> >>
> >>    &camss_endpoint1: {
> >>        clock-lanes, data-lanes, remote-endpoint here
> >>    };
> > I'm not sure what you mean, there might be some typo.
> 
> At least for me the endpoint name could be improved see:
> 
> Take arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
> 
> Also since you likely have more than one sensor I'd suggest endpoint@0

Uh... the front and rear camera here are on different CSI ports.

Something like:

	&camss {
		ports {
			port@0 {
				endpoint {
					... // rear camera endpoint goes here
				};
			};

			port@1 {
				endpoint {
					... // front camera endpoint goes here
				};
			};
		};
	};

Would they both be endpoint@0? Or would the front camera be endpoint@1?

