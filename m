Return-Path: <devicetree+bounces-130606-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 22A389F086F
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 10:50:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8AB2C188B187
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 09:50:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DD241B395B;
	Fri, 13 Dec 2024 09:50:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hkLGEYPF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 746151B3930
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 09:50:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734083427; cv=none; b=aK8M9qUeSQjqJUh9qPXojxxMxGVU7KJMSoczkztld5kmNSJbQU9lB94QbIIwYNgiw0ERCfkVy5XQmO/SDwdVFLNlhJYkMk7S5W71piFD2urM71NiYsa7dhAZvEjemA4H655QtRsIiIDEY4DnGHrq7Xu6pFH2DXWulBqbx31677M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734083427; c=relaxed/simple;
	bh=StUuFrHRET2Uq88V3FsUPRF/VXTLA1t84lCCQVOSfVY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=MX5qLEQ4hHxvWsdfI6tctIwLhv8N6TcW7sTXY5+aXF2cyuYaAUO8OG1i1+u48Bhx3jEJACIIXzxJPpUx80VebiFnhEwu6LRGPse6vrZqQyzepPY9/CgqFIboj2RySwpaqMs9zDPH0EiV3/qL3ToJccsfAwjyyzS9cIoRfGPscks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hkLGEYPF; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-43622267b2eso15738815e9.0
        for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 01:50:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734083424; x=1734688224; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JNzQNA5YMpAIaOEEK69Vz2/DURtu35jxdJqd68BQ/VM=;
        b=hkLGEYPFBY18BzTivmZdE1BH4vxqTwvtJ08gUBhcKh93l4v9j9GpFzb2qD1ynu1l4z
         ERgu33sU7Kh0bCk+gD3B8wydSSmP7ZNk0mFev6nx9PKAv7GgmZuBJ2PGokSXcaTPf/Xk
         aqFwjHFzGyySNHt3dVBOElMxDogT+KdSKJ25OLgtQSi2/GyI9DuO+bdGWDMdSzV1qCtQ
         BPrXxvOUOqW26nV8stk2njQSsjNGSz5fzAyLK3ssOhyHF61Fl7iEAo2PdX6FtOZD6wul
         FAf0XMaukpXrBEZgCM93ffJKezt5uSs29jAhyVMkP9hwNQfl5+5ebksUcbkQ/Eg1VquH
         ZDRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734083424; x=1734688224;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JNzQNA5YMpAIaOEEK69Vz2/DURtu35jxdJqd68BQ/VM=;
        b=CqZ0ksj2FKQtlNdHYeMK2kRr6X2SD5wI4guh8/UQsmqnxs+oaQaJv8T+j9YC0Dwy6c
         qHwSD/p3UzZiWv20XSSCHiVKQ5seUjTx38lhlGt/Qe06kvdaMZEQ+Az9Zl6w4mOlAqx+
         ie4wBn7Ilo4vNRbrr/SICXCtXaQC8oy8cIL4ySB4uGJPyMdat4fpDvE8U+KZ/iFuYNf0
         2xHJFyUcBL1jhjw6VYfT83fnwXebeuebBYmzhE1XW+9xtA+VHIRPpPqWrPAW1ceEMFH4
         sYfuHmHvos+hnZzLgwgZFwO3mw8pBRPH4GVjHExQAJUSaU/7cWEORBirzp9gtYkvw/8E
         R+AA==
X-Forwarded-Encrypted: i=1; AJvYcCWKbjWiORB1iVJwNrlmMeD083HX77Ff9evBlo5PDsWB6D4hv9Shsi4EK9R1xms/Pe7meBPfLu8Xsj73@vger.kernel.org
X-Gm-Message-State: AOJu0YzNUCbxVVQTBgOGIOtEVXUnVZjwA7IqnGaX0J9dBO9Pj4WfHZ5g
	lIzW09nL47v3+NVbg3soLmUb50eJtzQyVZNle5ittQU95VoYSTP/NGXkbC2obZE=
X-Gm-Gg: ASbGncvKG8KYfsbeybvFvKXk3rCoh/vxgsaxFrvTelsNVejN4JXugCz84a1BYhhtGgo
	KzbO6b7mP9Va0EC+nwGlgpi4e3PgYajfKzfmqP70TBXFS0tmi8mJ81r7U1QxV9+ImqNNLvefFQw
	c2CRjShliqt+d4hDJzoihtaFbg45v0iMaXChqh07ePcnWBtafIanmBMTaGgIBj3Ybn9YPOx55TR
	k4hxzzMJPx1YsseC7Dt2XRV+as0dmypug0UmOCCIhJjoVBZcGRMWZ+uHz+Uu/HlkDFdJXLZRv4s
	bQ==
X-Google-Smtp-Source: AGHT+IEveubhu7QyUwffWDzma2q/2n170KZ0QuGjxxcbY8M8OEoGtORBlvRGfhraDjw5fS6fCjZXSg==
X-Received: by 2002:a05:600c:b95:b0:434:a0bf:98ea with SMTP id 5b1f17b1804b1-4362aa2e5ffmr16750345e9.9.1734083423778;
        Fri, 13 Dec 2024 01:50:23 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-387824a3e38sm6521670f8f.23.2024.12.13.01.50.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Dec 2024 01:50:23 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: dri-devel@lists.freedesktop.org, Marek Vasut <marex@denx.de>
Cc: Conor Dooley <conor+dt@kernel.org>, David Airlie <airlied@gmail.com>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh@kernel.org>, 
 Sam Ravnborg <sam@ravnborg.org>, Simona Vetter <simona@ffwll.ch>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org
In-Reply-To: <20241125013413.160725-1-marex@denx.de>
References: <20241125013413.160725-1-marex@denx.de>
Subject: Re: [PATCH 1/2] dt-bindings: display: simple: Document Multi-Inno
 Technology MI0700A2T-30 panel
Message-Id: <173408342285.146926.4818672543940960912.b4-ty@linaro.org>
Date: Fri, 13 Dec 2024 10:50:22 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2

Hi,

On Mon, 25 Nov 2024 02:33:35 +0100, Marek Vasut wrote:
> Add Multi-Inno Technology MI0700A2T-30 7" 800x480 LVDS panel
> compatible string.
> 
> 

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/2] dt-bindings: display: simple: Document Multi-Inno Technology MI0700A2T-30 panel
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/465f127a50058ff3f32aa5e3098d9499ea63960e
[2/2] drm/panel: simple: add Multi-Inno Technology MI0700A2T-30
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/ba68e6906057584d1f5f5374c585d51f64252e49

-- 
Neil


