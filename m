Return-Path: <devicetree+bounces-243181-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A14EFC94B28
	for <lists+devicetree@lfdr.de>; Sun, 30 Nov 2025 04:32:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 329AA3A4EE5
	for <lists+devicetree@lfdr.de>; Sun, 30 Nov 2025 03:32:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28E062264B8;
	Sun, 30 Nov 2025 03:32:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cv2MFjN3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com [209.85.217.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 166111482E8
	for <devicetree@vger.kernel.org>; Sun, 30 Nov 2025 03:32:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764473565; cv=none; b=Fhbd0nGi4UlC3GWFzVkLSKIr0lMhZvyJzdVcDIEzGGFvy08bWzIVGtLZeCXGNLyAJeOGbCqe18hM6cyTcc7YcBQMyt4K1WizzaiJGrDtokOipnsDlyyvRCACjhfckAGFJ+xX6PdYCM6aBsukEnCXFbNM1/J30OR9nixRFgNClFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764473565; c=relaxed/simple;
	bh=LUC96Uugn9hTwy25i99pP6p0oGWbawWUD3WLuZuC7Xs=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=eh2ISXqFCQv5699SQJsjfdY+X2f+HnZxTM3fpTLewYQQn239LIo2DLKfxl9+cr5eR4OMkWPPF7Vhme7//u0/3eiAB4/eRWKZsqiA5NHpJ/8jGS8lb2wEKXx0qMzB7ZO4hfIQRTGKwdFofWSaKMNsmpqp0nC2WGCLWl3cVTu6oFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cv2MFjN3; arc=none smtp.client-ip=209.85.217.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f53.google.com with SMTP id ada2fe7eead31-5e186858102so1039696137.0
        for <devicetree@vger.kernel.org>; Sat, 29 Nov 2025 19:32:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764473562; x=1765078362; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LUC96Uugn9hTwy25i99pP6p0oGWbawWUD3WLuZuC7Xs=;
        b=cv2MFjN3w0TqHqFgOWNk7M7rilmtK/6AybES7UlVvbLy6xmkPT8PjGan0swxbbrLQP
         wop7bdu8MLgpu0retSu47Ppb409Q+dQpTIDANsYwtLmXNJrxWURIE+XKsC1TGi13Wc0e
         1cTCptj8JNjCGThZdAZDB2GCNlDhn/mh9oewEHT0n3yzIiHdYX5QDZgJVAwoKmexTLp4
         Onqnxu7eyIbEUZRm2/iIII4Dq3i1TBLoEVpYDm7eKDBsrCb1FCxuIGomc5C/FMXEOBxm
         M4dpDif9m6Ldz+ORi2w49wdd4v84LAQphas9QO+vdsuPpvv4Ls1l91Goi5u1gl3ZacxR
         3QSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764473562; x=1765078362;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LUC96Uugn9hTwy25i99pP6p0oGWbawWUD3WLuZuC7Xs=;
        b=Beh0gcPJZnNM7RrlsFqoVw0anefXQZdsXHIUf8Q0diVp40YpP/3crvrHYfjY26Ipa/
         ivQvHmTZ9hBKV/nxSHTnL0nJ7O4I8sy/LnPoHoVV8GMWs7k17UQ60ArcF18vIhTYTibs
         DuC+bXbe3YLhdUzTEbo7kjsG5OIu17HHChRPh+C6wIBcpjgXIfdQlqH1K5O2j8nFb4ky
         aHkmAM1kPtBbYuVVPpoqy8mQqcAkXiSTGA3f8iBZgnteNmVGWF98fUvMk9kXLvFk1ouZ
         Fx/pYsXBdzHJaknNzeE0JZLZnuhjWIOrcMndeoALJyryqj0r63JegtLFBRiE3QAN2+Oz
         VJEw==
X-Forwarded-Encrypted: i=1; AJvYcCVdmsykGr2s/JGBEQn1rgyMpHYiWNhemvuJcGAaI3rOT6z4qbg03UponDajJR6KVelQ1HGKkE3P1QTY@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/osvq1pGqtTKyMTi+iW/m3vSMuIL+7bChKg2C63iYEDvVyj6Y
	+VK73irzlcFThc8zYu2I0/qVN0QMAa5vJ2oY9X4I4P0oUKa9IKmWr6al
X-Gm-Gg: ASbGncssQHT25+fCgI2IK1Q6eKutj3mOtFkWsFT7DgJk7P60Kf707GZXuCEcsl2fldY
	I0dPXvCSZw/Hz6MeFIKxyClxsrhQgglsnW5dxY1S+U7Ll3+6dJkD3t1L9crXvo785YIs7D9aOJ/
	l9Xe7VNDFvTkcnp4VkKJHxb7I/5sJQGFmloERFbLTt5HOkOuiN9v+nTa30tzNSY6z1lUhKQ5qtU
	ZBmOOhoghsaTK5bf6piqiMTmwvdkVdb1BHLab2LrK4WAIEeDYgY2hMFX8jAifxWT0SBLop7E/Py
	00TzHtGutAL/A3pMLo2kYZ90IDblPUq1xrG6ERldpajB/Hoh7FbBlLPxx3Z8+0IMwl351QAa6aS
	RUsN5FXGFTr8sjABfWjy1Trvc5vZjhT3siV/FmDHJXGzBVsJ8AEfuxRqJYg7TkZl4v0/1EZQNFT
	5uIYM=
X-Google-Smtp-Source: AGHT+IFm5CZ17K9+Lz1xQ9ifHnG2x5dQS8IISpGfPF1WLpY3EynlM01Pj7jh/h/WNPGQfZn+8R4/gQ==
X-Received: by 2002:a05:6102:3906:b0:5df:bb10:631e with SMTP id ada2fe7eead31-5e1de4bc6bcmr12176645137.41.1764473561981;
        Sat, 29 Nov 2025 19:32:41 -0800 (PST)
Received: from localhost ([2800:bf0:82:3d2:875c:6c76:e06b:3095])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-55cf516c7c5sm3865194e0c.17.2025.11.29.19.32.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 29 Nov 2025 19:32:41 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Sat, 29 Nov 2025 22:32:39 -0500
Message-Id: <DELPOB1I3E5R.1REVC6T7ELDGI@gmail.com>
Cc: "David Lechner" <dlechner@baylibre.com>, =?utf-8?q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, "Andy Shevchenko" <andy@kernel.org>,
 <linux-iio@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, "Jonathan Cameron"
 <Jonathan.Cameron@huawei.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: iio: adc: Add TI ADS1018/ADS1118
From: "Kurt Borja" <kuurtb@gmail.com>
To: "Krzysztof Kozlowski" <krzk@kernel.org>, "Kurt Borja"
 <kuurtb@gmail.com>, "Jonathan Cameron" <jic23@kernel.org>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Tobias Sperling"
 <tobias.sperling@softing.com>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20251128-ads1x18-v3-0-a6ebab815b2d@gmail.com>
 <20251128-ads1x18-v3-1-a6ebab815b2d@gmail.com>
 <63be9769-dda8-4c58-92b9-31ebfd4c5f5c@kernel.org>
In-Reply-To: <63be9769-dda8-4c58-92b9-31ebfd4c5f5c@kernel.org>

On Sat Nov 29, 2025 at 4:25 AM -05, Krzysztof Kozlowski wrote:
> On 29/11/2025 04:47, Kurt Borja wrote:
>> Add documentation for Texas Instruments ADS1018 and ADS1118
>> analog-to-digital converters.
>>=20
>> Signed-off-by: Kurt Borja <kuurtb@gmail.com>
>> ---
>
>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
>
> Best regards,
> Krzysztof

Thank you, Krzysztof!


--=20
 ~ Kurt


