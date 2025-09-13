Return-Path: <devicetree+bounces-216833-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E1DAB56337
	for <lists+devicetree@lfdr.de>; Sat, 13 Sep 2025 23:24:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 62DBA1688E7
	for <lists+devicetree@lfdr.de>; Sat, 13 Sep 2025 21:23:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C3272820B9;
	Sat, 13 Sep 2025 21:23:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LCfEnNQT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96CD925EF97
	for <devicetree@vger.kernel.org>; Sat, 13 Sep 2025 21:23:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757798586; cv=none; b=qjowVX1V+4w9HPhqoXrtHQf4hGKOxUBs+fstJbHqvkIN8pHJaE3jwWvynLbUrsIZAJBykX9m6LN676MdemfbH/eUACAt7rCp0A8ho2HHDhBh2G1KGif5ON1yfV/8p7kg2sgW13t9ibiU38ZI1HV/cMAgjkOxfy0PM0FYyrVkkNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757798586; c=relaxed/simple;
	bh=iywYQxRz9CS7up3Rb4XVNLQEC9bvPlsrkIVlIPpDzfw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=hVo6Y55/uFXFUklC2lfj/roSZVJ0efnx5wI2T0mej82x2HlyfuvFF/DLTSFM9LeaMdhCmYx1dE8dxuGNQJOwJLJ5Kw7QvH/Etu1uupQr467lf9gUXNcJR1SOSJtlLtOtx1vr+0Ryu5L9KJ7L2FT02Ro4SGVBvoxXiBQFyno9kmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LCfEnNQT; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-45dde353b47so18527035e9.3
        for <devicetree@vger.kernel.org>; Sat, 13 Sep 2025 14:23:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757798583; x=1758403383; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iywYQxRz9CS7up3Rb4XVNLQEC9bvPlsrkIVlIPpDzfw=;
        b=LCfEnNQTkDc3WZXvNt+khxghbuibFKNLjrncEpTucIfGJC033gS3YoVt5PE0zNZx/z
         vt1n64nrPQCdmNokuSaZchHywnumop+wglV2YeKDBY9kP2OMnoBMRh+wAB+xtOjroEPl
         gozt3JlGjm/YXhwmPOr+FlDTDhiRyLQCW9RY80TgpnDWqk4IzuqklIXl+WTHl9EqX1ow
         aND0IhBYyvvVzsGXIroeaDQ22aEDG/PmrCb8sBrLWo3Uynh7sd/tTaNRbisg48nwU7a7
         WXNOj8/G3SkFrI3tlzU/zZ73FhxUc+OxPvNErZwu7yihYqoeU4dZ8lBsDNuX4Nd/amLE
         0RsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757798583; x=1758403383;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iywYQxRz9CS7up3Rb4XVNLQEC9bvPlsrkIVlIPpDzfw=;
        b=wvMFxC5to0G/eNtgbsl23G0VVPsT+yEj9fGo0lLBGzdrry/yyfARERERVUt2Gq5g9m
         vVAUZqpqMl4Bi9VgalXm9pRPb/kqPYCVGSnsx2k1uo6QV4OmaCa9JJM8gWhUGL5lV/YR
         pzNybhEo1szsjuUOiTA2y3FxdkLV14VMv2BcOp2pofcYAi4V++0zV59vuFiSvvzXxZNy
         oGSeLjNmzwv6JJmPq8hep4TI2beI+WzLV71/rK/PZd0EbPZSnwKwXAlizALHNvB39zrU
         eMD3siHC3VgQ38DE1z4Dnn1yI+fzC9HIdg0jw+oBU9JPLlAageV7tsBOdTkxErUXsbQc
         GkmA==
X-Forwarded-Encrypted: i=1; AJvYcCVCSYBlHN+ChGWaShTXGiwFF1pSKuSf74meeEec86BuOWcHSBoc9Njp7ADXhPMTMorkIdXLUYTHPawR@vger.kernel.org
X-Gm-Message-State: AOJu0Yxt1FM/0T+ueGQFkG0Jlv9FcFkS6z8WqF9WsI3FryzHBQXmjom8
	sgMpu6CwsSf8g14fcFqKEiEtzh0Avv9Y00IVztQwKjKM2hVLiSbGRXFO
X-Gm-Gg: ASbGncvdItpAdUTfLaqT6FPgoJHwLYeOJgbodHGvo6exzbxzh3LVooPiyIeoq40da1p
	WvPiW8gcjw0hMNymHI6UDVFq3HVr5vkP+iPLRp21LWVWadPTYLJSRAhS5jNdjDiP3oYbGmJusLO
	RweMaetUfMpXY6okKYWPmtmdX1egy8ue0PhBLy+32xJJFe+rZJnHvQV0+tymDK0Zyonmm7s59xc
	rrmWMPgHbXfyv++QKNRgerBldGkPbQQ1X+Ukp0Ktgij/JUoJUKRGfTJjZy/XQ64N43juWBRWeCH
	NAo2DuI6vaSSTdXwfmm133TMPEsaqr3lZvnlVgJAQQD9KPydtf4C1hVbKpelm59C0ZRutuI3trN
	3gVq3Lp9AlW1r+4TZj04UmmR2VsJhvy91O3n8Q0nlzI7s+LT6
X-Google-Smtp-Source: AGHT+IEW20rf2hIhimdxJS1T6kk93raCiCsoiaFO2LWxY/a237S3KFMKKEA8B3zumhUKy7Hqe0S/gA==
X-Received: by 2002:a05:600c:605a:b0:45d:d353:a491 with SMTP id 5b1f17b1804b1-45f211cb5c2mr51983385e9.1.1757798582965;
        Sat, 13 Sep 2025 14:23:02 -0700 (PDT)
Received: from radijator.localnet ([93.140.65.23])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45e016b5c5dsm114475115e9.14.2025.09.13.14.23.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Sep 2025 14:23:02 -0700 (PDT)
From: Duje =?UTF-8?B?TWloYW5vdmnEhw==?= <dujemihanovic32@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Kees Cook <kees@kernel.org>,
 Tony Luck <tony.luck@intel.com>, "Guilherme G. Piccoli" <gpiccoli@igalia.com>
Cc: Karel Balej <balejk@matfyz.cz>, David Wronek <david@mainlining.org>,
 phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org
Subject: Re: [PATCH RESEND 0/9] samsung,coreprimevelte DTS additions
Date: Sat, 13 Sep 2025 23:23:00 +0200
Message-ID: <12753058.O9o76ZdvQC@radijator>
In-Reply-To: <20250913-pxa1908-dts-v1-0-8120cdc969b8@dujemihanovic.xyz>
References: <20250913-pxa1908-dts-v1-0-8120cdc969b8@dujemihanovic.xyz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"

Resent due to mail server issues with the initial send.

Regards,
--
Duje



