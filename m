Return-Path: <devicetree+bounces-246267-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 60CDACBB43E
	for <lists+devicetree@lfdr.de>; Sat, 13 Dec 2025 22:50:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 27EEE3000B5D
	for <lists+devicetree@lfdr.de>; Sat, 13 Dec 2025 21:49:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF2C624677D;
	Sat, 13 Dec 2025 21:49:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TPBhEL5+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F4AB228C9D
	for <devicetree@vger.kernel.org>; Sat, 13 Dec 2025 21:49:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765662596; cv=none; b=OxrkH1R3yazIyAbp0lEtEF7GEZnrcx2iLjaDAkxqMRnjRfGDOkG054n8tkbTmK/92lnpMGer6XSJT2vWS6ie+J6jEAV9HRTCIRCOsBjyTy2o2mq3uXFunZWRj+ORVRJj4dP9mUEIOkRoof6HtZLtOB3qRdnTwfSD7s9jLLtyMqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765662596; c=relaxed/simple;
	bh=e2pcb55PyYuPeFtBxr5wEMCUjpf0rvklOlW57bPjGFI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=l2f6F8wc1oAx9kWLngsQjM1zDED38ExO6CwXFwoXhdp33ab4NvTGf08mBMYrLfCfMDiClOUhz0+I6l1uq2TkyKqwx5OkH7pCR+uIin1/xiKBtCsKfPd/d12GBKj033vYaGBjpYD56PTs0XuTmulgMWD0rOrfSVCp4RtQ/83LS+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TPBhEL5+; arc=none smtp.client-ip=209.85.219.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f43.google.com with SMTP id 6a1803df08f44-88244d1559eso20460086d6.0
        for <devicetree@vger.kernel.org>; Sat, 13 Dec 2025 13:49:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765662594; x=1766267394; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/YKlck/CCtYd4yJQrHwKCnRYQwMh7R9tEpASg0oKNV0=;
        b=TPBhEL5+75p74zT4KCeLOjfS/5m0h7WpMelWc+6Y79dzgFURMv95p4Z1scfTYzzS+S
         m2Z31PnBRC+IMmdIdVJ+gWA8S8DsfFM+PxxS/TchblkJR9dlr9dhbS5nI+Li9wh3DhyH
         ox1sRLSxHjvJ4we7bk1HV9zL4DmzEWq/Ma3hCsW8BelQqpdftm9+49wNaSQfKMDNeA0B
         q9To8mRnxdkOwlJ79jLDpj80ff59kLye92HmkSCpuzg1hRUGfX0PpQpXwcvHUDflKkR5
         yMQiTVVk0cos4LgCJFZXn0SG+1lL6ej5pngpjbRkVwmVAuBNPEkaO/RFfFTSliyWMDZ2
         I1xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765662594; x=1766267394;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/YKlck/CCtYd4yJQrHwKCnRYQwMh7R9tEpASg0oKNV0=;
        b=GQNEsUA3B+bGKlufAUNuSYTBu6O5euT9HJFDYVRfnd+zNh4cyFThA5k7onIVf4MVui
         bXagWvkLecKvMnoIrhr/yUYpT7Oa5sX3c3cp216aCX2vrA5Ib3lKTOAVlnXrpYYgvdaY
         WoyDoIVbb2HcoU/lZgrRsjGtWcO6ZPxb3w2NWhAhZyD6g9HkGBE++LSwNSlr9lAP6P3T
         yrYo5RZxnOWqI7ns/zTnRIRGvmb4QDnC1U+D8etmdbwbsWMFRpjSPKvnVc490br6SFj2
         ASHodXRX5phVUxWbclrkJPFZ2ChwlWKkQhMSjmFsahyXYSKEm/bYs+2NWLINEnpTrPA/
         ZbhA==
X-Forwarded-Encrypted: i=1; AJvYcCVyOUH62x1mEgjswx/oY7ivrUFaUDPIvswBhae6LEJcqbsgbRjqUAsTn4gLU1IUF+kNv2amIv/jf52y@vger.kernel.org
X-Gm-Message-State: AOJu0YzMru0twJSOEM1m+lqcQzdoArXRh4fVcucSwdnnw0JwinCFQRDr
	fP6o9Pjk48QVctLx77emsmUJ/lZl+57GPeZdJs4GezaLm/gKWn/BN+kr
X-Gm-Gg: AY/fxX5B+GkneqByJOiZpsFq9FOmOq5ihjo9CyxPIGv/LIguCsxU8+xMSrkMFncxTtV
	Tv2fnk+W5q/sB4n41dqsDle2UmWHRGjOvi34CcvlBmzwF0Ro04/VzrlzkS+Lz6e3V2sysCIQQ+D
	R7rKGoDsV0IvTlSy2x0itsedNYIfXRQUqkBK+UU5SFyuOhSCA5FPmSooKx+UD7viJCjbdboVdDd
	+pZFjCdnv0nypiQbWn76z3YJwtlpveUz0R0lEXuEPGRyL5AfjpB4w86u+R6izXpz2e28SUbgkf3
	5P07KWX8BvvE9YimEhefHOl05pYZiJY4Pk/Tv7Lj76qwqCBkywjOxfS5lyFh3c4WNIfZzItZA9p
	vx0qQyg126+F4bdBxOWmQtdlrfNJyqmeXzj/4YDXeMH0shl4Gn2gYX+go0RWN+m8Fg+YYVEtxMu
	9UQ3zYiflXk8BveA==
X-Google-Smtp-Source: AGHT+IFYIq8qsqW619ZKElnaxqHH6op4Y8u4AELFLc0W1TCE8Lq3LVxJ+0WCm0xzFjN8cNlD19ZF1g==
X-Received: by 2002:a05:6214:da3:b0:880:837d:aa4c with SMTP id 6a1803df08f44-8887f2ecb40mr91238556d6.28.1765662594142;
        Sat, 13 Dec 2025 13:49:54 -0800 (PST)
Received: from localhost ([184.144.58.243])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-88993b59838sm20844186d6.13.2025.12.13.13.49.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Dec 2025 13:49:53 -0800 (PST)
Date: Sat, 13 Dec 2025 16:50:07 -0500
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
Message-ID: <aT3eUlQuwXptSFGD@rdacayan>
References: <20251211014846.16602-1-mailingradian@gmail.com>
 <20251211014846.16602-2-mailingradian@gmail.com>
 <25c8ad84-2a3f-4e09-a32f-8af68379858e@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <25c8ad84-2a3f-4e09-a32f-8af68379858e@linaro.org>

On Thu, Dec 11, 2025 at 01:02:49PM +0200, Vladimir Zapolskiy wrote:
> On 12/11/25 03:48, Richard Acayan wrote:
<snip>
> > +  reset-gpios:
> > +    maxItems: 1
> 
> Please explicitly document that the reset GPIO is active low, and make
> the correspondent dts changes.

On my local copy, the DTS already specifies active low, and I haven't
changed it since sending. I'll just change the dt-bindings.

