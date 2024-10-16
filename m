Return-Path: <devicetree+bounces-111902-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CDA3E9A0414
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 10:21:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 29548B26F63
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 08:21:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE8A31C0DF0;
	Wed, 16 Oct 2024 08:21:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JdYb5II8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 169CE190046
	for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 08:21:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729066873; cv=none; b=f4PDIu9LMrkBPv4tZcodPnPhUOT969V2mKDRyOApfzjdGFi3mawf0t/S+yxHVq2rSvKEZ05OY+ZMdmmakdC/W27zy+Vu05QAixrmQ24tNE38anpl2ThAX0fTWYMxT/lxaygiKAW8OZiqvS0f5NrkKzxH5e/rAxTn9KRDXtcnIsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729066873; c=relaxed/simple;
	bh=UzSOWuHbZ5Ol08JLBsywiLxpxtXJWiUM0Bw5vEAdwUY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=RMeGDwfmybG4Uy6AB8Gkq6xLlYIGh/Tn05t3nqXx0o92qPR6t2oF/DpO10Qc8GpqzqwLSZTwoAGfE6MtZsVaDyDcParTtoqKrdJ5hEGVc494KABguqRORDTbvqaMmJXuce2sKaCY8ghs/7akqLYJTGUw71LpRAYSsMZRVorW9R8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JdYb5II8; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4314a26002bso10052145e9.0
        for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 01:21:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729066870; x=1729671670; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oHuHA10oz+IlUb3WFI3EHpjMKwYEau3D3WrIjZr3cMQ=;
        b=JdYb5II8Li6JU3BDEJInlG8siyHpud1BLRxGSUF1QSEADszs/qNtNEknMGxJn90PBX
         7LIdZa2ZpjtS1QBh5yN+I8ghTw9z3JA1x4fW6ZSxj01T75qlxIfHWwObSl4xmlCTcutn
         3HoXcHLrI9op9zpPPLqJKFVg9JXKvlKfq9fi6BLBJchabkihGivEN/o93/XnGgHWCPYD
         uIHI61blUCV/sw2wbsnP1dtvGE5Jk7fP+pxYIVFTSI9cTCxoENFDxm51w64EtrhJYVU9
         XgNT2puBIm4KSlLheE3v5XbLq3R4CLLP+w+tMnIUJnE3GsSPbAkXHD6taW2qih0UN9iC
         Zvsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729066870; x=1729671670;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oHuHA10oz+IlUb3WFI3EHpjMKwYEau3D3WrIjZr3cMQ=;
        b=p2/YzegsErHxpk63hI/vUIZGnsMAtSbCALhppArffty7LUOVR+iAPpYCF7j+plTZJD
         DSC5N3BDjKJkDqiZtzmvTxGnU1DkM+l0/WebHKwqjipjRNTUdJGG3j1OBhkvr4L1tUhA
         XgcaNZFS3ESifV+3pbVdVEjiZaRR4GfwO0OCRFjcHuywsvDL0OUf8sPS+XHckKnCGvOo
         4gJ705V7uZ+sb7EreJWPmZHvQunBSHTpUOY8EvDa+F7gCCVzh+s7+MaMNRuzjHk+UtzN
         4tCnZp60o196pXIPvULwkgFGHWETxJIMQ5bA++Vt4awRYXcvsHi7ku73OR3WCcMmtU9E
         bNcQ==
X-Forwarded-Encrypted: i=1; AJvYcCX4CmcCls54ps070FukDkuJwhObCri4t/xiqUH0Xanz6Yy/AvIBAvnZn2T0QkHXrUIGpzgIy93jtm4h@vger.kernel.org
X-Gm-Message-State: AOJu0YycSzoGAvyBUELcq1CpDnf22cS0JzgkzQ9KRa8PmDtAxAuxLsHg
	ZhuyHnvsdIThluhfmv21/QXwPljJLals3WLi5r+oaLeKmbh9+Q6BPB0BFVkMDdc=
X-Google-Smtp-Source: AGHT+IERLNsDKzULbD6b+VfFRVUqsn5sE8FD5wfQhGK0Pm7Idfsgba53RSTr8weraZ+y4cAyzf8GLQ==
X-Received: by 2002:a05:600c:4f83:b0:42e:75a6:bb60 with SMTP id 5b1f17b1804b1-4314a322492mr24798595e9.19.1729066870226;
        Wed, 16 Oct 2024 01:21:10 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4313f569eacsm41658965e9.20.2024.10.16.01.21.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Oct 2024 01:21:09 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: quic_jesszhan@quicinc.com, maarten.lankhorst@linux.intel.com, 
 mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch, 
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
 Danila Tikhonov <danila@jiaxyga.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux@mainlining.org
In-Reply-To: <20241013212402.15624-1-danila@jiaxyga.com>
References: <20241013212402.15624-1-danila@jiaxyga.com>
Subject: Re: [PATCH 0/2] Add Samsung AMS581VF01 panel support
Message-Id: <172906686939.3993974.10769227098345025810.b4-ty@linaro.org>
Date: Wed, 16 Oct 2024 10:21:09 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.1

Hi,

On Mon, 14 Oct 2024 00:24:00 +0300, Danila Tikhonov wrote:
> This patch series adds support for the Samsung AMS581VF01 panel, used in
> the Google Pixel 4a (sm7150-google-sunfish). Unlike many other devices,
> which may use different panels in various revisions, the Pixel 4a has only
> one possible panel option. Also this panel is not used in other devices.
> Testing has been done by me.
> 
> The driver initializes the panel in normal mode (High Brightness Mode and
> Brightness Dimming are disabled). High Brightness Mode and Brightness
> Dimming are not supported yet.
> 
> [...]

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/2] dt-bindings: display: panel: Add Samsung AMS581VF01
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/dca22e99706b70169534575fc82028bb6d44138a
[2/2] drm/panel: Add Samsung AMS581VF01 panel driver
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/b330f3a069a20a5698ac840908579c325b7bdc4a

-- 
Neil


