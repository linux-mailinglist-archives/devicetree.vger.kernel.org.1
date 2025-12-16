Return-Path: <devicetree+bounces-246963-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 79787CC1F5B
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 11:24:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0C55F304EB4B
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 10:23:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59E563346B1;
	Tue, 16 Dec 2025 10:23:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rP8Gy/kC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com [209.85.221.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73E5333BBC1
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 10:23:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765880596; cv=none; b=KcXAuCT8TVhrXeW9tdmGs9HfouUcMqztfsweNXq+1OXF2wU3I3VjP5RVHAdIlC1Oir3fl6I0vUChSgzxSW9vMQoNYERrXV8E9mTKdwjrM7ar+IUQWM/mtQTLj9+Fbih2Mhf0Oh0gnBtSv3xh2YhVGCCytfZzxnV/IAlAluqJ9RI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765880596; c=relaxed/simple;
	bh=635PfK1pWD/IPZaEdW6IN4M/tEhf/ySAhG7HwscHZrE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=SLq4G5EBDShH+qQ6QA7x8loCAqWXSBITKfPHD3IIqQPBleWgX2GMBdYH5/UQhIZB6arsbn4jp1+6PeZUYTYxrfvO+YK0M7BevgMTv2gK12AJ08ZvEKP6Sf53Hr9zOfurjirK9PZzKNAHnJ90/sGyOtYA7Y8xg7Eiv1rsWlOG99k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rP8Gy/kC; arc=none smtp.client-ip=209.85.221.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f67.google.com with SMTP id ffacd0b85a97d-42fb5810d39so2026189f8f.2
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 02:23:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1765880593; x=1766485393; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EpXPiR/cT9JwYvaX/P3J5/iulyPU1wfTgyjQstS2rS0=;
        b=rP8Gy/kCSRxKsAnUp8IfT0SRyZUzbpEVtmP/4zeEAp0qNHPTOkExtHi+jDELXxMJzI
         ZO7C45IEwhFBkYr487+kE4jp1yfjHvF28pkakh2+kn+SZ5YGmDC9EngXWLI2UW0dYV4v
         WSQtHE4tkGwe8dAvGyxJZM1B0ODVQ2GIzNQrGWBu3+t4YE4zmjqdXhsvWX5cnlnRSduO
         OVYOJqpjKYR+3bQr0BzfrHW7tU3D5NGAlD6TJSImjm1amuxnM6py9NRRK2zARwjiTSqg
         mWwdfrsYUQ8laTIR+TlVVrasNVF3az/wTQNQNWxbyOrzhvbGjsIT7NBVq0GgiFE1RK5O
         /5LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765880593; x=1766485393;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=EpXPiR/cT9JwYvaX/P3J5/iulyPU1wfTgyjQstS2rS0=;
        b=eKVKcADTY96Fo0mIMv4S/1TYtECsyEL2hpGGR2uCRMLpyPBXdglhr8mHM/1lorTJ/w
         QqhqO6mF5oWWI7CNwdYdJr8sBBIIhDjOwENGj4UsXDVkhORUj1tb0PMdkTrXfeZZnmUI
         6GLt+1xHIg5BTGofcZelXBxR6YIF3HV7Bwpei5qiaFZMJo+mBTLREeqxfvlTRTJrBYjZ
         HySL/VSsoKlTZIY3c0sWsLbrgK7puXgPv6PE+10We1faqOerKTTgUD6HL9IPyDHemL2/
         g+lsrBylHzmMo5GryKWn+o9ftYVRNEDmGjjYzjigMJ85V0aUecMyxLO/Qluf6ACxBAWX
         mNbw==
X-Forwarded-Encrypted: i=1; AJvYcCUVsJ4tOaKe7ctL+xIOcTNTJw3aZ4BcmTjHpSL4OEQ6/J29yjryy/drrRSVp8SUZrfGK8HiCAGnJI76@vger.kernel.org
X-Gm-Message-State: AOJu0YxwCaDA9N3gld5od+UTxDb4Rw1Dq8SECDdX+FqEUNuPYgqmP+2n
	MLQDmkyCz2n/k1krX1X+DjI89eNdzEACrsG3kyEh1Pk1RFwko/3Ckj991kGloLcxkWU=
X-Gm-Gg: AY/fxX7qqVEiOa7i66c14+vMp6tK0Cy9E3xc7hws5DAS1Cu8FV+YVQ1310oF7YrxD1t
	WCODRwTt6bZnTP0bzujkYD9YOu++/90J0MFAiZ0nCmN938yenwMgmnGYt7Xnh5hMvEbrGzDNJtm
	0HdHbNMGuhpW4T2lOkE5G0y2g9cwz3nMTlNdJPN3BiCyw4mLl57Fby1nmnXJwz7q6ZgAX7+BCsV
	k9mXbXFiSgL5NuNj8tIGtG8ndJ1c9pKPh52Zu+GDlOnzk8W7hChDggTvIUs/AmMrERBN4c7TRY4
	ZBChGNCZRfnJ1x6ORmUTjm9AHjOh2RDBIrqfQoTEcEQfjs3nVWkejfsy4tFD5G8mWvrPCdIF4ld
	UyN4ufX6ZSdhdTGHssz9Dtue5ePY5m5s4l604+hecz/rG2TxlHbNYGJO7Wr7sPVBRjBfW7LdcJo
	PrXAmi7Xsrp34v4o6NCBbqeLlEfVbkOBk=
X-Google-Smtp-Source: AGHT+IFNtxCCzId5N6zSSfwtr6e8kqsKdHKvcRUCjL09+ZvBCJ+phjYnW39+B/ZC6bXSVKwhvaSNzg==
X-Received: by 2002:a05:6000:1acc:b0:430:f704:4f3 with SMTP id ffacd0b85a97d-430f704073bmr9260630f8f.62.1765880592450;
        Tue, 16 Dec 2025 02:23:12 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-430f984a268sm14996292f8f.1.2025.12.16.02.23.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Dec 2025 02:23:11 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: jessica.zhang@oss.qualcomm.com, airlied@gmail.com, simona@ffwll.ch, 
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, 
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
 thierry.reding@gmail.com, sam@ravnborg.org, 
 Renjun Wang <renjunw0@foxmail.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <tencent_D449AE627267BDD68BA41AD80EB3DFB5D407@qq.com>
References: <tencent_D449AE627267BDD68BA41AD80EB3DFB5D407@qq.com>
Subject: Re: [PATCH RESEND 0/2] Add HannStar HSD156JUW2 panel support
Message-Id: <176588059148.2230787.4539469304596880105.b4-ty@linaro.org>
Date: Tue, 16 Dec 2025 11:23:11 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3

Hi,

On Mon, 01 Dec 2025 22:19:17 +0800, Renjun Wang wrote:
> The HannStar HSD156JUW2 panel is a 15.6" FHD (1920x1080) LCD-TFT LVDS
> panel. Add a binding and a panel entry under panel-simple.c.
> 
> Renjun Wang (2):
>   dt-bindings: display: simple: Add HannStar HSD156JUW2
>   drm/panel: simple: Add HannStar HSD156JUW2
> 
> [...]

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/2] dt-bindings: display: simple: Add HannStar HSD156JUW2
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/b23cd64bda037ad83e18960c8802f3276b7b368e
[2/2] drm/panel: simple: Add HannStar HSD156JUW2
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/af586cc6df0bd56d4a3d05d5e6db0b193233fc51

-- 
Neil


