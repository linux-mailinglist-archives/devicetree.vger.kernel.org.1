Return-Path: <devicetree+bounces-254354-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 923B4D17885
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 10:13:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6628B309A6EF
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 09:06:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCD093815D8;
	Tue, 13 Jan 2026 09:06:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kGpPa9y/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f47.google.com (mail-dl1-f47.google.com [74.125.82.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93D803176F8
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 09:06:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768295203; cv=none; b=adzKJ1KvnCoVSalxpqdyadmZnJelxAAzOF9B/BGXdZcSgSl4aZB1BSM6NcBAsQOtI/p3ADUF5y88EdVToxijgEZyMGpPAVrgQ3fciKADNQdpuJmS/FL1wMS6837VWUndDFISKrYsSFycjfhYkYVVeDttPjGeCRRh77z0Wh05rPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768295203; c=relaxed/simple;
	bh=ku3/2XB5ppEbZ4a3ARvYq0a2iffzQaZX2Su0UwOg8z8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hJU9BWgEnRV0bcvjlN6ejE1QaUxXopja0hNILXuc+CNrWxRTccFhIBKI9R4+HSsJA17P/kg5h+PKfdsYox54gYODdHoQ0w51y7qYAHw//T1WrUZIKzn+Zwfv4DF6KCzK2KS2b3NBLvP+RnWha3Zp1BYtVJK1puiqf97/6PrX+7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kGpPa9y/; arc=none smtp.client-ip=74.125.82.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f47.google.com with SMTP id a92af1059eb24-1205a8718afso8171032c88.0
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 01:06:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768295201; x=1768900001; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ku3/2XB5ppEbZ4a3ARvYq0a2iffzQaZX2Su0UwOg8z8=;
        b=kGpPa9y/OlbcsO9yUAkyTZZICT9hs2b3820cYDzmxfHpJ7JxvjyyE80wOkrhgrMhjg
         y8l9aoUmPc2PaylEk+Cn9Jz6VIKVy8knCcOzX2OL3g0FNuHto6Mgvv+LpQZXFMlnd/AP
         mRA82+exJdQW3OSe1jfhqzroLYCJPpo1WnmFZmxBg6WBzuRL+Z1UE09Ppm0zeryYpbVR
         eIAbdA3xhZXqtMdc9cQUwIIr4md2Wcd6BlkCNi2Y+mvvUZFwt4Psn8rfB4Xg5YvgcEHJ
         Il5XiTbkBAiybqBl7CNZnyxduqn93gdmy0kKrjyUo0RgAn181wOYJ7dWMtklwcYRCRby
         HMlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768295201; x=1768900001;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ku3/2XB5ppEbZ4a3ARvYq0a2iffzQaZX2Su0UwOg8z8=;
        b=N8mlcVmeMnaAAPYzsPdtZZufann/s9IqO7r/QXMGoMK+nEVuQQXkpKroOYKBXBV32x
         OV5ltJ7oiV4N+uzdc+YfR8rTALqkBxew3Nh+JEzWvS4tx7j9pqkZyXE84dzCXpK3AiZs
         eB9d6fGaNMUnfrJgLGYOUiroQMuJ3kjTNGf/i+zuuNynwDWzCE/yejWLd5Cn6goG2sEt
         FmlIkHc0b0aDVMiYckbX+uGRaUH1BJkc3RI5JFJ9TXLRlTVYh4CHoiOp12OIi2hoGuvz
         8WEjL4CUtsjy3/59/rhw3CaL0FGub0vUjilzUYnZlNB+95tYVPnTM+bHEWlTznpcJKpO
         +85A==
X-Forwarded-Encrypted: i=1; AJvYcCWzP5aYuTTZLXboy07qCjHxSSVJqYmr7MkroofCCuuTAIQYSp+8T1QGO6vH5zU4alGnnxiZhSztru67@vger.kernel.org
X-Gm-Message-State: AOJu0YxAg2UuIwYyZT/j/2Qni03co9sOuGtRUbE5wE+hZqauEJusxc5U
	cnaYQPHUO9tupejzmM6iQsQewJEWgInUxceUiUXk6OTww+7rRkgI5jtL7jjfzS3wensXuzT7lu4
	qp7jyu+8IdBe54FMyhyS5rLtSAU2asZo=
X-Gm-Gg: AY/fxX7WnnZu8TGWe9+aX/BQLWNF4iqADYNVinXCPdVRDY/mvzJy+tUa2ofgrgenLDJ
	+s2Fqq6G+YYpxzEhVYCnRvJu2PY7r2kESryAm+L06FlWDT8zrlSHNnawPwspb5WwC1e6Fy+xSVR
	eRGqkNcBrQoFd9gIthEL6Hm5hx4ISUaE/77nU+SKDoYbzQDTIMU6CjUovF8kJZpMz239TxYn1Ko
	+c+esfuOl8T5pX2MKP2vt2uQeDo7gM0mF4bYc1gzlmlC+/7caBDgjwpmCa3E7FjkOG/MEp/jFXJ
	fg24a0ybIVYpkuopAjfBQckcZZs1nuShIvX0Y492SVesp/cPMXtztjZss0SukRkWXOTgrq7upyT
	KxQOEQCqGMQ==
X-Google-Smtp-Source: AGHT+IGzTPihgLRH2WBSYhy3b/sb1A6ZhRnma1ayeDv2Wq7sn2KRkoB8Yp4DAlFqBtKyiGczbVqArPyWwnXGFSHFKGE=
X-Received: by 2002:a05:7022:2388:b0:11b:b622:cad9 with SMTP id
 a92af1059eb24-121f8b2f64dmr21239052c88.21.1768295200627; Tue, 13 Jan 2026
 01:06:40 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260111-imx952-dts-v2-v2-0-5773fa57e89e@nxp.com> <20260111-imx952-dts-v2-v2-8-5773fa57e89e@nxp.com>
In-Reply-To: <20260111-imx952-dts-v2-v2-8-5773fa57e89e@nxp.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Tue, 13 Jan 2026 11:09:10 +0200
X-Gm-Features: AZwV_QhyiXCNvj2q962FdbsX8qNV8prAt-LhktWDFPDefQTkJuEkybRoDjuKNBw
Message-ID: <CAEnQRZBvuM608DoKSGVbjh_zV9GE_8BOr6Bv+otKkV=uCRoFmw@mail.gmail.com>
Subject: Re: [PATCH v2 08/10] arm64: dts: imx952-evk: Enable TPM[3,6]
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Peng Fan <peng.fan@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Jan 11, 2026 at 2:54=E2=80=AFPM Peng Fan (OSS) <peng.fan@oss.nxp.co=
m> wrote:
>
> From: Peng Fan <peng.fan@nxp.com>
>
> Enable TPM[3,6] for PWM.
>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>

