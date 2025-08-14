Return-Path: <devicetree+bounces-204828-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A5D3B27008
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 22:12:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4E496AA5781
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 20:10:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0814624DFE6;
	Thu, 14 Aug 2025 20:10:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pinefeat.co.uk header.i=@pinefeat.co.uk header.b="lOhA+ROm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1471B244669
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 20:10:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755202243; cv=none; b=BgtMQSoiYAuxypWQp/Yardi4zK6holXTTdLWgEzk3GS8CI/nWcOvxpibt0o5NSQBajZb+Sjgmhcy1Spg+xuveVVar8srkFJKX6RH9D45+gUCsG96hIlIXtyN41qg0ZfDEF+j5cMSBXbqxpb5cZsdKNo6tooioI8Gz5zTsjF1psM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755202243; c=relaxed/simple;
	bh=eYgA3N4h05PhIefRPlZZxd2Kvoq2AoymFCQfoY+NFpI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Dnz0OTYv2ihi+nAnnI2QOQSJK2U+4FLtUbRNiCNBY3eZv5Uhx2aEKoZkLKe47mMgbQiXmLW9D/3cDyRRH1X6oc2cJliX7T4m6lY0f8/r0gZj7JhuiEXMd454lcuwWrywqKTd8N+xOgqOEgrZxni5hVCVAjyXjPWcTSvH9Zne624=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pinefeat.co.uk; spf=pass smtp.mailfrom=pinefeat.co.uk; dkim=pass (2048-bit key) header.d=pinefeat.co.uk header.i=@pinefeat.co.uk header.b=lOhA+ROm; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pinefeat.co.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pinefeat.co.uk
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-45a207aef58so1168095e9.0
        for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 13:10:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pinefeat.co.uk; s=google; t=1755202240; x=1755807040; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eYgA3N4h05PhIefRPlZZxd2Kvoq2AoymFCQfoY+NFpI=;
        b=lOhA+ROmf3+IsheI8EuwHGSVkC7SrlZuUzxielDEps0Y0Jce7/o+j8vo4vehsFmO2M
         zxVK7I1Zzybq1KLewQXJxO291KGdjbFpRnNtmRsi0HcmJ3JD6BAGTDq34IyhfT9+ma2U
         +p2y1sic76NdErVYsHbT6rNcsZtBQYQuj0Xvl5iB88Z1gPj3bB1Pd9tHXfgPzdTU2zwG
         pcsAFVCZLgGK6SqawiPxQ9pIqjrsvKDDD8q8qtMnB83BLtfL3NEkih9drlDXjgvGSss2
         KraSIot6V74MIPxVt/rYshNK+IiMnYJwIWcDIoKW+jRZzN9Qbdby/EVk57qG7zFCPyk3
         uexw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755202240; x=1755807040;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eYgA3N4h05PhIefRPlZZxd2Kvoq2AoymFCQfoY+NFpI=;
        b=Sl7gvnI8638c9UFgmOB72w/Ke/I7lrmXd775xLG+vTM05+ySxbFjmZt4eRInjstvj/
         RgXKd6xN1NB2S88Xq+JZNd1MET7vlNmOZCApJ2ny+MtlgxhPoEgqzUhTyG7wyUEwAY/C
         7EEcUTRdrULx36DLwx4T3ycFf+pzTFM0AM6FFcJ/kGky5YvICdOaGyn7c/PVhuIOp1qW
         cZEfc7GL1gtskNoSG8FeBo101fdGGu8bRJjt0hgtDk21YainJPVL1iWHxncrfRBhdMgK
         MhC6pszM485qdnvn3SeoOnUy/GY65/8/uZ9ry1XEDF3ii3+/vBCtc6va7CYS0rnPTUz1
         9mMQ==
X-Forwarded-Encrypted: i=1; AJvYcCWCkHip28jY+hR5Z/uFrRq9SeefKmJlytjsVFAeQEWUVzqQ0vNqcatt5gThW5qpOer12rfixpARWCS4@vger.kernel.org
X-Gm-Message-State: AOJu0YwrJftcroUfa0JjtbgbByRhkbKhkHKgcnr9ViOeTFqr+LrmHpSx
	0VFOFTB4ZwfpPZca1RFQBZf3A1kFJIIm9cnQ8ZDNVzxGhnSqfl3FPPovL3lDfCms+G4=
X-Gm-Gg: ASbGnct77UoaqmfIVU20uH1v4XPit5MSBMac39eiCqhwe2Dx0H2J/4QxrmD4ZwY0uja
	pWQLYNLbcyE55D7bX/tFGNn19chL51T3jO5ZiJuRm5ayKHQt0QqcpU+TkrHa7x/GDPWondbj8jj
	5i/1wntgdd4aIjd5TYcra/dcTIC+J/EbTalRHPkXHDTH+OQuYVDovNG6jBLpHRGAe9T4eSGPp0P
	e9HMn46sMF9ClFR54700psLsseyQCX/CdcFBrAgELaMNPronCzNIJLSCLSPCOtRm/d6PsQrQZyo
	mTmByakLjkywa9BYsE4/7Nqvma8rPNIaQln+Nv+BplYoFSKIAL9HuctaqNriY8EH6eIVGi0K5Mr
	aJXtyudOmCAtbBXQ98ONKA2pdJrCeNgfWc3kl5H5PL+/6P1XgG2I=
X-Google-Smtp-Source: AGHT+IFKimWuBri2WoewJAsYNvoksiCVAxKmqE+2453BhQHj6EQUXYD9g2OaPfcuoOtVVKHO6X1LWg==
X-Received: by 2002:a05:600c:3b1d:b0:459:443e:b18a with SMTP id 5b1f17b1804b1-45a1b7b3133mr35254355e9.14.1755202239865;
        Thu, 14 Aug 2025 13:10:39 -0700 (PDT)
Received: from asmirnov-G751JM.Home ([2a02:c7c:b28c:1f00:8a22:14e2:8791:d972])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45a1f7082absm18740525e9.24.2025.08.14.13.10.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Aug 2025 13:10:39 -0700 (PDT)
From: Aliaksandr Smirnou <support@pinefeat.co.uk>
To: krzk@kernel.org
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	krzk+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	mchehab@kernel.org,
	robh@kernel.org,
	support@pinefeat.co.uk
Subject: Re: [PATCH v2 1/2] dt-bindings: Pinefeat cef168 lens control board
Date: Thu, 14 Aug 2025 21:10:38 +0100
Message-Id: <20250814201038.15054-1-support@pinefeat.co.uk>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250814-intelligent-industrious-cassowary-b73c9b@kuoka>
References: <20250814-intelligent-industrious-cassowary-b73c9b@kuoka>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

On Thu, 14 Aug 2025 11:04:10 +0200, Krzysztof Kozlowski wrote:
> You describe here the entire board, not the MCU only or lens motor
> only...

Since you asked about 5 V, I was explaining that this power source is not
relevant for the driver.

> Can the board be used outside of above setup? I understand so far this
> is only for Rpi where both above supplies - 3.3 V and 5 V - are coming
> from the header pins, so supplies would be totally redundant.

There are several variants of the board, differing only in physical size
and type of CSI connector, targeting different cameras. The board should
be compatible with any single-board computer that uses a similar CSI
connector pinout and MIPI signal lane assignment. For example, the NVIDIA
Jetson series replicates the Raspberry Pi camera and GPIO header pinout.
So yes, the board can be used outside of a Raspberry Pi setup.

As noted above, these supplies are redundant and were not included in the
driver description. Given that, is it acceptable to remove the vcc-supply
property?

