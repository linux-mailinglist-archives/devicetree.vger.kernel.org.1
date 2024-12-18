Return-Path: <devicetree+bounces-132205-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 761059F62D0
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 11:25:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A09801677F1
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 10:25:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAC5219AD93;
	Wed, 18 Dec 2024 10:25:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uVCsVPa0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAA0E199FB2
	for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 10:25:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734517509; cv=none; b=lETvlG96jd6adIvTj2wVn1Fqe9wWxzA87li6+kA/n8XrtKYiHuA2T0iC4a5beDv6ECjMNs2rTanc8afqv5oWlBcAiEVlFOnpn4Dkn7lAzqglnt2+qfLyqBByLugZRgsXE4CmjhavfPK6wOSJtD82UQDGEJysN0l2GH8hJ+XD90g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734517509; c=relaxed/simple;
	bh=omPiFO3H6YZmMzbltbaBP9EeRM27MKDs6aWpB+WxD0g=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=kAzQClZDJQ82CbIHWD4PQiY1dF+/Xq6k299RHgIBb1mYwgKHsJkKmibpnP+PdDBRGBmAzOD5cDe6feRYRXmD9fKAEfRKVqZgJjZNP2WvG3TuflFiGWeQkur3lPTbccaqJBZKi/+I13YWelg4hYX4eIxFBmjPvw+O58S9RUS66Wg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uVCsVPa0; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-3862d161947so3044691f8f.3
        for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 02:25:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734517506; x=1735122306; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lmYDCy+XC+w9ohLw9fXC9Uy6BO2my8eh4Tt7Ki7APA0=;
        b=uVCsVPa0j1u6/zbelA0GAGwxmbTANPlDWbRPmBEsnWVSTKjv4OUMLJHniwpTAXOlur
         0TUeFYI/+k9KI+tfM0uETr2aQzg6cCa+bdahGh/4ZE9bxfHsWujMVLY6zTxdIaFQy2MD
         AZh/CuQ5XfMQEDe2AdiD0zdRx9T0UACvxyfzqt0cl8sEYQyUWOl5EQHKT4L962DOZ2cE
         yOXIb70J4xEY56olgsrwsf7B5Z/TBVhzR/VZpRz14kxZgEYtHbll1IrkmirOdf95RdNj
         oR/6C+qP4qkgY6JSUba7A1iKHrrCSYtTC2cAMQ5/G6dRke+NCTgH2wfoQa3Ycahl3dXo
         4usQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734517506; x=1735122306;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lmYDCy+XC+w9ohLw9fXC9Uy6BO2my8eh4Tt7Ki7APA0=;
        b=VxdBOPP/ilCNDSUPi9L688yuXVjpJUHKNwVTI7/KF0YNnibArW8aorfUAsQh6FQ0zA
         sTR8ZoT6XSV8+qsNDQGF67v5ZVcJwc8nysHY3DLKBw/VZCZwOI5o4zxBzftu0bUeTiVP
         vuP9rbZokuvH45a09sNCwLMPk/SM3b71G8nqKTibqIhYEZQjupkmmhWkwcr50iqOgJIj
         jv7qd2SgeUhjHO1zdNbryz0QlhbNjB26+ByTvW3sa7oiNbqZC69U1oZIkQ1sZ7uSv+Az
         vqg/8IrWp5TDuVPVVUAazB9m/q2k+Mow8aOqzvip1icE7Ekfs//Dv+TJXbduNHnrPQOj
         hpyQ==
X-Forwarded-Encrypted: i=1; AJvYcCXZ8YUhfFERsht3RCQsHXa8srFsznDRnt/7QGWnenVQizxqx1bL55sL+DaXtOuD9Is6nvWWCKIrl6Pp@vger.kernel.org
X-Gm-Message-State: AOJu0YwYl45i9t4FknndLIyJKd7E6kHkLc1Kx7ebQbl022vVghv1FISO
	Kp1xrJHKdXMRleuivbna9Whvs3cXt1PVkUY5g25O4O6QZD8Y9AAd9yocdZAuFmU=
X-Gm-Gg: ASbGncuinV+2hIXz3WpMFg38AwPaJuCKNW63Zn04E5gZV+Fbzd8umpYIU55HWyiht61
	xHiiBTxIn3uuYxNaHqiiu5gvfg3APbZUKDmqYvt8kRfuex94vfpvityfFSSB536QbLJUWUnqL7f
	R4C+v/bnL7qhmWiSb1/zL3hCmz00Z4DMqqH5APQlJDofnJWusVXmQTiReXTMkcQdOFbf/lEnK4U
	VEV0jnqOT7ix8yglJ62tMoFlmeNJi6OYHiaaTj7ISmtuFqugb4SwoEGoMOag9N5VPWjNQe+AlSR
	fg==
X-Google-Smtp-Source: AGHT+IEJYIVaDHwfsZ87A9DtFBxqslt9Ar0NBezmUB6Tjpxfov6W1RYIU3gAGNxJktp4lUawP+Y+HQ==
X-Received: by 2002:a05:6000:4b08:b0:385:f631:612 with SMTP id ffacd0b85a97d-388e4d5e7f6mr2096176f8f.17.1734517506264;
        Wed, 18 Dec 2024 02:25:06 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-388c80613a9sm13561558f8f.101.2024.12.18.02.25.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Dec 2024 02:25:05 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Jessica Zhang <quic_jesszhan@quicinc.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>, 
 Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20241216-tianma_tm070jdhg34-v2-0-0b319a0bac39@bootlin.com>
References: <20241216-tianma_tm070jdhg34-v2-0-0b319a0bac39@bootlin.com>
Subject: Re: [PATCH v2 0/2] drm/panel: simple: Add Tianma TM070JDHG34-00 DT
 bindings and driver support
Message-Id: <173451750534.2945394.16807167795981338794.b4-ty@linaro.org>
Date: Wed, 18 Dec 2024 11:25:05 +0100
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

On Mon, 16 Dec 2024 17:21:33 +0100, Luca Ceresoli wrote:
> This small series adds DT bindings and panel-simple implementation for the
> Tianma TM070JDHG34-00 7" panel. Due to how the datasheet computes the
> blanking time, a quirk is needed in the timing implementation. A comment
> documents that in patch 2.
> 
> 

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/2] dt-bindings: display: simple: Add Tianma TM070JDHG34-00 panel
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/0c8d3b4a0342c5feb6887d18efd1273d80530674
[2/2] drm/panel: simple: Add Tianma TM070JDHG34-00 panel support
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/bf6daaa281f7d11fcd91a68935142916afc51c53

-- 
Neil


