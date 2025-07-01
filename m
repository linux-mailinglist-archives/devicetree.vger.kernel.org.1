Return-Path: <devicetree+bounces-191642-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3970DAEFF28
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 18:11:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 17A064A792D
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 16:09:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5897B27AC2A;
	Tue,  1 Jul 2025 16:09:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MhYX+q9n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A87627A114
	for <devicetree@vger.kernel.org>; Tue,  1 Jul 2025 16:09:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751386170; cv=none; b=oVUDqV2CPSozl7tfdtjYr6HG5y8NTZyWdtU9LBjV0HCVGklfR/JsGtaTOhL0JrQbSCA0stLFs3y4N3Wjvx0kBrpUz169o8cRXKYdsCoc3f0PHMNEVEhJXWbVtwEdWW+aeGLYIqPsT+iPBRX8JKyXtnt241wJO2XQ4zBV7Tal8B4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751386170; c=relaxed/simple;
	bh=K+T3bxWVYyQAHRzTQeHYUtnchpuJpUJu3cF0vJ5GJo8=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=joT0Yz0rRlK6nBJfuGUzsMjeUE+AJpnUwiVodNQzcoiHuBT3ohy+jr/uLR4ZESvJ7Rn5xqFXNc81onIm9eG5NU72gXZ87wr7Walfkuyr/dOJjGOwmvCbY4bZ6jL+gxj9jXGohzTmuKj2UdiUkcni2AkVTECrqzYR63dkD0/xxXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MhYX+q9n; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-450cb2ddd46so34699475e9.2
        for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 09:09:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751386167; x=1751990967; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K+T3bxWVYyQAHRzTQeHYUtnchpuJpUJu3cF0vJ5GJo8=;
        b=MhYX+q9np+J49Jz5gXvsgQvnVqbBR77ivy0Bz9ZerHvjDw0M2fB3S4TzhCc0hwXUNR
         MFgCf6ehHYFyN2ryJOGP2TpdAeoTMSbjEtVuiTlj3ftvfsJJ3o5E0A2tkrK4Vd2bHf+x
         Z8X17WX+QBC/piMrfIbmrCOmhVtHAceF5NQKvv2Bwqw6CBczVlaGLHx29XFB2XOk5YyP
         PLZkjAsKcWXczrXia4K/BzrVRoX3kKGARQoiEgkzof1JVOX9sPtZRxZy1Yvcyg+DzwVv
         UzVSDmrzsRmEPjcb+w4Cbdzle0IYOcbBNhfzhGc34Z1/eFscSRvvafdqeIfXHKVS+4nJ
         3dsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751386167; x=1751990967;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=K+T3bxWVYyQAHRzTQeHYUtnchpuJpUJu3cF0vJ5GJo8=;
        b=V+sl8LnmZgHLW/Nex+oj+W/6QLEU2ZPTQrv1pa15RIv8jVtOx2IcWAbo/x6e89+YAW
         5dFwUOR2F6JOfWmosw0LcW2iwM86ZIlue/d8ChCQIGbuMB9Y+r+RBsXesWeftNplGhuk
         CrHUz3BVvQ6WB0oxxrAfDjd5KRbHd3D9roSCMtibhyEJQmKaGUFczZI4q+uOPxURHl6g
         PK5tMRbtOIGJKbhdMWY7Rdl6dBmgUWWlqwf2kvcEjcjCgNjgQxTWtPD4kskatCR3igf5
         y/3ZxJKMIHoNcBAO1OEZeYV2KFFZ6noB1wHUb3YIcB32Vt0rEs2324Lh/xWVFLZnocrE
         +y1g==
X-Forwarded-Encrypted: i=1; AJvYcCWuDAP3sK6naNiPXPj33s7X+Q11hpYRcrpAqVFRXPl5YdojduKTzgxWQkjflzLkSp+rOFCPYibSMfp4@vger.kernel.org
X-Gm-Message-State: AOJu0YwyeHcBILeM4Rfnqhe9Tw6sUS/5aXStDAnHd2tjEvwHD+QuGRVM
	UjE8AqJLsW2Bp5aZx55wePaVy/F7ojkrqE6XQ4I+o9w4BXsIik6Q125iqXsNJpQ3xAQ=
X-Gm-Gg: ASbGncukwCNQsD2DclSjRWvgTgECL1+tI9MqRcwNMkERCTLbrwFufiBvFBUpJkgi87i
	hX7vN4IGbLVTx3qGciPpHyAUDlvsvRsJGxjHdd+t3Yw1ebYHg7UZQZwgaj5DRgf0ElJWO1W149o
	SBVL8dAzQl4CqEOdYguw/p97vEoTCHQ/bB9jV+AdtCaJOBJmZzyn3j1VtuSJv4BWa0/Zt43henB
	INT5lw2JOroOXsGooKPh6Qax4K9zMqb7M1kN66sDOfNiTVwCZHKijXmBL6+7boGVxwx3szGBnuE
	/qvCNMdDxxFIos1/W5D3jCxyMaH+1Ev26axK9cYRxMDWy8ZlhqjzYjSejDqKzWlqrt+D
X-Google-Smtp-Source: AGHT+IHvqdlgw5S2/7qbCQGfsKVz3OrH4Z2eUt1+67soqrLzTtti+1/X6TECdPtw6LHSo1pw9uflxg==
X-Received: by 2002:a05:600c:4e09:b0:450:c210:a01b with SMTP id 5b1f17b1804b1-4538eeb8e0amr212563805e9.17.1751386166493;
        Tue, 01 Jul 2025 09:09:26 -0700 (PDT)
Received: from localhost ([2a02:c7c:7213:c700:4dad:b69a:9c81:2e57])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a892e62211sm13761854f8f.99.2025.07.01.09.09.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Jul 2025 09:09:26 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 01 Jul 2025 17:09:25 +0100
Message-Id: <DB0UKX1N7VZ5.VYBEG94Q6Z5I@linaro.org>
Cc: <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, "Bartosz Golaszewski"
 <bartosz.golaszewski@linaro.org>
Subject: Re: [PATCH 1/3] arm64: dts: qcom: qrb2210-rb1: fix GPIO lookup
 flags for i2c SDA and SCL
From: "Alexey Klimov" <alexey.klimov@linaro.org>
To: "Bartosz Golaszewski" <brgl@bgdev.pl>, "Bjorn Andersson"
 <andersson@kernel.org>, "Konrad Dybcio" <konradybcio@kernel.org>, "Rob
 Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>
X-Mailer: aerc 0.20.0
References: <20250701-qcom-gpio-lookup-open-drain-v1-0-9678c4352f11@linaro.org> <20250701-qcom-gpio-lookup-open-drain-v1-1-9678c4352f11@linaro.org>
In-Reply-To: <20250701-qcom-gpio-lookup-open-drain-v1-1-9678c4352f11@linaro.org>

On Tue Jul 1, 2025 at 10:01 AM BST, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
>
> The I2C GPIO bus driver enforces the SDA and SCL pins as open-drain
> outputs but the lookup flags in the DTS don't reflect that triggering
> warnings from GPIO core. Add the appropriate flags.
>
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

This works on RB1, thank you!

Tested-by: Alexey Klimov <alexey.klimov@linaro.org>

This also should be:
Reported-by: Alexey Klimov <alexey.klimov@linaro.org>
hence Cc list is not full.

Best regards,
Alexey


