Return-Path: <devicetree+bounces-125788-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AE6259DF38C
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 23:36:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C8E0628161A
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 22:35:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 211DC1AB51D;
	Sat, 30 Nov 2024 22:35:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="a97DjdWK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A2A1A4F01
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 22:35:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733006155; cv=none; b=XU+LPinMKsqp2YV+AE/LDMfCNSAl9uGN2DrPuCZkiN0VG7FDYkTQSuFAM1j3iBq1uCF3FZhdzrZcps3oTLLRTOW2wX+FIpyeMhpq4jyoNF9cw5iF2zkySRhf4RXNuiWbtkemdTDriRdgaMz1lzkObByJekXx1DAKJVxVjmIrn4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733006155; c=relaxed/simple;
	bh=e3Y+LPT4T+5s5Z1B9azCpm11KJqEouAd2GSPxWJzbrc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XjPq6qAL9afwLKUIGswzOV1qccxHLpci6dDlTuR/MpxzH63/DWM9WYgcc0AkWINZtJopTScxlhca7hbrM4qtLWstHvOjnlZWQ43sllIC/umMHYx34t9Te0dzVRT9QCafXD+3yt8DPJ1L4NT+m96TUZxww/gLngUgznvkiN1saQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=a97DjdWK; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-53de5ec22adso3623003e87.3
        for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 14:35:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733006151; x=1733610951; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=NjEEdOsbPzZpO48x0whbp4HjANLGu9eqTa4aQfjzkTo=;
        b=a97DjdWKvexPbFWtfAtSizs3GGqmFcT1xqlpJ5uKFWZinCbpqyNWIxGzsRUHhf2BvW
         bvwZHTktqh698k8bjHI/j71Bgi5F7iDIWqS8V0LBnW8Gw5t+ykkvs2fJOGHQgNJU6x8P
         bRiTxIQfASlk72hKSo0kWxh7mkUdPY5gakyfGMxXf1OlfQjyhy/i7Pqf4/XzlhkKw62H
         8y1q+bMbsd94mDIjIy00j0lI3z3DLnlkvjUUj2gMJZ953bJofd2+91jJfAvnRkTVDbSU
         1ceUD3gIdTTI9GsfMjzK/mQOR2UU61CNqhLu2ZHjdpIsAsC4ge1MywG9bTKCqzl20BaN
         ohZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733006151; x=1733610951;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NjEEdOsbPzZpO48x0whbp4HjANLGu9eqTa4aQfjzkTo=;
        b=WbjIrVhbNiXaZhB1QWVdhSPSBBaSyzEnD3BXZdKzgiH5PRlqNhq5srQytNxp2IRJYY
         2fxpPPfhdsrNCZf95IY/hNBiPhxaamlBjFxfIa9eMINkTBO7FSVCA3txjiS2+pFGeJge
         dH/JLMGt1HBNHfq1dtU76MW0xFs5/lYkcGXi05xBNQPzTMcb5EuT9lMz7WelCc5Aq2gi
         vy/pvq/vbuQmP0BLnLVwfz7VjkYbj6XqAW5JVSLky/muUjs/bfUjU38+uIm50wvhT7Yo
         EJlWZvXVS7JRVmHBTt5qiJwRZyo0WdM0mUEn63i+JPDpqzF9M2F2VjAElJS1kO2ioXvr
         0JuQ==
X-Forwarded-Encrypted: i=1; AJvYcCVBeYTmfBjtDxGt2/GkrvDDoBmHiMGORNO1vhsnlXfdjIq6rtm/59WK/twF01AT7NzH5tQq3hrX9dH+@vger.kernel.org
X-Gm-Message-State: AOJu0Yzjqus/z1zOiMhQblTh3KqYm47TJSE3H4WKupwX8wrc/WmDpiCs
	2pag09KGu5e6U5+LTreK4UiwPnFC0ZlezrZWIi630GnKiVorjUsUD+BBKyVQq+A=
X-Gm-Gg: ASbGncvqe4mPDEqlm5KAWLdYSoMoWMLGDHQe42n6IYJp/YobSYazLrLCECivOQLle93
	LugRb94HBxdU9/tNj5Y+zfdnKm/xb6xpR+axjcscSoy180V80dddK50XQdkRQGr0GdgSTxU9s8f
	5zlfZXtfqUMro02jE+29FJ1JCMlvLmcflcTZSK+mrnvuerSXmXUGphIsrKxHTyRpC5rnHhW14LV
	0MRgmz04TUOPYET0kgGYlxngPfdM9OtOLv6oRUDoXCYgm1zJoOxcig/LHXyRvxUGp6g4GCAgk6c
	KIKNjIFWNXucep1kG381r/2X/iHbqg==
X-Google-Smtp-Source: AGHT+IFRjM9hiHSdh6QMnUl0xAn2h7VlGTe986jUjWKha/xgpcy6CHVBb/2l1zKz49suidogBV/Sfg==
X-Received: by 2002:a05:6512:3983:b0:53d:ed77:37c1 with SMTP id 2adb3069b0e04-53df00ff831mr10041944e87.43.1733006151122;
        Sat, 30 Nov 2024 14:35:51 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53df64a068esm877155e87.273.2024.11.30.14.35.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Nov 2024 14:35:49 -0800 (PST)
Date: Sun, 1 Dec 2024 00:35:47 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Naman Jain <quic_namajain@quicinc.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v2 0/2] nvmem: qfprom: add Qualcomm SAR2130P support
Message-ID: <yeqgrz3tlhqhkd5au5ras7iyp3q5l6mjfjnpngyuffn6k2hu2y@toy6eqfpdoub>
References: <20241027-sar2130p-nvmem-v2-0-743c1271bf2d@linaro.org>
 <5lucyuowwaz7k5x2grlifuc7xxxppant3ysofy52xsrxdsx4zf@2tj43gglshcf>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5lucyuowwaz7k5x2grlifuc7xxxppant3ysofy52xsrxdsx4zf@2tj43gglshcf>

On Fri, Nov 15, 2024 at 09:59:58AM +0200, Dmitry Baryshkov wrote:
> On Sun, Oct 27, 2024 at 01:42:32AM +0300, Dmitry Baryshkov wrote:
> > Pick up a fix from msm-5.x kernels and add compatible for the Qualcomm
> > SAR2130P platform.
> > 
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> > Changes in v2:
> > - Picked up required patch from QCLinux.
> > - Link to v1: https://lore.kernel.org/r/20241017-sar2130p-nvmem-v1-1-6cc32789afc6@linaro.org
> 
> These two patches have been sent two weeks ago, but got no response from
> the maintainers. Is there any reason for that? Srinivas, is the
> subsystem being maintained or should we change it to 'S: Odd Fixes'?

Another two weeks and still no response. Yes, we are in the merge
window, so I don't expect the patches to be applied. However it would
have been nice to get a feedback from the maintainer.

-- 
With best wishes
Dmitry

