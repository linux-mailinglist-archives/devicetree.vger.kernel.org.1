Return-Path: <devicetree+bounces-251019-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D10A8CEE21A
	for <lists+devicetree@lfdr.de>; Fri, 02 Jan 2026 11:10:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9AFCF3006ABE
	for <lists+devicetree@lfdr.de>; Fri,  2 Jan 2026 10:10:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1EF52D8DDB;
	Fri,  2 Jan 2026 10:10:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IuW60vaH";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="A1RF4vGc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 815F61E89C
	for <devicetree@vger.kernel.org>; Fri,  2 Jan 2026 10:10:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767348618; cv=none; b=hN1YmnpqBkxaY5osrkG10nRNRtNpxdCxGIr7y0T+GmoWA8Qlgcur4mrMhLdCkyRuwQS//XLW0gZmWuuolLyD8H7S1o0B5aZdAamVeeuDqQXxUtxi6MNIUXvjb1drCLDTmfvtJjFEk4i0mNd7Lq/vMGZVZpZgI72q81QOp8wiilk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767348618; c=relaxed/simple;
	bh=HrOMjWn+193Od1TIO9+HUkoWMUFZCI0BOJ0OT8q467k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=UQZRtHFt19l6xrzHrXBDhPTiu6gxwZLu0JCw/r7jMR/IW7b7BjBg1pgHx6mtk1fCjohELa4w3O4dfpFZfWPgFMNYzkbwPazqbyqez5bJ+SiOlbzCC/nrGpCYUj5irZiyBvpl/YaTbc7nBReHCPhC5QYng9lzmn5ontTwRu17RuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IuW60vaH; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=A1RF4vGc; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6029VwH42310157
	for <devicetree@vger.kernel.org>; Fri, 2 Jan 2026 10:10:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	W4KkEFLpoKuYpVfZ+e/oLAW9VOgySIiL4NnervCFCnA=; b=IuW60vaHH9Vs+HAR
	WehJViEq2YK1AQf5EmGltmBMXZTcnJjyWBi8hzxRwRrztFv7T0OSjjldompTkwAi
	iKONE4W+MJP9IuWyyJ315I5JhKAvncECfxIicKCtU0iZ4QD5lYlNtG2a+IkxI1kr
	HZpriqrAlm5KQn3PmB3e4hs4b/17Z6CmxLuL0xC/SDeexIK6vlUVh3GXiXCOq3y7
	jycPGlse6dDGjn0SDPfe3cyxcaH+kuykL/Nq+3wGJVZtdAHQi6DNJuWVeUAx/jUV
	l9S6+vqIPmc43rJM+xmsbRIf3FqoEcArUF5UdlvBQ9UW5Xnad8lXseKy88ZzD0Rt
	4qgxwQ==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bdsc9srdv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 02 Jan 2026 10:10:16 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-88a3356a310so332829786d6.3
        for <devicetree@vger.kernel.org>; Fri, 02 Jan 2026 02:10:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767348616; x=1767953416; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W4KkEFLpoKuYpVfZ+e/oLAW9VOgySIiL4NnervCFCnA=;
        b=A1RF4vGcAb/wIFB3B1pUrVDzOJosSUa5LZ2jbMvT0zU91NlHGQmyKf4PG4jRGyN/cR
         xH5eZ9EV/dJGR1l8DTBckF4OxUDdFozKXCcwgCyz4aeimCICN53wvvEbS4WnKOXi+8Y8
         KPB48YxXVDNoRgEqdaOdArLtEnITlMBWMxI3cCqVQM2xwz7a58JvTBiDDF2MswXIgcNn
         jvICxRsZCGnjhLasR076N0h+hZdpCL0eqs84u5J4ivFlf0tILvsP3U+3QDMt6EW2bfq+
         t41AClzV6QBIS8Gp5LxwvjV8V2M+UI+j0KQU0bEs6xo9IJdyU0DHLexmwZ/hZpnbpPZ6
         imGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767348616; x=1767953416;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=W4KkEFLpoKuYpVfZ+e/oLAW9VOgySIiL4NnervCFCnA=;
        b=lryuQhRalRd1Lx4+6YUzrSaasq/gx401neL+qE3409mDHPK6y5/nHVRyusyFEZIAc1
         WJmRdR81C+cgGp5iVLBbXZosE2f7WWytRKBeOz1ldYGfx7/ANMhuDot9nG/f/vRwAdFh
         zOHjKknV6gKjdpmgjr2bWFgPwcCwx3cE7B/H5/zFt4CFLJHBL2lnIGIzLJTiVQ36Yzlj
         pZoELaY84S+j5gT3adLC8FaIf14X1SUv+XkDq66yXQRcaYREf/eLhu6jdSKcuYnCgNfG
         900N7OsT4VtomS9k8/9Rp54oMfhbdywDVH5CmTHCeQstQnS87k5sqLI+9VBZLeDNa2xe
         CoZg==
X-Forwarded-Encrypted: i=1; AJvYcCVWkHt7qAerm0y74jo7Wuk4w6KgP4372aUHPV2i6xewCs5ot7H9dLkh/sja8CvOBTstLimU8CU3Qqwe@vger.kernel.org
X-Gm-Message-State: AOJu0YzZncbyJR+XbmT53TlopJ+s4OqFakyu5282t4fWWUNMZE+jqj5D
	ElF6Nm0jODCDd2D5dhcrGyeUrgyx3Tr7b+WJS1eg2/9CkSyvQiQu74Ke8EJ2yOtT4zi2q7loL6+
	03eJ/tF7jdQd7vK2E+zDmjPsEbI0X4lnl35i22sBqMxmcHd8wWrzoJh2czK17UW8m
X-Gm-Gg: AY/fxX6E/kl/bMlLE1a1TJuLHqRBuJdUeviw9gaJq0l1/VqnZfVYTzEtTI1b/vUXU9X
	oUBHPGBvhIKb4X5/8tRCg6OnNz90gOlMYpNnOeuXXL0hHm2VzX29Il1LGODwIpO3xP5jbJkZgLX
	rokBgKCF37OZXtjal8dLKrJV/VLJvgfK9fX28R7ytdwzhMweHh6LJLHMG0ylsL9S2oRe6pGYym+
	aQCW2kXR4/fBtw2lsDg2Uh7NkvtswFfqnrhYP3MPU5I/9joeo7AYKeSKe3ymUIjY2Psbd1jI8Yq
	/qgRPxPG+S6lzmD5Yz7MU6tnajDBh2EGxTDUoaK6eJylC0hQqKJOFuQWo/T1QeDLvPOnG+0vJp1
	RsHK28wXzcWhEmykuCtTBmx3fwImIN1cl29ffQQ==
X-Received: by 2002:a05:622a:189e:b0:4ee:1962:dd48 with SMTP id d75a77b69052e-4f4abdcb687mr635002271cf.69.1767348615755;
        Fri, 02 Jan 2026 02:10:15 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHzqgqQn0jdJXpHsMKK7eoSrAXQh8yy5Cmamj62WdJRndxjumLvTg/NMpFenSD54kYV7zLPKg==
X-Received: by 2002:a05:622a:189e:b0:4ee:1962:dd48 with SMTP id d75a77b69052e-4f4abdcb687mr635001991cf.69.1767348615318;
        Fri, 02 Jan 2026 02:10:15 -0800 (PST)
Received: from brgl-qcom.home ([2a01:cb1d:dc:7e00:8630:1161:9594:98e3])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4324ea22674sm85248647f8f.10.2026.01.02.02.10.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Jan 2026 02:10:14 -0800 (PST)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
To: Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Peter Rosin <peda@axentia.se>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Jonas Jelonek <jelonek.jonas@gmail.com>
Cc: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Thomas Richard <thomas.richard@bootlin.com>
Subject: Re: [PATCH v7 0/2] add gpio-line-mux
Date: Fri,  2 Jan 2026 11:10:11 +0100
Message-ID: <176734860604.22824.12173093761003845857.b4-ty@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251227180134.1262138-1-jelonek.jonas@gmail.com>
References: <20251227180134.1262138-1-jelonek.jonas@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: PS17ZOSn_Kq0NB-TB00Hi-36tqNLpZja
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTAyMDA4OSBTYWx0ZWRfX0aPywoD80cd3
 lXJxiAV7QQc9R2gz5OhQpqrck9E7CIBN3gM2OmQg3sO34YdSUykG4WOLT4tGQivQRjkqgup9Ji5
 aIRoxO3mRRV7ndmXxyjQd/sr6GkDUfsnJcDzyvCHGSmsVs6FvgQeHaN6u3uKRff+CHcHYzNQ6xz
 32FJr435mCWPAzAIktlK79mkAMaHJSmvP5p3i26yr0Fdg64IsmBVceGQpsXwgZsGl6JE1sJIIhd
 BGnWUbCMUi1ZxL8xfClSur/cMnsGDQeuzUOafcaLu5JtTVCqM/ASv29Ya15tKbBZPwz4BF0VqHB
 8z1HbuxRAkYxkUqamubZxzasUyqjCNiaD1G3LuDwteYhhK/WAjXoiKcAwwAxUEd/7mnZQWXqHDK
 LSYb5ONKrDIsbWKNvyXjkztHYDqdN0e2AKzFZoKw/hqL+jSZiKONHVB1RhMJmfAMjwCucKudawE
 OQJntZRQmwoW87EKBBA==
X-Proofpoint-GUID: PS17ZOSn_Kq0NB-TB00Hi-36tqNLpZja
X-Authority-Analysis: v=2.4 cv=Hq972kTS c=1 sm=1 tr=0 ts=69579988 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=9OmgVfmo-Krmn-sFjRIA:9 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-01_07,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 lowpriorityscore=0 suspectscore=0 adultscore=0
 phishscore=0 priorityscore=1501 clxscore=1015 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601020089


On Sat, 27 Dec 2025 18:01:32 +0000, Jonas Jelonek wrote:
> This proposes a new type of virtual GPIO controller and corresponding
> driver to provide a 1-to-many mapping between virtual GPIOs and a single
> real GPIO in combination with a multiplexer. Existing drivers apparently
> do not serve the purpose for what I need.
> 
> I came across an issue with a switch device from Zyxel which has two
> SFP+ cages. Most similar switches either wire up the SFP signals
> (RX_LOS, MOD_ABS, TX_FAULT, TX_DISABLE) directly to the SoC (if it has
> enough GPIOs) or two a GPIO expander (for which a driver usually
> exists). However, Zyxel decided to do it differently in the following
> way:
>   The signals RX_LOS, MOD_ABS and TX_FAULT share a single GPIO line to
>   the SoC. Which one is actually connected to that GPIO line at a time
>   is controlled by a separate multiplexer, a GPIO multiplexer in this
>   case (which uses two other GPIOs). Only the TX_DISABLE is separate.
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: gpio: add gpio-line-mux controller
      commit: 2a7618ba8698874e9871a8ec5453e0068e94d9e5
[2/2] gpio: add gpio-line-mux driver
      commit: 2b03d9a40cd1fea42fd65d2b66df80edc0f374c8

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

