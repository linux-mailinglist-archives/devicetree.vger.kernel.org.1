Return-Path: <devicetree+bounces-292955-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SN5mJ0vD+WmxDQMAu9opvQ
	(envelope-from <devicetree+bounces-292955-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 05 May 2026 12:15:39 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id AE9364CAC1A
	for <lists+devicetree@lfdr.de>; Tue, 05 May 2026 12:15:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C50C530585DA
	for <lists+devicetree@lfdr.de>; Tue,  5 May 2026 10:05:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D05AC3368B8;
	Tue,  5 May 2026 10:05:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="f3XXgmj+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AD963385A5
	for <devicetree@vger.kernel.org>; Tue,  5 May 2026 10:05:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777975518; cv=none; b=QQHyeyIbmS9V+UCZEATS0ouuwZTADP8JHfsRQzlI7NZQcAM1dnm0krsfBMeAdoC7U6D68+SWDgg+PQ7qooRZficGV6SkLExzisl2aOo7ZWPmLU1mVuFigWPolJsfePPDeazXdCVleuWxk8CtGNdeYmmwM91o+sqaHTJshMn9hUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777975518; c=relaxed/simple;
	bh=w8wS3TNv+cxAx8RC/W+dKZDyufaRvLTdI8fYMN2ideE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=fKUp0GHB2hhkC4wGs2WVGU5zdVIp4FB9IWu9bCCk4ctCsrsA3WM+MAibqnUCTNe/jjNRQCh3UEfVzpRaKqoSvQ76xhNA7GknABkqJPUn6A2hMIHaZ5P3NXjiodCTHumEo8Ag7Sho7GuzyOLoJqMzqt+RC0Bgg9slI6tTnTz9Jzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=f3XXgmj+; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-48a7fe4f40bso53624025e9.0
        for <devicetree@vger.kernel.org>; Tue, 05 May 2026 03:05:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1777975516; x=1778580316; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GlHVQCxd0yBU+/mNTY+khRLm9HzXPlkgRkNoBEL+zto=;
        b=f3XXgmj+m+2WAk4f1ZbCizDLktTfpN6lxRHtOVaCO4UXBd1jVYz4XZrmiUBVApqQvE
         m/IIsi7K9kPpw8rZUOWZYRWa6al0aydv5akh0GHLHD02w+qlhZeL9F4p5PStWAllwGyl
         QlX0p+drEBqNBbDh9JtbN21e1DXUWSVjo6xF93FmtyITPnJU5nURvLrPDgPZVQGssnr/
         jdBl+SBAcns2IYatUzKUGWHnHK/JxSSvnKWrmCPKBtuAFUq0fH5m5RW8/ymP4kV9Pt60
         aqX6SYJ1OXI/b9s5Gyg2+umSa7S8vudSYuixZgBIwhRuM6+/RTJ96jx9suQZBlBxgs15
         NyNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777975516; x=1778580316;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=GlHVQCxd0yBU+/mNTY+khRLm9HzXPlkgRkNoBEL+zto=;
        b=VQa8fltmwGIv67zCgvPuiZMCwfmDxEgLfSuqvAakRktjfv9RldDR+nqKDI5b+RG64k
         cLQv1un7iF8v969zUbyKWi8GxOT5NnNac1Nl3Qp3Ie7Buhv61mfJ9xh8miJmouZ3di4r
         YsR0jGyJdrPhKJL72pI/ZTv9tHFTEpbItTqonWkj1SxdAKn5RCtgf37b3XfhsRG6Hb05
         r6UUPjbUbqHqWJd8ScQr15D0ZvnX4gADu6JAZbPmSJXIaLjyVmBgYoTS29+nEo7ZHz8x
         PKmwIthjoJ8PbvFItXT4yB9hzjpkcrlkpvzlONYE+3tK3TFeOCb49dlJTKw+CN3Q7QK0
         rpVQ==
X-Forwarded-Encrypted: i=1; AFNElJ/N4YWs51vzeE7nLWPROy2PZszXZvcxCfda7XBoSuqRnJXqpn4oZyD/gEHFE6VefwuD+On14bMKOelr@vger.kernel.org
X-Gm-Message-State: AOJu0YywxV0Np3cRQI/vSsvvYWn6j6KRJkcfUXiFyhpcDEQZOE6kRFPx
	3FrVQmNudyjU2ZNBHN7a0HAmUQf3S41dkcUNIrcR7lvzzz06E5Yewr6aDYV9VEmDYYY=
X-Gm-Gg: AeBDieuY8leIiBqE1y/eLiaK1P2kANAc5+jnyoVTmOtdovPJWnJx+aJt2+qsiCn9JWR
	e7EvTf+XgvJv2X8pzTDxkfl1WiU6baN0MX8oGyAuOhJnhggat5+fpBQgTIZOx4cHgalzBZbNAzk
	P4d+pOFL/w74665ygSDNY4hcfLtE4+W/wqeLF3/UveOEgdvdtkJ3Edjl8TPgfEXe6FQRs2dAt8r
	FK13+rjfRISGm+SNe8qt0hfSjcE1ShJIt00JrGSHuEVcYJITUfGJZQnh5pJfY+MMVpJPQnONeA5
	BQkc6Kf2FHVcAmxKyyz1muobTx9LApG0weP9wxrP0tsVyDurk/daN/v6g+IPK055JMaJyjfepPP
	vB5y7ADpXBh+i4LEosYRvKNtSsbKFVvqnu+o3GYuooMVGGjE5c+0Gi4BeT9EWSkkfbwI30yEJNv
	WLWvKzMbx7/0K3iz7PKKK4LzY+8PwqFqvJJbTeGGFpaJdfAfl+Jv9Ck+4=
X-Received: by 2002:a05:600c:859a:b0:48a:525b:e157 with SMTP id 5b1f17b1804b1-48a9865f870mr157244835e9.13.1777975515504;
        Tue, 05 May 2026 03:05:15 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:106d:1080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48a820c8556sm381856295e9.4.2026.05.05.03.05.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 May 2026 03:05:13 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Jessica Zhang <jesszhan0024@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Aaron Kling <webgeek1234@gmail.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Teguh Sobirin <teguh@sobir.in>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <20260426-ch13726a-v7-0-554247c569e5@gmail.com>
References: <20260426-ch13726a-v7-0-554247c569e5@gmail.com>
Subject: Re: [PATCH v7 0/2] drm/panel: Add panel driver for ChipWealth
 CH13726A based panels
Message-Id: <177797551275.290023.313213958679206999.b4-ty@b4>
Date: Tue, 05 May 2026 12:05:12 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.15.1
X-Rspamd-Queue-Id: AE9364CAC1A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-292955-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]

Hi,

On Sun, 26 Apr 2026 23:39:36 -0500, Aaron Kling wrote:
> This driver is based on the one by Teguh Sobirin [0], cut down to only
> support the AYN Thor bottom panel.
> 
> Due to [1], the AYN vendor description patch has been folded into the
> AYN QCS8550 dt series. Which means this series now depends on said
> series and it must be picked up before this.
> 
> [...]

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/2] dt-bindings: display: panel: Add ChipWealth CH13726A AMOLED driver
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/889898e011b281e77f2ae03c32246000daa3ef26
[2/2] drm/panel: Add panel driver for ChipWealth CH13726A based panels
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/3ee01b8647b5ed894c8a18aafb4ea51b4fa05ccf

-- 
Neil


