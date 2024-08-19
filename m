Return-Path: <devicetree+bounces-94863-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EC9E956FEF
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2024 18:13:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C5BFFB2238D
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2024 16:06:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE30C189910;
	Mon, 19 Aug 2024 16:03:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xjh9o9PP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5611176AB4
	for <devicetree@vger.kernel.org>; Mon, 19 Aug 2024 16:03:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724083386; cv=none; b=MMDtgDFedZOV1I2xeJRoNsAc7714gCrQWuzYiE3D1ZgGj8QuyseCwdafv/1OEADbg/jDPm+MLjeFDkCszAiM7JXZskvFaTB3gUwC24EbsmlYxm+/SAdjUoxMmgaIw71rrsrQpc/mpybwA1qVW7bIJ9mFKVoVpubAMyrAmcjBbDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724083386; c=relaxed/simple;
	bh=QkvRf2gJWrII8R9fwrAbCEH4Jv32FkCvpWWs1LsQX5U=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=gqbGQX6JAsA8Yy7iuiRg1iwa44bsMyw4TRA/BzAC2xGSnsJriKO33CX5mrMaEnPezQKW80qNmW7317oqzKXoxgZMuMDGaUIt6D2/hiLiHvwxBZnrBOHhq23FhpgKMD/JsH4N8Ujuu1gqOWAj+LkSgmKh2hHu4uSEC4OG+2XRTBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xjh9o9PP; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-371a9bea8d4so1148603f8f.2
        for <devicetree@vger.kernel.org>; Mon, 19 Aug 2024 09:03:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724083383; x=1724688183; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MygLjWxd/cuymlBwTrUlqtMUCrnCHV/7Hdz0OscdB14=;
        b=xjh9o9PPgKOb4BtXVO6lhlgJg+vRpctZaZfd2pk1VqyQ4xgRxVMSoSiGNt1LECLovr
         PSyvRpR11A4DVPY+rCv42mDsa9KFADPN+2HRdZuvue/A9a6x/2nGPmSftKyg0oQ4KLqD
         sQ/tu2uB+Ahuo46dPT0x0XRHDYLvHXgD8R4yRUtYARM33INwbxtiquakOyH4pPeY16s6
         zF+GS6AAq+/+caE9XZJBq6br50RGjFuEN2RFqeYD9kjZLhiLeDTJ6HsFF0ZzMTHe8d2N
         4pqnx6+wZVNzE7IN09MFh71bfoMDwZo/0Nqcg8q9SBKme8RQ3sUdHmzv4Gkvvh4yMXUQ
         yHPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724083383; x=1724688183;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MygLjWxd/cuymlBwTrUlqtMUCrnCHV/7Hdz0OscdB14=;
        b=lJj1640XEJYfqLEXtN7lOMEa6H2WENX7PXOwjnOXo6GO4bFKQK95l3m/ZwQP3KtdFq
         JpisXSbHLm52EqE6zL+oxpNdlswuVJ7ww9NYUW0N5vYs8DW0OT8T0puAZT+qGl3QSvH/
         zS2+hDDOwFHWES6Sw9m9XVHWBEPUur6tFr1XIqtX6oNbhKktHZ4p2/IwF/RV3gpqCZ70
         zcQulywntqTtx7TPF1RACxVNRw55zilJjxK3m/xqJ5VhbpAvOk2/81+RWmNqAzi+lZv0
         BDY0N+piPSlF9LIYYOP8Hd420XwbCwh1wrwhmnTItrjKY4HD0k7+L8m1Sy1K7ni8wJRS
         HIzw==
X-Forwarded-Encrypted: i=1; AJvYcCWRgC45oN1/bbhJRmoOTirF/LUlG3l0otxVupQ+3awh741wK0aY2K3+0IaNzzvIpYb9eWBwtGBJMOV7+V+5hA98fZNdQZqUBCgXvw==
X-Gm-Message-State: AOJu0Ywxr6ly8GLU5MqKnmOwAoLLh2lPikOO1ZbO9p6bapS1b5JEo/Z/
	eBshqh8ItkPHjwG7zvcEE18aT1T6gNe0Ari7Hj99TxpkEDYVkI8LuX/LMWsS13Y=
X-Google-Smtp-Source: AGHT+IGDL1BghlbSzux3yJZeahaJWCA9neTeVGdK794uq57vTBevwaiQ6Y3pvsnu4kDp2NGOiX5ylQ==
X-Received: by 2002:a05:6000:1006:b0:371:890c:3157 with SMTP id ffacd0b85a97d-371946a4611mr8314976f8f.38.1724083382820;
        Mon, 19 Aug 2024 09:03:02 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-371898aabe9sm10907638f8f.92.2024.08.19.09.03.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Aug 2024 09:03:02 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: quic_jesszhan@quicinc.com, maarten.lankhorst@linux.intel.com, 
 mripard@kernel.org, tzimmermann@suse.de, dianders@chromium.org, 
 hsinyi@google.com, airlied@gmail.com, daniel@ffwll.ch, jagan@edgeble.ai, 
 dmitry.baryshkov@linaro.org, jani.nikula@linux.intel.com, 
 Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20240807100429.13260-1-lvzhaoxiong@huaqin.corp-partner.google.com>
References: <20240807100429.13260-1-lvzhaoxiong@huaqin.corp-partner.google.com>
Subject: Re: [PATCH v3 0/2] Modify the method of sending "exit sleep
Message-Id: <172408338165.1748689.14599426466774624687.b4-ty@linaro.org>
Date: Mon, 19 Aug 2024 18:03:01 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.0

Hi,

On Wed, 07 Aug 2024 18:04:27 +0800, Zhaoxiong Lv wrote:
> This "exit sleep mode" and "set display on" command needs to
> be sent in LP mode, so move "exit sleep mode" and "set display
> on" command to the init() function.
> 
> Modify the Melfas panel init code to satisfy the gamma value of 2.2.
> 
> Changes between V3 and V2:
> - PATCH 1/2: Modify the commit message and subject.
> - PATCH 2/2: No changes.
> - Link to v2: https://lore.kernel.org/all/20240806034015.11884-1-lvzhaoxiong@huaqin.corp-partner.google.com/
> 
> [...]

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/2] drm/panel: jd9365da: Move "exit sleep mode" and "set display on" cmds
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/97d1f449c359207b2fb5bc62eaefb7e21ad619ae
[2/2] drm/panel: jd9365da: Modify the init code of Melfas
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/64ddf5123eff2edf47202e08744c3c14a9d28f59

-- 
Neil


