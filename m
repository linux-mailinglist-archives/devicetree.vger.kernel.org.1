Return-Path: <devicetree+bounces-222897-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E696BAF3E2
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 08:35:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0BD013B1249
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 06:35:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EFD126D4CA;
	Wed,  1 Oct 2025 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="G87NJZAY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDCFF25C804
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 06:35:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759300553; cv=none; b=lNVCjW7cUDuZGDflFEQWvL2czryln2iV4PfUo8P98t7Iz7CUx+rA4Hj1XUNyIJC1+s4l75yUGKOqzOB9+jjezQhnZA1FiHBGCNU0uzQnn0B0LEkeQ6Htq+SuhqRksZjFP7UhnWzQhJd1viSrwRa9amOw6vUGlU9KYNqqCWhB02g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759300553; c=relaxed/simple;
	bh=8M+rC/tJvmhfbfPzx36kQC9pVw2SFMHjgSHET6OGNF8=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Cc:Content-Type; b=VewJUwSE1+FxVawxzqjNwxj2c/N78zI75UR1Zuh38YMAMiNiX1m+soYMqAmj1CNcvmXu6RN+UgbKL7/6ILnC9ArCao7lmX+edOpxdXiqvLIISZkj/HaYKhOhBLLU7CbwJijXDvPxs04FLrOtyKzxnpN4cyFny1deJv7CaJHUmdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=G87NJZAY; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-62fc89cd68bso12533807a12.0
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 23:35:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759300549; x=1759905349; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=8M+rC/tJvmhfbfPzx36kQC9pVw2SFMHjgSHET6OGNF8=;
        b=G87NJZAYW9wnvpKWV+TPXsQLH9VLL8sQnB1i+RzjWkkaxkcxa2aZOPS5SEABD28JYW
         VqgpJKkl6oaZjc33vgsv5qReXc6vCCAvwN/KMrWv6qxuOD05TtyCVmMvxdOffMDtVE5q
         QID8RlEfwZPfPTSBobJdz24AjVxuz1YMaGzbUrhcWlURs03OXI3Qy1zIOoJOM9eh3AYZ
         t51urkgfwCVG41ZsMrTMmoRJL+IqJ74YVhYgGDfs6f+T3BJYzDc5suwy8rj4FJwEdvn1
         L74rc95DOx4FYoqUK0HB+MYo48A5LeLLpotAkuxR9h+X1Way5FqsDPT9frIATvZ7hbxZ
         767g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759300549; x=1759905349;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8M+rC/tJvmhfbfPzx36kQC9pVw2SFMHjgSHET6OGNF8=;
        b=cptRhlGEgr0QCdRGWfDp3G8Ug8firDjvmS/yKHsSVn/Mhg1ZIAsXWluAaeCACwizuQ
         uswVbepyMQKB5S4vl0dyE7EBi7KWuC7FLAAz3xSqV86ZTDjWymn/+nZBqrisUEWRyI/L
         gf2Lo4TNr2SHLbfwESdIXC+L49+sOlXPbPfiCLXZUXdlZB7z5pFPIvHrVEXf59oNVvQU
         Q6EmO7x24Z6DLxP82aexnWnPyRmP/4u/UiIXLhzCiJb5zvZJCzZsaTTCTqw+99SYJdUu
         Qx858RHZXU2cKrMHbm0uySIajKjMRMgwqnobIa+5g+28GbyAWzlPZWf3oivx6XHzuMGM
         sjHg==
X-Forwarded-Encrypted: i=1; AJvYcCVo5hJbSLCk1cri2n3l8LjXYNjHz178b8nLQVkVWuBxGJiiYL+wI/EsFCGE0tpHN50jUXpZPKUBYnMB@vger.kernel.org
X-Gm-Message-State: AOJu0YyC8akJZDFksuiC5DqOY0jDWQ/pPcDxEbpxYkkWUEAb7cAgLVuy
	YMITC3t/gqk3pfxMS5Xq5f242c3A4fTPKiePQTq8PK7In/Eoa/NMq8SJay/SiE5g9X9PwFaSGHY
	S4T5TrWpgpvCH+2xMXpYm6JPAA0IblaE=
X-Gm-Gg: ASbGncv2Pi95y62s0CPbI9WGCf4Kx/lbMWzztFaX3TsFJ2pUwXbJ/CoPRRmls/DaBW9
	J+ZhKiNLXec4DTJzpCowbE/UYkjzcIxSVB8GYpb89ANur9nMMRpiRSYWYVuT/7/2xaAiFI4M222
	t1IB2D6eJrJtopsZAPF0x5llQplhXpeq7DqqpRg21CwQpNscoO4NT37lP24sBw7H5G5CkG/3br1
	/GNE2LZjp7X6tnKpQX6E0z/lsZ2NW6U
X-Google-Smtp-Source: AGHT+IFhSXX+nUaYhO80kXEU0yzPB0CgeIXeTq5vOUpqxyC1AtlG+4GsR51QqMGGOM8phE9y25q6g3x8N6SySVVxVDs=
X-Received: by 2002:a05:6402:358d:b0:634:4e0a:9d32 with SMTP id
 4fb4d7f45d1cf-63678bce5ffmr2832698a12.7.1759300548968; Tue, 30 Sep 2025
 23:35:48 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Philippe Simons <simons.philippe@gmail.com>
Date: Wed, 1 Oct 2025 08:35:37 +0200
X-Gm-Features: AS18NWCYhciIG058jyCqKMC1WKNMOiPJ72urBhVvFFESB8Xm5N9YYcnUQcQrheg
Message-ID: <CADomA4-SQF3vyTNBK8gJsGRmC0DTr550S+RVoYiaKBRoW4TNBw@mail.gmail.com>
Subject: Re: [PATCH RFT] arm64: dts: qcom: sm8250: Add MDSS_CORE reset to mdss
To: luca.weiss@fairphone.com
Cc: andersson@kernel.org, Conor Dooley <conor+dt@kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, konradybcio@kernel.org, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
	open list <linux-kernel@vger.kernel.org>, phone-devel@vger.kernel.org, 
	Rob Herring <robh@kernel.org>, ~postmarketos/upstreaming@lists.sr.ht
Content-Type: text/plain; charset="UTF-8"

Fix panel not enabled on sm8250.

Tested-by: Philippe Simons <simons.philippe@gmail.com>

Thanks

