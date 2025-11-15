Return-Path: <devicetree+bounces-238980-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id DE551C60509
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 13:27:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B4B324E516B
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 12:27:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED24F29E0E9;
	Sat, 15 Nov 2025 12:27:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JhpL0Eht"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D048299A90
	for <devicetree@vger.kernel.org>; Sat, 15 Nov 2025 12:27:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763209628; cv=none; b=hsbVJR/cEjxPMAbYmCxRo0/eO1shyXkk9l8UEOjc5lNGOWniD8hKpoKDA91120RMY1lOPddt6R+c6Y7cTgQABD5HN+BO2X8mwRy/NGI8c7NPjieaI3k47qd08aQpUmZ2gGzfHga3Kk1VXeDrTzHkPQU/Nu1S64WPlDqFEXzInuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763209628; c=relaxed/simple;
	bh=RIIDYqK8+WQ2PSdCQKPAfHbq0AZ6EW+ywrdKhnPSYu4=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Liep0iX3JR+MAhB4xCb3TDtnlScRaKHlkSUY8xGC0mT4SuLTFYeCT/aTNOw+Axnl3ZOe8PgrKLNI8UXzFQZlsD8lNqccUf6x5FjC/f7AC2oc9B3AQT+3GtlXmKQPgIWljiKbbs+o+iOMoKowKeaXC26j1mXeXJ0r4B3a/nzKl1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JhpL0Eht; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-64074f01a6eso4909801a12.2
        for <devicetree@vger.kernel.org>; Sat, 15 Nov 2025 04:27:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763209623; x=1763814423; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZS0z7bXN9ZDKGbg8dZUcy90RcvM3+V0Du84RVPjWaXY=;
        b=JhpL0Ehtmu0sWhAx2GcfE4VmJWdiWER+gFWo0q06CC0GZUUfd0j1lCVu0rOy/jvbOI
         uX0oMRoEr2QRfDwEagAJku5I5pBqVw63ZB1z3CxaZMncJHe05sPJrUQBONrt2iCIhR9K
         F36tm4n64+jaeXooE+VudeFT7eVFrr62JF6tEFugEcCkd5XpC1DKxhBzVah0gujNlXWr
         IDztwBAOLY6vTk/WnteGr0uD+zQE4Rl/EsciIGkVmCqTIqbjhSWGEUEkt69/ipIq4c8L
         tDp7/hm3LpbapwfxL48GoUZkXP0UVyxCfa1ii2uq0sqaaVmzdm6rK5ZBsDiXsiDfS0Nd
         WPFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763209623; x=1763814423;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZS0z7bXN9ZDKGbg8dZUcy90RcvM3+V0Du84RVPjWaXY=;
        b=LIijAvU5YTDSbu/3A0qGhQep1oI2HjZf+sMrfHYwGG2cVm1v5JB5g2XgisWRukdMQ6
         9xtxy7EuNktQ/HkH1mQ8cmh+DIu15OspDnmpYUUKTlqS7Qw+TKsvwLegOXRVGw/3H7rp
         uDricC5Z9vV6IKNubH7HxSBTa/rZwpzef+liklsSJg4n9KInSJ1KFWQ+mH3coKz7MOdq
         rp2Vjag4zpLDEY4e2/a+zrsGfl9RHkoewfXjbJsVMVgeZLNjvjVdwPsMKWP+stanALmr
         Qfsyrw5t9OAIr69kZAZwUATyBbk23iYONuGpBJW8O8zaxENtC2/ZKJmGk/ADF0spF/6o
         Ppog==
X-Forwarded-Encrypted: i=1; AJvYcCVWlUE9RHfr0oZ1ugEjPjvWH+jUtIlXPA4N/RvPsbtwE8Ohw/MwmUpiuUACKGt8+VOPGXyrXopiPG48@vger.kernel.org
X-Gm-Message-State: AOJu0YyRLxGaKWWm8DZr2dPMPYdEwEniEGD8l3jw6288rQLQqG01lO7J
	RsaGHGHTGrUOaOlZN89R6JWWMGKWUsP4QUDFTU8TRjfdAT8Cb24c1LNA
X-Gm-Gg: ASbGncvhVdN8Gp5czezvslAdzX7ZaY+6NS2bU7cUMnYHrK1pr28a0X9TOsCqNgvZG+8
	f7lRlbc+BLCCTu5z7B/g9FHYWKjbkeZHFwd8N+Ez/mlp/5HK32JUK9pAoAn3RgduWfn3zcBFpSg
	4Xc9NdkJfNzixuFzBA/u1y1MAChxtSl7iwCRhWcpl3ffj9qswoc5QDoMOsC/ojUVC98GspjCTYS
	0Kbdtqd8O0JKz6pBRbU7JJB4juWCz61rxxyEztFFDmmj8I2P0PFNNy4yFmqOpSY257yI8bAGvX7
	dAQiQFu1hdZRzZyCdKdghQmRzbB0Hruu5/9P0oZA2sIQq6cHl9s4aiMiRHvtBcgZnU+G1d/9mp9
	DMHL8+MV2dpqybEf7dFeqN4Nrcb1iiPzmbm281Y3mWpiwko+7DDzXORnTgGBCQleH7Yi4SAHFnh
	15NjHy7HrgJrocHPs=
X-Google-Smtp-Source: AGHT+IFhKe01VUFrV1x/fkEaUyx4/tZpLUueuWrAr7SYKB/mI4Fh78YzUXB9BPXeVLqjv6LBEqEJGg==
X-Received: by 2002:a05:6402:34d5:b0:643:18db:1d82 with SMTP id 4fb4d7f45d1cf-64350e2159emr5594925a12.11.1763209623102;
        Sat, 15 Nov 2025 04:27:03 -0800 (PST)
Received: from [192.168.0.188] ([88.223.153.72])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6433a4b2155sm5627042a12.29.2025.11.15.04.27.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Nov 2025 04:27:01 -0800 (PST)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Subject: [PATCH 0/2] Asus ZenFone 2 Laser/Selfie includes a battery
 measured by voltage mode BMS and a simple GPIO hall effect sensor. The
 following commits include support for these components.
Date: Sat, 15 Nov 2025 14:26:42 +0200
Message-Id: <20251115-battery-hall-v1-0-1586283d17c7@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAIJxGGkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1NDQ0NT3aTEkpLUokrdjMScHF1jg9Qk87SkpEQzo2QloJaCotS0zAqwcdG
 xtbUARXdB0F4AAAA=
X-Change-ID: 20251115-battery-hall-30eb7fbba62c
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 Erikas Bitovtas <xerikasxx@gmail.com>
X-Mailer: b4 0.14.3

Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
---
Erikas Bitovtas (2):
      arm64: dts: qcom: msm8939-asus-z00t: add battery
      arm64: dts: qcom: msm8939-asus-z00t: add hall sensor

 arch/arm64/boot/dts/qcom/msm8939-asus-z00t.dts | 36 +++++++++++++++++++++++++-
 1 file changed, 35 insertions(+), 1 deletion(-)
---
base-commit: 0f2995693867bfb26197b117cd55624ddc57582f
change-id: 20251115-battery-hall-30eb7fbba62c

Best regards,
-- 
Erikas Bitovtas <xerikasxx@gmail.com>


