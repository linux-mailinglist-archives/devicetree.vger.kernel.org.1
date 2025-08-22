Return-Path: <devicetree+bounces-208343-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 05CB8B320FF
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 19:04:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E6E1164003C
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 17:04:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73097311C21;
	Fri, 22 Aug 2025 17:04:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pinefeat.co.uk header.i=@pinefeat.co.uk header.b="XfQbI8zU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9105B1A23A6
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 17:04:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755882281; cv=none; b=BMefw14KDh+iCvCOJdVIFFm1giiBSHHbhnl5tCY3AFHGzf52VmYMjuxS1YH/HkFVkLtJqmaVjvyChosHde9ljJ98aZTnLbnyBjWTaqQVLxdoILS4GztMfeXQAYBh0yJQaxR/u8i+ujZel/ZTwUePXkVG84IGrQs+VBDkGkLJafs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755882281; c=relaxed/simple;
	bh=5dfaUAllvYL9ZgEKiJLevm9at1ZnpgDDAmK6vElqIsc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ajMmvgP6x6wV6gGnVyKNOYRULESUDmvuwZfEgORJuHM6YkK/JIn+jaynHgZ1QaxfoBw51FVnXsRdi4/U3n8z8P9zHdvJBbtG+c/nmbVap/krRWQRq8YXKD3D48LgWTGSFrD12lhXQz3I2NztWRulvQFDbHJGe6PhsceoeS3c5i8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pinefeat.co.uk; spf=pass smtp.mailfrom=pinefeat.co.uk; dkim=pass (2048-bit key) header.d=pinefeat.co.uk header.i=@pinefeat.co.uk header.b=XfQbI8zU; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pinefeat.co.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pinefeat.co.uk
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-45b4a25ccceso13396615e9.3
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 10:04:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pinefeat.co.uk; s=google; t=1755882278; x=1756487078; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6ruBVDj+qOB6imevgf8x/SkAW4nSEvcagJ8QJX1Gamo=;
        b=XfQbI8zUxpgJTmv8XIbtSrpY/gSYzvuX61lI4/gG+UoOzBmjy6my1WpBoBgDq//WtY
         W1PBTSsbmV3g4KMzoNnpf9bupmiIA+AeQ7UD0slkykC1YGd6D40Mh6csEo0XGfVBjMjA
         VjDSwje7qCTuvWT+FUupzSrzYOeIxIfmubg/AMO1Os9HhtC18flnanpVOZ+shOuoS62Z
         fefgoaI5ex/YAdE8PySN/WAi0VKhU5NkDqmFOTXc2KnYb1fZCp3RHTBlzyfRHJi/plvl
         c/brlce7+Ko/7tASUAF7IZLoimHbXVRyKVdYaRlZVQfq1k+rkUBU118+rTNmAWSqyW9m
         SD/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755882278; x=1756487078;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6ruBVDj+qOB6imevgf8x/SkAW4nSEvcagJ8QJX1Gamo=;
        b=gZaY9rQoxGYAOZ0BNB5TdbFwkqIBZmmehRgThWjsDsVeDG7lbhTte5gsBH+3o7Uklh
         emVyQ8C3VSDdooSOT70jFsrHyCyOf/zhGbKOsbUmk44KZmrNMFUbuCAPZYtwP0Gb1DRD
         cFYxRl0CNfkMtjlZKQ1W7IOP9idR5xow8KvCNYimyoFP+OUbbW6HkZ2BydAoQNbPeTxV
         zLfjyoTDZb5huWhVxa0CN9Egww0c/RwUc9Ap1Xdo0iqSLM1FNU90iWp0/f9JdfPqK3pT
         lHrPKBq1wRev4rUCIqwsJggLg0eAQ9qSDG2646W+2ZQ5a5AMPFbXFnIWYueU9Lgk1Wed
         2X6w==
X-Forwarded-Encrypted: i=1; AJvYcCUI07qucCb8+fzLrn8jieFXaEf2TC0/z/yDwHa19pHFyW320oMAJSH9lVl/NYmxM+OGUmSGxZ3Qifua@vger.kernel.org
X-Gm-Message-State: AOJu0YxbA0vGlJiiA4haA5DADuf+bPdD12VJAlmcrANs+DCjy7onOtxr
	yy0rAcrNaEWnkl1A1wlUV715x56u5kYBtADzplKEreFOJaUZUjRcDzjlj8KY6ZLoUdw=
X-Gm-Gg: ASbGnctUMWLMbbX76cv1KVXNy9vEOkIaR03SFKUBDoZr4ojmH2RInkTC4kANz1P6FJj
	/7HfeLWonx5nY3Ldx3NgrQeg6AhKOoweuopiP0oYyTC7WI2zoLmXrR7uKptpisBMildhaHmgwGM
	DaC3lkykFdnOY+hUGud/o/8SDkbLbLdt9o/D/d5ZiVOam91wy1jOIpk7B1QBOp2DR6dAFgO0yz1
	S0pEH7qqKzcY3YTxE7gr7HoAAyJpHCIRrd4tYrg407Q3ubdLowIOJZNcdCS6t72EzcsG2a1gEtH
	kvA2Ks5VDUdFMaH/mGWBRwmKCY9Y4T6kvEG1mRCIQVhxcm7LbKxgT80HQ+g12hNAmHJ9qq26rrk
	e/l5H0yvWY4/XNMjSTyWn6gKSPkDmgQBcl5hYTnmD
X-Google-Smtp-Source: AGHT+IGJm120I2fO6Ejvhyi0cL/lXZlUxGg0+XxiLpAUXgJGj5+mlfzbh56yVxIwk9g2fimpHbnuYg==
X-Received: by 2002:a05:600c:4586:b0:45b:47e1:ef6b with SMTP id 5b1f17b1804b1-45b517e0104mr29338505e9.34.1755882277427;
        Fri, 22 Aug 2025 10:04:37 -0700 (PDT)
Received: from asmirnov-G751JM.Home ([2a02:c7c:b28c:1f00:c77a:e59e:20e0:4966])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3c711ca61d8sm160312f8f.61.2025.08.22.10.04.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 10:04:37 -0700 (PDT)
From: Aliaksandr Smirnou <support@pinefeat.co.uk>
To: jacopo.mondi@ideasonboard.com
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	hverkuil@xs4all.nl,
	krzk+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	mchehab@kernel.org,
	robh@kernel.org,
	support@pinefeat.co.uk
Subject: Re: [PATCH v3 2/2] media: i2c: Pinefeat cef168 lens control board driver
Date: Fri, 22 Aug 2025 18:04:35 +0100
Message-Id: <20250822170435.7057-1-support@pinefeat.co.uk>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <d2ka3glpjiisjs7ydx7knzzfb2dzi2lyc2r7d4hppqor33xate@2evtuolz6wah>
References: <d2ka3glpjiisjs7ydx7knzzfb2dzi2lyc2r7d4hppqor33xate@2evtuolz6wah>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

On Wed, 20 Aug 2025 14:56:38 +0200, Jacopo Mondi wrote:
> > > > +	    ctrl->id != CEF168_V4L2_CID_CUSTOM(data) &&
> > > > +	    ctrl->id != CEF168_V4L2_CID_CUSTOM(focus_range) &&
> > > > +	    ctrl->id != CEF168_V4L2_CID_CUSTOM(lens_id))
> > > > +		return -EINVAL;
> > >
> > > If you mark them WRITE_ONLY wouldn't the core take care of this ?
> >
> > These controls are read-only. The data they return depens on the lens.
> >
>
> Sorry, I wasn't clear.
> 
> If you mark as WO the controls you don't accept here, will the core
> handle this for you ?

I see what you mean now. Indeed, the other controls are alredy WO, so the
core will not let them pass here. I'll remove this check as redundant.

> > > > +#define CEF168_V4L2_CID_CUSTOM(ctrl) \
> > > > +	((V4L2_CID_USER_BASE | 168) + custom_##ctrl)
> > >
> > > I think you need to reserve space for your controls in
> > > include/uapi/linux/v4l2-controls.h
> > >
> > > otherwise this will never be visible to applications ?
> >
> > I found there is no need for that. Custom control become available
> > automatically by name via the v4l2-ctl utility. For example, the focus
> > range can be read directly in the terminal as follows:
> >
> > v4l2-ctl -d $DEV_LENS -C focus_range
> >
> 
> Yes the driver enuemrates them, but you need to add them to the main
> header, otherwise USER_BASE | 168 will be take by someone else.
> 

I see, ok, I'll reserve 16 controls for this driver in v4l2-controls.h.

Thank you for your help.

Kind regards,
  Aliaksandr

