Return-Path: <devicetree+bounces-184236-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 75DEEAD35BC
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 14:13:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D07CD18987D4
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 12:13:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67F0928F521;
	Tue, 10 Jun 2025 12:13:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="COk2D9Cj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9335728F501
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 12:13:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749557585; cv=none; b=XAhAfN/Igm4iyl1FcoVirkMA6p6ZDCUF1C6ngQWd43wavTTg6nYzNOvMtB5xUNItgJw0lW8UOj8uLStvQ1y6GJLnAdbtFaRiu9+DDCBKzO0g+hmBjnU+4qooIUx9UP6ZauPgZgJftOGknxAwAjqnBk6m/fdga3TupFDsBuQIgV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749557585; c=relaxed/simple;
	bh=mj744QkzoH+nE/lLDIyNovnhMn+rrkaZjjUq94bNIhg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=F+y0ibDFnDL2kJoIW/JQwKwYKVNUuYu788/GNmKvYLrZ4II4DppoyUBUMexFXQrRd00KBACz5Na0FM2yTOrsrpj3aqqfzL2RbvgXhn2H6L5aPTg2OzJnEdnjB/SmJD1nYM4EqkLjUar6g36UsOFYIk72eLuL80kXqdM/MyOYE80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=COk2D9Cj; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-43edecbfb46so44808005e9.0
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 05:13:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749557582; x=1750162382; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aC7BrX8x1EswiMMGxYjxP264vmuUgiUiNAi3UiM8Gaw=;
        b=COk2D9Cj0NWV63uWbbksFfKOll05MGIfTwaO9hs5xQWyQ3JKabyHqVm5ggpVVWmb9O
         tdh3pkrlklekqNOZEFXWUlEsnp0BcV6CL/Zzwwkp9F+QUBWJCoXr2+u3gEUIFBSzrWDt
         yA1MeNl46J815x2Z3zSI67dzfFc2QBSf55H2iRinOQrRT8gbEuoysTN2Mu1gJlVqExPP
         SGt0QbJA71Asxn8Hj7LeLILzhxwJ/SPWrtc466e5dQPQip4wnUNNF4MopMkOqU3Thh1e
         lm4B06kggur3fwtP0k3jU+WRFa7TaNpI+g+FDp6/IOxGYx0bXzTP2dho5yWX91W6+iqP
         g56w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749557582; x=1750162382;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aC7BrX8x1EswiMMGxYjxP264vmuUgiUiNAi3UiM8Gaw=;
        b=IUmMPDkDGUONpOEm98mrbtllBff4e7b4kDWwoAjp/b5GWJKZbdp8MdvA9c9vCYQ5IS
         QDYv+5ElTNlBOiYHePtpC4Q8qrXx4HNz0U7asb2tPTd1GDiJTh6DNGf5yprWnELwECRP
         q0vsgbJRD6pCkj2NWbZz7p9uJ4Hl50RbPTFKEd9fbB59hpYHqMGScNFEBbOE253MT0NU
         vk3wVaw0cbCICpLcvgW9876zd4cEXn2fwR7mk+aydLQQP9F0hRx7NY0lVCutISg+/EVC
         x7ASYT8iFGwMZ3URgfo1zzu59JlR1R6KTmb+ICy3VNDDwC2jdryy5uMNRssgeVpeBa+t
         lqtg==
X-Forwarded-Encrypted: i=1; AJvYcCXfLTnDXQnR6VEplJC+7GtnBlwcfAnUhsZB81OqW9dRKLom7Q2kFyEu8uOQkgtWLPfSq+yrp12QXFmQ@vger.kernel.org
X-Gm-Message-State: AOJu0Ywzt6Re64JrgPA5+UPxlHtn9L5xufVSss4SHUC3Mwps0Q/YoX3Y
	XqTdWjVZIoB7OPNT5yLPuZ78uDDB2gzntKY0VOU4ubRBkdd1C9Un/agAywjkYBgOVSec6+fB24v
	WfMDE8dk=
X-Gm-Gg: ASbGnctC9W8iGSzGNAu22bYdYuLTBmBMJfc73Svwec7KetUzM6WBBwzYWpffsE62Uus
	arPbs5B41H9+9EOdMN0C8oZWrPKZe6703rw/4qd8knCybiZ9dn5rR7RuVLSgNC9IzhZjH7icg4m
	vWC6HaDTgdJc1armpeH5K8FeTgToTreZzelSZPQZDq6Kdlm8S4qAFEqzMMfZac29J7jsD1MMNMf
	lz23m1De1GsQ6oJwCYb1NirJoaR0ohVuWpuPpzCe0Evc+6Wi5DPyVyuAyQWFZUwFD5vXkOSUbGx
	WBxJ7AZyxr2nrmPoDS6NAdJaib8XcArXsED2ZMYgY3h3Cu1jjUrMccOwiR5/TpkfSjPd4/1gKIx
	3peB1rN0=
X-Google-Smtp-Source: AGHT+IFyqTvtGwvnuc3FS7zne0Ce5Fz6EfGEy/ON5HolQgJhZJPOh9o/jA/qGYT7EuGw5oynDbNm/A==
X-Received: by 2002:a05:600c:8b72:b0:43b:ca39:6c7d with SMTP id 5b1f17b1804b1-452013674e0mr170246245e9.3.1749557581771;
        Tue, 10 Jun 2025 05:13:01 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4531fe85260sm9841035e9.0.2025.06.10.05.13.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jun 2025 05:13:01 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: jagan@amarulasolutions.com, quic_jesszhan@quicinc.com, 
 airlied@gmail.com, simona@ffwll.ch, maarten.lankhorst@linux.intel.com, 
 mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org, 
 krzk+dt@kernel.org, conor+dt@kernel.org, 
 Stefan Eichenberger <eichest@gmail.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20250606114644.105371-1-eichest@gmail.com>
References: <20250606114644.105371-1-eichest@gmail.com>
Subject: Re: [PATCH v1 0/2] Add Winstar wf40eswaa6mnn0 panel support
Message-Id: <174955758106.1700488.8043298951772545828.b4-ty@linaro.org>
Date: Tue, 10 Jun 2025 14:13:01 +0200
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

On Fri, 06 Jun 2025 13:45:49 +0200, Stefan Eichenberger wrote:
> This patch series adds support for the Winstar wf40eswaa6mnn0 panel. The
> datasheet including the init sequence was taken from here:
> https://www.winstar.com.tw/d/308/WF40ESWAA6MNN0.pdf
> 
> Stefan Eichenberger (2):
>   drm/panel: st7701: Add Winstar wf40eswaa6mnn0 panel support
>   dt-bindings: display: st7701: Add Winstar wf40eswaa6mnn0 panel
> 
> [...]

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/2] drm/panel: st7701: Add Winstar wf40eswaa6mnn0 panel support
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/d04f6367d39918461d0335d30b860d38668d4b54
[2/2] dt-bindings: display: st7701: Add Winstar wf40eswaa6mnn0 panel
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/f79692d0c386bf8b815c92fc0f832d1a0af03628

-- 
Neil


