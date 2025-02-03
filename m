Return-Path: <devicetree+bounces-142392-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A0C2A253FD
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 09:15:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D4CBD164F4E
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 08:14:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 892891FCCEC;
	Mon,  3 Feb 2025 08:11:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="2PCkU4HB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5B651FBC87
	for <devicetree@vger.kernel.org>; Mon,  3 Feb 2025 08:11:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738570310; cv=none; b=K/0fZ4p8IInjkzUvfP7v36IaQ1Qp96hKTcMZ0947lESVX67IkCfRu6AhcX0g9fMYpL2ZhpWRHUBINpX95HQcwlilGcmi6Fct3W2AvaRUz8ty0+BIErRlDSDOMyYTdvqKkB9Ff8bdp5ouKATxHlB6QcKFkKMjW1A3tp41KhFzQJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738570310; c=relaxed/simple;
	bh=hcsiSdKA4k75nHAaYZILfQ+kIoyLbzE48Q8ofIQehYM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=hFGJR86MttDBwM0Qa4Brv+O6acBtQeqDFGqsQeDq4FwgUpvFjpzjX2CKw50pw4tO/teVCOeU8yJGGgbk5IRkNk6+ULUmzj02cYIPPGPlAB58cqm0malGi6a+5ZDO91jquxyM2O5Ip3XDa49OGGd6l+pSyFYSlnT4TAyDnxG8DUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=2PCkU4HB; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-43625c4a50dso27543425e9.0
        for <devicetree@vger.kernel.org>; Mon, 03 Feb 2025 00:11:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1738570307; x=1739175107; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Un+cEQl1penET6kXVhDwk0syJ582vZdE0QyY38dr2j4=;
        b=2PCkU4HBRY5pW/5+VEZ8CZAH8B6D+BU+QyViBMIIz7w4MzM78zroexaRcquQC2dgS9
         Js2MG0qC9byeXQl95CGx1Wo9dOJEsGHUfjo3wom4nzn/9MQFDdjpStO4q+PcEPCU+aCK
         oy6jaxrJElW05nKxAnWNi4irciSvuXTrh+wgM0Zp9iS8UufgzSAd7ScA2bs240pWBoRW
         mqQQWwms0mfCPfiy+AXxB4SGp22zOaIrJmkj6m+qpm2BB4AgJBWWDYmGtEa1TpTI/aCW
         pqAyAugAYMi8TD+1cnQ4QpryUzpCnBdk1K2FPLpUCqUlMvGAYo3zWtcu31e830K6JaHe
         QWrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738570307; x=1739175107;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Un+cEQl1penET6kXVhDwk0syJ582vZdE0QyY38dr2j4=;
        b=gYsNIrD0DwUi5LEgT93y8IsgSGz553qyBvMvcrFwY+UDbmZglnTuaXnDD9Wj9rorP5
         e8RLR0El/t0U0mXN9NGumwbf2lsDGN3Jdo6QD/B/sv5AnNPhxFFZpeaJEbeS3yv/QEDQ
         yiGXJtCGSNbFXL0rsXfL12/gK8s4y0TdNHTD3xQ85CHnCCDYB+MdulbhVzmUXRR8FfnW
         ykpHRV+/QPWvxXuxEo+zfK/KbZHT470LFyEpjg0VeZbpUe8KPoazkFRcdBZOasryzNI8
         O8Q2bZa+UcxqQIS2TQ2rQ2HDim+894AWwtmIUTYBYciny8hXLNcf8arh6+drZMsZqNDx
         5Tig==
X-Forwarded-Encrypted: i=1; AJvYcCWRtSY3cKD7bjWJCAkncYqOVSxzddIgwtpA/dcFahRyhhcDFc7+vYi63zl8R3/Bu6PV3eMmqK+9x7bw@vger.kernel.org
X-Gm-Message-State: AOJu0YxYQvVKQn8A3eN/J1MxMW1yQg5e+8PiCwekc4yvdPN2bnUHv+MR
	HBroQYsh5JuWlWhWoCLD0NcpZw2xJUJEmiKnjBJb+R9QQ4wEN6Im8Ngi6cDHWWg=
X-Gm-Gg: ASbGncuAwDuOwQXH+pATTrgSfEaOzGHr4KgGqhE9Y3sY/+3joX1bAkKgg3Vi/LC28Kz
	44k+rZ7hdPxcmeVj/cqoovQ3T+sHwiP0AwtLbfn92n1gpJ/4g1dq4g61Lb5iKCWvRkTqWm6um2U
	Y+ScWYAotZDSt8hPI0AnmO5ao/BWFVnBk0CwZ9MQUF59Wsp8dyTLkXnD9iKjFZtDhlLic4KtsS9
	HvvyhlHSWa0vAGA7U5VWYuQsOUpmwr4IGkcuIMLkOrnR3PKaC8b8HwvjUB6n7ZyXkS56G4T9PAX
	PpB8etu+BAIWjw==
X-Google-Smtp-Source: AGHT+IFsYJyukqNwI/R5K0rzDdSZ+QGIaGzEDlXZz/nQ/Yp+9OtLlQtZNmGQAJmE2taDeIWJxu5lOw==
X-Received: by 2002:a05:600c:3d05:b0:434:a802:e99a with SMTP id 5b1f17b1804b1-438dc3ab389mr164710125e9.4.1738570306784;
        Mon, 03 Feb 2025 00:11:46 -0800 (PST)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:62d7:938e:c76:df44])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-438e244eb0dsm147095175e9.27.2025.02.03.00.11.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Feb 2025 00:11:46 -0800 (PST)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: David Lechner <david@lechnology.com>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: Re: [PATCH] ARM: dts: ti: davinci: Align GPIO hog name with bindings
Date: Mon,  3 Feb 2025 09:11:45 +0100
Message-ID: <173857030323.20448.16564760541059882154.b4-ty@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250116090030.87452-1-krzysztof.kozlowski@linaro.org>
References: <20250116090030.87452-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


On Thu, 16 Jan 2025 10:00:30 +0100, Krzysztof Kozlowski wrote:
> Bindings expect GPIO hog names to end with 'hog' suffix, so correct it
> to fix dtbs_check warnings like:
> 
>   da850-lego-ev3.dtb: batt_volt_en: $nodename:0: 'batt_volt_en' does not match '^.+-hog(-[0-9]+)?$'
> 
> 

Applied, thanks!

[1/1] ARM: dts: ti: davinci: Align GPIO hog name with bindings
      commit: 58abc69e479cf5b36c4fc4287a11c9d92d2ce4b8

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

